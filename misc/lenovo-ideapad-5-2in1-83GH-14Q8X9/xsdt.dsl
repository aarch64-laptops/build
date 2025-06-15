/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20241212 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of xsdt.dat
 *
 * ACPI Data Table [XSDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "XSDT"    [Extended System Description Table]
[004h 0004 004h]                Table Length : 00000094
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 8A
[00Ah 0010 006h]                      Oem ID : "QCOM  "
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00008380
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 008h]       ACPI Table Address   0 : 00000000C6164718
[02Ch 0044 008h]       ACPI Table Address   1 : 00000000C6158018
[034h 0052 008h]       ACPI Table Address   2 : 00000000C6164098
[03Ch 0060 008h]       ACPI Table Address   3 : 00000000C6164898
[044h 0068 008h]       ACPI Table Address   4 : 00000000C6112018
[04Ch 0076 008h]       ACPI Table Address   5 : 00000000C6111018
[054h 0084 008h]       ACPI Table Address   6 : 00000000C6164998
[05Ch 0092 008h]       ACPI Table Address   7 : 00000000C6111D18
[064h 0100 008h]       ACPI Table Address   8 : 00000000C6164B18
[06Ch 0108 008h]       ACPI Table Address   9 : 00000000C6164E98
[074h 0116 008h]       ACPI Table Address  10 : 00000000C6164A98
[07Ch 0124 008h]       ACPI Table Address  11 : 00000000C6111F98
[084h 0132 008h]       ACPI Table Address  12 : 00000000C6164C18
[08Ch 0140 008h]       ACPI Table Address  13 : 00000000C6164E18

Raw Table Data: Length 148 (0x94)

    0000: 58 53 44 54 94 00 00 00 01 8A 51 43 4F 4D 20 20  // XSDT......QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 83 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 18 47 16 C6 00 00 00 00 18 80 15 C6  // .....G..........
    0030: 00 00 00 00 98 40 16 C6 00 00 00 00 98 48 16 C6  // .....@.......H..
    0040: 00 00 00 00 18 20 11 C6 00 00 00 00 18 10 11 C6  // ..... ..........
    0050: 00 00 00 00 98 49 16 C6 00 00 00 00 18 1D 11 C6  // .....I..........
    0060: 00 00 00 00 18 4B 16 C6 00 00 00 00 98 4E 16 C6  // .....K.......N..
    0070: 00 00 00 00 98 4A 16 C6 00 00 00 00 98 1F 11 C6  // .....J..........
    0080: 00 00 00 00 18 4C 16 C6 00 00 00 00 18 4E 16 C6  // .....L.......N..
    0090: 00 00 00 00                                      // ....
