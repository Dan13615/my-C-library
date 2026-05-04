# C23 standard library function checklist

This checklist groups C23 standard library functions by header so they can be tracked while implementing a libc. The header set and function groupings are based on cppreference's C header index and individual header synopsis pages, including C23 additions such as `<stdbit.h>`, `free_sized`, `free_aligned_sized`, `strdup`, `strndup`, `memset_explicit`, and `memccpy`.[cite:1][cite:6]

## `<assert.h>`

- [ ] `assert` [cite:1]

## `<complex.h>`

- [ ] `cabs` [cite:1]
- [ ] `cacos` [cite:1]
- [ ] `cacosh` [cite:1]
- [ ] `carg` [cite:1]
- [ ] `casin` [cite:1]
- [ ] `casinh` [cite:1]
- [ ] `catan` [cite:1]
- [ ] `catanh` [cite:1]
- [ ] `ccos` [cite:1]
- [ ] `ccosh` [cite:1]
- [ ] `cexp` [cite:1]
- [ ] `cimag` [cite:1]
- [ ] `clog` [cite:1]
- [ ] `conj` [cite:1]
- [ ] `cpow` [cite:1]
- [ ] `cproj` [cite:1]
- [ ] `creal` [cite:1]
- [ ] `csin` [cite:1]
- [ ] `csinh` [cite:1]
- [ ] `csqrt` [cite:1]
- [ ] `ctan` [cite:1]
- [ ] `ctanh` [cite:1]

## `<ctype.h>`

- [ ] `isalnum` [cite:1]
- [ ] `isalpha` [cite:1]
- [ ] `isblank` [cite:1]
- [ ] `iscntrl` [cite:1]
- [ ] `isdigit` [cite:1]
- [ ] `isgraph` [cite:1]
- [ ] `islower` [cite:1]
- [ ] `isprint` [cite:1]
- [ ] `ispunct` [cite:1]
- [ ] `isspace` [cite:1]
- [ ] `isupper` [cite:1]
- [ ] `isxdigit` [cite:1]
- [ ] `tolower` [cite:1]
- [ ] `toupper` [cite:1]

## `<errno.h>`

_No functions; macros and `errno` only._ [cite:1]

## `<fenv.h>`

- [ ] `feclearexcept` [cite:1]
- [ ] `fegetexceptflag` [cite:1]
- [ ] `feraiseexcept` [cite:1]
- [ ] `fesetexceptflag` [cite:1]
- [ ] `fetestexcept` [cite:1]
- [ ] `fegetround` [cite:1]
- [ ] `fesetround` [cite:1]
- [ ] `fegetenv` [cite:1]
- [ ] `feholdexcept` [cite:1]
- [ ] `fesetenv` [cite:1]
- [ ] `feupdateenv` [cite:1]

## `<float.h>`

_No functions; floating-point limits and characteristics only._ [cite:1]

## `<inttypes.h>`

- [ ] `imaxabs` [cite:1]
- [ ] `imaxdiv` [cite:1]
- [ ] `strtoimax` [cite:1]
- [ ] `strtoumax` [cite:1]
- [ ] `wcstoimax` [cite:1]
- [ ] `wcstoumax` [cite:1]

## `<iso646.h>`

_No functions; operator macros only._ [cite:1]

## `<limits.h>`

_No functions; integer limits only._ [cite:1]

## `<locale.h>`

- [ ] `setlocale` [cite:1]
- [ ] `localeconv` [cite:1]

## `<math.h>`

### Basic operations

- [ ] `fabs` [cite:4]
- [ ] `fmod` [cite:4]
- [ ] `remainder` [cite:4]
- [ ] `remquo` [cite:4]
- [ ] `fma` [cite:4]
- [ ] `fmax` [cite:4]
- [ ] `fmin` [cite:4]
- [ ] `fdim` [cite:4]
- [ ] `nan` [cite:4]

### Exponential and logarithmic

- [ ] `exp` [cite:4]
- [ ] `exp2` [cite:4]
- [ ] `expm1` [cite:4]
- [ ] `log` [cite:4]
- [ ] `log10` [cite:4]
- [ ] `log2` [cite:4]
- [ ] `log1p` [cite:4]

### Power and roots

- [ ] `pow` [cite:4]
- [ ] `sqrt` [cite:4]
- [ ] `cbrt` [cite:4]
- [ ] `hypot` [cite:4]

### Trigonometric

- [ ] `sin` [cite:4]
- [ ] `cos` [cite:4]
- [ ] `tan` [cite:4]
- [ ] `asin` [cite:4]
- [ ] `acos` [cite:4]
- [ ] `atan` [cite:4]
- [ ] `atan2` [cite:4]

### Hyperbolic

- [ ] `sinh` [cite:4]
- [ ] `cosh` [cite:4]
- [ ] `tanh` [cite:4]
- [ ] `asinh` [cite:4]
- [ ] `acosh` [cite:4]
- [ ] `atanh` [cite:4]

### Error and gamma

- [ ] `erf` [cite:4]
- [ ] `erfc` [cite:4]
- [ ] `tgamma` [cite:4]
- [ ] `lgamma` [cite:4]

### Rounding

- [ ] `ceil` [cite:4]
- [ ] `floor` [cite:4]
- [ ] `trunc` [cite:4]
- [ ] `round` [cite:4]
- [ ] `nearbyint` [cite:4]
- [ ] `rint` [cite:4]

### Floating-point manipulation

- [ ] `frexp` [cite:4]
- [ ] `ldexp` [cite:4]
- [ ] `modf` [cite:4]
- [ ] `scalbn` [cite:4]
- [ ] `ilogb` [cite:4]
- [ ] `logb` [cite:4]
- [ ] `nextafter` [cite:4]
- [ ] `nexttoward` [cite:4]
- [ ] `copysign` [cite:4]

### Classification and comparison macros

- [ ] `fpclassify` [cite:4]
- [ ] `isfinite` [cite:4]
- [ ] `isinf` [cite:4]
- [ ] `isnan` [cite:4]
- [ ] `isnormal` [cite:4]
- [ ] `signbit` [cite:4]
- [ ] `isgreater` [cite:4]
- [ ] `isgreaterequal` [cite:4]
- [ ] `isless` [cite:4]
- [ ] `islessequal` [cite:4]
- [ ] `islessgreater` [cite:4]
- [ ] `isunordered` [cite:4]

## `<setjmp.h>`

- [ ] `setjmp` [cite:1]
- [ ] `longjmp` [cite:1]

## `<signal.h>`

- [ ] `signal` [cite:1]
- [ ] `raise` [cite:1]

## `<stdalign.h>`

_No functions; alignment macros only._ [cite:1]

## `<stdarg.h>`

_No functions; varargs macros only._ [cite:1]

## `<stdatomic.h>`

_Most facilities are generic macros and atomic operations rather than a short fixed list of ordinary functions._ [cite:1]

## `<stdbit.h>`

- [ ] `stdc_leading_zeros` [cite:6]
- [ ] `stdc_leading_ones` [cite:6]
- [ ] `stdc_trailing_zeros` [cite:6]
- [ ] `stdc_trailing_ones` [cite:6]
- [ ] `stdc_first_leading_zero` [cite:6]
- [ ] `stdc_first_leading_one` [cite:6]
- [ ] `stdc_first_trailing_zero` [cite:6]
- [ ] `stdc_first_trailing_one` [cite:6]
- [ ] `stdc_count_zeros` [cite:6]
- [ ] `stdc_count_ones` [cite:6]
- [ ] `stdc_has_single_bit` [cite:6]
- [ ] `stdc_bit_width` [cite:6]
- [ ] `stdc_bit_floor` [cite:6]
- [ ] `stdc_bit_ceil` [cite:6]

## `<stdbool.h>`

_No functions; boolean macros only._ [cite:1]

## `<stdckdint.h>`

_No ordinary functions; checked arithmetic is exposed as macros._ [cite:1]

## `<stddef.h>`

_No functions; common types and macros only._ [cite:1]

## `<stdint.h>`

_No functions; fixed-width integer types and macros only._ [cite:1]

## `<stdio.h>`

### File and stream control

- [ ] `remove` [cite:3]
- [ ] `rename` [cite:3]
- [ ] `tmpfile` [cite:3]
- [ ] `tmpnam` [cite:3]
- [ ] `fclose` [cite:3]
- [ ] `fflush` [cite:3]
- [ ] `fopen` [cite:3]
- [ ] `freopen` [cite:3]
- [ ] `setbuf` [cite:3]
- [ ] `setvbuf` [cite:3]

### Formatted output and input

- [ ] `printf` [cite:3]
- [ ] `scanf` [cite:3]
- [ ] `snprintf` [cite:3]
- [ ] `sprintf` [cite:3]
- [ ] `sscanf` [cite:3]
- [ ] `fprintf` [cite:3]
- [ ] `fscanf` [cite:3]
- [ ] `vfprintf` [cite:3]
- [ ] `vfscanf` [cite:3]
- [ ] `vprintf` [cite:3]
- [ ] `vscanf` [cite:3]
- [ ] `vsnprintf` [cite:3]
- [ ] `vsprintf` [cite:3]
- [ ] `vsscanf` [cite:3]

### Character I/O

- [ ] `fgetc` [cite:3]
- [ ] `fgets` [cite:3]
- [ ] `fputc` [cite:3]
- [ ] `fputs` [cite:3]
- [ ] `getc` [cite:3]
- [ ] `getchar` [cite:3]
- [ ] `putc` [cite:3]
- [ ] `putchar` [cite:3]
- [ ] `puts` [cite:3]
- [ ] `ungetc` [cite:3]

### Block I/O

- [ ] `fread` [cite:3]
- [ ] `fwrite` [cite:3]

### Positioning

- [ ] `fgetpos` [cite:3]
- [ ] `fseek` [cite:3]
- [ ] `fsetpos` [cite:3]
- [ ] `ftell` [cite:3]
- [ ] `rewind` [cite:3]

### Status and error reporting

- [ ] `clearerr` [cite:3]
- [ ] `feof` [cite:3]
- [ ] `ferror` [cite:3]
- [ ] `perror` [cite:3]

### Optional bounds-checked interfaces

- [ ] `tmpfile_s` [cite:3]
- [ ] `tmpnam_s` [cite:3]
- [ ] `fopen_s` [cite:3]
- [ ] `freopen_s` [cite:3]
- [ ] `fprintf_s` [cite:3]
- [ ] `fscanf_s` [cite:3]
- [ ] `printf_s` [cite:3]
- [ ] `scanf_s` [cite:3]
- [ ] `snprintf_s` [cite:3]
- [ ] `sprintf_s` [cite:3]
- [ ] `sscanf_s` [cite:3]
- [ ] `vfprintf_s` [cite:3]
- [ ] `vfscanf_s` [cite:3]
- [ ] `vprintf_s` [cite:3]
- [ ] `vscanf_s` [cite:3]
- [ ] `vsnprintf_s` [cite:3]
- [ ] `vsprintf_s` [cite:3]
- [ ] `vsscanf_s` [cite:3]
- [ ] `gets_s` [cite:3]

## `<stdlib.h>`

### Program termination

- [ ] `abort` [cite:5]
- [ ] `exit` [cite:5]
- [ ] `quick_exit` [cite:5]
- [ ] `_Exit` [cite:5]
- [ ] `atexit` [cite:5]
- [ ] `at_quick_exit` [cite:5]

### Numeric conversion

- [ ] `atof` [cite:5]
- [ ] `atoi` [cite:5]
- [ ] `atol` [cite:5]
- [ ] `atoll` [cite:5]
- [ ] `strtod` [cite:5]
- [ ] `strtof` [cite:5]
- [ ] `strtold` [cite:5]
- [ ] `strtol` [cite:5]
- [ ] `strtoll` [cite:5]
- [ ] `strtoul` [cite:5]
- [ ] `strtoull` [cite:5]
- [ ] `strfromd` [cite:5]
- [ ] `strfromf` [cite:5]
- [ ] `strfroml` [cite:5]

### Random numbers

- [ ] `rand` [cite:5]
- [ ] `srand` [cite:5]

### Memory management

- [ ] `aligned_alloc` [cite:5]
- [ ] `calloc` [cite:5]
- [ ] `free` [cite:5]
- [ ] `free_sized` [cite:5]
- [ ] `free_aligned_sized` [cite:5]
- [ ] `malloc` [cite:5]
- [ ] `realloc` [cite:5]

### Environment and process

- [ ] `getenv` [cite:5]
- [ ] `system` [cite:5]

### Searching and sorting

- [ ] `bsearch` [cite:5]
- [ ] `qsort` [cite:5]

### Integer arithmetic

- [ ] `abs` [cite:5]
- [ ] `labs` [cite:5]
- [ ] `llabs` [cite:5]
- [ ] `div` [cite:5]
- [ ] `ldiv` [cite:5]
- [ ] `lldiv` [cite:5]

### Multibyte and wide-character conversion

- [ ] `mblen` [cite:5]
- [ ] `mbtowc` [cite:5]
- [ ] `wctomb` [cite:5]
- [ ] `mbstowcs` [cite:5]
- [ ] `wcstombs` [cite:5]

### Alignment query

- [ ] `memalignment` [cite:5]

## `<stdnoreturn.h>`

_No functions; macro only._ [cite:1]

## `<string.h>`

### Memory

- [x] `memcpy` [cite:2]
- [ ] `memccpy` [cite:2]
- [x] `memmove` [cite:2]
- [ ] `memchr` [cite:2]
- [ ] `memcmp` [cite:2]
- [x] `memset` [cite:2]
- [ ] `memset_explicit` [cite:2]

### Copying and concatenation

- [ ] `strcpy` [cite:2]
- [ ] `strncpy` [cite:2]
- [ ] `strdup` [cite:2]
- [ ] `strndup` [cite:2]
- [ ] `strcat` [cite:2]
- [ ] `strncat` [cite:2]

### Comparison and collation

- [x] `strcmp` [cite:2]
- [x] `strncmp` [cite:2]
- [ ] `strcoll` [cite:2]
- [ ] `strxfrm` [cite:2]

### Search and tokenization

- [x] `strlen` [cite:2]
- [x] `strchr` [cite:2]
- [x] `strrchr` [cite:2]
- [x] `strspn` [cite:2]
- [x] `strcspn` [cite:2]
- [x] `strpbrk` [cite:2]
- [x] `strstr` [cite:2]
- [ ] `strtok` [cite:2]

### Error text

- [ ] `strerror` [cite:2]

### Optional bounds-checked interfaces

- [ ] `memcpy_s` [cite:2]
- [ ] `memmove_s` [cite:2]
- [ ] `strcpy_s` [cite:2]
- [ ] `strncpy_s` [cite:2]
- [ ] `strcat_s` [cite:2]
- [ ] `strncat_s` [cite:2]
- [ ] `strtok_s` [cite:2]
- [ ] `memset_s` [cite:2]
- [ ] `strerror_s` [cite:2]
- [ ] `strerrorlen_s` [cite:2]
- [ ] `strnlen_s` [cite:2]

## `<tgmath.h>`

_No ordinary functions; type-generic macros dispatch to math and complex functions._ [cite:1]

## `<threads.h>`

### Threads

- [ ] `thrd_create` [cite:1]
- [ ] `thrd_equal` [cite:1]
- [ ] `thrd_current` [cite:1]
- [ ] `thrd_sleep` [cite:1]
- [ ] `thrd_yield` [cite:1]
- [ ] `thrd_exit` [cite:1]
- [ ] `thrd_detach` [cite:1]
- [ ] `thrd_join` [cite:1]

### Mutexes

- [ ] `mtx_init` [cite:1]
- [ ] `mtx_lock` [cite:1]
- [ ] `mtx_timedlock` [cite:1]
- [ ] `mtx_trylock` [cite:1]
- [ ] `mtx_unlock` [cite:1]
- [ ] `mtx_destroy` [cite:1]

### Condition variables

- [ ] `cnd_init` [cite:1]
- [ ] `cnd_wait` [cite:1]
- [ ] `cnd_timedwait` [cite:1]
- [ ] `cnd_signal` [cite:1]
- [ ] `cnd_broadcast` [cite:1]
- [ ] `cnd_destroy` [cite:1]

### Thread-specific storage

- [ ] `tss_create` [cite:1]
- [ ] `tss_set` [cite:1]
- [ ] `tss_get` [cite:1]
- [ ] `tss_delete` [cite:1]

### One-time initialization

- [ ] `call_once` [cite:1]

## `<time.h>`

- [ ] `clock` [cite:1]
- [ ] `difftime` [cite:1]
- [ ] `mktime` [cite:1]
- [ ] `time` [cite:1]
- [ ] `asctime` [cite:1]
- [ ] `ctime` [cite:1]
- [ ] `gmtime` [cite:1]
- [ ] `localtime` [cite:1]
- [ ] `strftime` [cite:1]
- [ ] `timegm` [cite:1]

## `<uchar.h>`

- [ ] `mbrtoc8` [cite:1]
- [ ] `c8rtomb` [cite:1]
- [ ] `mbrtoc16` [cite:1]
- [ ] `c16rtomb` [cite:1]
- [ ] `mbrtoc32` [cite:1]
- [ ] `c32rtomb` [cite:1]

## `<wchar.h>`

- [ ] `btowc` [cite:1]
- [ ] `wctob` [cite:1]
- [ ] `mbrlen` [cite:1]
- [ ] `mbrtowc` [cite:1]
- [ ] `wcrtomb` [cite:1]
- [ ] `mbsinit` [cite:1]
- [ ] `mbsrtowcs` [cite:1]
- [ ] `wcsrtombs` [cite:1]
- [ ] `wcscpy` [cite:1]
- [ ] `wcsncpy` [cite:1]
- [ ] `wcscat` [cite:1]
- [ ] `wcsncat` [cite:1]
- [ ] `wcscmp` [cite:1]
- [ ] `wcsncmp` [cite:1]
- [ ] `wcscoll` [cite:1]
- [ ] `wcsxfrm` [cite:1]
- [ ] `wcslen` [cite:1]
- [ ] `wcschr` [cite:1]
- [ ] `wcsrchr` [cite:1]
- [ ] `wcscspn` [cite:1]
- [ ] `wcsspn` [cite:1]
- [ ] `wcspbrk` [cite:1]
- [ ] `wcsstr` [cite:1]
- [ ] `wcstok` [cite:1]
- [ ] `wmemchr` [cite:1]
- [ ] `wmemcmp` [cite:1]
- [ ] `wmemcpy` [cite:1]
- [ ] `wmemmove` [cite:1]
- [ ] `wmemset` [cite:1]
- [ ] `wcstod` [cite:1]
- [ ] `wcstof` [cite:1]
- [ ] `wcstold` [cite:1]
- [ ] `wcstol` [cite:1]
- [ ] `wcstoll` [cite:1]
- [ ] `wcstoul` [cite:1]
- [ ] `wcstoull` [cite:1]
- [ ] `wcscpy_s` [cite:1]
- [ ] `wcsncpy_s` [cite:1]
- [ ] `wcscat_s` [cite:1]
- [ ] `wcsncat_s` [cite:1]
- [ ] `wcstok_s` [cite:1]
- [ ] `wmemcpy_s` [cite:1]
- [ ] `wmemmove_s` [cite:1]
- [ ] `wprintf` [cite:1]
- [ ] `fwprintf` [cite:1]
- [ ] `swprintf` [cite:1]
- [ ] `vwprintf` [cite:1]
- [ ] `vfwprintf` [cite:1]
- [ ] `vswprintf` [cite:1]
- [ ] `wscanf` [cite:1]
- [ ] `fwscanf` [cite:1]
- [ ] `swscanf` [cite:1]
- [ ] `vwscanf` [cite:1]
- [ ] `vfwscanf` [cite:1]
- [ ] `vswscanf` [cite:1]
- [ ] `fgetwc` [cite:1]
- [ ] `fputwc` [cite:1]
- [ ] `fgetws` [cite:1]
- [ ] `fputws` [cite:1]
- [ ] `ungetwc` [cite:1]
- [ ] `getwc` [cite:1]
- [ ] `getwchar` [cite:1]
- [ ] `putwc` [cite:1]
- [ ] `putwchar` [cite:1]
- [ ] `fwide` [cite:1]
- [ ] `wcsftime` [cite:1]

## `<wctype.h>`

- [ ] `iswalnum` [cite:1]
- [ ] `iswalpha` [cite:1]
- [ ] `iswblank` [cite:1]
- [ ] `iswcntrl` [cite:1]
- [ ] `iswdigit` [cite:1]
- [ ] `iswgraph` [cite:1]
- [ ] `iswlower` [cite:1]
- [ ] `iswprint` [cite:1]
- [ ] `iswpunct` [cite:1]
- [ ] `iswspace` [cite:1]
- [ ] `iswupper` [cite:1]
- [ ] `iswxdigit` [cite:1]
- [ ] `iswctype` [cite:1]
- [ ] `towctrans` [cite:1]
- [ ] `towlower` [cite:1]
- [ ] `towupper` [cite:1]
- [ ] `wctrans` [cite:1]
- [ ] `wctype` [cite:1]
