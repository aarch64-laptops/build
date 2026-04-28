/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
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
[009h 0009 001h]                    Checksum : 45
[00Ah 0010 006h]                      Oem ID : "_ASUS_"
[010h 0016 008h]                Oem Table ID : "Notebook"
[018h 0024 004h]                Oem Revision : 00000001
[01Ch 0028 004h]             Asl Compiler ID : "ACPI"
[020h 0032 004h]       Asl Compiler Revision : 00040000

[024h 0036 004h]    Boot Error Region Length : 00000000
[028h 0040 008h]   Boot Error Region Address : 0000000000000000

Raw Table Data: Length 48 (0x30)

    0000: 42 45 52 54 30 00 00 00 01 45 5F 41 53 55 53 5F  // BERT0....E_ASUS_
    0010: 4E 6F 74 65 62 6F 6F 6B 01 00 00 00 41 43 50 49  // Notebook....ACPI
    0020: 00 00 04 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
