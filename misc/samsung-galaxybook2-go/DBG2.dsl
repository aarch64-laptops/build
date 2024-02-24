/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of ../SSDTTime-master/Results/ACPI/DBG2.aml, Sat Feb 24 21:41:08 2024
 *
 * ACPI Data Table [DBG2]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "DBG2"    [Debug Port Table type 2]
[004h 0004 004h]                Table Length : 00000330
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 55
[00Ah 0010 006h]                      Oem ID : "QCOM  "
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00007280
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 004h]                 Info Offset : 0000002C
[028h 0040 004h]                  Info Count : 00000004

[02Ch 0044 001h]                    Revision : 01
[02Dh 0045 002h]                      Length : 0046
[02Fh 0047 001h]              Register Count : 01
[030h 0048 002h]             Namepath Length : 000A
[032h 0050 002h]             Namepath Offset : 0026
[034h 0052 002h]             OEM Data Length : 0000 [Optional field not present]
[036h 0054 002h]             OEM Data Offset : 0000 [Optional field not present]
[038h 0056 002h]                   Port Type : 8000
[03Ah 0058 002h]                Port Subtype : 0013
[03Ch 0060 002h]                    Reserved : 0000
[03Eh 0062 002h]         Base Address Offset : 0016
[040h 0064 002h]         Address Size Offset : 0022

[042h 0066 00Ch]       Base Address Register : [Generic Address Structure]
[042h 0066 001h]                    Space ID : 00 [SystemMemory]
[043h 0067 001h]                   Bit Width : 20
[044h 0068 001h]                  Bit Offset : 00
[045h 0069 001h]        Encoded Access Width : 20 [Unknown Width Encoding]
[046h 0070 008h]                     Address : 0000000000994000

[04Eh 0078 004h]                Address Size : 00001000

[052h 0082 00Ah]                    Namepath : "\_SB.UARD"

[072h 0114 001h]                    Revision : 01
[073h 0115 002h]                      Length : 00EA
[075h 0117 001h]              Register Count : 02
[076h 0118 002h]             Namepath Length : 000A
[078h 0120 002h]             Namepath Offset : 0036
[07Ah 0122 002h]             OEM Data Length : 0094
[07Ch 0124 002h]             OEM Data Offset : 0056
[07Eh 0126 002h]                   Port Type : 8003
[080h 0128 002h]                Port Subtype : 5143
[082h 0130 002h]                    Reserved : 0000
[084h 0132 002h]         Base Address Offset : 0016
[086h 0134 002h]         Address Size Offset : 002E

[088h 0136 00Ch]       Base Address Register : [Generic Address Structure]
[088h 0136 001h]                    Space ID : 00 [SystemMemory]
[089h 0137 001h]                   Bit Width : 20
[08Ah 0138 001h]                  Bit Offset : 00
[08Bh 0139 001h]        Encoded Access Width : 20 [Unknown Width Encoding]
[08Ch 0140 008h]                     Address : 000000000A600000


[094h 0148 00Ch]       Base Address Register : [Generic Address Structure]
[094h 0148 001h]                    Space ID : 00 [SystemMemory]
[095h 0149 001h]                   Bit Width : 20
[096h 0150 001h]                  Bit Offset : 00
[097h 0151 001h]        Encoded Access Width : 20 [Unknown Width Encoding]
[098h 0152 008h]                     Address : 000000000A600000

[0A0h 0160 004h]                Address Size : 000FFFFF
[0A4h 0164 004h]                Address Size : 00001000

[0A8h 0168 00Ah]                    Namepath : "\_SB.USB0"
[0C8h 0200 094h]                    OEM Data : 44 42 47 32 30 03 00 00 01 55 51 43 4F 4D 20 20 /* DBG20....UQCOM   */\
/* 0D8h 0216  16 */                            51 43 4F 4D 45 44 4B 32 80 72 00 00 51 43 4F 4D /* QCOMEDK2.r..QCOM */\
/* 0E8h 0232  16 */                            01 00 00 00 2C 00 00 00 04 00 00 00 01 46 00 01 /* ....,........F.. */\
/* 0F8h 0248  16 */                            0A 00 26 00 00 00 00 00 00 80 13 00 00 00 16 00 /* ..&............. */\
/* 108h 0264  16 */                            22 00 00 20 00 20 00 40 99 00 00 00 00 00 00 10 /* ".. . .@........ */\
/* 118h 0280  16 */                            00 00 5C 5F 53 42 2E 55 41 52 44 00 00 00 00 00 /* ..\_SB.UARD..... */\
/* 128h 0296  16 */                            00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 /* ................ */\
/* 138h 0312  16 */                            00 00 01 EA 00 02 0A 00 36 00 94 00 56 00 03 80 /* ........6...V... */\
/* 148h 0328  16 */                            43 51 00 00 16 00 2E 00 00 20 00 20 00 00 60 0A /* CQ....... . ..`. */\
/* 158h 0344   4 */                            00 00 00 00                                     /* .... */\

[15Ch 0348 001h]                    Revision : 01
[15Dh 0349 002h]                      Length : 00EA
[15Fh 0351 001h]              Register Count : 02
[160h 0352 002h]             Namepath Length : 000A
[162h 0354 002h]             Namepath Offset : 0036
[164h 0356 002h]             OEM Data Length : 0094
[166h 0358 002h]             OEM Data Offset : 0056
[168h 0360 002h]                   Port Type : 8003
[16Ah 0362 002h]                Port Subtype : 5143
[16Ch 0364 002h]                    Reserved : 0000
[16Eh 0366 002h]         Base Address Offset : 0016
[170h 0368 002h]         Address Size Offset : 002E

[172h 0370 00Ch]       Base Address Register : [Generic Address Structure]
[172h 0370 001h]                    Space ID : 00 [SystemMemory]
[173h 0371 001h]                   Bit Width : 20
[174h 0372 001h]                  Bit Offset : 00
[175h 0373 001h]        Encoded Access Width : 20 [Unknown Width Encoding]
[176h 0374 008h]                     Address : 0000000008C00000


[17Eh 0382 00Ch]       Base Address Register : [Generic Address Structure]
[17Eh 0382 001h]                    Space ID : 00 [SystemMemory]
[17Fh 0383 001h]                   Bit Width : 20
[180h 0384 001h]                  Bit Offset : 00
[181h 0385 001h]        Encoded Access Width : 20 [Unknown Width Encoding]
[182h 0386 008h]                     Address : 0000000008C00000

[18Ah 0394 004h]                Address Size : 000FFFFF
[18Eh 0398 004h]                Address Size : 00001000

[192h 0402 00Ah]                    Namepath : "\_SB.USB1"
[1B2h 0434 094h]                    OEM Data : 44 42 47 32 30 03 00 00 01 55 51 43 4F 4D 20 20 /* DBG20....UQCOM   */\
/* 1C2h 0450  16 */                            51 43 4F 4D 45 44 4B 32 80 72 00 00 51 43 4F 4D /* QCOMEDK2.r..QCOM */\
/* 1D2h 0466  16 */                            01 00 00 00 2C 00 00 00 04 00 00 00 01 46 00 01 /* ....,........F.. */\
/* 1E2h 0482  16 */                            0A 00 26 00 00 00 00 00 00 80 13 00 00 00 16 00 /* ..&............. */\
/* 1F2h 0498  16 */                            22 00 00 20 00 20 00 40 99 00 00 00 00 00 00 10 /* ".. . .@........ */\
/* 202h 0514  16 */                            00 00 5C 5F 53 42 2E 55 41 52 44 00 00 00 00 00 /* ..\_SB.UARD..... */\
/* 212h 0530  16 */                            00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 /* ................ */\
/* 222h 0546  16 */                            00 00 01 EA 00 02 0A 00 36 00 94 00 56 00 03 80 /* ........6...V... */\
/* 232h 0562  16 */                            43 51 00 00 16 00 2E 00 00 20 00 20 00 00 60 0A /* CQ....... . ..`. */\
/* 242h 0578   4 */                            00 00 00 00                                     /* .... */\

[246h 0582 001h]                    Revision : 01
[247h 0583 002h]                      Length : 00EA
[249h 0585 001h]              Register Count : 02
[24Ah 0586 002h]             Namepath Length : 000A
[24Ch 0588 002h]             Namepath Offset : 0036
[24Eh 0590 002h]             OEM Data Length : 0094
[250h 0592 002h]             OEM Data Offset : 0056
[252h 0594 002h]                   Port Type : 8003
[254h 0596 002h]                Port Subtype : 5143
[256h 0598 002h]                    Reserved : 0000
[258h 0600 002h]         Base Address Offset : 0016
[25Ah 0602 002h]         Address Size Offset : 002E

[25Ch 0604 00Ch]       Base Address Register : [Generic Address Structure]
[25Ch 0604 001h]                    Space ID : 00 [SystemMemory]
[25Dh 0605 001h]                   Bit Width : 20
[25Eh 0606 001h]                  Bit Offset : 00
[25Fh 0607 001h]        Encoded Access Width : 20 [Unknown Width Encoding]
[260h 0608 008h]                     Address : 000000000A600000


[268h 0616 00Ch]       Base Address Register : [Generic Address Structure]
[268h 0616 001h]                    Space ID : 00 [SystemMemory]
[269h 0617 001h]                   Bit Width : 20
[26Ah 0618 001h]                  Bit Offset : 00
[26Bh 0619 001h]        Encoded Access Width : 20 [Unknown Width Encoding]
[26Ch 0620 008h]                     Address : 000000000A600000

[274h 0628 004h]                Address Size : 000FFFFF
[278h 0632 004h]                Address Size : 00001000

[27Ch 0636 00Ah]                    Namepath : "\_SB.USB0"
[29Ch 0668 094h]                    OEM Data : 44 42 47 32 30 03 00 00 01 55 51 43 4F 4D 20 20 /* DBG20....UQCOM   */\
/* 2ACh 0684  16 */                            51 43 4F 4D 45 44 4B 32 80 72 00 00 51 43 4F 4D /* QCOMEDK2.r..QCOM */\
/* 2BCh 0700  16 */                            01 00 00 00 2C 00 00 00 04 00 00 00 01 46 00 01 /* ....,........F.. */\
/* 2CCh 0716  16 */                            0A 00 26 00 00 00 00 00 00 80 13 00 00 00 16 00 /* ..&............. */\
/* 2DCh 0732  16 */                            22 00 00 20 00 20 00 40 99 00 00 00 00 00 00 10 /* ".. . .@........ */\
/* 2ECh 0748  16 */                            00 00 5C 5F 53 42 2E 55 41 52 44 00 00 00 00 00 /* ..\_SB.UARD..... */\
/* 2FCh 0764  16 */                            00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 /* ................ */\
/* 30Ch 0780  16 */                            00 00 01 EA 00 02 0A 00 36 00 94 00 56 00 03 80 /* ........6...V... */\
/* 31Ch 0796  16 */                            43 51 00 00 16 00 2E 00 00 20 00 20 00 00 60 0A /* CQ....... . ..`. */\
/* 32Ch 0812   4 */                            00 00 00 00                                     /* .... */\

Raw Table Data: Length 816 (0x330)

    0000: 44 42 47 32 30 03 00 00 01 55 51 43 4F 4D 20 20  // DBG20....UQCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 72 00 00 51 43 4F 4D  // QCOMEDK2.r..QCOM
    0020: 01 00 00 00 2C 00 00 00 04 00 00 00 01 46 00 01  // ....,........F..
    0030: 0A 00 26 00 00 00 00 00 00 80 13 00 00 00 16 00  // ..&.............
    0040: 22 00 00 20 00 20 00 40 99 00 00 00 00 00 00 10  // ".. . .@........
    0050: 00 00 5C 5F 53 42 2E 55 41 52 44 00 00 00 00 00  // ..\_SB.UARD.....
    0060: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0070: 00 00 01 EA 00 02 0A 00 36 00 94 00 56 00 03 80  // ........6...V...
    0080: 43 51 00 00 16 00 2E 00 00 20 00 20 00 00 60 0A  // CQ....... . ..`.
    0090: 00 00 00 00 00 20 00 20 00 00 60 0A 00 00 00 00  // ..... . ..`.....
    00A0: FF FF 0F 00 00 10 00 00 5C 5F 53 42 2E 55 53 42  // ........\_SB.USB
    00B0: 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // 0...............
    00C0: 00 00 00 00 00 00 00 00 05 00 00 00 32 58 49 46  // ............2XIF
    00D0: 03 00 00 00 00 02 00 00 00 C7 00 00 F8 FF FF FF  // ................
    00E0: 00 00 00 00 00 02 00 00 10 88 0F 00 00 00 00 00  // ................
    00F0: 00 00 10 10 00 02 00 00 B4 88 0F 00 00 00 00 00  // ................
    0100: EB 0D 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0110: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0120: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0130: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0140: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0150: 00 00 00 00 00 00 00 00 43 42 53 55 01 EA 00 02  // ........CBSU....
    0160: 0A 00 36 00 94 00 56 00 03 80 43 51 00 00 16 00  // ..6...V...CQ....
    0170: 2E 00 00 20 00 20 00 00 C0 08 00 00 00 00 00 20  // ... . ......... 
    0180: 00 20 00 00 C0 08 00 00 00 00 FF FF 0F 00 00 10  // . ..............
    0190: 00 00 5C 5F 53 42 2E 55 53 42 31 00 00 00 00 00  // ..\_SB.USB1.....
    01A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    01B0: 00 00 05 00 00 00 32 58 49 46 03 00 00 00 00 02  // ......2XIF......
    01C0: 00 00 00 C7 00 00 F8 FF FF FF 00 00 00 00 00 02  // ................
    01D0: 00 00 10 88 0F 00 00 00 00 00 00 00 10 10 00 02  // ................
    01E0: 00 00 B4 88 0F 00 00 00 00 00 EB 0D 00 00 00 00  // ................
    01F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0200: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0210: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0220: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0230: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00  // ................
    0240: 00 00 43 42 53 55 01 EA 00 02 0A 00 36 00 94 00  // ..CBSU......6...
    0250: 56 00 03 80 43 51 00 00 16 00 2E 00 00 20 00 20  // V...CQ....... . 
    0260: 00 00 60 0A 00 00 00 00 00 20 00 20 00 00 60 0A  // ..`...... . ..`.
    0270: 00 00 00 00 FF FF 0F 00 00 10 00 00 5C 5F 53 42  // ............\_SB
    0280: 2E 55 53 42 30 00 00 00 00 00 00 00 00 00 00 00  // .USB0...........
    0290: 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00  // ................
    02A0: 32 58 49 46 03 00 00 00 00 02 00 00 04 C7 00 00  // 2XIF............
    02B0: FF E1 FF FF 00 00 00 00 00 01 00 00 10 88 0F 00  // ................
    02C0: 00 00 00 00 00 00 10 10 00 02 00 00 B4 88 0F 00  // ................
    02D0: 00 00 00 00 EB 0D 00 00 00 00 00 00 00 00 00 00  // ................
    02E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    02F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0300: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0310: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0320: 00 00 00 00 00 00 00 00 00 00 00 00 43 42 53 55  // ............CBSU
