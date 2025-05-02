/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt1.dat, Tue Apr 29 13:31:33 2025
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000BB (187)
 *     Revision         0x01
 *     Checksum         0xB6
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "HP  "
 *     Compiler Version 0x20230628 (539166248)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "INSYDE  ", 0x00001000)
{
    External (_SB_.WMID.HROL, FieldUnitObj)

    Scope (\_SB)
    {
        Device (IPPF)
        {
            Name (_HID, "HPIC0003")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }
        }

        Device (HRBL)
        {
            Name (_HID, "HPIC0014")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Method (STXS, 1, NotSerialized)
            {
                Name (STPX, Buffer (One)
                {
                     0x00                                             // .
                })
                STPX = Arg0
                CreateByteField (STPX, Zero, STPS)
                If ((STPS == 0x05)){}
                If ((STPS == 0x06)){}
                If ((STPS == 0x07)){}
            }
        }
    }
}

