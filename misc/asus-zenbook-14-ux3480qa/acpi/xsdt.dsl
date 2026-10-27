/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20260408 (64-bit version)
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
[009h 0009 001h]                    Checksum : 0B
[00Ah 0010 006h]                      Oem ID : "_ASUS_"
[010h 0016 008h]                Oem Table ID : "Notebook"
[018h 0024 004h]                Oem Revision : 00008380
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 008h]       ACPI Table Address   0 : 00000000D47BCC98
[02Ch 0044 008h]       ACPI Table Address   1 : 00000000D46C8000
[034h 0052 008h]       ACPI Table Address   2 : 00000000D47BCB18
[03Ch 0060 008h]       ACPI Table Address   3 : 00000000D47AF018
[044h 0068 008h]       ACPI Table Address   4 : 00000000D47BC098
[04Ch 0076 008h]       ACPI Table Address   5 : 00000000D47BCE18
[054h 0084 008h]       ACPI Table Address   6 : 00000000D475C018
[05Ch 0092 008h]       ACPI Table Address   7 : 00000000D475B018
[064h 0100 008h]       ACPI Table Address   8 : 00000000D475BD18
[06Ch 0108 008h]       ACPI Table Address   9 : 00000000D47BC718
[074h 0116 008h]       ACPI Table Address  10 : 00000000D475BF98
[07Ch 0124 008h]       ACPI Table Address  11 : 00000000D47BC998
[084h 0132 008h]       ACPI Table Address  12 : 00000000D47BCA18
[08Ch 0140 008h]       ACPI Table Address  13 : 00000000D47BCA98
[094h 0148 008h]       ACPI Table Address  14 : 00000000D475BE18

Raw Table Data: Length 156 (0x9C)

    0000: 58 53 44 54 9C 00 00 00 01 0B 5F 41 53 55 53 5F  // XSDT......_ASUS_
    0010: 4E 6F 74 65 62 6F 6F 6B 80 83 00 00 51 43 4F 4D  // Notebook....QCOM
    0020: 01 00 00 00 98 CC 7B D4 00 00 00 00 00 80 6C D4  // ......{.......l.
    0030: 00 00 00 00 18 CB 7B D4 00 00 00 00 18 F0 7A D4  // ......{.......z.
    0040: 00 00 00 00 98 C0 7B D4 00 00 00 00 18 CE 7B D4  // ......{.......{.
    0050: 00 00 00 00 18 C0 75 D4 00 00 00 00 18 B0 75 D4  // ......u.......u.
    0060: 00 00 00 00 18 BD 75 D4 00 00 00 00 18 C7 7B D4  // ......u.......{.
    0070: 00 00 00 00 98 BF 75 D4 00 00 00 00 98 C9 7B D4  // ......u.......{.
    0080: 00 00 00 00 18 CA 7B D4 00 00 00 00 98 CA 7B D4  // ......{.......{.
    0090: 00 00 00 00 18 BE 75 D4 00 00 00 00              // ......u.....
