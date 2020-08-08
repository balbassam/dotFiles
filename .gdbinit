# The real assembly-flavor
set disassembly-flavor intel
# Cleaner C++ reversing
set print asm-demangle on

# Using nicer interface
source /usr/share/gef/gef.py
gef config context.clear_screen false

# Workount a GDB regression: https://github.com/hugsy/gef/issues/387
