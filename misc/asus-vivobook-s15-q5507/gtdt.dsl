/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240322 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of ./acpi/GTDT.aml
 *
 * ACPI Data Table [GTDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "GTDT"    [Generic Timer Description Table]
[004h 0004 004h]                Table Length : 0000009C
[008h 0008 001h]                    Revision : 02
[009h 0009 001h]                    Checksum : 50
[00Ah 0010 006h]                      Oem ID : "_ASUS_"
[010h 0016 008h]                Oem Table ID : "Notebook"
[018h 0024 004h]                Oem Revision : 00008380
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 008h]       Counter Block Address : FFFFFFFFFFFFFFFF
[02Ch 0044 004h]                    Reserved : 00000000

[030h 0048 004h]        Secure EL1 Interrupt : 0000001D
[034h 0052 004h]   EL1 Flags (decoded below) : 00000004
                                Trigger Mode : 0
                                    Polarity : 0
                                   Always On : 1

[038h 0056 004h]    Non-Secure EL1 Interrupt : 0000001E
[03Ch 0060 004h]  NEL1 Flags (decoded below) : 00000004
                                Trigger Mode : 0
                                    Polarity : 0
                                   Always On : 1

[040h 0064 004h]     Virtual Timer Interrupt : 0000001B
[044h 0068 004h]    VT Flags (decoded below) : 00000004
                                Trigger Mode : 0
                                    Polarity : 0
                                   Always On : 1

[048h 0072 004h]    Non-Secure EL2 Interrupt : 0000001A
[04Ch 0076 004h]  NEL2 Flags (decoded below) : 00000004
                                Trigger Mode : 0
                                    Polarity : 0
                                   Always On : 1
[050h 0080 008h]  Counter Read Block Address : FFFFFFFFFFFFFFFF

[058h 0088 004h]        Platform Timer Count : 00000000
[05Ch 0092 004h]       Platform Timer Offset : 00000000

[060h 0096 001h]               Subtable Type : 00 [Generic Timer Block]
[061h 0097 002h]                      Length : 0000
Invalid zero length subtable

Raw Table Data: Length 156 (0x9C)

    0000: 47 54 44 54 9C 00 00 00 02 50 5F 41 53 55 53 5F  // GTDT.....P_ASUS_
    0010: 4E 6F 74 65 62 6F 6F 6B 80 83 00 00 51 43 4F 4D  // Notebook....QCOM
    0020: 01 00 00 00 FF FF FF FF FF FF FF FF 00 00 00 00  // ................
    0030: 1D 00 00 00 04 00 00 00 1E 00 00 00 04 00 00 00  // ................
    0040: 1B 00 00 00 04 00 00 00 1A 00 00 00 04 00 00 00  // ................
    0050: FF FF FF FF FF FF FF FF 00 00 00 00 00 00 00 00  // ................
    0060: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0070: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0080: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0090: 00 00 00 00 00 00 00 00 00 00 00 00              // ............
