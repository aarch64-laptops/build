/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20241212 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of sdev.dat
 *
 * ACPI Data Table [SDEV]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "SDEV"    [Secure Devices Table]
[004h 0004 004h]                Table Length : 000000DF
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 18
[00Ah 0010 006h]                      Oem ID : "HPQOEM"
[010h 0016 008h]                Oem Table ID : "8E33    "
[018h 0024 004h]                Oem Revision : 00000001
[01Ch 0028 004h]             Asl Compiler ID : "HP  "
[020h 0032 004h]       Asl Compiler Revision : 00040000


[024h 0036 001h]               Subtable Type : 00 [Namespace Device]
[025h 0037 001h]       Flags (decoded below) : 02
                Allow handoff to unsecure OS : 0
            Secure access components present : 1
[026h 0038 002h]                      Length : 0096

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
/* 030h 0048  16 */                            00 00 00 00 00 48 00 02 01 01 F2 04 09 B8 01 00 /* .....H.......... */\
/* 040h 0064   8 */                            03 0E 02 00 34 00 14 00                         /* ....4... */\

[0BAh 0186 001h]               Subtable Type : 00 [Namespace Device]
[0BBh 0187 001h]       Flags (decoded below) : 00
                Allow handoff to unsecure OS : 0
            Secure access components present : 0
[0BCh 0188 002h]                      Length : 0025

[004h 0004 002h]            Device ID Offset : 000C
[006h 0006 002h]            Device ID Length : 0019
[008h 0008 002h]          Vendor Data Offset : 0000
[00Ah 0010 002h]          Vendor Data Length : 0000
[00Ch 0012 019h]                    Namepath : "\_SB.USB4.RHUB.PRT0.IRCM"

Raw Table Data: Length 223 (0xDF)

    0000: 53 44 45 56 DF 00 00 00 01 18 48 50 51 4F 45 4D  // SDEV......HPQOEM
    0010: 38 45 33 33 20 20 20 20 01 00 00 00 48 50 20 20  // 8E33    ....HP  
    0020: 00 00 04 00 00 02 96 00 10 00 0A 00 4E 00 48 00  // ............N.H.
    0030: 1A 00 34 00 5C 5F 53 42 2E 55 53 42 34 00 00 00  // ..4.\_SB.USB4...
    0040: 1C 00 13 00 09 00 00 00 00 00 00 00 00 01 0C 03  // ................
    0050: 30 51 43 4F 4D 30 44 30 39 00 01 00 18 00 00 00  // 0QCOM0D09.......
    0060: 00 00 00 00 20 0A 00 00 00 00 00 10 00 00 00 00  // .... ...........
    0070: 00 00 00 48 00 02 01 01 F2 04 09 B8 01 00 03 0E  // ...H............
    0080: 02 00 34 00 14 00 C5 3F AA 9F 46 BD C2 C8 86 BB  // ..4....?..F.....
    0090: 58 CA B2 06 C9 07 69 71 D0 B2 AB 8D 32 64 8A A7  // X.....iq....2d..
    00A0: 3D 88 9E E4 6B 50 5C 5F 53 42 2E 55 53 42 34 2E  // =...kP\_SB.USB4.
    00B0: 52 48 55 42 2E 50 52 54 30 00 00 00 25 00 0C 00  // RHUB.PRT0...%...
    00C0: 19 00 00 00 00 00 5C 5F 53 42 2E 55 53 42 34 2E  // ......\_SB.USB4.
    00D0: 52 48 55 42 2E 50 52 54 30 2E 49 52 43 4D 00     // RHUB.PRT0.IRCM.
