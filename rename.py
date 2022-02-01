#!/usr/bin/python3
import os, sys

PATH = "./"

result = [os.path.join(dp, f) for dp, dn, filenames in os.walk(PATH) for f in filenames if os.path.splitext(f)[1] == '.pdf' or os.path.splitext(f)[1] == '.epub' or os.path.splitext(f)[1] == '.mobi' or os.path.splitext(f)[1] == '.MOBI' ]

for f in result:
    print(f, "\n---------")
    #os.rename(f, f.replace("(somestring)", ""))
