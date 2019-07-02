/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190215 (32-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of FPDT.bin, Thu Mar 14 08:49:30 2019
 *
 * ACPI Data Table [FPDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "FPDT"    [Firmware Performance Data Table]
[004h 0004   4]                 Table Length : 00000044
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 8D
[00Ah 0010   6]                       Oem ID : "LENOVO"
[010h 0016   8]                 Oem Table ID : "CB-01   "
[018h 0024   4]                 Oem Revision : 00000001
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001


[024h 0036   2]                Subtable Type : 0000
[026h 0038   1]                       Length : 10
[027h 0039   1]                     Revision : 01
[028h 0040   4]                     Reserved : 00000000
[02Ch 0044   8]     FPDT Boot Record Address : 00000000FF5A8000

[034h 0052   2]                Subtable Type : 0001
[036h 0054   1]                       Length : 10
[037h 0055   1]                     Revision : 01
[038h 0056   4]                     Reserved : 00000000
[03Ch 0060   8]          S3PT Record Address : 00000000FF5D3000

Raw Table Data: Length 68 (0x44)

    0000: 46 50 44 54 44 00 00 00 01 8D 4C 45 4E 4F 56 4F  // FPDTD.....LENOVO
    0010: 43 42 2D 30 31 20 20 20 01 00 00 00 51 43 4F 4D  // CB-01   ....QCOM
    0020: 01 00 00 00 00 00 10 01 00 00 00 00 00 80 5A FF  // ..............Z.
    0030: 00 00 00 00 01 00 10 01 00 00 00 00 00 30 5D FF  // .............0].
    0040: 00 00 00 00                                      // ....
