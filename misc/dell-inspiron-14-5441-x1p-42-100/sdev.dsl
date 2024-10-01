/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of sdev.dat, Tue Oct  1 20:38:53 2024
 *
 * ACPI Data Table [SDEV]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "SDEV"    [Secure Devices table]
[004h 0004   4]                 Table Length : 0000006E
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : F0
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00008380
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001


[024h 0036   1]                Subtable Type : 00 [Namespace Device]
[025h 0037   1]        Flags (decoded below) : 02
                Allow handoff to unsecure OS : 0
[026h 0038   2]                       Length : 004A

[028h 0040   2]             Device ID Offset : 0010
[02Ah 0042   2]             Device ID Length : 000A
[02Ch 0044   2]           Vendor Data Offset : 0000
[02Eh 0046   2]           Vendor Data Length : 0000
[000h 0000  10]                     Namepath : "\_SB.SISP"

Raw Table Data: Length 110 (0x6E)

    0000: 53 44 45 56 6E 00 00 00 01 F0 51 43 4F 4D 20 20  // SDEVn.....QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 83 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 00 02 4A 00 10 00 0A 00 00 00 00 00  // ......J.........
    0030: 1A 00 30 00 5C 5F 53 42 2E 53 49 53 50 00 00 00  // ..0.\_SB.SISP...
    0040: 18 00 0F 00 09 00 00 00 00 00 00 00 00 51 43 4F  // .............QCO
    0050: 4D 30 43 43 43 00 01 00 18 00 00 00 00 00 00 A0  // M0CCC...........
    0060: CC 0A 00 00 00 00 00 40 00 00 00 00 00 00        // .......@......
