/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (32-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of bgrt.dat, Sun Feb 12 23:37:31 2023
 *
 * ACPI Data Table [BGRT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "BGRT"    [Boot Graphics Resource Table]
[004h 0004 004h]                Table Length : 00000038
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 34
[00Ah 0010 006h]                      Oem ID : "LENOVO"
[010h 0016 008h]                Oem Table ID : "TP-N3H  "
[018h 0024 004h]                Oem Revision : 00001480
[01Ch 0028 004h]             Asl Compiler ID : "PTEC"
[020h 0032 004h]       Asl Compiler Revision : 00001480

[024h 0036 002h]                     Version : 0001
[026h 0038 001h]      Status (decoded below) : 01
                                   Displayed : 1
                          Orientation Offset : 0
[027h 0039 001h]                  Image Type : 00
[028h 0040 008h]               Image Address : 000000009A220018
[030h 0048 004h]               Image OffsetX : 00000240
[034h 0052 004h]               Image OffsetY : 0000014A

Raw Table Data: Length 56 (0x38)

    0000: 42 47 52 54 38 00 00 00 01 34 4C 45 4E 4F 56 4F  // BGRT8....4LENOVO
    0010: 54 50 2D 4E 33 48 20 20 80 14 00 00 50 54 45 43  // TP-N3H  ....PTEC
    0020: 80 14 00 00 01 00 01 00 18 00 22 9A 00 00 00 00  // ..........".....
    0030: 40 02 00 00 4A 01 00 00                          // @...J...
