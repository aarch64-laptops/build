/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of xsdt.dat, Tue Oct  1 20:38:53 2024
 *
 * ACPI Data Table [XSDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "XSDT"    [Extended System Description Table]
[004h 0004   4]                 Table Length : 0000009C
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 67
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00008380
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   8]       ACPI Table Address   0 : 00000000D5FD5B98
[02Ch 0044   8]       ACPI Table Address   1 : 00000000D5FD5B18
[034h 0052   8]       ACPI Table Address   2 : 00000000D5FC9018
[03Ch 0060   8]       ACPI Table Address   3 : 00000000D5FD5098
[044h 0068   8]       ACPI Table Address   4 : 00000000D5FD5D18
[04Ch 0076   8]       ACPI Table Address   5 : 00000000D5F82018
[054h 0084   8]       ACPI Table Address   6 : 00000000D5F81018
[05Ch 0092   8]       ACPI Table Address   7 : 00000000D5F81D18
[064h 0100   8]       ACPI Table Address   8 : 00000000D5FD5718
[06Ch 0108   8]       ACPI Table Address   9 : 00000000D5FD5998
[074h 0116   8]       ACPI Table Address  10 : 00000000D5FD5A98
[07Ch 0124   8]       ACPI Table Address  11 : 00000000D5F81F98
[084h 0132   8]       ACPI Table Address  12 : 00000000D5FD5E98
[08Ch 0140   8]       ACPI Table Address  13 : 00000000D5F81E18
[094h 0148   8]       ACPI Table Address  14 : 00000000D5FD5E18

Raw Table Data: Length 156 (0x9C)

    0000: 58 53 44 54 9C 00 00 00 01 67 51 43 4F 4D 20 20  // XSDT.....gQCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 83 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 98 5B FD D5 00 00 00 00 18 5B FD D5  // .....[.......[..
    0030: 00 00 00 00 18 90 FC D5 00 00 00 00 98 50 FD D5  // .............P..
    0040: 00 00 00 00 18 5D FD D5 00 00 00 00 18 20 F8 D5  // .....]....... ..
    0050: 00 00 00 00 18 10 F8 D5 00 00 00 00 18 1D F8 D5  // ................
    0060: 00 00 00 00 18 57 FD D5 00 00 00 00 98 59 FD D5  // .....W.......Y..
    0070: 00 00 00 00 98 5A FD D5 00 00 00 00 98 1F F8 D5  // .....Z..........
    0080: 00 00 00 00 98 5E FD D5 00 00 00 00 18 1E F8 D5  // .....^..........
    0090: 00 00 00 00 18 5E FD D5 00 00 00 00              // .....^......
