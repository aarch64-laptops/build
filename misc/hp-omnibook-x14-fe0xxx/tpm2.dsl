/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of tpm2.dat
 *
 * ACPI Data Table [TPM2]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "TPM2"    [Trusted Platform Module hardware interface Table]
[004h 0004 004h]                Table Length : 00000054
[008h 0008 001h]                    Revision : 03
[009h 0009 001h]                    Checksum : DE
[00Ah 0010 006h]                      Oem ID : "HPQOEM"
[010h 0016 008h]                Oem Table ID : "8CBE    "
[018h 0024 004h]                Oem Revision : 00008380
[01Ch 0028 004h]             Asl Compiler ID : "HP  "
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 004h]                    Reserved : 00000000
[028h 0040 008h]             Control Address : 0000000081F10000
[030h 0048 004h]                Start Method : 0000000E

Raw Table Data: Length 84 (0x54)

    0000: 54 50 4D 32 54 00 00 00 03 DE 48 50 51 4F 45 4D  // TPM2T.....HPQOEM
    0010: 38 43 42 45 20 20 20 20 80 83 00 00 48 50 20 20  // 8CBE    ....HP  
    0020: 01 00 00 00 00 00 00 00 00 00 F1 81 00 00 00 00  // ................
    0030: 0E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0040: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0050: 00 00 00 00                                      // ....
