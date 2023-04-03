/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180105 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembly of TPM2.dat, Sat Apr  1 09:20:42 2023
 *
 * ACPI Data Table [TPM2]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "TPM2"    [Trusted Platform Module hardware interface table]
[004h 0004   4]                 Table Length : 00000054
[008h 0008   1]                     Revision : 03
[009h 0009   1]                     Checksum : 68
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00008180
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   2]               Platform Class : 0000
[026h 0038   2]                     Reserved : 0000
[028h 0040   8]              Control Address : 000000009FFDA000
[030h 0048   4]                 Start Method : 09 [Reserved]

[034h 0052  12]            Method Parameters : 01 00 00 00 00 00 00 00 00 00 00 00
[040h 0064   4]           Minimum Log Length : 00000000
[044h 0068   8]                  Log Address : 0000000000000000

Raw Table Data: Length 84 (0x54)

  0000: 54 50 4D 32 54 00 00 00 03 68 51 43 4F 4D 20 20  // TPM2T....hQCOM  
  0010: 51 43 4F 4D 45 44 4B 32 80 81 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
  0020: 01 00 00 00 00 00 00 00 00 A0 FD 9F 00 00 00 00  // ................
  0030: 09 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00  // ................
  0040: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  0050: 00 00 00 00                                      // ....
