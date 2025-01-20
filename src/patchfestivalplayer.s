.3ds

.open "codefestivalplayer.bin", "build/patchfestivalplayer.bin", 0x100000

setUrl equ 0x209078
blankData equ 0x2A0C4C

// char* strncpy(const char* r0source, char* r1dest, size_t r2num);
strncpy equ 0x289A94

.include "src/patchmain.s"

.close