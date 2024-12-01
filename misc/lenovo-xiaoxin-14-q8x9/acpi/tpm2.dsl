/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240927 (32-bit version)
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
[009h 0009 001h]                    Checksum : 91
[00Ah 0010 006h]                      Oem ID : "LENOVO"
[010h 0016 008h]                Oem Table ID : "CB-01   "
[018h 0024 004h]                Oem Revision : 00008380
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 004h]                    Reserved : 00000000
[028h 0040 008h]             Control Address : 0000000081F10000
[030h 0048 004h]                Start Method : 00000009

Raw Table Data: Length 84 (0x54)

    0000: 54 50 4D 32 54 00 00 00 03 91 4C 45 4E 4F 56 4F  // TPM2T.....LENOVO
    0010: 43 42 2D 30 31 20 20 20 80 83 00 00 51 43 4F 4D  // CB-01   ....QCOM
    0020: 01 00 00 00 00 00 00 00 00 00 F1 81 00 00 00 00  // ................
    0030: 09 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0040: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0050: 00 00 00 00                                      // ....
