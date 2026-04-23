/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20260408 (32-bit version)
 * Copyright (c) 2000 - 2026 Intel Corporation
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
[009h 0009 001h]                    Checksum : 31
[00Ah 0010 006h]                      Oem ID : "LENOVO"
[010h 0016 008h]                Oem Table ID : "CB-01   "
[018h 0024 004h]                Oem Revision : 00000000
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000000

[024h 0036 031h] Software Licensing Structure : 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 /* ................ */\
/* 034h 0052  16 */                            1D 00 00 00 43 59 44 43 4E 2D 37 4B 38 47 59 2D /* ....CYDCN-7K8GY- */\
/* 044h 0068  16 */                            52 42 57 33 42 2D 48 48 56 36 36 2D 56 43 46 4A /* RBW3B-HHV66-VCFJ */\
/* 054h 0084   1 */                            57                                              /* W */\

Raw Table Data: Length 85 (0x55)

    0000: 4D 53 44 4D 55 00 00 00 03 31 4C 45 4E 4F 56 4F  // MSDMU....1LENOVO
    0010: 43 42 2D 30 31 20 20 20 00 00 00 00 51 43 4F 4D  // CB-01   ....QCOM
    0020: 00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00  // ................
    0030: 00 00 00 00 1D 00 00 00 43 59 44 43 4E 2D 37 4B  // ........CYDCN-7K
    0040: 38 47 59 2D 52 42 57 33 42 2D 48 48 56 36 36 2D  // 8GY-RBW3B-HHV66-
    0050: 56 43 46 4A 57                                   // VCFJW
