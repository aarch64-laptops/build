/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of ./fpdt.dat
 *
 * ACPI Data Table [FPDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "FPDT"    [Firmware Performance Data Table]
[004h 0004 004h]                Table Length : 00000034
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : B2
[00Ah 0010 006h]                      Oem ID : "MSFT  "
[010h 0016 008h]                Oem Table ID : "MSFT    "
[018h 0024 004h]                Oem Revision : 00000001
[01Ch 0028 004h]             Asl Compiler ID : "MSFT"
[020h 0032 004h]       Asl Compiler Revision : 20230628


[024h 0036 002h]               Subtable Type : 0000
[026h 0038 001h]                      Length : 10
[027h 0039 001h]                    Revision : 01
[028h 0040 004h]                    Reserved : 00000000
[02Ch 0044 008h]    FPDT Boot Record Address : 00000000D535F000

Raw Table Data: Length 52 (0x34)

    0000: 46 50 44 54 34 00 00 00 01 B2 4D 53 46 54 20 20  // FPDT4.....MSFT  
    0010: 4D 53 46 54 20 20 20 20 01 00 00 00 4D 53 46 54  // MSFT    ....MSFT
    0020: 28 06 23 20 00 00 10 01 00 00 00 00 00 F0 35 D5  // (.# ..........5.
    0030: 00 00 00 00                                      // ....
