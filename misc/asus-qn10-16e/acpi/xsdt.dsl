/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20260408 (32-bit version)
 * Copyright (c) 2000 - 2026 Intel Corporation
 * 
 * Disassembly of xsdt.dat
 *
 * ACPI Data Table [XSDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "XSDT"    [Extended System Description Table]
[004h 0004 004h]                Table Length : 0000009C
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 2D
[00Ah 0010 006h]                      Oem ID : "INSYDE"
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00000001
[01Ch 0028 004h]             Asl Compiler ID : "ACPI"
[020h 0032 004h]       Asl Compiler Revision : 00040000

[024h 0036 008h]       ACPI Table Address   0 : 00000000D5C8DB98
[02Ch 0044 008h]       ACPI Table Address   1 : 00000000D5B70000
[034h 0052 008h]       ACPI Table Address   2 : 00000000D5C8DB18
[03Ch 0060 008h]       ACPI Table Address   3 : 00000000D5C8DE18
[044h 0068 008h]       ACPI Table Address   4 : 00000000D5C7F018
[04Ch 0076 008h]       ACPI Table Address   5 : 00000000D5C8D098
[054h 0084 008h]       ACPI Table Address   6 : 00000000D5C8DD18
[05Ch 0092 008h]       ACPI Table Address   7 : 00000000D5C0E018
[064h 0100 008h]       ACPI Table Address   8 : 00000000D5C0D018
[06Ch 0108 008h]       ACPI Table Address   9 : 00000000D5C0DD18
[074h 0116 008h]       ACPI Table Address  10 : 00000000D5C8D718
[07Ch 0124 008h]       ACPI Table Address  11 : 00000000D5C0DF98
[084h 0132 008h]       ACPI Table Address  12 : 00000000D5C8DE98
[08Ch 0140 008h]       ACPI Table Address  13 : 00000000D5C0DE18
[094h 0148 008h]       ACPI Table Address  14 : 00000000D5C0DE98

Raw Table Data: Length 156 (0x9C)

    0000: 58 53 44 54 9C 00 00 00 01 2D 49 4E 53 59 44 45  // XSDT.....-INSYDE
    0010: 51 43 4F 4D 45 44 4B 32 01 00 00 00 41 43 50 49  // QCOMEDK2....ACPI
    0020: 00 00 04 00 98 DB C8 D5 00 00 00 00 00 00 B7 D5  // ................
    0030: 00 00 00 00 18 DB C8 D5 00 00 00 00 18 DE C8 D5  // ................
    0040: 00 00 00 00 18 F0 C7 D5 00 00 00 00 98 D0 C8 D5  // ................
    0050: 00 00 00 00 18 DD C8 D5 00 00 00 00 18 E0 C0 D5  // ................
    0060: 00 00 00 00 18 D0 C0 D5 00 00 00 00 18 DD C0 D5  // ................
    0070: 00 00 00 00 18 D7 C8 D5 00 00 00 00 98 DF C0 D5  // ................
    0080: 00 00 00 00 98 DE C8 D5 00 00 00 00 18 DE C0 D5  // ................
    0090: 00 00 00 00 98 DE C0 D5 00 00 00 00              // ............
