/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of mcfg.dat, Tue Oct  1 20:38:53 2024
 *
 * ACPI Data Table [MCFG]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "MCFG"    [Memory Mapped Configuration table]
[004h 0004   4]                 Table Length : 000000AC
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : B0
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00008380
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   8]                     Reserved : 0000000000000000

[02Ch 0044   8]                 Base Address : 0000000400000000
[034h 0052   2]         Segment Group Number : 0000
[036h 0054   1]             Start Bus Number : 00
[037h 0055   1]               End Bus Number : FF
[038h 0056   4]                     Reserved : 00000000

[03Ch 0060   8]                 Base Address : 0000000500000000
[044h 0068   2]         Segment Group Number : 0001
[046h 0070   1]             Start Bus Number : 00
[047h 0071   1]               End Bus Number : FF
[048h 0072   4]                     Reserved : 00000000

[04Ch 0076   8]                 Base Address : 0000006000000000
[054h 0084   2]         Segment Group Number : 0002
[056h 0086   1]             Start Bus Number : 00
[057h 0087   1]               End Bus Number : FF
[058h 0088   4]                     Reserved : 00000000

[05Ch 0092   8]                 Base Address : 0000000740000000
[064h 0100   2]         Segment Group Number : 0003
[066h 0102   1]             Start Bus Number : 00
[067h 0103   1]               End Bus Number : 01
[068h 0104   4]                     Reserved : 00000000

[06Ch 0108   8]                 Base Address : 000000007C000000
[074h 0116   2]         Segment Group Number : 0004
[076h 0118   1]             Start Bus Number : 00
[077h 0119   1]               End Bus Number : 01
[078h 0120   4]                     Reserved : 00000000

[07Ch 0124   8]                 Base Address : 000000007E000000
[084h 0132   2]         Segment Group Number : 0005
[086h 0134   1]             Start Bus Number : 00
[087h 0135   1]               End Bus Number : 01
[088h 0136   4]                     Reserved : 00000000

[08Ch 0140   8]                 Base Address : 0000000070000000
[094h 0148   2]         Segment Group Number : 0006
[096h 0150   1]             Start Bus Number : 00
[097h 0151   1]               End Bus Number : 01
[098h 0152   4]                     Reserved : 00000000

[09Ch 0156   8]                 Base Address : 0000000074000000
[0A4h 0164   2]         Segment Group Number : 0007
[0A6h 0166   1]             Start Bus Number : 00
[0A7h 0167   1]               End Bus Number : 01
[0A8h 0168   4]                     Reserved : 00000000

Raw Table Data: Length 172 (0xAC)

    0000: 4D 43 46 47 AC 00 00 00 01 B0 51 43 4F 4D 20 20  // MCFG......QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 83 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0030: 04 00 00 00 00 00 00 FF 00 00 00 00 00 00 00 00  // ................
    0040: 05 00 00 00 01 00 00 FF 00 00 00 00 00 00 00 00  // ................
    0050: 60 00 00 00 02 00 00 FF 00 00 00 00 00 00 00 40  // `..............@
    0060: 07 00 00 00 03 00 00 01 00 00 00 00 00 00 00 7C  // ...............|
    0070: 00 00 00 00 04 00 00 01 00 00 00 00 00 00 00 7E  // ...............~
    0080: 00 00 00 00 05 00 00 01 00 00 00 00 00 00 00 70  // ...............p
    0090: 00 00 00 00 06 00 00 01 00 00 00 00 00 00 00 74  // ...............t
    00A0: 00 00 00 00 07 00 00 01 00 00 00 00              // ............
