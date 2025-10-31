/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20241212 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of xsdt.dat
 *
 * ACPI Data Table [XSDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "XSDT"    [Extended System Description Table]
[004h 0004 004h]                Table Length : 000000BC
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 93
[00Ah 0010 006h]                      Oem ID : "HPQOEM"
[010h 0016 008h]                Oem Table ID : "8E33    "
[018h 0024 004h]                Oem Revision : 00008380
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 008h]       ACPI Table Address   0 : 00000000D47D3D18
[02Ch 0044 008h]       ACPI Table Address   1 : 00000000D46DB000
[034h 0052 008h]       ACPI Table Address   2 : 00000000D47D3098
[03Ch 0060 008h]       ACPI Table Address   3 : 00000000D47D3B18
[044h 0068 008h]       ACPI Table Address   4 : 00000000D47D3C98
[04Ch 0076 008h]       ACPI Table Address   5 : 00000000D47C2018
[054h 0084 008h]       ACPI Table Address   6 : 00000000D47D3E98
[05Ch 0092 008h]       ACPI Table Address   7 : 00000000D47B6018
[064h 0100 008h]       ACPI Table Address   8 : 00000000D47B5018
[06Ch 0108 008h]       ACPI Table Address   9 : 00000000D47B5D18
[074h 0116 008h]       ACPI Table Address  10 : 00000000D476C018
[07Ch 0124 008h]       ACPI Table Address  11 : 00000000D47B5698
[084h 0132 008h]       ACPI Table Address  12 : 00000000D47B5E18
[08Ch 0140 008h]       ACPI Table Address  13 : 00000000D476B018
[094h 0148 008h]       ACPI Table Address  14 : 00000000D476BF98
[09Ch 0156 008h]       ACPI Table Address  15 : 00000000D47B5F18
[0A4h 0164 008h]       ACPI Table Address  16 : 00000000D47B5F98
[0ACh 0172 008h]       ACPI Table Address  17 : 00000000D476BD18
[0B4h 0180 008h]       ACPI Table Address  18 : 00000000D476BE98

Raw Table Data: Length 188 (0xBC)

    0000: 58 53 44 54 BC 00 00 00 01 93 48 50 51 4F 45 4D  // XSDT......HPQOEM
    0010: 38 45 33 33 20 20 20 20 80 83 00 00 51 43 4F 4D  // 8E33    ....QCOM
    0020: 01 00 00 00 18 3D 7D D4 00 00 00 00 00 B0 6D D4  // .....=}.......m.
    0030: 00 00 00 00 98 30 7D D4 00 00 00 00 18 3B 7D D4  // .....0}......;}.
    0040: 00 00 00 00 98 3C 7D D4 00 00 00 00 18 20 7C D4  // .....<}...... |.
    0050: 00 00 00 00 98 3E 7D D4 00 00 00 00 18 60 7B D4  // .....>}......`{.
    0060: 00 00 00 00 18 50 7B D4 00 00 00 00 18 5D 7B D4  // .....P{......]{.
    0070: 00 00 00 00 18 C0 76 D4 00 00 00 00 98 56 7B D4  // ......v......V{.
    0080: 00 00 00 00 18 5E 7B D4 00 00 00 00 18 B0 76 D4  // .....^{.......v.
    0090: 00 00 00 00 98 BF 76 D4 00 00 00 00 18 5F 7B D4  // ......v......_{.
    00A0: 00 00 00 00 98 5F 7B D4 00 00 00 00 18 BD 76 D4  // ....._{.......v.
    00B0: 00 00 00 00 98 BE 76 D4 00 00 00 00              // ......v.....
