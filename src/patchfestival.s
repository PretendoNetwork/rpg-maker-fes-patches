.3ds

.open "codefestival.bin", "build/patchfestival.bin", 0x100000

setUrl equ 0x4C7880
blankData equ 0x5318DC

// char* strncpy(const char* r0source, char* r1dest, size_t r2num);
strncpy equ 0x1436A4

.include "src/patchmain.s"

.close