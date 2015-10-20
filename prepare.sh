#!/bin/sh

# If you don't have an OpenBSD 5.8 source tree installed,
# extract files from the src.tar.gz archive.
SRC=/usr/src

for file in \
    include/sha2.h \
    lib/libc/gen/err.c \
    lib/libc/gen/errx.c \
    lib/libc/gen/verr.c \
    lib/libc/gen/verrx.c \
    lib/libc/hash/sha2.c \
    lib/libc/net/base64.c \
    lib/libc/string/explicit_bzero.c \
    lib/libc/string/strlcpy.c \
    lib/libc/string/timingsafe_bcmp.c \
    usr.bin/signify/crypto_api.c \
    usr.bin/signify/crypto_api.h \
    usr.bin/signify/fe25519.c \
    usr.bin/signify/fe25519.h \
    usr.bin/signify/ge25519.h \
    usr.bin/signify/ge25519_base.data \
    usr.bin/signify/mod_ed25519.c \
    usr.bin/signify/mod_ge25519.c \
    usr.bin/signify/sc25519.c \
    usr.bin/signify/sc25519.h \
    usr.bin/signify/signify.c \
    usr.bin/signify/smult_curve25519_ref.c
do
	cp $SRC/$file .
done

