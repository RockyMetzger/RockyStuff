#!/bin/sed
# /^?/d
# /^.D/d
# s/^.M//
# s/^M//
# 
#git status -s > "FileNames.txt"
/?/d # Delete line if first char is ?
# /^A/d   # Delete line if first char is A
/^D/d   # Delete line if first char is D
/^.D/d   # Delete line if second char is D
## Remove M
s/^.M//  
s/^M//
## Remove A
s/^.A//  
s/^A//
# Remove blank lines
/^\s*$/d

#git status -s > FileNames.txt ; sed -i -f MakeFileNames.sed "FileNames.txt"