#!/usr/bin/env python3

import argparse
import os
import subprocess
import sys
import shutil
from pathlib import Path
from typing import List, Optional

##################################################################################################
def create_directories():
    """Create necessary build and known_good directories."""
    Path("build").mkdir(exist_ok=True)
    Path("known_good").mkdir(exist_ok=True)

##################################################################################################
def check_identical(file1: Path, file2: Path) -> bool:
    """Check if two files are identical using xxd."""
    try:
        result1 = subprocess.run(['xxd', str(file1)], capture_output=True, text=True, check=True)
        result2 = subprocess.run(['xxd', str(file2)], capture_output=True, text=True, check=True)
        if result1.returncode:
            return result1.stderr
        if result2.returncode:
            return result2.stderr

        if result1.stdout == result2.stdout:
            return None
        return "File '{0}' different from file '{1}'".format(file1, file2)
    except subprocess.CalledProcessError as e:
        return "{0}\nstderr: {1}".format(e, e.stderr)
    except FileNotFoundError as e:
        return "File not found: {0}".format(e)

##################################################################################################
class Filepaths:
    def __init__(self, basename, assembler):
        self.control_file         = Path(f'{basename}.py')
        self.binary_original_file = Path(f'{basename}.orig')
        self.asm_output_file      = Path('build') / f'{basename}_{assembler}.asm'
        self.binary_output_file   = Path('build') / f'{basename}_{assembler}.dat'
        self.known_good_file      = Path('known_good') / f'{basename}_{assembler}.asm'
        self.report_file          = Path('build') / f'{basename}_{assembler}_report.txt'
        self.symbols_file         = Path('build') / f'{basename}_{assembler}_symbols.txt'

##################################################################################################
def run_py8dis(f, assembler):
    cmd = ['python3', str(f.control_file), '--'+assembler]
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, check=True)
    except subprocess.CalledProcessError as e:
        return "{0}\nstderr: {1}".format(e, e.stderr)
    except FileNotFoundError as e:
        return "File not found: {0}".format(e)
    f.asm_output_file.write_text(result.stdout)
    if result.stderr:
        print(result.stderr)
    return None

##################################################################################################
def single_test(basename: Path,
                assembler: str,
                check_asm_against_known_good: bool = True,
                make_known_good: bool = False,
                make_extras: bool = False) -> bool:

    f = Filepaths(basename, assembler)

    # Run through py8dis
    result = run_py8dis(f, assembler)
    if result:
        return result

    if check_asm_against_known_good:
        result = check_identical(f.asm_output_file, f.known_good_file)
        if result:
            return result

    if assembler == "acme":
        # Test Acme assembler
        result = call_acme(basename, check_asm_against_known_good, make_known_good, make_extras)
    elif assembler == "beebasm":
        # Test Beebasm assembler
        result = call_beebasm(basename, check_asm_against_known_good, make_known_good, make_extras)
    elif assembler == "xa":
        # Test xa assembler
        result = call_xa(basename, check_asm_against_known_good, make_known_good, make_extras)
    elif assembler == "z88dk-8080":
        result = call_z80asm(basename, check_asm_against_known_good, make_known_good, make_extras)
    else:
        return "unknown assembler"

    if result:
        return result

    result = check_identical(f.binary_output_file, f.binary_original_file)
    if result:
        return result

    if make_known_good:
        shutil.copy2(f.asm_output_file, f.known_good_file)

##################################################################################################
def call_acme(basename: Path,
              check_asm_against_known_good: bool = True,
              make_known_good: bool = False,
              make_extras: bool = False) -> bool:
    """Test Acme assembler."""
    f = Filepaths(basename, "acme")

    if not shutil.which('acme'):
        return "skipped"

    try:
        # Assemble with Acme
        cmd = ['acme', '-o', str(f.binary_output_file)]
        if make_extras:
            cmd.extend(['--report', str(f.report_file), '-l', str(f.symbols_file)])
        cmd.append(str(f.asm_output_file))
        subprocess.run(cmd, text=True, check=True)
        return None

    except subprocess.CalledProcessError as e:
        return "{0}\nstderr: {1}".format(e, e.stderr)
    except FileNotFoundError as e:
        return "File not found: {0}".format(e)

##################################################################################################
def call_beebasm(basename: Path,
                 check_asm_against_known_good: bool = True,
                 make_known_good: bool = False,
                 make_extras: bool = False) -> bool:
    """Test Beebasm assembler."""
    f = Filepaths(basename, "beebasm")

    if not shutil.which('beebasm'):
        return "skipped"

    try:
        # Assemble with Beebasm
        cmd = ['beebasm', '-v', '-o', str(f.binary_output_file), '-i', str(f.asm_output_file)]
        if make_extras:
            result = subprocess.run(cmd, capture_output=True, text=True, check=True).stdout
            f.report_file.write_text(result)
            # (Note: Beebasm doesn't have a way to output a symbols file)
        else:
            subprocess.run(cmd, capture_output=True, text=True, check=True)

        return None
    except subprocess.CalledProcessError as e:
        return "{0}\nstderr: {1}".format(e, e.stderr)
    except FileNotFoundError as e:
        return "File not found: {0}".format(e)

##################################################################################################
def call_xa(basename: Path,
            check_asm_against_known_good: bool = True,
            make_known_good: bool = False,
            make_extras: bool = False) -> bool:
    """Test xa assembler."""
    f = Filepaths(basename, "xa")

    if not shutil.which('xa'):
        return "skipped"

    try:
        # Run through py8dis
        run_py8dis(f, "xa")

        if check_asm_against_known_good:
            result = check_identical(f.asm_output_file, f.known_good_file)
            if result:
                return result

        # Assemble with xa
        cmd = ['xa', str(f.asm_output_file), '-o', str(f.binary_output_file)]
        if make_extras:
            cmd.extend(['-l', str(f.symbols_file), '-P', str(f.report_file)])
        subprocess.run(cmd, text=True, check=True)

        if not check_identical(f.binary_output_file, f.binary_original_file):
            return False

        if make_known_good:
            shutil.copy2(f.binary_output_file, f.known_good_file)
        return None
    except subprocess.CalledProcessError as e:
        return "{0}\nstderr: {1}".format(e, e.stderr)
    except FileNotFoundError as e:
        return "File not found: {0}".format(e)

##################################################################################################
def call_z80asm(basename: Path,
                check_asm_against_known_good: bool = True,
                make_known_good: bool = False,
                make_extras: bool = False) -> bool:
    """Test z88dk-z80asm assembler for 8080 tests."""
    f = Filepaths(basename, "8080")

    if not shutil.which('z88dk-z80asm'):
        return "skipped"

    try:
        # Assemble with z88dk-z80asm
        cmd = ['z88dk-z80asm', '-m8080', '-b']
        if make_extras:
            cmd.extend(['-l', '-s'])  # Generate listing file and symbol file
        cmd.extend(['-o'+str(f.binary_output_file), str(f.asm_output_file)])
        subprocess.run(cmd, text=True, check=True)
        return None
    except subprocess.CalledProcessError as e:
        return "{0}\nstderr: {1}".format(e, e.stderr)
    except FileNotFoundError as e:
        return "File not found: {0}".format(e)

##################################################################################################
def run_tests(files: List[Path],
              check_asm_against_known_good: bool = False,
              make_known_good: bool = False,
              make_extras: bool = False,
              assemblers = ["acme"]) -> bool:
    """Run tests on all files."""
    success = True

    for filename in files:
        for assembler in assemblers:
            name = f"{filename}_{assembler}: "
            print(name, end='', flush=True)
            result = single_test(filename, assembler, check_asm_against_known_good, make_known_good, make_extras)
            spaces = 30 - len(name)
            print(f"{' ' * spaces}", end='')
            if result == None:
                print("passed. ")
            elif result == "skipped":
                print("skipped (assembler not found). ")
            else:
                print("failed. '{0}'. ".format(result))
                success = False
    return success

##################################################################################################
def main():
    parser = argparse.ArgumentParser(description='Test assembler outputs')
    parser.add_argument('-x', '--make-extras',       action='store_true', help='Create extra files for debugging')
    parser.add_argument('-c', '--check-disassembly', action='store_true', help='Check disassembly (asm) output')
    parser.add_argument('-m', '--make-known-good',   action='store_true', help='Create known-good files')
    parser.add_argument('-a', '--assemblers', type=str, nargs='+', action='append', help='Choose assembler to be used. Can be used multiple times')
    parser.add_argument('files', nargs='*', type=Path, help='Python files to process')

    args = parser.parse_args()

    create_directories()
    assemblers = list(dict.fromkeys([item for sublist in args.assemblers for item in sublist]))

    success = run_tests(
        args.files,
        check_asm_against_known_good=args.check_disassembly,
        make_known_good=args.make_known_good,
        make_extras=args.make_extras,
        assemblers=assemblers
    )

    sys.exit(0 if success else 1)

if __name__ == '__main__':
    main()
