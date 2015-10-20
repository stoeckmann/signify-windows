SOURCES := $(wildcard *.c)
OBJECTS := $(SOURCES:.c=.o)
# had no rm installed
RM := del

# signify will only support verification
CFLAGS += -DVERIFYONLY
# look in current directory for sha2.h include
CFLAGS += -I.
# OpenBSD default for amd64/i386
CFLAGS += -O2 -pipe
# amd64/i386 are little endian machines
CFLAGS += -DBYTE_ORDER=LITTLE_ENDIAN
# O_NOFOLLOW not defined, but we can live without it
CFLAGS += -DO_NOFOLLOW=0
# only sha256 is required
CFLAGS += -DSHA2_SMALL
# suppress warnings you would see with MinGW
CFLAGS += -Wno-pointer-sign -Wno-attributes

all: signify.exe

signify.exe: $(OBJECTS)
	${CC} -o $@ $^

%.o: %.c
	${CC} ${CFLAGS} -o $@ -c $^

clean:
	${RM} signify.exe ${OBJECTS}
