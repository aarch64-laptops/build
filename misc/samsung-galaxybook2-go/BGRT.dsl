/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of ../SSDTTime-master/Results/ACPI/BGRT.aml, Sat Feb 24 21:41:08 2024
 *
 * ACPI Data Table [BGRT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "BGRT"    [Boot Graphics Resource Table]
[004h 0004 004h]                Table Length : 00000038
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 53
[00Ah 0010 006h]                      Oem ID : "QCOM  "
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00007280
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 002h]                     Version : 0001
[026h 0038 001h]      Status (decoded below) : 01
                                   Displayed : 1
                          Orientation Offset : 0
[027h 0039 001h]                  Image Type : 00
[028h 0040 008h]               Image Address : 00000000FD327018
[030h 0048 004h]               Image OffsetX : 0000029F
[034h 0052 004h]               Image OffsetY : 00000121

Raw Table Data: Length 56 (0x38)

    0000: 42 47 52 54 38 00 00 00 01 53 51 43 4F 4D 20 20  // BGRT8....SQCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 72 00 00 51 43 4F 4D  // QCOMEDK2.r..QCOM
    0020: 01 00 00 00 01 00 01 00 18 70 32 FD 00 00 00 00  // .........p2.....
    0030: 9F 02 00 00 21 01 00 00                          // ....!...
