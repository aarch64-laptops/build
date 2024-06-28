/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of ./bert.dat
 *
 * ACPI Data Table [BERT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "BERT"    [Boot Error Record Table]
[004h 0004 004h]                Table Length : 00000030
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 31
[00Ah 0010 006h]                      Oem ID : "MSFT  "
[010h 0016 008h]                Oem Table ID : "MSFT    "
[018h 0024 004h]                Oem Revision : 00000000
[01Ch 0028 004h]             Asl Compiler ID : "MSFT"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 004h]    Boot Error Region Length : 00001000
[028h 0040 008h]   Boot Error Region Address : 00000000D535D018

Raw Table Data: Length 48 (0x30)

    0000: 42 45 52 54 30 00 00 00 01 31 4D 53 46 54 20 20  // BERT0....1MSFT  
    0010: 4D 53 46 54 20 20 20 20 00 00 00 00 4D 53 46 54  // MSFT    ....MSFT
    0020: 01 00 00 00 00 10 00 00 18 D0 35 D5 00 00 00 00  // ..........5.....
