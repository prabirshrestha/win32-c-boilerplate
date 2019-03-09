VERSION = alpha

# Customize below to fit your system

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\"
CFLAGS = -target x86_64-pc-windows-gnu -std=c99 -pedantic -Wall -Os ${CPPFLAGS}
LDFLAGS = -target x86_64-pc-windows-gnu -mwindows -s
# CFLAGS = -target x86_64-windows-msvc -std=c99 -pedantic -Wall -Os ${CPPFLAGS}
# LDFLAGS = -target x86_64-windows-msvc

EXE=.exe

# compiler and linker
CC = clang
