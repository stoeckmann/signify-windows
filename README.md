# signify -V for Windows systems

The signify utility, developed by the OpenBSD project,
is used to create and verify cryptographic signatures.
OpenBSD uses it for their installation files.

If you want to install OpenBSD for the first time, you won't
have an OpenBSD installation around to execute this tool to
verify the integrity of your file sets.

Portable versions already exist for Linux and other
Unix-like systems. If you use Windows as your main system,
you can use this project instead.

# How to compile

## Host requirements

I used MinGW to compile signify on Windows.

## Set up source files

Either copy all files from patched-src into top directory.

Or you can copy all required files from OpenBSD's source tree.
For this, I have used latest OpenBSD 5.8 src.tar.gz. In that case,
look at prepare.sh and copy files manually. If you do this, finally
apply the patch mingw.diff. This eventually leads to the same
files as you can find in patched-src.

Having the file mingw.diff around is a great way to look at the
required changes to get signify run on Windows -- it's not much!

# Execution

Run signify always with -V (verify) argument. If you want to create
signatures, use signify from within OpenBSD after your installation. ;)
