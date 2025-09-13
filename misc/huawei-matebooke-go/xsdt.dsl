/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20250807 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembly of xsdt.dat
 *
 * ACPI Data Table [XSDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "XSDT"    [Extended System Description Table]
[004h 0004 004h]                Table Length : 000000A4
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : B3
[00Ah 0010 006h]                      Oem ID : "QCOM  "
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00008280
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 008h]       ACPI Table Address   0 : 00000000FFFC4000
[02Ch 0044 008h]       ACPI Table Address   1 : 00000000FFFF6000
[034h 0052 008h]       ACPI Table Address   2 : 00000000FFFF5000
[03Ch 0060 008h]       ACPI Table Address   3 : 00000000FFFE8000
[044h 0068 008h]       ACPI Table Address   4 : 00000000FFFE7000
[04Ch 0076 008h]       ACPI Table Address   5 : 00000000FFFC3000
[054h 0084 008h]       ACPI Table Address   6 : 00000000FFFC1000
[05Ch 0092 008h]       ACPI Table Address   7 : 00000000FFFC0000
[064h 0100 008h]       ACPI Table Address   8 : 00000000FFFBF000
[06Ch 0108 008h]       ACPI Table Address   9 : 00000000FFFBE000
[074h 0116 008h]       ACPI Table Address  10 : 00000000FFFBD000
[07Ch 0124 008h]       ACPI Table Address  11 : 00000000FFFBC000
[084h 0132 008h]       ACPI Table Address  12 : 00000000FFFBB000
[08Ch 0140 008h]       ACPI Table Address  13 : 00000000FFF9A000
[094h 0148 008h]       ACPI Table Address  14 : 00000000FFF99000
[09Ch 0156 008h]       ACPI Table Address  15 : 00000000FFF98000

Raw Table Data: Length 164 (0xA4)

    0000: 58 53 44 54 A4 00 00 00 01 B3 51 43 4F 4D 20 20  // XSDT......QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 82 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 00 40 FC FF 00 00 00 00 00 60 FF FF  // .....@.......`..
    0030: 00 00 00 00 00 50 FF FF 00 00 00 00 00 80 FE FF  // .....P..........
    0040: 00 00 00 00 00 70 FE FF 00 00 00 00 00 30 FC FF  // .....p.......0..
    0050: 00 00 00 00 00 10 FC FF 00 00 00 00 00 00 FC FF  // ................
    0060: 00 00 00 00 00 F0 FB FF 00 00 00 00 00 E0 FB FF  // ................
    0070: 00 00 00 00 00 D0 FB FF 00 00 00 00 00 C0 FB FF  // ................
    0080: 00 00 00 00 00 B0 FB FF 00 00 00 00 00 A0 F9 FF  // ................
    0090: 00 00 00 00 00 90 F9 FF 00 00 00 00 00 80 F9 FF  // ................
    00A0: 00 00 00 00                                      // ....
