/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of bgrt.dat, Thu Apr  3 09:47:59 2025
 *
 * ACPI Data Table [BGRT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "BGRT"    [Boot Graphics Resource Table]
[004h 0004 004h]                Table Length : 00000038
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 60
[00Ah 0010 006h]                      Oem ID : "HPQOEM"
[010h 0016 008h]                Oem Table ID : "8CBE    "
[018h 0024 004h]                Oem Revision : 00000001
[01Ch 0028 004h]             Asl Compiler ID : "HP  "
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 002h]                     Version : 0001
[026h 0038 001h]      Status (decoded below) : 00
                                   Displayed : 0
                          Orientation Offset : 0
[027h 0039 001h]                  Image Type : 00
[028h 0040 008h]               Image Address : 00000000CFCB7018
[030h 0048 004h]               Image OffsetX : 000001F8
[034h 0052 004h]               Image OffsetY : 000000F6

Raw Table Data: Length 56 (0x38)

    0000: 42 47 52 54 38 00 00 00 01 60 48 50 51 4F 45 4D  // BGRT8....`HPQOEM
    0010: 38 43 42 45 20 20 20 20 01 00 00 00 48 50 20 20  // 8CBE    ....HP  
    0020: 01 00 00 00 01 00 00 00 18 70 CB CF 00 00 00 00  // .........p......
    0030: F8 01 00 00 F6 00 00 00                          // ........
