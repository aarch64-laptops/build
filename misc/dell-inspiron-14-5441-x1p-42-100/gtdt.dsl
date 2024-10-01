/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of gtdt.dat, Tue Oct  1 20:38:53 2024
 *
 * ACPI Data Table [GTDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "GTDT"    [Generic Timer Description Table]
[004h 0004   4]                 Table Length : 0000009C
[008h 0008   1]                     Revision : 02
[009h 0009   1]                     Checksum : E5
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00008380
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   8]        Counter Block Address : FFFFFFFFFFFFFFFF
[02Ch 0044   4]                     Reserved : 00000000

[030h 0048   4]         Secure EL1 Interrupt : 0000001D
[034h 0052   4]    EL1 Flags (decoded below) : 00000004
                                Trigger Mode : 0
                                    Polarity : 0
                                   Always On : 1

[038h 0056   4]     Non-Secure EL1 Interrupt : 0000001E
[03Ch 0060   4]   NEL1 Flags (decoded below) : 00000004
                                Trigger Mode : 0
                                    Polarity : 0
                                   Always On : 1

[040h 0064   4]      Virtual Timer Interrupt : 0000001B
[044h 0068   4]     VT Flags (decoded below) : 00000004
                                Trigger Mode : 0
                                    Polarity : 0
                                   Always On : 1

[048h 0072   4]     Non-Secure EL2 Interrupt : 0000001A
[04Ch 0076   4]   NEL2 Flags (decoded below) : 00000004
                                Trigger Mode : 0
                                    Polarity : 0
                                   Always On : 1
[050h 0080   8]   Counter Read Block Address : FFFFFFFFFFFFFFFF

[058h 0088   4]         Platform Timer Count : 00000000
[05Ch 0092   4]        Platform Timer Offset : 00000000

[060h 0096   1]                Subtable Type : 00 [Generic Timer Block]
[061h 0097   2]                       Length : 0000
Invalid zero length subtable

Raw Table Data: Length 156 (0x9C)

    0000: 47 54 44 54 9C 00 00 00 02 E5 51 43 4F 4D 20 20  // GTDT......QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 83 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 FF FF FF FF FF FF FF FF 00 00 00 00  // ................
    0030: 1D 00 00 00 04 00 00 00 1E 00 00 00 04 00 00 00  // ................
    0040: 1B 00 00 00 04 00 00 00 1A 00 00 00 04 00 00 00  // ................
    0050: FF FF FF FF FF FF FF FF 00 00 00 00 00 00 00 00  // ................
    0060: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0070: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0080: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0090: 00 00 00 00 00 00 00 00 00 00 00 00              // ............
