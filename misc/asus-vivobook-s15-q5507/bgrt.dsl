/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240322 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of ./acpi/BGRT.aml
 *
 * ACPI Data Table [BGRT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "BGRT"    [Boot Graphics Resource Table]
[004h 0004 004h]                Table Length : 00000038
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 9F
[00Ah 0010 006h]                      Oem ID : "INSYDE"
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00000001
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 002h]                     Version : 0001
[026h 0038 001h]      Status (decoded below) : 00
                                   Displayed : 0
                          Orientation Offset : 0
[027h 0039 001h]                  Image Type : 00
[028h 0040 008h]               Image Address : 00000000CEFEC018
[030h 0048 004h]               Image OffsetX : 00000459
[034h 0052 004h]               Image OffsetY : 000002C1

Raw Table Data: Length 56 (0x38)

    0000: 42 47 52 54 38 00 00 00 01 9F 49 4E 53 59 44 45  // BGRT8.....INSYDE
    0010: 51 43 4F 4D 45 44 4B 32 01 00 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 01 00 00 00 18 C0 FE CE 00 00 00 00  // ................
    0030: 59 04 00 00 C1 02 00 00                          // Y.......
