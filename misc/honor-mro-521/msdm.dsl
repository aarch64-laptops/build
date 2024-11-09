/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240927 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of msdm.dat
 *
 * ACPI Data Table [MSDM]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "MSDM"    [Microsoft Data Management Table]
[004h 0004 004h]                Table Length : 00000055
[008h 0008 001h]                    Revision : 03
[009h 0009 001h]                    Checksum : 02
[00Ah 0010 006h]                      Oem ID : "HONOR"
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00000000
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000000

[024h 0036 031h] Software Licensing Structure : 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 /* ................ */\
/* 034h 0052  16 */                            1D 00 00 00 4A 54 4E 32 36 2D 38 42 47 47 44 2D /* ....JTN26-8BGGD- */\
/* 044h 0068  16 */                            48 42 4D 36 51 2D 51 36 59 58 39 2D 36 36 50 52 /* HBM6Q-Q6YX9-66PR */\
/* 054h 0084   1 */                            39                                              /* 9 */\

Raw Table Data: Length 85 (0x55)

    0000: 4D 53 44 4D 55 00 00 00 03 02 48 4F 4E 4F 52 00  // MSDMU.....HONOR.
    0010: 51 43 4F 4D 45 44 4B 32 00 00 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00  // ................
    0030: 00 00 00 00 1D 00 00 00 4A 54 4E 32 36 2D 38 42  // ........JTN26-8B
    0040: 47 47 44 2D 48 42 4D 36 51 2D 51 36 59 58 39 2D  // GGD-HBM6Q-Q6YX9-
    0050: 36 36 50 52 39                                   // 66PR9
