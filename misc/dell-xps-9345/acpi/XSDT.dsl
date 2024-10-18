/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240927 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
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
[009h 0009 001h]                    Checksum : 17
[00Ah 0010 006h]                      Oem ID : "QCOM  "
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00008380
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 008h]       ACPI Table Address   0 : 00000000D5FD5B98
[02Ch 0044 008h]       ACPI Table Address   1 : 00000000D5FD5B18
[034h 0052 008h]       ACPI Table Address   2 : 00000000D5FC9018
[03Ch 0060 008h]       ACPI Table Address   3 : 00000000D5FD5098
[044h 0068 008h]       ACPI Table Address   4 : 00000000D5FD5D18
[04Ch 0076 008h]       ACPI Table Address   5 : 00000000D5F83018
[054h 0084 008h]       ACPI Table Address   6 : 00000000D5F82018
[05Ch 0092 008h]       ACPI Table Address   7 : 00000000D5F82D18
[064h 0100 008h]       ACPI Table Address   8 : 00000000D5FD5718
[06Ch 0108 008h]       ACPI Table Address   9 : 00000000D5FD5998
[074h 0116 008h]       ACPI Table Address  10 : 00000000D5FD5A98
[07Ch 0124 008h]       ACPI Table Address  11 : 00000000D5F82F98
[084h 0132 008h]       ACPI Table Address  12 : 00000000D5FD5E98
[08Ch 0140 008h]       ACPI Table Address  13 : 00000000D5F82E18
[094h 0148 008h]       ACPI Table Address  14 : 00000000D5FD5E18

Raw Table Data: Length 156 (0x9C)

    0000: 58 53 44 54 9C 00 00 00 01 17 51 43 4F 4D 20 20  // XSDT......QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 83 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 98 5B FD D5 00 00 00 00 18 5B FD D5  // .....[.......[..
    0030: 00 00 00 00 18 90 FC D5 00 00 00 00 98 50 FD D5  // .............P..
    0040: 00 00 00 00 18 5D FD D5 00 00 00 00 18 30 F8 D5  // .....].......0..
    0050: 00 00 00 00 18 20 F8 D5 00 00 00 00 18 2D F8 D5  // ..... .......-..
    0060: 00 00 00 00 18 57 FD D5 00 00 00 00 98 59 FD D5  // .....W.......Y..
    0070: 00 00 00 00 98 5A FD D5 00 00 00 00 98 2F F8 D5  // .....Z......./..
    0080: 00 00 00 00 98 5E FD D5 00 00 00 00 18 2E F8 D5  // .....^..........
    0090: 00 00 00 00 18 5E FD D5 00 00 00 00              // .....^......
