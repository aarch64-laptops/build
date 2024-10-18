/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240927 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of C:/Users/nico/Documents/Src/aarch64-laptops_build/misc/dell-inspiron-14-3420/acpi/GTDT.aml
 *
 * ACPI Data Table [GTDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "GTDT"    [Generic Timer Description Table]
[004h 0004 004h]                Table Length : 0000009C
[008h 0008 001h]                    Revision : 02
[009h 0009 001h]                    Checksum : 64
[00Ah 0010 006h]                      Oem ID : "QCOM  "
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00008180
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 008h]       Counter Block Address : FFFFFFFFFFFFFFFF
[02Ch 0044 004h]                    Reserved : 00000000

[030h 0048 004h]        Secure EL1 Interrupt : 00000011
[034h 0052 004h]   EL1 Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
                                   Always On : 0

[038h 0056 004h]    Non-Secure EL1 Interrupt : 00000012
[03Ch 0060 004h]  NEL1 Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
                                   Always On : 0

[040h 0064 004h]     Virtual Timer Interrupt : 00000013
[044h 0068 004h]    VT Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
                                   Always On : 0

[048h 0072 004h]    Non-Secure EL2 Interrupt : 00000010
[04Ch 0076 004h]  NEL2 Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
                                   Always On : 0
[050h 0080 008h]  Counter Read Block Address : FFFFFFFFFFFFFFFF

[058h 0088 004h]        Platform Timer Count : 00000001
[05Ch 0092 004h]       Platform Timer Offset : 00000060

[060h 0096 001h]               Subtable Type : 00 [Generic Timer Block]
[061h 0097 002h]                      Length : 003C
[063h 0099 001h]                    Reserved : 00
[064h 0100 008h]               Block Address : 0000000017C20000
[06Ch 0108 004h]                 Timer Count : 00000001
[070h 0112 004h]                Timer Offset : 00000014

[074h 0116 001h]                Frame Number : 00
[075h 0117 003h]                    Reserved : 000000
[078h 0120 008h]                Base Address : 0000000017C21000
[080h 0128 008h]            EL0 Base Address : 0000000017C22000
[088h 0136 004h]             Timer Interrupt : 00000028
[08Ch 0140 004h] Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
[090h 0144 004h]     Virtual Timer Interrupt : 00000026
[094h 0148 004h] Virtual Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
[098h 0152 004h] Common Flags (decoded below) : 00000002
                                      Secure : 0
                                   Always On : 1

Raw Table Data: Length 156 (0x9C)

    0000: 47 54 44 54 9C 00 00 00 02 64 51 43 4F 4D 20 20  // GTDT.....dQCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 81 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 FF FF FF FF FF FF FF FF 00 00 00 00  // ................
    0030: 11 00 00 00 00 00 00 00 12 00 00 00 00 00 00 00  // ................
    0040: 13 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  // ................
    0050: FF FF FF FF FF FF FF FF 01 00 00 00 60 00 00 00  // ............`...
    0060: 00 3C 00 00 00 00 C2 17 00 00 00 00 01 00 00 00  // .<..............
    0070: 14 00 00 00 00 00 00 00 00 10 C2 17 00 00 00 00  // ................
    0080: 00 20 C2 17 00 00 00 00 28 00 00 00 00 00 00 00  // . ......(.......
    0090: 26 00 00 00 00 00 00 00 02 00 00 00              // &...........
