/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of msdm.dat, Thu Sep 21 22:08:00 2023
 *
 * ACPI Data Table [MSDM]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "MSDM"    [Microsoft Data Management Table]
[004h 0004 004h]                Table Length : 00000055
[008h 0008 001h]                    Revision : 03
[009h 0009 001h]                    Checksum : C1
[00Ah 0010 006h]                      Oem ID : "HUAWEI"
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00000000
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000000

[024h 0036 031h] Software Licensing Structure : 4D 53 44 4D 55 00 00 00 03 C1 48 55 41 57 45 49 /* MSDMU.....HUAWEI */\
/* 034h 0052  16 */                            51 43 4F 4D 45 44 4B 32 00 00 00 00 51 43 4F 4D /* QCOMEDK2....QCOM */\
/* 044h 0068  16 */                            00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 /* ................ */\
/* 054h 0084   1 */                            00                                              /* . */\

Raw Table Data: Length 85 (0x55)

    0000: 4D 53 44 4D 55 00 00 00 03 C1 48 55 41 57 45 49  // MSDMU.....HUAWEI
    0010: 51 43 4F 4D 45 44 4B 32 00 00 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00  // ................
    0030: 00 00 00 00 1D 00 00 00 59 54 4D 47 33 2D 4E 36  // ........YTMG3-N6
    0040: 44 4B 43 2D 44 4B 42 37 37 2D 37 4D 39 47 48 2D  // DKC-DKB77-7M9GH-
    0050: 38 48 56 58 37                                   // 8HVX7
