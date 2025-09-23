/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20250807 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembly of bgrt.dat
 *
 * ACPI Data Table [BGRT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "BGRT"    [Boot Graphics Resource Table]
[004h 0004 004h]                Table Length : 00000038
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 2B
[00Ah 0010 006h]                      Oem ID : "LENOVO"
[010h 0016 008h]                Oem Table ID : "TC-O6N  "
[018h 0024 004h]                Oem Revision : 00001410
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 002h]                     Version : 0001
[026h 0038 001h]      Status (decoded below) : 00
                                   Displayed : 0
                          Orientation Offset : 0
[027h 0039 001h]                  Image Type : 00
[028h 0040 008h]               Image Address : 00000000CFE0A018
[030h 0048 004h]               Image OffsetX : 00000240
[034h 0052 004h]               Image OffsetY : 000000C4

Raw Table Data: Length 56 (0x38)

    0000: 42 47 52 54 38 00 00 00 01 2B 4C 45 4E 4F 56 4F  // BGRT8....+LENOVO
    0010: 54 43 2D 4F 36 4E 20 20 10 14 00 00 51 43 4F 4D  // TC-O6N  ....QCOM
    0020: 01 00 00 00 01 00 00 00 18 A0 E0 CF 00 00 00 00  // ................
    0030: 40 02 00 00 C4 00 00 00                          // @.......
