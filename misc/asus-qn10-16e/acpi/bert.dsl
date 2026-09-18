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
[009h 0009 001h]                    Checksum : 7E
[00Ah 0010 006h]                      Oem ID : "INSYDE"
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00000001
[01Ch 0028 004h]             Asl Compiler ID : "ACPI"
[020h 0032 004h]       Asl Compiler Revision : 00040000

[024h 0036 004h]    Boot Error Region Length : 00000000
[028h 0040 008h]   Boot Error Region Address : 0000000000000000

Raw Table Data: Length 48 (0x30)

    0000: 42 45 52 54 30 00 00 00 01 7E 49 4E 53 59 44 45  // BERT0....~INSYDE
    0010: 51 43 4F 4D 45 44 4B 32 01 00 00 00 41 43 50 49  // QCOMEDK2....ACPI
    0020: 00 00 04 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
