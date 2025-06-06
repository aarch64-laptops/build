/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20250404 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembly of mcfg.dat
 *
 * ACPI Data Table [MCFG]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "MCFG"    [Memory Mapped Configuration Table]
[004h 0004 004h]                Table Length : 0000009C
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 3E
[00Ah 0010 006h]                      Oem ID : "QCOM  "
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00008280
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 008h]                    Reserved : 0000000000000000

[02Ch 0044 008h]                Base Address : 0000000700000000
[034h 0052 002h]        Segment Group Number : 0000
[036h 0054 001h]            Start Bus Number : 00
[037h 0055 001h]              End Bus Number : FF
[038h 0056 004h]                    Reserved : 00000000

[03Ch 0060 008h]                Base Address : 0000000600000000
[044h 0068 002h]        Segment Group Number : 0001
[046h 0070 001h]            Start Bus Number : 00
[047h 0071 001h]              End Bus Number : FF
[048h 0072 004h]                    Reserved : 00000000

[04Ch 0076 008h]                Base Address : 000000003C000000
[054h 0084 002h]        Segment Group Number : 0002
[056h 0086 001h]            Start Bus Number : 00
[057h 0087 001h]              End Bus Number : 01
[058h 0088 004h]                    Reserved : 00000000

[05Ch 0092 008h]                Base Address : 0000000038000000
[064h 0100 002h]        Segment Group Number : 0003
[066h 0102 001h]            Start Bus Number : 00
[067h 0103 001h]              End Bus Number : 01
[068h 0104 004h]                    Reserved : 00000000

[06Ch 0108 008h]                Base Address : 0000000034000000
[074h 0116 002h]        Segment Group Number : 0004
[076h 0118 001h]            Start Bus Number : 00
[077h 0119 001h]              End Bus Number : 01
[078h 0120 004h]                    Reserved : 00000000

[07Ch 0124 008h]                Base Address : 0000000032000000
[084h 0132 002h]        Segment Group Number : 0005
[086h 0134 001h]            Start Bus Number : 00
[087h 0135 001h]              End Bus Number : 01
[088h 0136 004h]                    Reserved : 00000000

[08Ch 0140 008h]                Base Address : 0000000030000000
[094h 0148 002h]        Segment Group Number : 0006
[096h 0150 001h]            Start Bus Number : 00
[097h 0151 001h]              End Bus Number : 01
[098h 0152 004h]                    Reserved : 00000000

Raw Table Data: Length 156 (0x9C)

    0000: 4D 43 46 47 9C 00 00 00 01 3E 51 43 4F 4D 20 20  // MCFG.....>QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 82 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0030: 07 00 00 00 00 00 00 FF 00 00 00 00 00 00 00 00  // ................
    0040: 06 00 00 00 01 00 00 FF 00 00 00 00 00 00 00 3C  // ...............<
    0050: 00 00 00 00 02 00 00 01 00 00 00 00 00 00 00 38  // ...............8
    0060: 00 00 00 00 03 00 00 01 00 00 00 00 00 00 00 34  // ...............4
    0070: 00 00 00 00 04 00 00 01 00 00 00 00 00 00 00 32  // ...............2
    0080: 00 00 00 00 05 00 00 01 00 00 00 00 00 00 00 30  // ...............0
    0090: 00 00 00 00 06 00 00 01 00 00 00 00              // ............
