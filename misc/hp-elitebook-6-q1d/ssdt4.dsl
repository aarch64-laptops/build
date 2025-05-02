/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt4.dat, Tue Apr 29 13:31:33 2025
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000004B (75)
 *     Revision         0x02
 *     Checksum         0xEE
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "HP  "
 *     Compiler Version 0x20230628 (539166248)
 */
DefinitionBlock ("", "SSDT", 2, "HPQOEM", "INSYDE  ", 0x00001000)
{
    Scope (\_SB)
    {
        Device (FDAD)
        {
            Name (_HID, "HPIC000C")  // _HID: Hardware ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }
}

