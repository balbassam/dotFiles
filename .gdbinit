# The real assembly-flavor
set disassembly-flavor intel
# Cleaner C++ reversing
set print asm-demangle on

# Using nicer interface
# source /usr/share/peda/peda.py
source /usr/share/gef/gef.py
# Workount a GDB regression: https://github.com/hugsy/gef/issues/387
gef config gef.debug true
# source /usr/share/pwndbg/gdbinit.py # Once this gets fixes, it will replace the aboves
