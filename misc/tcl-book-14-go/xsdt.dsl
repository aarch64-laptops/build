/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (32-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of xsdt.dat, Thu Sep 15 22:25:44 2022
 *
 * ACPI Data Table [XSDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000   4]                    Signature : "XSDT"    [Extended System Description Table]
[004h 0004   4]                 Table Length : 0000008C
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 37
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00007180
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   8]       ACPI Table Address   0 : 00000000FFFC2000
[02Ch 0044   8]       ACPI Table Address   1 : 00000000FFFFB000
[034h 0052   8]       ACPI Table Address   2 : 00000000FFFF3000
[03Ch 0060   8]       ACPI Table Address   3 : 00000000FFFF2000
[044h 0068   8]       ACPI Table Address   4 : 00000000FFFC1000
[04Ch 0076   8]       ACPI Table Address   5 : 00000000FFFC0000
[054h 0084   8]       ACPI Table Address   6 : 00000000FFFBF000
[05Ch 0092   8]       ACPI Table Address   7 : 00000000FFFBE000
[064h 0100   8]       ACPI Table Address   8 : 00000000FFFBD000
[06Ch 0108   8]       ACPI Table Address   9 : 00000000FFFBC000
[074h 0116   8]       ACPI Table Address  10 : 00000000FFFBB000
[07Ch 0124   8]       ACPI Table Address  11 : 00000000FFFBA000
[084h 0132   8]       ACPI Table Address  12 : 00000000FFFB9000

Raw Table Data: Length 140 (0x8C)

    0000: 58 53 44 54 8C 00 00 00 01 37 51 43 4F 4D 20 20  // XSDT.....7QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 71 00 00 51 43 4F 4D  // QCOMEDK2.q..QCOM
    0020: 01 00 00 00 00 20 FC FF 00 00 00 00 00 B0 FF FF  // ..... ..........
    0030: 00 00 00 00 00 30 FF FF 00 00 00 00 00 20 FF FF  // .....0....... ..
    0040: 00 00 00 00 00 10 FC FF 00 00 00 00 00 00 FC FF  // ................
    0050: 00 00 00 00 00 F0 FB FF 00 00 00 00 00 E0 FB FF  // ................
    0060: 00 00 00 00 00 D0 FB FF 00 00 00 00 00 C0 FB FF  // ................
    0070: 00 00 00 00 00 B0 FB FF 00 00 00 00 00 A0 FB FF  // ................
    0080: 00 00 00 00 00 90 FB FF 00 00 00 00              // ............
