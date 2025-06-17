/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20250404 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembly of ./bgrt.dat
 *
 * ACPI Data Table [BGRT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "BGRT"    [Boot Graphics Resource Table]
[004h 0004 004h]                Table Length : 00000038
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : F1
[00Ah 0010 006h]                      Oem ID : "MSFT  "
[010h 0016 008h]                Oem Table ID : "MSFT    "
[018h 0024 004h]                Oem Revision : 00000001
[01Ch 0028 004h]             Asl Compiler ID : "MSFT"
[020h 0032 004h]       Asl Compiler Revision : 20230628

[024h 0036 002h]                     Version : 0001
[026h 0038 001h]      Status (decoded below) : 01
                                   Displayed : 1
                          Orientation Offset : 0
[027h 0039 001h]                  Image Type : 00
[028h 0040 008h]               Image Address : 00000000CF117018
[030h 0048 004h]               Image OffsetX : 000003E3
[034h 0052 004h]               Image OffsetY : 00000275

Raw Table Data: Length 56 (0x38)

    0000: 42 47 52 54 38 00 00 00 01 F1 4D 53 46 54 20 20  // BGRT8.....MSFT  
    0010: 4D 53 46 54 20 20 20 20 01 00 00 00 4D 53 46 54  // MSFT    ....MSFT
    0020: 28 06 23 20 01 00 01 00 18 70 11 CF 00 00 00 00  // (.# .....p......
    0030: E3 03 00 00 75 02 00 00                          // ....u...
