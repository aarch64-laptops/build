/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt3.dat, Tue Apr 29 13:31:33 2025
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000026B (619)
 *     Revision         0x01
 *     Checksum         0x49
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "HP  "
 *     Compiler Version 0x20230628 (539166248)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "INSYDE  ", 0x00001000)
{
    External (_SB_.HPGC, MethodObj)    // 0 Arguments
    External (_SB_.HPSC, MethodObj)    // 1 Arguments

    Scope (\_SB)
    {
        Device (ABCD)
        {
            Name (_HID, "HPIC001A")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0xFF)
            }
        }

        Name (ISCF, Zero)
        Name (RSFF, Zero)
        Name (WMFF, Zero)
        Mutex (MSDI, 0x00)
        Device (AMW0)
        {
            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, "PSMI")  // _UID: Unique ID
            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */  0x92, 0xD3, 0xA0, 0x0F, 0xD5, 0x8F, 0x26, 0x4A,  // ......&J
                /* 0008 */  0xA4, 0x24, 0x41, 0x02, 0xCF, 0xC9, 0x80, 0xFC,  // .$A.....
                /* 0010 */  0x42, 0x42, 0x01, 0x02, 0x4C, 0x49, 0x68, 0xBB,  // BB..LIh.
                /* 0018 */  0x56, 0xA0, 0x7C, 0x44, 0xA1, 0x71, 0xAF, 0xDC,  // V.|D.q..
                /* 0020 */  0xE0, 0xEE, 0x80, 0x92, 0xD1, 0x00, 0x01, 0x08   // ........
            })
            Method (EIPS, 1, NotSerialized)
            {
                Acquire (MSDI, 0xFFFF)
                ISCF = One
                Release (MSDI)
            }

            Method (DIPS, 1, NotSerialized)
            {
                Acquire (MSDI, 0xFFFF)
                ISCF = Zero
                Release (MSDI)
            }

            Method (CIPS, 0, NotSerialized)
            {
                Acquire (MSDI, 0xFFFF)
                Local0 = ISCF /* \_SB_.ISCF */
                Release (MSDI)
                Return (Local0)
            }

            Method (ISNC, 1, Serialized)
            {
                Name (ABCD, Zero)
                ABCD = Arg0
                If (ABCD)
                {
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (SSFF, 0, NotSerialized)
            {
                Acquire (MSDI, 0xFFFF)
                RSFF = One
                Release (MSDI)
            }

            Method (CSFF, 0, NotSerialized)
            {
                Acquire (MSDI, 0xFFFF)
                Local0 = RSFF /* \_SB_.RSFF */
                Release (MSDI)
                Return (Local0)
            }

            Method (WMBB, 3, NotSerialized)
            {
                Acquire (MSDI, 0xFFFF)
                If ((Arg1 == One))
                {
                    EIPS (Arg2)
                    RSFF = Zero
                    WMFF = Zero
                    Release (MSDI)
                    Return (Zero)
                }

                If ((Arg1 == 0x02))
                {
                    DIPS (Arg2)
                    Release (MSDI)
                    Return (Zero)
                }

                If ((Arg1 == 0x03))
                {
                    Local0 = Arg2
                    ISNC (Local0)
                    RSFF = Zero
                    Release (MSDI)
                    Return (Zero)
                }

                If ((Arg1 == 0x04))
                {
                    Sleep (0x64)
                    While ((WMFF == One))
                    {
                        Sleep (0x64)
                    }

                    WMFF = One
                    If ((ISCF == One))
                    {
                        RSFF = One
                        Notify (\_SB.AMW0, 0xD1) // Hardware-Specific
                        While ((RSFF == One))
                        {
                            Sleep (0x64)
                        }
                    }

                    WMFF = Zero
                    Release (MSDI)
                    Return (Zero)
                }

                If ((Arg1 == 0x05))
                {
                    Local0 = \_SB.HPSC (Arg2)
                    Release (MSDI)
                    Return (Local0)
                }

                If ((Arg1 == 0x06))
                {
                    Local0 = \_SB.HPGC ()
                    Release (MSDI)
                    Return (Local0)
                }
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
            {
                Return (One)
            }
        }
    }
}

