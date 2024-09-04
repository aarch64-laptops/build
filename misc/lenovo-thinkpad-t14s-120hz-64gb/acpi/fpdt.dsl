/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240827 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of fpdt.dat
 *
 * ACPI Data Table [FPDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "FPDT"    [Firmware Performance Data Table]
[004h 0004 004h]                Table Length : 00000034
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 13
[00Ah 0010 006h]                      Oem ID : "LENOVO"
[010h 0016 008h]                Oem Table ID : "TP-N42  "
[018h 0024 004h]                Oem Revision : 00001310
[01Ch 0028 004h]             Asl Compiler ID : "PTEC"
[020h 0032 004h]       Asl Compiler Revision : 00001310


[024h 0036 002h]               Subtable Type : 0000
[026h 0038 001h]                      Length : 10
[027h 0039 001h]                    Revision : 01
[028h 0040 004h]                    Reserved : 00000000
[02Ch 0044 008h]    FPDT Boot Record Address : 00000000D6C9D000

Raw Table Data: Length 52 (0x34)

    0000: 46 50 44 54 34 00 00 00 01 13 4C 45 4E 4F 56 4F  // FPDT4.....LENOVO
    0010: 54 50 2D 4E 34 32 20 20 10 13 00 00 50 54 45 43  // TP-N42  ....PTEC
    0020: 10 13 00 00 00 00 10 01 00 00 00 00 00 D0 C9 D6  // ................
    0030: 00 00 00 00                                      // ....
