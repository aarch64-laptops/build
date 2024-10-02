/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240322 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of ./acpi/MCFG.aml
 *
 * ACPI Data Table [MCFG]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "MCFG"    [Memory Mapped Configuration Table]
[004h 0004 004h]                Table Length : 000000AC
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 1B
[00Ah 0010 006h]                      Oem ID : "_ASUS_"
[010h 0016 008h]                Oem Table ID : "Notebook"
[018h 0024 004h]                Oem Revision : 00008380
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 008h]                    Reserved : 0000000000000000

[02Ch 0044 008h]                Base Address : 0000000400000000
[034h 0052 002h]        Segment Group Number : 0000
[036h 0054 001h]            Start Bus Number : 00
[037h 0055 001h]              End Bus Number : FF
[038h 0056 004h]                    Reserved : 00000000

[03Ch 0060 008h]                Base Address : 0000000500000000
[044h 0068 002h]        Segment Group Number : 0001
[046h 0070 001h]            Start Bus Number : 00
[047h 0071 001h]              End Bus Number : FF
[048h 0072 004h]                    Reserved : 00000000

[04Ch 0076 008h]                Base Address : 0000006000000000
[054h 0084 002h]        Segment Group Number : 0002
[056h 0086 001h]            Start Bus Number : 00
[057h 0087 001h]              End Bus Number : FF
[058h 0088 004h]                    Reserved : 00000000

[05Ch 0092 008h]                Base Address : 0000000740000000
[064h 0100 002h]        Segment Group Number : 0003
[066h 0102 001h]            Start Bus Number : 00
[067h 0103 001h]              End Bus Number : 01
[068h 0104 004h]                    Reserved : 00000000

[06Ch 0108 008h]                Base Address : 000000007C000000
[074h 0116 002h]        Segment Group Number : 0004
[076h 0118 001h]            Start Bus Number : 00
[077h 0119 001h]              End Bus Number : 01
[078h 0120 004h]                    Reserved : 00000000

[07Ch 0124 008h]                Base Address : 000000007E000000
[084h 0132 002h]        Segment Group Number : 0005
[086h 0134 001h]            Start Bus Number : 00
[087h 0135 001h]              End Bus Number : 01
[088h 0136 004h]                    Reserved : 00000000

[08Ch 0140 008h]                Base Address : 0000000070000000
[094h 0148 002h]        Segment Group Number : 0006
[096h 0150 001h]            Start Bus Number : 00
[097h 0151 001h]              End Bus Number : 01
[098h 0152 004h]                    Reserved : 00000000

[09Ch 0156 008h]                Base Address : 0000000074000000
[0A4h 0164 002h]        Segment Group Number : 0007
[0A6h 0166 001h]            Start Bus Number : 00
[0A7h 0167 001h]              End Bus Number : 01
[0A8h 0168 004h]                    Reserved : 00000000

Raw Table Data: Length 172 (0xAC)

    0000: 4D 43 46 47 AC 00 00 00 01 1B 5F 41 53 55 53 5F  // MCFG......_ASUS_
    0010: 4E 6F 74 65 62 6F 6F 6B 80 83 00 00 51 43 4F 4D  // Notebook....QCOM
    0020: 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0030: 04 00 00 00 00 00 00 FF 00 00 00 00 00 00 00 00  // ................
    0040: 05 00 00 00 01 00 00 FF 00 00 00 00 00 00 00 00  // ................
    0050: 60 00 00 00 02 00 00 FF 00 00 00 00 00 00 00 40  // `..............@
    0060: 07 00 00 00 03 00 00 01 00 00 00 00 00 00 00 7C  // ...............|
    0070: 00 00 00 00 04 00 00 01 00 00 00 00 00 00 00 7E  // ...............~
    0080: 00 00 00 00 05 00 00 01 00 00 00 00 00 00 00 70  // ...............p
    0090: 00 00 00 00 06 00 00 01 00 00 00 00 00 00 00 74  // ...............t
    00A0: 00 00 00 00 07 00 00 01 00 00 00 00              // ............
