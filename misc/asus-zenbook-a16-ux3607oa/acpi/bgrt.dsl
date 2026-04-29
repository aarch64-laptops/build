/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
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
[009h 0009 001h]                    Checksum : 90
[00Ah 0010 006h]                      Oem ID : "_ASUS_"
[010h 0016 008h]                Oem Table ID : "Notebook"
[018h 0024 004h]                Oem Revision : 00000001
[01Ch 0028 004h]             Asl Compiler ID : "ACPI"
[020h 0032 004h]       Asl Compiler Revision : 00040000

[024h 0036 002h]                     Version : 0001
[026h 0038 001h]      Status (decoded below) : 00
                                   Displayed : 0
                          Orientation Offset : 0
[027h 0039 001h]                  Image Type : 00
[028h 0040 008h]               Image Address : 00000000BE5CC018
[030h 0048 004h]               Image OffsetX : 0000037A
[034h 0052 004h]               Image OffsetY : 0000013A

Raw Table Data: Length 56 (0x38)

    0000: 42 47 52 54 38 00 00 00 01 90 5F 41 53 55 53 5F  // BGRT8....._ASUS_
    0010: 4E 6F 74 65 62 6F 6F 6B 01 00 00 00 41 43 50 49  // Notebook....ACPI
    0020: 00 00 04 00 01 00 00 00 18 C0 5C BE 00 00 00 00  // ..........\.....
    0030: 7A 03 00 00 3A 01 00 00                          // z...:...
