/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20260408 (64-bit version)
 * Copyright (c) 2000 - 2026 Intel Corporation
 * 
 * Disassembly of sdev.dat
 *
 * ACPI Data Table [SDEV]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "SDEV"    [Secure Devices Table]
[004h 0004 004h]                Table Length : 0000012D
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 04
[00Ah 0010 006h]                      Oem ID : "_ASUS_"
[010h 0016 008h]                Oem Table ID : "Notebook"
[018h 0024 004h]                Oem Revision : 00008380
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001


[024h 0036 001h]               Subtable Type : 00 [Namespace Device]
[025h 0037 001h]       Flags (decoded below) : 02
                Allow handoff to unsecure OS : 0
            Secure access components present : 1
[026h 0038 002h]                      Length : 004E

[004h 0004 002h]            Device ID Offset : 0010
[006h 0006 002h]            Device ID Length : 000A
[008h 0008 002h]          Vendor Data Offset : 0000
[00Ah 0010 002h]          Vendor Data Length : 0000
[00Ch 0012 002h] Secure Access Components Offset : 001A
[00Eh 0014 002h] Secure Access Components Length : 0034
[010h 0016 001h]       Secure Component Type : 00
[011h 0017 001h]       Flags (decoded below) : 00
[012h 0018 002h]                      Length : 001C
[018h 0024 002h]          Hardware ID Offset : 0013
[01Ah 0026 002h]          Hardware ID Length : 0009
[01Ch 0028 002h]         Subsystem ID Offset : 0000
[01Eh 0030 002h]         Subsystem ID Length : 0000
[020h 0032 002h]           Hardware Revision : 0000
[022h 0034 001h]        Hardware Rev Present : 00
[023h 0035 001h]          Class Code Present : 00
[024h 0036 001h]              PCI Base Class : 00
[025h 0037 001h]                PCI SubClass : 00
[026h 0038 001h]       PCI Programming Xface : 00
[048h 0072 00Ah]                    Namepath : "\_SB.SISP"

[072h 0114 001h]               Subtable Type : 00 [Namespace Device]
[073h 0115 001h]       Flags (decoded below) : 02
                Allow handoff to unsecure OS : 0
            Secure access components present : 1
[074h 0116 002h]                      Length : 0096

[004h 0004 002h]            Device ID Offset : 0010
[006h 0006 002h]            Device ID Length : 000A
[008h 0008 002h]          Vendor Data Offset : 004E
[00Ah 0010 002h]          Vendor Data Length : 0048
[00Ch 0012 002h] Secure Access Components Offset : 001A
[00Eh 0014 002h] Secure Access Components Length : 0034
[010h 0016 001h]       Secure Component Type : 00
[011h 0017 001h]       Flags (decoded below) : 00
[012h 0018 002h]                      Length : 001C
[018h 0024 002h]          Hardware ID Offset : 0013
[01Ah 0026 002h]          Hardware ID Length : 0009
[01Ch 0028 002h]         Subsystem ID Offset : 0000
[01Eh 0030 002h]         Subsystem ID Length : 0000
[020h 0032 002h]           Hardware Revision : 0000
[022h 0034 001h]        Hardware Rev Present : 00
[023h 0035 001h]          Class Code Present : 01
[024h 0036 001h]              PCI Base Class : 0C
[025h 0037 001h]                PCI SubClass : 03
[026h 0038 001h]       PCI Programming Xface : 30
[048h 0072 00Ah]                    Namepath : "\_SB.USB4"
[000h 0000 048h]                 Vendor Data : 00 00 1C 00 13 00 09 00 00 00 00 00 00 00 00 01 /* ................ */\
/* 010h 0016  16 */                            0C 03 30 51 43 4F 4D 30 44 30 39 00 01 00 18 00 /* ..0QCOM0D09..... */\
/* 020h 0032  16 */                            00 00 00 00 00 00 20 0A 00 00 00 00 00 10 00 00 /* ...... ......... */\
/* 030h 0048  16 */                            00 00 00 00 00 48 00 02 01 01 77 32 EF 00 01 00 /* .....H....w2.... */\
/* 040h 0064   8 */                            00 0E 03 00 34 00 14 00                         /* ....4... */\

[108h 0264 001h]               Subtable Type : 00 [Namespace Device]
[109h 0265 001h]       Flags (decoded below) : 00
                Allow handoff to unsecure OS : 0
            Secure access components present : 0
[10Ah 0266 002h]                      Length : 0025

[004h 0004 002h]            Device ID Offset : 000C
[006h 0006 002h]            Device ID Length : 0019
[008h 0008 002h]          Vendor Data Offset : 0000
[00Ah 0010 002h]          Vendor Data Length : 0000
[00Ch 0012 019h]                    Namepath : "\_SB.USB4.RHUB.PRT0.IRCM"

Raw Table Data: Length 301 (0x12D)

    0000: 53 44 45 56 2D 01 00 00 01 04 5F 41 53 55 53 5F  // SDEV-....._ASUS_
    0010: 4E 6F 74 65 62 6F 6F 6B 80 83 00 00 51 43 4F 4D  // Notebook....QCOM
    0020: 01 00 00 00 00 02 4E 00 10 00 0A 00 00 00 00 00  // ......N.........
    0030: 1A 00 34 00 5C 5F 53 42 2E 53 49 53 50 00 00 00  // ..4.\_SB.SISP...
    0040: 1C 00 13 00 09 00 00 00 00 00 00 00 00 00 00 00  // ................
    0050: 00 51 43 4F 4D 30 43 43 43 00 01 00 18 00 00 00  // .QCOM0CCC.......
    0060: 00 00 00 A0 CC 0A 00 00 00 00 00 40 00 00 00 00  // ...........@....
    0070: 00 00 00 02 96 00 10 00 0A 00 4E 00 48 00 1A 00  // ..........N.H...
    0080: 34 00 5C 5F 53 42 2E 55 53 42 34 00 00 00 1C 00  // 4.\_SB.USB4.....
    0090: 13 00 09 00 00 00 00 00 00 00 00 01 0C 03 30 51  // ..............0Q
    00A0: 43 4F 4D 30 44 30 39 00 01 00 18 00 00 00 00 00  // COM0D09.........
    00B0: 00 00 20 0A 00 00 00 00 00 10 00 00 00 00 00 00  // .. .............
    00C0: 00 48 00 02 01 01 77 32 EF 00 01 00 00 0E 03 00  // .H....w2........
    00D0: 34 00 14 00 24 4A 9B 93 C3 6E 84 9B 5A AD 92 54  // 4...$J...n..Z..T
    00E0: 4E 57 4A 82 4E 91 CE B6 40 88 2A 44 FE 29 5C 4C  // NWJ.N...@.*D.)\L
    00F0: 40 03 3F CA 5C 5F 53 42 2E 55 53 42 34 2E 52 48  // @.?.\_SB.USB4.RH
    0100: 55 42 2E 50 52 54 30 00 00 00 25 00 0C 00 19 00  // UB.PRT0...%.....
    0110: 00 00 00 00 5C 5F 53 42 2E 55 53 42 34 2E 52 48  // ....\_SB.USB4.RH
    0120: 55 42 2E 50 52 54 30 2E 49 52 43 4D 00           // UB.PRT0.IRCM.
