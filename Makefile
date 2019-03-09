include config.mk

SRC = main.c
OBJ = ${SRC:.c=.o}

all: options main

options:
	@echo build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"

.c.o:
	@echo CC $<
	@${CC} -c ${CFLAGS} $<

${OBJ}: config.h config.mk

config.h:
	@echo creating $@ from config.def.h
	@cp config.def.h $@

main: ${OBJ}
	@echo CC -o $@ ${OBJ} ${LDFLAGS}
	@${CC} -o $@${EXE} ${OBJ} ${LDFLAGS}

clean:
	@echo cleaning
	@rm -f main.exe ${OBJ}

.PHONY: all options clean
