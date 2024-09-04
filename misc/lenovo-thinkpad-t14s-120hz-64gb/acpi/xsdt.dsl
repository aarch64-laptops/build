/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240827 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of xsdt.dat
 *
 * ACPI Data Table [XSDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "XSDT"    [Extended System Description Table]
[004h 0004 004h]                Table Length : 000000AC
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : F0
[00Ah 0010 006h]                      Oem ID : "Lenovo"
[010h 0016 008h]                Oem Table ID : "TP-N42  "
[018h 0024 004h]                Oem Revision : 00000240
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 008h]       ACPI Table Address   0 : 00000000D6DDEB98
[02Ch 0044 008h]       ACPI Table Address   1 : 00000000D6DD2018
[034h 0052 008h]       ACPI Table Address   2 : 00000000D6DDE098
[03Ch 0060 008h]       ACPI Table Address   3 : 00000000D6DDED18
[044h 0068 008h]       ACPI Table Address   4 : 00000000D6D7D018
[04Ch 0076 008h]       ACPI Table Address   5 : 00000000D6D7C018
[054h 0084 008h]       ACPI Table Address   6 : 00000000D6DDEE18
[05Ch 0092 008h]       ACPI Table Address   7 : 00000000D6D7CD18
[064h 0100 008h]       ACPI Table Address   8 : 00000000D6DDE718
[06Ch 0108 008h]       ACPI Table Address   9 : 00000000D6DDE818
[074h 0116 008h]       ACPI Table Address  10 : 00000000D6DDEA98
[07Ch 0124 008h]       ACPI Table Address  11 : 00000000D6D7CF98
[084h 0132 008h]       ACPI Table Address  12 : 00000000D6DDE918
[08Ch 0140 008h]       ACPI Table Address  13 : 00000000D6DDE998
[094h 0148 008h]       ACPI Table Address  14 : 00000000D6DDEA18
[09Ch 0156 008h]       ACPI Table Address  15 : 00000000D6DDEB18
[0A4h 0164 008h]       ACPI Table Address  16 : 00000000D6D7C698

Raw Table Data: Length 172 (0xAC)

    0000: 58 53 44 54 AC 00 00 00 01 F0 4C 65 6E 6F 76 6F  // XSDT......Lenovo
    0010: 54 50 2D 4E 34 32 20 20 40 02 00 00 51 43 4F 4D  // TP-N42  @...QCOM
    0020: 01 00 00 00 98 EB DD D6 00 00 00 00 18 20 DD D6  // ............. ..
    0030: 00 00 00 00 98 E0 DD D6 00 00 00 00 18 ED DD D6  // ................
    0040: 00 00 00 00 18 D0 D7 D6 00 00 00 00 18 C0 D7 D6  // ................
    0050: 00 00 00 00 18 EE DD D6 00 00 00 00 18 CD D7 D6  // ................
    0060: 00 00 00 00 18 E7 DD D6 00 00 00 00 18 E8 DD D6  // ................
    0070: 00 00 00 00 98 EA DD D6 00 00 00 00 98 CF D7 D6  // ................
    0080: 00 00 00 00 18 E9 DD D6 00 00 00 00 98 E9 DD D6  // ................
    0090: 00 00 00 00 18 EA DD D6 00 00 00 00 18 EB DD D6  // ................
    00A0: 00 00 00 00 98 C6 D7 D6 00 00 00 00              // ............
