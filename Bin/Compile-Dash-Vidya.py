#!/usr/bin/python3
import os

list = []

for files in sorted(os.listdir()):
    if files.endswith(".MP4"):
        # Prints only text file present in My Folder
        list.append(files)

        print(*list, sep = "\n")

##