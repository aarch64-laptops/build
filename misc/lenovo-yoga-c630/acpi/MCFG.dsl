/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190215 (32-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of MCFG.bin, Thu Mar 14 08:49:31 2019
 *
 * ACPI Data Table [MCFG]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "MCFG"    [Memory Mapped Configuration table]
[004h 0004   4]                 Table Length : 0000002C
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 3E
[00Ah 0010   6]                       Oem ID : "LENOVO"
[010h 0016   8]                 Oem Table ID : "CB-01   "
[018h 0024   4]                 Oem Revision : 00000001
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   8]                     Reserved : 0000000000000000

Raw Table Data: Length 44 (0x2C)

    0000: 4D 43 46 47 2C 00 00 00 01 3E 4C 45 4E 4F 56 4F  // MCFG,....>LENOVO
    0010: 43 42 2D 30 31 20 20 20 01 00 00 00 51 43 4F 4D  // CB-01   ....QCOM
    0020: 01 00 00 00 00 00 00 00 00 00 00 00              // ............
