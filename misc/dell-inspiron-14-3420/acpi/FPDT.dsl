/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240927 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of C:/Users/nico/Documents/Src/aarch64-laptops_build/misc/dell-inspiron-14-3420/acpi/FPDT.aml
 *
 * ACPI Data Table [FPDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "FPDT"    [Firmware Performance Data Table]
[004h 0004 004h]                Table Length : 00000044
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : DA
[00Ah 0010 006h]                      Oem ID : "DELL  "
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00000001
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001


[024h 0036 002h]               Subtable Type : 0000
[026h 0038 001h]                      Length : 10
[027h 0039 001h]                    Revision : 01
[028h 0040 004h]                    Reserved : 00000000
[02Ch 0044 008h]    FPDT Boot Record Address : 00000000FFECE000

[034h 0052 002h]               Subtable Type : 0001
[036h 0054 001h]                      Length : 10
[037h 0055 001h]                    Revision : 01
[038h 0056 004h]                    Reserved : 00000000
[03Ch 0060 008h]         S3PT Record Address : 00000000FFED1000

Raw Table Data: Length 68 (0x44)

    0000: 46 50 44 54 44 00 00 00 01 DA 44 45 4C 4C 20 20  // FPDTD.....DELL  
    0010: 51 43 4F 4D 45 44 4B 32 01 00 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 00 00 10 01 00 00 00 00 00 E0 EC FF  // ................
    0030: 00 00 00 00 01 00 10 01 00 00 00 00 00 10 ED FF  // ................
    0040: 00 00 00 00                                      // ....
