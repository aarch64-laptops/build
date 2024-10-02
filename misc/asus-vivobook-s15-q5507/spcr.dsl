/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240322 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of ./acpi/SPCR.aml
 *
 * ACPI Data Table [SPCR]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "SPCR"    [Serial Port Console Redirection Table]
[004h 0004 004h]                Table Length : 00000050
[008h 0008 001h]                    Revision : 02
[009h 0009 001h]                    Checksum : 59
[00Ah 0010 006h]                      Oem ID : "_ASUS_"
[010h 0016 008h]                Oem Table ID : "Notebook"
[018h 0024 004h]                Oem Revision : 00008380
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 001h]              Interface Type : 13
[025h 0037 003h]                    Reserved : 000000

[028h 0040 00Ch]        Serial Port Register : [Generic Address Structure]
[028h 0040 001h]                    Space ID : 00 [SystemMemory]
[029h 0041 001h]                   Bit Width : 20
[02Ah 0042 001h]                  Bit Offset : 00
[02Bh 0043 001h]        Encoded Access Width : 20 [Unknown Width Encoding]
[02Ch 0044 008h]                     Address : 0000000000894000

[034h 0052 001h]              Interrupt Type : 08
[035h 0053 001h]         PCAT-compatible IRQ : 00
[036h 0054 004h]                   Interrupt : 00000182
[03Ah 0058 001h]                   Baud Rate : 07
[03Bh 0059 001h]                      Parity : 00
[03Ch 0060 001h]                   Stop Bits : 01
[03Dh 0061 001h]                Flow Control : 00
[03Eh 0062 001h]               Terminal Type : 03
[04Ch 0076 001h]                    Reserved : 00
[040h 0064 002h]               PCI Device ID : FFFF
[042h 0066 002h]               PCI Vendor ID : FFFF
[044h 0068 001h]                     PCI Bus : 00
[045h 0069 001h]                  PCI Device : 00
[046h 0070 001h]                PCI Function : 00
[047h 0071 004h]                   PCI Flags : 00000000
[04Bh 0075 001h]                 PCI Segment : 00
[04Ch 0076 004h]                    Reserved : 00000000

Raw Table Data: Length 80 (0x50)

    0000: 53 50 43 52 50 00 00 00 02 59 5F 41 53 55 53 5F  // SPCRP....Y_ASUS_
    0010: 4E 6F 74 65 62 6F 6F 6B 80 83 00 00 51 43 4F 4D  // Notebook....QCOM
    0020: 01 00 00 00 13 00 00 00 00 20 00 20 00 40 89 00  // ......... . .@..
    0030: 00 00 00 00 08 00 82 01 00 00 07 00 01 00 03 00  // ................
    0040: FF FF FF FF 00 00 00 00 00 00 00 00 00 00 00 00  // ................
