#!/bin/python3

# Convert KiCad gerber export to ZIP file for DirtyPCB
#
# Author: Stefan Haun <tux@netz39.de>

# TODO handle the exceptions
# TODO CLI: check if ZIP file should be overwritten
# TODO CLI: supply destination path

from zipfile import ZipFile
import tempfile
import shutil
import os
from pathlib import PurePath
import signal
import sys

# file suffix transliterations
# https://hackaday.com/2016/12/23/creating-a-pcb-in-everything-kicad-part-3/
FSTR = {
    # Top Copper -> GBL
    "-F.Cu.gbr": ".GTL",
    # Top Solder Mask -> GTS
    "-F.Mask.gbr": ".GTS",
    # Top Silkscreen -> GTO
    "-F.SilkS.gbr": ".GTO",
    # Bottom Copper -> GBL
    "-B.Cu.gbr": ".GBL",
    # Bottom Solder Mask -> GBS
    "-B.Mask.gbr": ".GBS",
    # Bottom Silkscreen -> GBO
    "-B.SilkS.gbr": ".GBO",
    # Board Outline -> GKO
    "-Edge.Cuts.gbr": ".GKO",
    # Drills -> TXT
    ".drl": ".TXT"
    }


def find_base_path(path):
    # check if the suffix is in FSTR
    for suffix in FSTR.keys():
        if path.endswith(suffix):
            l = len(path) - len(suffix)
            base = path[0:l]
            return base
    
    return None


def find_target_name(base):
    p = PurePath(base)
    return p.parts[-1]


def sigint_handler(signal, frame):
    global ProgramWorkingDir
    if ProgramWorkingDir:
        os.chdir(ProgramWorkingDir)
    
    print("SIGINT received. Exit.")
    sys.exit(0)


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Missing parameter, please supply one of the (relative) gerber file paths.")
        sys.exit(-1)

    global ProgramWorkingDir
    ProgramWorkingDir = os.getcwd();
    signal.signal(signal.SIGINT, sigint_handler)
    
    path = sys.argv[1]
    
    base = find_base_path(path)
    if not base:
        print("Unknown suffix in base path!")
        sys.exit(-1)
    print("Base path:", base)
    
    name = find_target_name(base)
    print("Name:     ", name)
    
    tempdir = tempfile.mkdtemp()
    print("Tempdir:  ", tempdir)
    os.chdir(tempdir)
    
    # created files
    files = []
    # Copy files to tmp dir with correct endings
    for src_sfx, dst_sfx in FSTR.items():
        shutil.copyfile(base+src_sfx, name+dst_sfx)
        files.append(name+dst_sfx)
    
    zippath = base+".zip"
    print("ZIP path: ", zippath)
    
    # pack the ZIP file
    with ZipFile(zippath, 'w') as zip:
        for f in files:
            zip.write(f)

    os.chdir(ProgramWorkingDir)
    shutil.rmtree(tempdir)
