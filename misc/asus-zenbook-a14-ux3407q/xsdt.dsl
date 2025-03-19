/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20241212 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of xsdt.dat
 *
 * ACPI Data Table [XSDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "XSDT"    [Extended System Description Table]
[004h 0004 004h]                Table Length : 000000A4
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : B3
[00Ah 0010 006h]                      Oem ID : "QCOM  "
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00008380
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 008h]       ACPI Table Address   0 : 00000000D47D3B98
[02Ch 0044 008h]       ACPI Table Address   1 : 00000000D46DF000
[034h 0052 008h]       ACPI Table Address   2 : 00000000D47D3B18
[03Ch 0060 008h]       ACPI Table Address   3 : 00000000D47C6018
[044h 0068 008h]       ACPI Table Address   4 : 00000000D47D3098
[04Ch 0076 008h]       ACPI Table Address   5 : 00000000D47D3D18
[054h 0084 008h]       ACPI Table Address   6 : 00000000D4781018
[05Ch 0092 008h]       ACPI Table Address   7 : 00000000D4780018
[064h 0100 008h]       ACPI Table Address   8 : 00000000D47D3E18
[06Ch 0108 008h]       ACPI Table Address   9 : 00000000D4780D18
[074h 0116 008h]       ACPI Table Address  10 : 00000000D47D3718
[07Ch 0124 008h]       ACPI Table Address  11 : 00000000D47D3A98
[084h 0132 008h]       ACPI Table Address  12 : 00000000D4780F98
[08Ch 0140 008h]       ACPI Table Address  13 : 00000000D47D3818
[094h 0148 008h]       ACPI Table Address  14 : 00000000D47D3A18
[09Ch 0156 008h]       ACPI Table Address  15 : 00000000D47D3898

Raw Table Data: Length 164 (0xA4)

    0000: 58 53 44 54 A4 00 00 00 01 B3 51 43 4F 4D 20 20  // XSDT......QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 83 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 98 3B 7D D4 00 00 00 00 00 F0 6D D4  // .....;}.......m.
    0030: 00 00 00 00 18 3B 7D D4 00 00 00 00 18 60 7C D4  // .....;}......`|.
    0040: 00 00 00 00 98 30 7D D4 00 00 00 00 18 3D 7D D4  // .....0}......=}.
    0050: 00 00 00 00 18 10 78 D4 00 00 00 00 18 00 78 D4  // ......x.......x.
    0060: 00 00 00 00 18 3E 7D D4 00 00 00 00 18 0D 78 D4  // .....>}.......x.
    0070: 00 00 00 00 18 37 7D D4 00 00 00 00 98 3A 7D D4  // .....7}......:}.
    0080: 00 00 00 00 98 0F 78 D4 00 00 00 00 18 38 7D D4  // ......x......8}.
    0090: 00 00 00 00 18 3A 7D D4 00 00 00 00 98 38 7D D4  // .....:}......8}.
    00A0: 00 00 00 00                                      // ....
