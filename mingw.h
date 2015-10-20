#include <sys/types.h>

/* define some types not known to MinGW */
typedef	unsigned char		u_char;
typedef	unsigned char		u_int8_t;
typedef unsigned int		u_int32_t;
typedef unsigned long long	u_int64_t;

/* function prototypes stolen from OpenBSD include files */
size_t strlcpy(char *, const char *, size_t) __attribute__ ((__bounded__(__string__,1,3)));
int b64_pton(char const *, unsigned char *, size_t);
void explicit_bzero(void *, size_t) __attribute__ ((__bounded__(__buffer__,1,2)));
int timingsafe_bcmp(const void *, const void *, size_t);
void err(int, const char *, ...);
void errx(int, const char *, ...);
