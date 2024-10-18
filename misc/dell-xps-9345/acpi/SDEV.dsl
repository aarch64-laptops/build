/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240927 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of sdev.dat
 *
 * ACPI Data Table [SDEV]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "SDEV"    [Secure Devices Table]
[004h 0004 004h]                Table Length : 0000006E
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : F0
[00Ah 0010 006h]                      Oem ID : "QCOM  "
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00008380
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001


[024h 0036 001h]               Subtable Type : 00 [Namespace Device]
[025h 0037 001h]       Flags (decoded below) : 02
                Allow handoff to unsecure OS : 0
            Secure access components present : 1
[026h 0038 002h]                      Length : 004A

[004h 0004 002h]            Device ID Offset : 0010
[006h 0006 002h]            Device ID Length : 000A
[008h 0008 002h]          Vendor Data Offset : 0000
[00Ah 0010 002h]          Vendor Data Length : 0000
[00Ch 0012 002h] Secure Access Components Offset : 001A
[00Eh 0014 002h] Secure Access Components Length : 0030
[010h 0016 001h]       Secure Component Type : 00
[011h 0017 001h]       Flags (decoded below) : 00
[012h 0018 002h]                      Length : 0018
[018h 0024 002h]          Hardware ID Offset : 000F
[01Ah 0026 002h]          Hardware ID Length : 0009
[01Ch 0028 002h]         Subsystem ID Offset : 0000
[01Eh 0030 002h]         Subsystem ID Length : 0000
[020h 0032 002h]           Hardware Revision : 0000
[022h 0034 001h]        Hardware Rev Present : 00
[023h 0035 001h]          Class Code Present : 51
[024h 0036 001h]              PCI Base Class : 43
[025h 0037 001h]                PCI SubClass : 4F
[026h 0038 001h]       PCI Programming Xface : 4D
[044h 0068 00Ah]                    Namepath : "\_SB.SISP"

Raw Table Data: Length 110 (0x6E)

    0000: 53 44 45 56 6E 00 00 00 01 F0 51 43 4F 4D 20 20  // SDEVn.....QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 83 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 00 02 4A 00 10 00 0A 00 00 00 00 00  // ......J.........
    0030: 1A 00 30 00 5C 5F 53 42 2E 53 49 53 50 00 00 00  // ..0.\_SB.SISP...
    0040: 18 00 0F 00 09 00 00 00 00 00 00 00 00 51 43 4F  // .............QCO
    0050: 4D 30 43 43 43 00 01 00 18 00 00 00 00 00 00 A0  // M0CCC...........
    0060: CC 0A 00 00 00 00 00 40 00 00 00 00 00 00        // .......@......
