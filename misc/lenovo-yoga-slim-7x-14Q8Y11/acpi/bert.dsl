/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20260408 (32-bit version)
 * Copyright (c) 2000 - 2026 Intel Corporation
 * 
 * Disassembly of bert.dat
 *
 * ACPI Data Table [BERT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "BERT"    [Boot Error Record Table]
[004h 0004 004h]                Table Length : 00000030
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 27
[00Ah 0010 006h]                      Oem ID : "LENOVO"
[010h 0016 008h]                Oem Table ID : "CB-01   "
[018h 0024 004h]                Oem Revision : 00008480
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 004h]    Boot Error Region Length : 00000000
[028h 0040 008h]   Boot Error Region Address : 0000000000000000

Raw Table Data: Length 48 (0x30)

    0000: 42 45 52 54 30 00 00 00 01 27 4C 45 4E 4F 56 4F  // BERT0....'LENOVO
    0010: 43 42 2D 30 31 20 20 20 80 84 00 00 51 43 4F 4D  // CB-01   ....QCOM
    0020: 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
