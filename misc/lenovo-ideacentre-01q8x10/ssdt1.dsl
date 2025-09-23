/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20250807 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt1.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000134A (4938)
 *     Revision         0x02
 *     Checksum         0x32
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TC-O6N  "
 *     OEM Revision     0x00001410 (5136)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20230628 (539166248)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "TC-O6N  ", 0x00001410)
{
    External (_SB_.AMW0, DeviceObj)
    External (ISCF, IntObj)
    External (MSDI, IntObj)
    External (RSFF, IntObj)
    External (WMFF, IntObj)

    Scope (\_SB)
    {
        OperationRegion (PSSO, SystemMemory, 0xD46C6018, 0x00000003)
        Field (PSSO, AnyAcc, NoLock, Preserve)
        {
            SDCD,   8, 
            USBD,   8, 
            CAMD,   8
        }

        Device (\_SB.WMID)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (SBSZ, 0x1000)
            Name (IWSB, Buffer (SBSZ)
            {
                 0x00                                             // .
            })
            Name (RBSZ, 0x1000)
            Name (IWRB, Buffer (RBSZ)
            {
                 0x00                                             // .
            })
            Name (NOST, Zero)
            Method (HPSC, 1, NotSerialized)
            {
                Debug = "Entry HPSC"
                Name (RCBF, Buffer (0x2008)
                {
                     0x00                                             // .
                })
                RCBF = Arg0
                CreateDWordField (RCBF, Zero, RCB0)
                CreateField (RCBF, 0x20, 0x8000, RCB1)
                CreateDWordField (RCBF, 0x1004, RCB2)
                CreateField (RCBF, 0x8040, 0x8000, RCB3)
                SBSZ = RCB0 /* \_SB_.WMID.HPSC.RCB0 */
                IWSB = RCB1 /* \_SB_.WMID.HPSC.RCB1 */
                RBSZ = RCB2 /* \_SB_.WMID.HPSC.RCB2 */
                IWRB = RCB3 /* \_SB_.WMID.HPSC.RCB3 */
                Name (SOBF, Buffer (0x04)
                {
                     0x00                                             // .
                })
                Local0 = SOBF /* \_SB_.WMID.HPSC.SOBF */
                Debug = "Exit HPSC"
                Return (Local0)
            }

            Method (HPGC, 0, NotSerialized)
            {
                Debug = "Entry HPGC"
                Name (GOBF, Buffer (0x200C)
                {
                     0x00                                             // .
                })
                CreateDWordField (GOBF, Zero, GOB0)
                CreateField (GOBF, 0x20, 0x8000, GOB1)
                CreateDWordField (GOBF, 0x1004, GOB2)
                CreateField (GOBF, 0x8040, 0x8000, GOB3)
                CreateDWordField (GOBF, 0x2008, GOB4)
                GOB0 = SBSZ /* \_SB_.WMID.SBSZ */
                GOB1 = IWSB /* \_SB_.WMID.IWSB */
                GOB2 = RBSZ /* \_SB_.WMID.RBSZ */
                GOB3 = IWRB /* \_SB_.WMID.IWRB */
                GOB4 = Zero
                Local0 = GOBF /* \_SB_.WMID.HPGC.GOBF */
                Debug = "Exit HPGC"
                Return (Local0)
            }

            Method (BCPK, 1, Serialized)
            {
                Debug = "Entry BCPK"
                Debug = Arg0
                Switch (ToInteger (Arg0))
                {
                    Case (0x1B)
                    {
                        Local0 = Package (0x1A)
                            {
                                "SD Card 1", 
                                "Enabled", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Enabled", 
                                0x0E, 
                                "Enabled", 
                                "Disable", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " "
                            }
                    }
                    Case (0x1C)
                    {
                        Local0 = Package (0x1A)
                            {
                                "USB Port 0 All", 
                                "Enabled", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Enabled", 
                                0x0E, 
                                "Enabled", 
                                "Disable", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " "
                            }
                    }
                    Case (0x1D)
                    {
                        Local0 = Package (0x1A)
                            {
                                "Front Camera 1", 
                                "Enabled", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Enabled", 
                                0x0E, 
                                "Enabled", 
                                "Disable", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " "
                            }
                    }
                    Default
                    {
                        Local0 = Package (0x1A)
                            {
                                "Name", 
                                "Value", 
                                "System Configuration", 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Enable", 
                                0x0E, 
                                "Enable", 
                                "Disable", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " "
                            }
                    }

                }

                Return (Local0)
            }

            Method (DVSC, 2, NotSerialized)
            {
                Debug = "Entry DVSC"
                Local0 = Arg0
                Local1 = Arg1
                Debug = Arg0
                Debug = Arg1
                Name (SCFD, Buffer (0x02)
                {
                     0x00                                             // .
                })
                CreateWordField (SCFD, Zero, DVST)
                If ((Local0 == 0xD0))
                {
                    Local6 = "SDCardTz"
                    If ((Local1 == Zero))
                    {
                        DVST = 0x02
                    }

                    If ((Local1 == One))
                    {
                        DVST = One
                    }

                    Local5 = STVA (Local6, SCFD, ToUUID ("a04a27f4-df00-4d42-b552-39511302113d") /* Unknown UUID */)
                }
                ElseIf ((Local0 == 0xD1))
                {
                    Local6 = "USBPortTz"
                    If ((Local1 == Zero))
                    {
                        DVST = 0x02
                    }

                    If ((Local1 == One))
                    {
                        DVST = One
                    }

                    Local5 = STVA (Local6, SCFD, ToUUID ("a04a27f4-df00-4d42-b552-39511302113d") /* Unknown UUID */)
                }
                ElseIf ((Local0 == 0xD2))
                {
                    Local6 = "Camera1Tz"
                    If ((Local1 == Zero))
                    {
                        DVST = 0x02
                    }

                    If ((Local1 == One))
                    {
                        DVST = One
                    }

                    Local5 = STVA (Local6, SCFD, ToUUID ("a04a27f4-df00-4d42-b552-39511302113d") /* Unknown UUID */)
                }

                Debug = "Exit DVSC"
            }

            Method (HGRB, 0, NotSerialized)
            {
                Debug = "Entry HGRB"
                Name (TMPB, Package (0x03)
                {
                    Zero, 
                    Zero, 
                    Buffer (0x1000)
                    {
                         0x00                                             // .
                    }
                })
                CreateDWordField (IWRB, Zero, IWR0)
                CreateField (IWRB, 0x80, 0x80, IWR1)
                CreateWordField (IWRB, 0x20, IWR2)
                CreateWordField (IWRB, 0x22, IWR3)
                CreateQWordField (IWRB, 0x30, IWR4)
                CreateDWordField (IWRB, 0x80, IWR5)
                CreateQWordField (IWRB, 0x84, IWR6)
                CreateField (IWRB, 0x0460, (0x08 * IWR6), IWR7)
                If ((CRBG (IWR1) == One))
                {
                    TMPB [Zero] = IWR3 /* \_SB_.WMID.HGRB.IWR3 */
                    TMPB [One] = IWR4 /* \_SB_.WMID.HGRB.IWR4 */
                    TMPB [0x02] = IWR7 /* \_SB_.WMID.HGRB.IWR7 */
                }

                Debug = "Exit HGRB"
                Local0 = TMPB /* \_SB_.WMID.HGRB.TMPB */
                Return (Local0)
            }

            Method (PGSB, 3, NotSerialized)
            {
                Debug = "Entry PGSB"
                IWSB = Buffer (0x1000)
                    {
                         0x00                                             // .
                    }
                IWRB = Buffer (0x1000)
                    {
                         0x00                                             // .
                    }
                Name (VANS, Zero)
                VANS = Arg1
                VANS++
                Name (VANM, Buffer (VANS){})
                VANM = Arg0
                CreateQWordField (IWSB, Zero, IWS1)
                CreateQWordField (IWSB, 0x08, IWS2)
                CreateField (IWSB, 0x80, 0x0180, IWS3)
                CreateField (IWSB, 0x0200, 0x80, IWS4)
                IWS1 = 0xAA01
                IWS2 = VANS /* \_SB_.WMID.PGSB.VANS */
                IWS3 = VANM /* \_SB_.WMID.PGSB.VANM */
                IWS4 = Arg2
                Debug = "Exit PGSB"
                Return (Zero)
            }

            Method (PSSB, 5, NotSerialized)
            {
                Debug = "Entry PSSB"
                IWSB = Buffer (0x1000)
                    {
                         0x00                                             // .
                    }
                IWRB = Buffer (0x1000)
                    {
                         0x00                                             // .
                    }
                Name (VANS, Zero)
                VANS = Arg1
                VANS++
                Name (VANM, Buffer (VANS){})
                VANM = Arg0
                Name (VADS, Zero)
                VADS = Arg3
                Name (VADT, Buffer (VADS){})
                VADT = Arg2
                CreateQWordField (IWSB, Zero, IWS1)
                CreateQWordField (IWSB, 0x08, IWS2)
                CreateField (IWSB, 0x80, 0x0180, IWS3)
                CreateField (IWSB, 0x0200, 0x80, IWS4)
                CreateDWordField (IWSB, 0x50, IWS5)
                CreateQWordField (IWSB, 0x54, IWS6)
                CreateField (IWSB, 0x0300, (0x08 * VADS), IWS7)
                IWS1 = 0xAA00
                IWS2 = VANS /* \_SB_.WMID.PSSB.VANS */
                IWS3 = VANM /* \_SB_.WMID.PSSB.VANM */
                IWS4 = Arg4
                IWS5 = 0x07
                IWS6 = VADS /* \_SB_.WMID.PSSB.VADS */
                IWS7 = VADT /* \_SB_.WMID.PSSB.VADT */
                Debug = "Exit PSSB"
                Return (Zero)
            }

            Method (HSRB, 0, NotSerialized)
            {
                Debug = "Entry HSRB"
                Name (TMPB, Package (0x02)
                {
                    Zero, 
                    Zero
                })
                CreateDWordField (IWRB, Zero, IWR0)
                CreateField (IWRB, 0x80, 0x80, IWR1)
                CreateWordField (IWRB, 0x20, IWR2)
                CreateWordField (IWRB, 0x22, IWR3)
                CreateQWordField (IWRB, 0x30, IWR4)
                If ((CRBG (IWR1) == One))
                {
                    TMPB [Zero] = IWR3 /* \_SB_.WMID.HSRB.IWR3 */
                    TMPB [One] = IWR4 /* \_SB_.WMID.HSRB.IWR4 */
                }

                Debug = "Exit HSRB"
                Local0 = TMPB /* \_SB_.WMID.HSRB.TMPB */
                Return (Local0)
            }

            Method (CRBG, 1, NotSerialized)
            {
                If ((Buffer (0x10)
                        {
                            /* 0000 */  0xCC, 0xEF, 0xCC, 0x06, 0xF0, 0xBF, 0xC3, 0x4B,  // .......K
                            /* 0008 */  0x73, 0xAC, 0x76, 0x14, 0xC3, 0x89, 0x38, 0x07   // s.v...8.
                        } == Arg0))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (SGTZ, 1, Serialized)
            {
                Name (SGBF, Buffer (0x0405)
                {
                     0x00                                             // .
                })
                Local0 = "WmiBuffVar"
                Local1 = STVA (Local0, Arg0, ToUUID ("a04a27f4-df00-4d42-b552-39511302113d") /* Unknown UUID */)
                CreateField (IWRB, Zero, 0x2028, IWR0)
                Return (IWR0) /* \_SB_.WMID.SGTZ.IWR0 */
            }

            Method (GTVA, 2, NotSerialized)
            {
                PGSB (Arg0, SizeOf (Arg0), Arg1)
                NOTF ()
                Local0 = HGRB ()
                Debug = "Exit GTVA"
                Return (Local0)
            }

            Method (STVA, 3, NotSerialized)
            {
                PSSB (Arg0, SizeOf (Arg0), Arg1, SizeOf (Arg1), Arg2)
                NOTF ()
                Local0 = HSRB ()
                Debug = "Exit STVA"
                Return (Local0)
            }

            Method (NOTF, 0, NotSerialized)
            {
                Debug = "Entry NOTF"
                ISCF = One
                If ((ISCF == One))
                {
                    Debug = "Entry NOTF retry"
                    Name (RETY, 0x0A)
                    RSFF = One
                    Notify (\_SB.AMW0, 0xD1) // Hardware-Specific
                    While ((RSFF == One))
                    {
                        Sleep (0x64)
                        RETY--
                        If ((RETY == Zero))
                        {
                            Debug = "Notify Status Fail"
                            NOST = 0xFF
                            Break
                        }
                    }
                }
                Else
                {
                    Debug = "Entry NOTF Fail"
                    NOST = 0xFF
                }

                Return (Zero)
            }
        }

        Device (AMW1)
        {
            Debug = "Entry AWM1"
            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, "PSM0")  // _UID: Unique ID
            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */  0x45, 0x97, 0x95, 0x5A, 0xCD, 0x16, 0xAF, 0x4E,  // E..Z...N
                /* 0008 */  0xB1, 0xA3, 0xC6, 0x62, 0xFB, 0x89, 0xF4, 0xE3,  // ...b....
                /* 0010 */  0x42, 0x41, 0x01, 0x02, 0xAA, 0xAA, 0x95, 0x5A,  // BA.....Z
                /* 0018 */  0xCD, 0x16, 0xAF, 0x4E, 0xB1, 0xA3, 0xC6, 0x62,  // ...N...b
                /* 0020 */  0xFB, 0x89, 0xF4, 0xE3, 0x41, 0x41, 0x01, 0x01   // ....AA..
            })
            Name (WQBA, Buffer (0x03DC)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0xCC, 0x03, 0x00, 0x00, 0x70, 0x13, 0x00, 0x00,  // ....p...
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x18, 0x5B, 0x89, 0x00, 0x01, 0x06, 0x18, 0x42,  // .[.....B
                /* 0020 */  0x10, 0x05, 0x10, 0x22, 0x21, 0x04, 0x12, 0x01,  // ..."!...
                /* 0028 */  0xA1, 0xC8, 0x2C, 0x0C, 0x86, 0x10, 0x38, 0x2E,  // ..,...8.
                /* 0030 */  0x84, 0x1C, 0x40, 0x48, 0x1C, 0x14, 0x4A, 0x08,  // ..@H..J.
                /* 0038 */  0x84, 0xFA, 0x13, 0xC8, 0xAF, 0x00, 0x84, 0x0E,  // ........
                /* 0040 */  0x05, 0xC8, 0x14, 0x60, 0x50, 0x80, 0x53, 0x04,  // ...`P.S.
                /* 0048 */  0x11, 0xF4, 0x2A, 0xC0, 0xA6, 0x00, 0x93, 0x02,  // ..*.....
                /* 0050 */  0x2C, 0x0A, 0xD0, 0x2E, 0xC0, 0xB2, 0x00, 0xDD,  // ,.......
                /* 0058 */  0x02, 0xA4, 0xC3, 0x12, 0x91, 0xE0, 0x28, 0x31,  // ......(1
                /* 0060 */  0xE0, 0x28, 0x9D, 0xD8, 0xC2, 0x0D, 0x1B, 0xBC,  // .(......
                /* 0068 */  0x50, 0x14, 0xCD, 0x20, 0x4A, 0x82, 0x72, 0x11,  // P.. J.r.
                /* 0070 */  0xA4, 0x0B, 0x42, 0x4A, 0x05, 0xF8, 0x46, 0xD0,  // ..BJ..F.
                /* 0078 */  0x00, 0xA2, 0x9C, 0x04, 0x23, 0xB0, 0xD4, 0x21,  // ....#..!
                /* 0080 */  0xA0, 0xE4, 0x0C, 0x01, 0x35, 0x80, 0x56, 0x27,  // ....5.V'
                /* 0088 */  0x20, 0xFC, 0xD0, 0xA7, 0x84, 0x23, 0x08, 0x67,  //  ....#.g
                /* 0090 */  0xAC, 0xE2, 0x67, 0x20, 0xE5, 0x02, 0x4C, 0xCF,  // ..g ..L.
                /* 0098 */  0x49, 0xCE, 0x31, 0xE4, 0x78, 0x5C, 0xE8, 0x41,  // I.1.x\.A
                /* 00A0 */  0xF0, 0xB0, 0x46, 0x40, 0x58, 0x98, 0x21, 0x4B,  // ..F@X.!K
                /* 00A8 */  0xEA, 0x5A, 0x0D, 0x43, 0x35, 0x8C, 0x85, 0xBA,  // .Z.C5...
                /* 00B0 */  0x18, 0x35, 0x6A, 0x52, 0x7C, 0x3E, 0x21, 0x4A,  // .5jR|>!J
                /* 00B8 */  0x82, 0x43, 0x8D, 0xDA, 0x12, 0x05, 0x98, 0x1F,  // .C......
                /* 00C0 */  0x87, 0x0C, 0x0B, 0xB0, 0x3D, 0x16, 0x02, 0xC9,  // ....=...
                /* 00C8 */  0xA4, 0x0D, 0x05, 0x25, 0x05, 0x42, 0x63, 0x3B,  // ...%.Bc;
                /* 00D0 */  0xA8, 0xE3, 0x3C, 0xA3, 0x88, 0x25, 0x4F, 0x49,  // ..<..%OI
                /* 00D8 */  0x30, 0x09, 0x3C, 0x8A, 0xC8, 0x46, 0xE3, 0xD0,  // 0.<..F..
                /* 00E0 */  0xD8, 0x61, 0x78, 0x98, 0xC1, 0x0E, 0xE2, 0x30,  // .ax....0
                /* 00E8 */  0xCA, 0x46, 0x16, 0x81, 0x27, 0x74, 0xA4, 0xC7,  // .F..'t..
                /* 00F0 */  0x5D, 0xD8, 0x3C, 0x85, 0x1A, 0xA3, 0x39, 0x28,  // ].<...9(
                /* 00F8 */  0x22, 0xFF, 0x28, 0x80, 0x1E, 0x53, 0xD8, 0xA3,  // ".(..S..
                /* 0100 */  0x8D, 0x7D, 0xBE, 0x16, 0x3E, 0x58, 0x61, 0x1C,  // .}..>Xa.
                /* 0108 */  0xC1, 0x71, 0x25, 0xF8, 0xFF, 0x9F, 0xF9, 0x19,  // .q%.....
                /* 0110 */  0x9C, 0x42, 0xB4, 0x08, 0x05, 0x09, 0xB0, 0x8E,  // .B......
                /* 0118 */  0x21, 0xCC, 0x43, 0x8A, 0x12, 0x30, 0x5E, 0x8C,  // !.C..0^.
                /* 0120 */  0x10, 0x51, 0x8F, 0xCA, 0x80, 0x81, 0x82, 0x04,  // .Q......
                /* 0128 */  0x3A, 0xAB, 0x18, 0x51, 0x8A, 0x06, 0x13, 0x64,  // :..Q...d
                /* 0130 */  0x60, 0x4F, 0xC0, 0x18, 0xF1, 0xA2, 0xFB, 0x14,  // `O......
                /* 0138 */  0x60, 0xB8, 0xCE, 0x04, 0x28, 0x1B, 0x85, 0x26,  // `...(..&
                /* 0140 */  0x71, 0x3C, 0x18, 0x19, 0x10, 0xF2, 0x0C, 0x48,  // q<.....H
                /* 0148 */  0xA0, 0x13, 0xD8, 0xBD, 0x00, 0x6B, 0xB7, 0x02,  // .....k..
                /* 0150 */  0x8D, 0x2C, 0x46, 0x88, 0xDE, 0x06, 0x27, 0x90,  // .,F...'.
                /* 0158 */  0xB6, 0x04, 0x18, 0x13, 0xA0, 0x6D, 0x48, 0x9A,  // .....mH.
                /* 0160 */  0x58, 0x94, 0x40, 0x2F, 0x05, 0xF1, 0x6A, 0x44,  // X.@/..jD
                /* 0168 */  0x91, 0x42, 0x2C, 0xA1, 0x1C, 0x44, 0x94, 0x68,  // .B,..D.h
                /* 0170 */  0xF1, 0x22, 0x1C, 0x46, 0xAC, 0x50, 0x6F, 0x13,  // .".F.Po.
                /* 0178 */  0xB1, 0x83, 0xC4, 0x34, 0x5A, 0xFB, 0x83, 0x20,  // ...4Z.. 
                /* 0180 */  0xF1, 0x8E, 0x05, 0x92, 0x00, 0xA2, 0x48, 0xA3,  // ......H.
                /* 0188 */  0x41, 0x9D, 0x19, 0x7C, 0x34, 0xF0, 0xB1, 0xE0,  // A..|4...
                /* 0190 */  0x51, 0xC1, 0xB3, 0x3A, 0xB1, 0x20, 0xA7, 0x7B,  // Q..:. .{
                /* 0198 */  0x7C, 0x4F, 0x12, 0xCF, 0x04, 0x1E, 0x3D, 0xBB,  // |O....=.
                /* 01A0 */  0x2C, 0xF8, 0x9B, 0xE0, 0x43, 0x02, 0xDE, 0x35,  // ,...C..5
                /* 01A8 */  0xA0, 0x6E, 0x07, 0xCF, 0x06, 0x6C, 0x98, 0xE1,  // .n...l..
                /* 01B0 */  0x30, 0x43, 0xF4, 0x94, 0xC3, 0x9D, 0xC0, 0x21,  // 0C.....!
                /* 01B8 */  0x32, 0x40, 0x9F, 0x05, 0x1E, 0x0B, 0xB0, 0x53,  // 2@.....S
                /* 01C0 */  0x3B, 0x99, 0x67, 0x82, 0xD7, 0x8A, 0x66, 0x2F,  // ;.g...f/
                /* 01C8 */  0x14, 0x84, 0xE0, 0x78, 0x7C, 0x97, 0x60, 0x13,  // ...x|.`.
                /* 01D0 */  0x7E, 0x2A, 0xE0, 0x83, 0xE0, 0x23, 0x33, 0xB4,  // ~*...#3.
                /* 01D8 */  0x47, 0x7A, 0x5A, 0xEF, 0x04, 0x3E, 0x52, 0x98,  // GzZ..>R.
                /* 01E0 */  0xC0, 0x62, 0x4F, 0x24, 0x74, 0x3C, 0xE0, 0x57,  // .bO$t<.W
                /* 01E8 */  0x7C, 0xFA, 0x20, 0x17, 0x07, 0xCF, 0xD7, 0xA7,  // |. .....
                /* 01F0 */  0x07, 0x1F, 0x4E, 0x60, 0xFD, 0xFF, 0x6F, 0x1E,  // ..N`..o.
                /* 01F8 */  0xB8, 0x09, 0xC4, 0x08, 0x14, 0xAA, 0xCF, 0x09,  // ........
                /* 0200 */  0x68, 0x0C, 0x41, 0x9E, 0x33, 0xD8, 0x29, 0xC4,  // h.A.3.).
                /* 0208 */  0xE7, 0x12, 0x0F, 0x23, 0xEA, 0x69, 0xF8, 0x84,  // ...#.i..
                /* 0210 */  0x02, 0x4C, 0x84, 0xEB, 0x38, 0x85, 0x30, 0xD9,  // .L..8.0.
                /* 0218 */  0x8B, 0x95, 0x8D, 0xC5, 0x7A, 0xB8, 0x54, 0xF2,  // ....z.T.
                /* 0220 */  0x29, 0x41, 0x23, 0x78, 0x96, 0x30, 0xC6, 0x5B,  // )A#x.0.[
                /* 0228 */  0xC3, 0x21, 0x9C, 0xE0, 0xF9, 0x9E, 0x6E, 0x98,  // .!....n.
                /* 0230 */  0x57, 0x04, 0x5F, 0x29, 0x4C, 0x60, 0x89, 0x90,  // W._)L`..
                /* 0238 */  0x3A, 0xDD, 0x70, 0x71, 0x14, 0x92, 0x06, 0xA1,  // :.pq....
                /* 0240 */  0x21, 0x79, 0x54, 0x04, 0x8E, 0x82, 0xF8, 0x0C,  // !yT.....
                /* 0248 */  0xE0, 0xA0, 0x10, 0x72, 0x72, 0x1C, 0x40, 0x1D,  // ...rr.@.
                /* 0250 */  0x02, 0x7C, 0x83, 0x78, 0xDC, 0xF0, 0xB1, 0x80,  // .|.x....
                /* 0258 */  0x05, 0x83, 0xD0, 0x09, 0xC2, 0x67, 0x06, 0xFC,  // .....g..
                /* 0260 */  0xF5, 0xC0, 0x87, 0x01, 0x2E, 0xF0, 0x10, 0x02,  // ........
                /* 0268 */  0x9A, 0x2B, 0x07, 0x6E, 0x8C, 0x31, 0x4F, 0xCE,  // .+.n.1O.
                /* 0270 */  0x10, 0xC7, 0xC1, 0xBE, 0x30, 0x74, 0x08, 0x64,  // ....0t.d
                /* 0278 */  0xC2, 0xE1, 0x12, 0xF0, 0x33, 0x02, 0xFC, 0x7B,  // ....3..{
                /* 0280 */  0x08, 0x76, 0x4C, 0xD8, 0x33, 0x02, 0x3C, 0x20,  // .vL.3.< 
                /* 0288 */  0xDF, 0x08, 0x7C, 0x1C, 0x78, 0x2A, 0x60, 0x73,  // ..|.x*`s
                /* 0290 */  0x78, 0xEA, 0xF1, 0x99, 0x87, 0xC1, 0xF3, 0xE8,  // x.......
                /* 0298 */  0x10, 0xFA, 0xFF, 0x5B, 0x80, 0x90, 0xAC, 0x71,  // ...[...q
                /* 02A0 */  0xA1, 0xC6, 0xE9, 0x03, 0x0D, 0xC3, 0x7E, 0x57,  // ......~W
                /* 02A8 */  0xC1, 0x0C, 0xEA, 0x75, 0xC2, 0xA7, 0x00, 0xC3,  // ...u....
                /* 02B0 */  0x7A, 0xE4, 0x1C, 0xD6, 0x68, 0x61, 0x0F, 0xF8,  // z...ha..
                /* 02B8 */  0x51, 0xC2, 0xD7, 0x10, 0xCF, 0xCC, 0x17, 0x18,  // Q.......
                /* 02C0 */  0x1F, 0x40, 0xC0, 0x02, 0x88, 0xF7, 0x7E, 0x07,  // .@....~.
                /* 02C8 */  0x20, 0x17, 0x05, 0x06, 0xE8, 0x93, 0x12, 0xEE,  //  .......
                /* 02D0 */  0x34, 0x00, 0xF7, 0xEC, 0xC0, 0x6E, 0x37, 0x9E,  // 4....n7.
                /* 02D8 */  0xDB, 0xA3, 0x8D, 0x6F, 0x0F, 0xC6, 0x78, 0xF1,  // ...o..x.
                /* 02E0 */  0xF1, 0xF1, 0xC1, 0x28, 0x4F, 0x2C, 0x6C, 0x18,  // ...(O,l.
                /* 02E8 */  0xEC, 0x2C, 0x01, 0xC7, 0xE3, 0x59, 0x02, 0x50,  // .,...Y.P
                /* 02F0 */  0x30, 0xC5, 0x37, 0x85, 0xA7, 0x1A, 0x9F, 0x25,  // 0.7....%
                /* 02F8 */  0x80, 0xEF, 0xFF, 0xFF, 0x2C, 0x01, 0x78, 0x39,  // ....,.x9
                /* 0300 */  0x03, 0xF8, 0x2C, 0x01, 0x38, 0x39, 0x3B, 0xB0,  // ..,.89;.
                /* 0308 */  0xB3, 0x04, 0x58, 0xE4, 0x9E, 0x25, 0x50, 0xA3,  // ..X..%P.
                /* 0310 */  0xB0, 0xDC, 0x63, 0x0E, 0xE2, 0x64, 0x17, 0xE4,  // ..c..d..
                /* 0318 */  0x1D, 0xEB, 0x4D, 0x02, 0x77, 0xC8, 0x01, 0xDE,  // ..M.w...
                /* 0320 */  0xFF, 0xFF, 0x93, 0x04, 0xE0, 0x32, 0xF6, 0x49,  // .....2.I
                /* 0328 */  0x02, 0x74, 0x90, 0x3E, 0x49, 0x00, 0xD7, 0x13,  // .t.>I...
                /* 0330 */  0x19, 0xEE, 0x90, 0x03, 0xAE, 0xBB, 0x03, 0x3B,  // .......;
                /* 0338 */  0x47, 0x80, 0xE1, 0x5C, 0xC1, 0xCE, 0x11, 0x60,  // G..\...`
                /* 0340 */  0xFB, 0xFF, 0x1F, 0x70, 0x00, 0x9E, 0x9C, 0x23,  // ...p...#
                /* 0348 */  0xC0, 0x37, 0x72, 0x9F, 0x23, 0x00, 0x27, 0x07,  // .7r.#.'.
                /* 0350 */  0x1C, 0xFC, 0xFF, 0xFF, 0x1C, 0x01, 0xE7, 0x50,  // .......P
                /* 0358 */  0x08, 0xF3, 0xE0, 0xE5, 0xF1, 0xF9, 0xD4, 0xEA,  // ........
                /* 0360 */  0x43, 0x21, 0xC0, 0x40, 0x58, 0x7E, 0x92, 0x00,  // C!.@X~..
                /* 0368 */  0xF7, 0xFF, 0xFF, 0x50, 0x08, 0x1C, 0x6F, 0x0F,  // ...P..o.
                /* 0370 */  0xB8, 0xAB, 0x04, 0xF6, 0x50, 0x08, 0xF7, 0x2C,  // ....P..,
                /* 0378 */  0x01, 0xEC, 0x0F, 0x85, 0x80, 0xE7, 0xFF, 0xFF,  // ........
                /* 0380 */  0x59, 0x02, 0x3C, 0x47, 0x63, 0x1F, 0x0A, 0x01,  // Y.<Gc...
                /* 0388 */  0x47, 0x67, 0x09, 0xB8, 0x0A, 0x6D, 0xFA, 0xD4,  // Gg...m..
                /* 0390 */  0x68, 0xD4, 0xAA, 0x41, 0x99, 0x1A, 0x65, 0x1A,  // h..A..e.
                /* 0398 */  0xD4, 0xEA, 0x53, 0xA9, 0x31, 0x63, 0xFF, 0x69,  // ..S.1c.i
                /* 03A0 */  0x09, 0x90, 0xB7, 0x5E, 0x0D, 0xD8, 0xE1, 0x40,  // ...^...@
                /* 03A8 */  0xA8, 0xE8, 0x55, 0xCB, 0x08, 0x88, 0x22, 0x80,  // ..U...".
                /* 03B0 */  0x08, 0xC8, 0x51, 0x3D, 0x00, 0xB1, 0xE0, 0x20,  // ..Q=... 
                /* 03B8 */  0x02, 0xB2, 0x38, 0x15, 0x40, 0x4C, 0x2A, 0x88,  // ..8.@L*.
                /* 03C0 */  0x80, 0x1C, 0x65, 0x7D, 0x02, 0x72, 0x30, 0x10,  // ..e}.r0.
                /* 03C8 */  0x01, 0x39, 0xFC, 0x2A, 0x04, 0x64, 0x29, 0x3E,  // .9.*.d)>
                /* 03D0 */  0x80, 0x98, 0x64, 0x1A, 0x01, 0x39, 0x00, 0x85,  // ..d..9..
                /* 03D8 */  0x80, 0xFC, 0xFF, 0x07                           // ....
            })
            Method (WMBA, 3, NotSerialized)
            {
                Debug = "Entry WMBA"
                Debug = Arg0
                Debug = Arg1
                Debug = Arg2
                Name (BCBF, Buffer (0x1000)
                {
                     0x00                                             // .
                })
                CreateByteField (BCBF, Zero, BCVU)
                Name (FLG1, Zero)
                Name (RTCO, Buffer (0x04)
                {
                     0x00                                             // .
                })
                If ((Arg1 == One))
                {
                    FLG1 = Arg2
                    Debug = "Set SD Card"
                    Debug = FLG1 /* \_SB_.AMW1.WMBA.FLG1 */
                    If ((FLG1 == One))
                    {
                        Debug = "SD Card Enable"
                        \_SB.WMID.DVSC (0xD0, FLG1)
                        SDCD = FLG1 /* \_SB_.AMW1.WMBA.FLG1 */
                        RSFF = Zero
                        WMFF = Zero
                        Local0 = RTCO /* \_SB_.AMW1.WMBA.RTCO */
                        Return (Local0)
                    }
                    ElseIf ((FLG1 == Zero))
                    {
                        Debug = "SD Card Disable"
                        \_SB.WMID.DVSC (0xD0, FLG1)
                        SDCD = FLG1 /* \_SB_.AMW1.WMBA.FLG1 */
                        Local0 = RTCO /* \_SB_.AMW1.WMBA.RTCO */
                        Return (Local0)
                    }
                }

                If ((Arg1 == 0x02))
                {
                    Debug = "Get SD Card"
                    Local0 = 0x1B
                    Local1 = \_SB.WMID.BCPK (Local0)
                    Local2 = DerefOf (Local1 [Zero])
                    Debug = Local2
                    If ((Local2 == "SD Card 1"))
                    {
                        Local6 = "SDCardTz"
                        Local4 = \_SB.WMID.GTVA (Local6, ToUUID ("a04a27f4-df00-4d42-b552-39511302113d") /* Unknown UUID */)
                        BCBF = DerefOf (Local4 [0x02])
                        Local3 = BCVU /* \_SB_.AMW1.WMBA.BCVU */
                        If ((Local3 == Zero))
                        {
                            Debug = "Disable"
                            Local1 [One] = "Disable"
                            Local1 [0x0A] = "Disable"
                            Arg2 = Zero
                        }

                        If ((Local3 == One))
                        {
                            Debug = "Enabled"
                            Local1 [One] = "Enabled"
                            Local1 [0x0A] = "Enabled"
                            Arg2 = One
                        }
                    }

                    Return (SDCD) /* \_SB_.SDCD */
                }

                If ((Arg1 == 0x03))
                {
                    FLG1 = Arg2
                    Debug = "Set USB"
                    If ((FLG1 == One))
                    {
                        \_SB.WMID.DVSC (0xD1, FLG1)
                        USBD = FLG1 /* \_SB_.AMW1.WMBA.FLG1 */
                        RSFF = Zero
                        WMFF = Zero
                        Local0 = RTCO /* \_SB_.AMW1.WMBA.RTCO */
                        Return (Local0)
                    }
                    ElseIf ((FLG1 == Zero))
                    {
                        \_SB.WMID.DVSC (0xD1, FLG1)
                        USBD = FLG1 /* \_SB_.AMW1.WMBA.FLG1 */
                        Local0 = RTCO /* \_SB_.AMW1.WMBA.RTCO */
                        Return (Local0)
                    }
                }

                If ((Arg1 == 0x04))
                {
                    Debug = "Get USB"
                    Local0 = 0x1C
                    Local1 = \_SB.WMID.BCPK (Local0)
                    Local2 = DerefOf (Local1 [Zero])
                    Debug = Local2
                    If ((Local2 == "USB Port 0 All"))
                    {
                        Local6 = "USBPortTz"
                        Local4 = \_SB.WMID.GTVA (Local6, ToUUID ("a04a27f4-df00-4d42-b552-39511302113d") /* Unknown UUID */)
                        BCBF = DerefOf (Local4 [0x02])
                        Local3 = BCVU /* \_SB_.AMW1.WMBA.BCVU */
                        If ((Local3 == Zero))
                        {
                            Debug = "Disable"
                            Local1 [One] = "Disable"
                            Local1 [0x0A] = "Disable"
                            Arg2 = Zero
                        }

                        If ((Local3 == One))
                        {
                            Debug = "Enabled"
                            Local1 [One] = "Enabled"
                            Local1 [0x0A] = "Enabled"
                            Arg2 = One
                        }
                    }

                    Return (USBD) /* \_SB_.USBD */
                }

                If ((Arg1 == 0x05))
                {
                    FLG1 = Arg2
                    Debug = "Set Camera"
                    If ((FLG1 == One))
                    {
                        \_SB.WMID.DVSC (0xD2, FLG1)
                        CAMD = FLG1 /* \_SB_.AMW1.WMBA.FLG1 */
                        RSFF = Zero
                        WMFF = Zero
                        Local0 = RTCO /* \_SB_.AMW1.WMBA.RTCO */
                        Return (Local0)
                    }
                    ElseIf ((FLG1 == Zero))
                    {
                        \_SB.WMID.DVSC (0xD2, FLG1)
                        CAMD = FLG1 /* \_SB_.AMW1.WMBA.FLG1 */
                        Local0 = RTCO /* \_SB_.AMW1.WMBA.RTCO */
                        Return (Local0)
                    }
                }

                If ((Arg1 == 0x06))
                {
                    Debug = "Get Camera"
                    Local0 = 0x1D
                    Local1 = \_SB.WMID.BCPK (Local0)
                    Local2 = DerefOf (Local1 [Zero])
                    Debug = Local2
                    If ((Local2 == "Front Camera 1"))
                    {
                        Local6 = "CameraTz"
                        Local4 = \_SB.WMID.GTVA (Local6, ToUUID ("a04a27f4-df00-4d42-b552-39511302113d") /* Unknown UUID */)
                        BCBF = DerefOf (Local4 [0x02])
                        Local3 = BCVU /* \_SB_.AMW1.WMBA.BCVU */
                        If ((Local3 == Zero))
                        {
                            Debug = "Disable"
                            Local1 [One] = "Disable"
                            Local1 [0x0A] = "Disable"
                            Arg2 = Zero
                        }

                        If ((Local3 == One))
                        {
                            Debug = "Enabled"
                            Local1 [One] = "Enabled"
                            Local1 [0x0A] = "Enabled"
                            Arg2 = One
                        }
                    }

                    Return (CAMD) /* \_SB_.CAMD */
                }
            }
        }
    }
}

