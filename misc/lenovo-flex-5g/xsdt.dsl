/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of xsdt.dat, Tue Aug 11 12:35:11 2020
 *
 * ACPI Data Table [XSDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "XSDT"    [Extended System Description Table]
[004h 0004   4]                 Table Length : 00000084
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : DE
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00008180
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   8]       ACPI Table Address   0 : 00000000FFF8E000
[02Ch 0044   8]       ACPI Table Address   1 : 00000000FFFF4000
[034h 0052   8]       ACPI Table Address   2 : 00000000FFFF3000
[03Ch 0060   8]       ACPI Table Address   3 : 00000000FFF8D000
[044h 0068   8]       ACPI Table Address   4 : 00000000FFF8B000
[04Ch 0076   8]       ACPI Table Address   5 : 00000000FFF8A000
[054h 0084   8]       ACPI Table Address   6 : 00000000FFF89000
[05Ch 0092   8]       ACPI Table Address   7 : 00000000FFF88000
[064h 0100   8]       ACPI Table Address   8 : 00000000FFF87000
[06Ch 0108   8]       ACPI Table Address   9 : 00000000FFF86000
[074h 0116   8]       ACPI Table Address  10 : 00000000FFF85000
[07Ch 0124   8]       ACPI Table Address  11 : 00000000FFF84000

Raw Table Data: Length 132 (0x84)

    0000: 58 53 44 54 84 00 00 00 01 DE 51 43 4F 4D 20 20  // XSDT......QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 81 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 00 E0 F8 FF 00 00 00 00 00 40 FF FF  // .............@..
    0030: 00 00 00 00 00 30 FF FF 00 00 00 00 00 D0 F8 FF  // .....0..........
    0040: 00 00 00 00 00 B0 F8 FF 00 00 00 00 00 A0 F8 FF  // ................
    0050: 00 00 00 00 00 90 F8 FF 00 00 00 00 00 80 F8 FF  // ................
    0060: 00 00 00 00 00 70 F8 FF 00 00 00 00 00 60 F8 FF  // .....p.......`..
    0070: 00 00 00 00 00 50 F8 FF 00 00 00 00 00 40 F8 FF  // .....P.......@..
    0080: 00 00 00 00                                      // ....
