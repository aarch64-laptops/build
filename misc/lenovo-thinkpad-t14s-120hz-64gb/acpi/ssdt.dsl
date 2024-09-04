/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240827 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000007B (123)
 *     Revision         0x02
 *     Checksum         0xED
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "RamDisk "
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x05000000 (83886080)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "RamDisk ", 0x00001000)
{
    Scope (\_SB)
    {
        Device (NVDR)
        {
            Name (_HID, "ACPI0012" /* NVDIMM Root Device */)  // _HID: Hardware ID
            Name (_STR, Unicode ("NVDIMM Root Device"))  // _STR: Description String
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }
        }
    }
}

