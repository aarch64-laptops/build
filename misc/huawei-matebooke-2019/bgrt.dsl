/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200717 (32-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of bgrt.dat, Thu Aug 27 00:11:43 2020
 *
 * ACPI Data Table [BGRT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "BGRT"    [Boot Graphics Resource Table]
[004h 0004   4]                 Table Length : 00000038
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 6D
[00Ah 0010   6]                       Oem ID : "HUAWEI"
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00000850
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   2]                      Version : 0001
[026h 0038   1]       Status (decoded below) : 01
                                   Displayed : 1
                          Orientation Offset : 0
[027h 0039   1]                   Image Type : 00
[028h 0040   8]                Image Address : 00000000F9EB9018
[030h 0048   4]                Image OffsetX : 000002F4
[034h 0052   4]                Image OffsetY : 00000223

Raw Table Data: Length 56 (0x38)

    0000: 42 47 52 54 38 00 00 00 01 6D 48 55 41 57 45 49  // BGRT8....mHUAWEI
    0010: 51 43 4F 4D 45 44 4B 32 50 08 00 00 51 43 4F 4D  // QCOMEDK2P...QCOM
    0020: 01 00 00 00 01 00 01 00 18 90 EB F9 00 00 00 00  // ................
    0030: F4 02 00 00 23 02 00 00                          // ....#...
