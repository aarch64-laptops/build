/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (32-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of mcfg.dat, Mon Jul  4 07:29:12 2022
 *
 * ACPI Data Table [MCFG]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000   4]                    Signature : "MCFG"    [Memory Mapped Configuration Table]
[004h 0004   4]                 Table Length : 0000006C
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 2C
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00007180
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   8]                     Reserved : 0000000000000000

[02Ch 0044   8]                 Base Address : 0000000060000000
[034h 0052   2]         Segment Group Number : 0000
[036h 0054   1]             Start Bus Number : 00
[037h 0055   1]               End Bus Number : 01
[038h 0056   4]                     Reserved : 00000000

[03Ch 0060   8]                 Base Address : 0000000068000000
[044h 0068   2]         Segment Group Number : 0001
[046h 0070   1]             Start Bus Number : 00
[047h 0071   1]               End Bus Number : 01
[048h 0072   4]                     Reserved : 00000000

[04Ch 0076   8]                 Base Address : 0000000070000000
[054h 0084   2]         Segment Group Number : 0002
[056h 0086   1]             Start Bus Number : 00
[057h 0087   1]               End Bus Number : 01
[058h 0088   4]                     Reserved : 00000000

[05Ch 0092   8]                 Base Address : 0000000040000000
[064h 0100   2]         Segment Group Number : 0003
[066h 0102   1]             Start Bus Number : 00
[067h 0103   1]               End Bus Number : 01
[068h 0104   4]                     Reserved : 00000000

Raw Table Data: Length 108 (0x6C)

    0000: 4D 43 46 47 6C 00 00 00 01 2C 51 43 4F 4D 20 20  // MCFGl....,QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 71 00 00 51 43 4F 4D  // QCOMEDK2.q..QCOM
    0020: 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60  // ...............`
    0030: 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 68  // ...............h
    0040: 00 00 00 00 01 00 00 01 00 00 00 00 00 00 00 70  // ...............p
    0050: 00 00 00 00 02 00 00 01 00 00 00 00 00 00 00 40  // ...............@
    0060: 00 00 00 00 03 00 00 01 00 00 00 00              // ............
