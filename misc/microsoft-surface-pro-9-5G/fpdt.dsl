/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20250404 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
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
[009h 0009 001h]                    Checksum : 11
[00Ah 0010 006h]                      Oem ID : "QCOM  "
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00000001
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001


[024h 0036 002h]               Subtable Type : 0000
[026h 0038 001h]                      Length : 10
[027h 0039 001h]                    Revision : 01
[028h 0040 004h]                    Reserved : 00000000
[02Ch 0044 008h]    FPDT Boot Record Address : 000000009C27E000

Raw Table Data: Length 52 (0x34)

    0000: 46 50 44 54 34 00 00 00 01 11 51 43 4F 4D 20 20  // FPDT4.....QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 01 00 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 00 00 10 01 00 00 00 00 00 E0 27 9C  // ..............'.
    0030: 00 00 00 00                                      // ....
