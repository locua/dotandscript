#!/usr/bin/python3
import subprocess
import os
level=os.system("acpi | grep -E -o '([0-9][0-9])%' | grep -E -o '\w\w'$")

print(level)
