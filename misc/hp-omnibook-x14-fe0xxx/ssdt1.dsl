/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt1.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000010C (268)
 *     Revision         0x01
 *     Checksum         0x12
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "8CBE    "
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "HP  "
 *     Compiler Version 0x20230628 (539166248)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "8CBE    ", 0x00001000)
{
    External (_SB_.WMID.HROL, FieldUnitObj)

    Scope (\_SB)
    {
        Device (IPPF)
        {
            Name (_HID, "HPIC0003")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (HRBL)
        {
            Name (_HID, "HPIC0014")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.WMID.HROL == One))
                {
                    Return (Zero)
                }

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

        Device (MTLE)
        {
            Name (_HID, "HPIC0005")  // _HID: Hardware ID
            Name (_STR, Unicode ("MUTE LED"))  // _STR: Description String
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }
}

