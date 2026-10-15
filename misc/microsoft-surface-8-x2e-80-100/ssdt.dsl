/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20260408 (32-bit version)
 * Copyright (c) 2000 - 2026 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001DC8 (7624)
 *     Revision         0x02
 *     Checksum         0xF8
 *     OEM ID           "883ROT"
 *     OEM Table ID     "SsdtSurf"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20250807 (539297799)
 */
DefinitionBlock ("", "SSDT", 2, "883ROT", "SsdtSurf", 0x00001000)
{
    External (_SB_.GIO0, DeviceObj)
    External (_SB_.GPU0.MON0, DeviceObj)
    External (_SB_.I2C1, DeviceObj)
    External (_SB_.I2C5, DeviceObj)
    External (_SB_.I2C9, DeviceObj)
    External (_SB_.IC11, DeviceObj)
    External (_SB_.PEP0, DeviceObj)
    External (_SB_.PM01, DeviceObj)
    External (_SB_.SSH_.PCRS, MethodObj)    // 0 Arguments
    External (_SB_.SSH_.PDSM, MethodObj)    // 4 Arguments
    External (_SB_.SSH_.PFUN, MethodObj)    // 0 Arguments
    External (_SB_.SSH_.PINI, MethodObj)    // 0 Arguments
    External (_SB_.TREE, DeviceObj)
    External (_SB_.UR23, DeviceObj)
    External (BCLE, IntObj)

    Name (SCAP, 0x000000000000DF8F)
    OperationRegion (PURT, SystemMemory, 0x00894000, 0x1000)
    Field (PURT, DWordAcc, Lock, Preserve)
    {
        Offset (0x40), 
        CMDA,   1, 
            ,   1, 
        Offset (0x44), 
        Offset (0x270), 
        LEN,    32, 
        Offset (0x600), 
        CMD,    32, 
        Offset (0x700), 
        UTXF,   32
    }

    Method (UDBG, 7, Serialized)
    {
        Local0 = SizeOf (Arg0)
        Local1 = Zero
        ToBuffer (Arg0, Local2)
        Local6 = Zero
        While ((Local1 < Local0))
        {
            If ((CMDA != One))
            {
                Local6 = Zero
                Local3 = DerefOf (Local2 [Local1])
                Local1++
                If ((Local3 == 0x25))
                {
                    Local3 = DerefOf (Local2 [Local1])
                    Local1++
                    Switch (ToInteger (Local3))
                    {
                        Case (0x30)
                        {
                            Local4 = Arg1
                        }
                        Case (0x31)
                        {
                            Local4 = Arg2
                        }
                        Case (0x32)
                        {
                            Local4 = Arg3
                        }
                        Case (0x33)
                        {
                            Local4 = Arg4
                        }
                        Case (0x34)
                        {
                            Local4 = Arg5
                        }
                        Case (0x35)
                        {
                            Local4 = Arg6
                        }
                        Default
                        {
                            Local4 = Zero
                        }

                    }

                    Local3 = DerefOf (Local2 [Local1])
                    If ((Local3 == 0x58))
                    {
                        ToHexString (Local4, Local3)
                        Local1++
                    }
                    Else
                    {
                        ToDecimalString (Local4, Local3)
                    }

                    Local4 = SizeOf (Local3)
                    Local5 = Zero
                    ToBuffer (Local3, Local3)
                    While ((Local5 < Local4))
                    {
                        If ((CMDA != One))
                        {
                            Local6 = Zero
                            LEN = One
                            CMD = 0x08000000
                            UTXF = DerefOf (Local3 [Local5])
                            Local5++
                        }
                        Else
                        {
                            Local6++
                            If ((Local6 == 0x0100))
                            {
                                Return (Zero)
                            }
                        }
                    }
                }
                Else
                {
                    LEN = One
                    CMD = 0x08000000
                    UTXF = Local3
                }
            }
            Else
            {
                Local6++
                If ((Local6 == 0x0100))
                {
                    Return (Zero)
                }
            }
        }
    }

    Method (UDB0, 1, Serialized)
    {
        UDBG (Arg0, One, 0x02, 0x03, 0x04, 0x05, 0x06)
    }

    Method (UDB1, 2, Serialized)
    {
        UDBG (Arg0, Arg1, 0x02, 0x03, 0x04, 0x05, 0x06)
    }

    Method (UDB2, 3, Serialized)
    {
        UDBG (Arg0, Arg1, Arg2, 0x03, 0x04, 0x05, 0x06)
    }

    Method (UDB3, 4, Serialized)
    {
        UDBG (Arg0, Arg1, Arg2, Arg3, 0x04, 0x05, 0x06)
    }

    Method (UDB4, 5, Serialized)
    {
        UDBG (Arg0, Arg1, Arg2, Arg3, Arg4, 0x05, 0x06)
    }

    Method (UDB5, 6, Serialized)
    {
        UDBG (Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, 0x06)
    }

    Method (UDB6, 7, Serialized)
    {
        UDBG (Arg0, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6)
    }

    OperationRegion (FNVS, SystemMemory, 0xD66A0000, 0x000C)
    Field (FNVS, AnyAcc, Lock, Preserve)
    {
        MFGM,   8, 
        RFLA,   8, 
        Offset (0x03), 
        Offset (0x07), 
        Offset (0x08), 
        TBID,   8, 
        SKID,   8, 
        NFCE,   8, 
        BRID,   8
    }

    OperationRegion (MNVS, SystemMemory, 0xD6690000, 0x0043)
    Field (MNVS, AnyAcc, Lock, Preserve)
    {
        Offset (0x00), 
        SBFF,   32, 
        Offset (0x04), 
        STDH,   72, 
        Offset (0x0D), 
        SHSD,   72, 
        Offset (0x16), 
        SIDH,   72, 
        Offset (0x1F), 
        SEDH,   72, 
        Offset (0x28), 
        OMPR,   16, 
        Offset (0x2A), 
        OMBR,   8, 
        Offset (0x2B), 
        PTSM,   16, 
        Offset (0x2D), 
        PACS,   8, 
        Offset (0x2E), 
        RSMP,   32, 
        Offset (0x32), 
        SAMS,   72, 
        Offset (0x3B), 
        SSHP,   32, 
        Offset (0x3F), 
        SACS,   8, 
        Offset (0x40), 
        CANS,   8, 
        Offset (0x41), 
        TZSM,   16
    }

    Name (MACP, Buffer (0x84)
    {
        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0080 */  0x00, 0x00, 0x00, 0x00                           // ....
    })
    Name (BCLE, Zero)
    Method (OBCL, 3, Serialized)
    {
        CreateDWordField (Arg2, Zero, STS0)
        If ((Arg1 != 0x02))
        {
            STS0 &= 0xFFFFFFE0
            STS0 |= 0x02
            Return (Arg2)
        }

        CreateDWordField (Arg2, 0x04, CAP0)
        Local0 = (STS0 & 0x1F)
        If ((Local0 & One))
        {
            If ((CAP0 & 0x00080000))
            {
                If ((SCAP & 0x0400)){}
                Else
                {
                    CAP0 &= 0xFFFFFFFFFFF7FFFF
                    STS0 |= 0x10
                }
            }
            Else
            {
            }
        }
        ElseIf ((CAP0 & 0x00080000))
        {
            If ((SCAP & 0x0400))
            {
                BCLE = One
            }
            Else
            {
                CAP0 &= 0xFFFFFFFFFFF7FFFF
                STS0 |= 0x10
            }
        }

        Return (Arg2)
    }

    Scope (\_SB)
    {
        Device (WSID)
        {
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (ToString (SIDH, 0x09))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("a653cdf4-476c-44fb-b366-a73cedf6e14c") /* Unknown UUID */))
                {
                    If ((Arg1 == Zero))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x49                                             // I
                            })
                        }

                        If ((Arg2 == 0x03))
                        {
                            Return (OMPR) /* \OMPR */
                        }

                        If ((Arg2 == 0x06))
                        {
                            If (CondRefOf (BCLE))
                            {
                                Return (BCLE) /* \BCLE */
                            }

                            Return (Zero)
                        }

                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }
    }

    Scope (\_SB.WSID)
    {
        Name (_DEP, Package (0x01)  // _DEP: Dependencies
        {
            \_SB.SSH, 
        })
    }

    Scope (\_SB.WSID)
    {
        Device (SHPS)
        {
            Name (_ADR, 0x9086E8DA)  // _ADR: Address
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.SSH, 
            })
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("5515a847-ed55-4b27-8352-cd320e10360a") /* Unknown UUID */))
                {
                    If ((ToInteger (Arg1) == One))
                    {
                        If ((ToInteger (Arg2) == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x41                                             // A
                            })
                        }

                        If ((ToInteger (Arg2) == 0x06))
                        {
                            Return (0x060C)
                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }

    Scope (\_SB)
    {
        Device (SSH)
        {
            Name (_HID, "MSHW0084")  // _HID: Hardware ID
            Name (SULS, Zero)
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Name (SUBR, 0x003D0900)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.UR23, , 
                \_SB.GIO0, 
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (SBUF, Buffer (0x68)
            {
                /* 0000 */  0x8E, 0x1D, 0x00, 0x01, 0x00, 0x03, 0x02, 0x35,  // .......5
                /* 0008 */  0x00, 0x01, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0010 */  0x40, 0x00, 0x40, 0x00, 0x00, 0xC0, 0x5C, 0x5F,  // @.@...\_
                /* 0018 */  0x53, 0x42, 0x2E, 0x55, 0x52, 0x32, 0x33, 0x00,  // SB.UR23.
                /* 0020 */  0x8C, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x19,  // . ......
                /* 0028 */  0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00,  // ........
                /* 0030 */  0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00,  // ...#....
                /* 0038 */  0x03, 0x5C, 0x5F, 0x53, 0x42, 0x2E, 0x47, 0x49,  // .\_SB.GI
                /* 0040 */  0x4F, 0x30, 0x00, 0x8C, 0x20, 0x00, 0x01, 0x01,  // O0.. ...
                /* 0048 */  0x01, 0x00, 0x09, 0x00, 0x03, 0x00, 0x00, 0x00,  // ........
                /* 0050 */  0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00,  // ......#.
                /* 0058 */  0x00, 0x00, 0x47, 0x00, 0x5C, 0x5F, 0x53, 0x42,  // ..G.\_SB
                /* 0060 */  0x2E, 0x47, 0x49, 0x4F, 0x30, 0x00, 0x79, 0x00   // .GIO0.y.
            })
            CreateDWordField (SBUF, 0x0C, BAUD)
            CreateWordField (SBUF, 0x37, PIN1)
            CreateWordField (SBUF, 0x5A, PIN2)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((SULS == Zero))
                {
                    BAUD = SUBR /* \_SB_.SSH_.SUBR */
                }
                Else
                {
                    BAUD = 0x003D0900
                }

                If (CondRefOf (\_SB.SSH.PINI))
                {
                    \_SB.SSH.PINI ()
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If (CondRefOf (\_SB.SSH.PCRS))
                {
                    Return (\_SB.SSH.PCRS ())
                }

                Return (SBUF) /* \_SB_.SSH_.SBUF */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("d5e383e1-d892-4a76-89fc-f6aaae7ed5b5") /* Unknown UUID */))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            If (CondRefOf (\_SB.SSH.PFUN))
                            {
                                Return (\_SB.SSH.PFUN ())
                            }
                            Else
                            {
                                Return (Buffer (0x02)
                                {
                                     0xE1, 0x07                                       // ..
                                })
                            }
                        }
                    }

                    If ((Arg1 == Zero))
                    {
                        If ((Arg2 == 0x05))
                        {
                            Return (SSHP) /* \SSHP */
                        }

                        If ((Arg2 == 0x06))
                        {
                            Return (0x1388)
                        }

                        If ((Arg2 == 0x07))
                        {
                            Return (0x1E)
                        }

                        If ((Arg2 == 0x08))
                        {
                            Return (One)
                        }

                        If ((Arg2 == 0x09))
                        {
                            Return (0x30)
                        }

                        If ((Arg2 == 0x0A))
                        {
                            Return (0x02)
                        }
                    }
                }

                If (CondRefOf (\_SB.SSH.PDSM))
                {
                    Return (\_SB.SSH.PDSM (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }

    Scope (\_SB)
    {
        Device (MSBT)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PM01, , 
                \_SB.GIO0, 
            })
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return ("MSHW0040")
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (Buffer (0xE4)
                {
                    /* 0000 */  0x8C, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x1D,  // . ......
                    /* 0008 */  0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00,  // ........
                    /* 0010 */  0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0xC0,  // ...#....
                    /* 0018 */  0x02, 0x5C, 0x5F, 0x53, 0x42, 0x2E, 0x47, 0x49,  // .\_SB.GI
                    /* 0020 */  0x4F, 0x30, 0x00, 0x8C, 0x20, 0x00, 0x01, 0x01,  // O0.. ...
                    /* 0028 */  0x01, 0x00, 0x09, 0x00, 0x03, 0x00, 0x00, 0x00,  // ........
                    /* 0030 */  0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00,  // ......#.
                    /* 0038 */  0x00, 0x00, 0x13, 0x00, 0x5C, 0x5F, 0x53, 0x42,  // ....\_SB
                    /* 0040 */  0x2E, 0x47, 0x49, 0x4F, 0x30, 0x00, 0x8C, 0x24,  // .GIO0..$
                    /* 0048 */  0x00, 0x01, 0x00, 0x01, 0x00, 0x0D, 0x00, 0x01,  // ........
                    /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19,  // ........
                    /* 0058 */  0x00, 0x23, 0x00, 0x04, 0x00, 0x72, 0x00, 0x5C,  // .#...r.\
                    /* 0060 */  0x5F, 0x53, 0x42, 0x2E, 0x50, 0x4D, 0x30, 0x31,  // _SB.PM01
                    /* 0068 */  0x00, 0x01, 0xFF, 0xFF, 0xFF, 0x8C, 0x24, 0x00,  // ......$.
                    /* 0070 */  0x01, 0x01, 0x01, 0x00, 0x09, 0x00, 0x01, 0x00,  // ........
                    /* 0078 */  0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00,  // ........
                    /* 0080 */  0x23, 0x00, 0x04, 0x00, 0x72, 0x00, 0x5C, 0x5F,  // #...r.\_
                    /* 0088 */  0x53, 0x42, 0x2E, 0x50, 0x4D, 0x30, 0x31, 0x00,  // SB.PM01.
                    /* 0090 */  0x01, 0xFF, 0xFF, 0xFF, 0x8C, 0x24, 0x00, 0x01,  // .....$..
                    /* 0098 */  0x00, 0x01, 0x00, 0x0D, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 00A0 */  0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23,  // .......#
                    /* 00A8 */  0x00, 0x04, 0x00, 0x08, 0x02, 0x5C, 0x5F, 0x53,  // .....\_S
                    /* 00B0 */  0x42, 0x2E, 0x50, 0x4D, 0x30, 0x31, 0x00, 0x01,  // B.PM01..
                    /* 00B8 */  0xFF, 0xFF, 0xFF, 0x8C, 0x24, 0x00, 0x01, 0x01,  // ....$...
                    /* 00C0 */  0x01, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 00C8 */  0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00,  // ......#.
                    /* 00D0 */  0x04, 0x00, 0x08, 0x02, 0x5C, 0x5F, 0x53, 0x42,  // ....\_SB
                    /* 00D8 */  0x2E, 0x50, 0x4D, 0x30, 0x31, 0x00, 0x01, 0xFF,  // .PM01...
                    /* 00E0 */  0xFF, 0xFF, 0x79, 0x00                           // ..y.
                })
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("6fd05c69-cde3-49f4-95ed-ab1665498035") /* Unknown UUID */))
                {
                    If ((Arg1 == One))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x0F                                             // .
                            })
                        }

                        If ((Arg2 == One))
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (OMPR) /* \OMPR */
                        }

                        If ((Arg2 == 0x03))
                        {
                            Return (SBFF) /* \SBFF */
                        }

                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }
    }

    Scope (\_SB)
    {
        Device (MPTP)
        {
            Name (_HID, "MSFT000F")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (\_SB)
    {
        Device (MPTT)
        {
            Name (_HID, "MSFT0012")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (\_SB)
    {
        ThermalZone (TPOL)
        {
            Name (_HID, "MSFT000E")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (\_SB)
    {
        If ((TZSM & One))
        {
            Device (TS01)
            {
                Name (_STR, Unicode ("RTS1"))  // _STR: Description String
                Name (_HID, "MSHW0800")  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e1aca015-975c-46b9-b0f2-1d86821a6e35") /* Unknown UUID */))
                    {
                        If ((ToInteger (Arg2) == Zero))
                        {
                            If ((ToInteger (Arg1) == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x07                                             // .
                                })
                            }
                        }

                        If ((ToInteger (Arg1) == Zero))
                        {
                            If ((ToInteger (Arg2) == One))
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                             // .
                                })
                            }

                            If ((ToInteger (Arg2) == 0x02))
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                             // .
                                })
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        If ((TZSM & 0x02))
        {
            Device (TS02)
            {
                Name (_STR, Unicode ("RTS2"))  // _STR: Description String
                Name (_HID, "MSHW0800")  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e1aca015-975c-46b9-b0f2-1d86821a6e35") /* Unknown UUID */))
                    {
                        If ((ToInteger (Arg2) == Zero))
                        {
                            If ((ToInteger (Arg1) == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x07                                             // .
                                })
                            }
                        }

                        If ((ToInteger (Arg1) == Zero))
                        {
                            If ((ToInteger (Arg2) == One))
                            {
                                Return (Buffer (One)
                                {
                                     0x02                                             // .
                                })
                            }

                            If ((ToInteger (Arg2) == 0x02))
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                             // .
                                })
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        If ((TZSM & 0x04))
        {
            Device (TS03)
            {
                Name (_STR, Unicode ("RTS3"))  // _STR: Description String
                Name (_HID, "MSHW0800")  // _HID: Hardware ID
                Name (_UID, 0x03)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e1aca015-975c-46b9-b0f2-1d86821a6e35") /* Unknown UUID */))
                    {
                        If ((ToInteger (Arg2) == Zero))
                        {
                            If ((ToInteger (Arg1) == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x07                                             // .
                                })
                            }
                        }

                        If ((ToInteger (Arg1) == Zero))
                        {
                            If ((ToInteger (Arg2) == One))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }

                            If ((ToInteger (Arg2) == 0x02))
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                             // .
                                })
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        If ((TZSM & 0x08))
        {
            Device (TS04)
            {
                Name (_STR, Unicode ("RTS4"))  // _STR: Description String
                Name (_HID, "MSHW0800")  // _HID: Hardware ID
                Name (_UID, 0x04)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e1aca015-975c-46b9-b0f2-1d86821a6e35") /* Unknown UUID */))
                    {
                        If ((ToInteger (Arg2) == Zero))
                        {
                            If ((ToInteger (Arg1) == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x07                                             // .
                                })
                            }
                        }

                        If ((ToInteger (Arg1) == Zero))
                        {
                            If ((ToInteger (Arg2) == One))
                            {
                                Return (Buffer (One)
                                {
                                     0x04                                             // .
                                })
                            }

                            If ((ToInteger (Arg2) == 0x02))
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                             // .
                                })
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        If ((TZSM & 0x10))
        {
            Device (TS05)
            {
                Name (_STR, Unicode ("RTS5"))  // _STR: Description String
                Name (_HID, "MSHW0800")  // _HID: Hardware ID
                Name (_UID, 0x05)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e1aca015-975c-46b9-b0f2-1d86821a6e35") /* Unknown UUID */))
                    {
                        If ((ToInteger (Arg2) == Zero))
                        {
                            If ((ToInteger (Arg1) == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x07                                             // .
                                })
                            }
                        }

                        If ((ToInteger (Arg1) == Zero))
                        {
                            If ((ToInteger (Arg2) == One))
                            {
                                Return (Buffer (One)
                                {
                                     0x05                                             // .
                                })
                            }

                            If ((ToInteger (Arg2) == 0x02))
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                             // .
                                })
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        If ((TZSM & 0x20))
        {
            Device (TS06)
            {
                Name (_STR, Unicode ("RTS6"))  // _STR: Description String
                Name (_HID, "MSHW0800")  // _HID: Hardware ID
                Name (_UID, 0x06)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e1aca015-975c-46b9-b0f2-1d86821a6e35") /* Unknown UUID */))
                    {
                        If ((ToInteger (Arg2) == Zero))
                        {
                            If ((ToInteger (Arg1) == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x07                                             // .
                                })
                            }
                        }

                        If ((ToInteger (Arg1) == Zero))
                        {
                            If ((ToInteger (Arg2) == One))
                            {
                                Return (Buffer (One)
                                {
                                     0x06                                             // .
                                })
                            }

                            If ((ToInteger (Arg2) == 0x02))
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                             // .
                                })
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        If ((TZSM & 0x40))
        {
            Device (TS07)
            {
                Name (_STR, Unicode ("RTS7"))  // _STR: Description String
                Name (_HID, "MSHW0800")  // _HID: Hardware ID
                Name (_UID, 0x07)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e1aca015-975c-46b9-b0f2-1d86821a6e35") /* Unknown UUID */))
                    {
                        If ((ToInteger (Arg2) == Zero))
                        {
                            If ((ToInteger (Arg1) == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x07                                             // .
                                })
                            }
                        }

                        If ((ToInteger (Arg1) == Zero))
                        {
                            If ((ToInteger (Arg2) == One))
                            {
                                Return (Buffer (One)
                                {
                                     0x07                                             // .
                                })
                            }

                            If ((ToInteger (Arg2) == 0x02))
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                             // .
                                })
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        If ((TZSM & 0x80))
        {
            Device (TS08)
            {
                Name (_STR, Unicode ("RTS8"))  // _STR: Description String
                Name (_HID, "MSHW0800")  // _HID: Hardware ID
                Name (_UID, 0x08)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e1aca015-975c-46b9-b0f2-1d86821a6e35") /* Unknown UUID */))
                    {
                        If ((ToInteger (Arg2) == Zero))
                        {
                            If ((ToInteger (Arg1) == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x07                                             // .
                                })
                            }
                        }

                        If ((ToInteger (Arg1) == Zero))
                        {
                            If ((ToInteger (Arg2) == One))
                            {
                                Return (Buffer (One)
                                {
                                     0x08                                             // .
                                })
                            }

                            If ((ToInteger (Arg2) == 0x02))
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                             // .
                                })
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        If ((TZSM & 0x0100))
        {
            Device (TS09)
            {
                Name (_STR, Unicode ("VTS1"))  // _STR: Description String
                Name (_HID, "MSHW0800")  // _HID: Hardware ID
                Name (_UID, 0x09)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e1aca015-975c-46b9-b0f2-1d86821a6e35") /* Unknown UUID */))
                    {
                        If ((ToInteger (Arg2) == Zero))
                        {
                            If ((ToInteger (Arg1) == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x07                                             // .
                                })
                            }
                        }

                        If ((ToInteger (Arg1) == Zero))
                        {
                            If ((ToInteger (Arg2) == One))
                            {
                                Return (Buffer (One)
                                {
                                     0x09                                             // .
                                })
                            }

                            If ((ToInteger (Arg2) == 0x02))
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                             // .
                                })
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        If ((TZSM & 0x0200))
        {
            Device (TS10)
            {
                Name (_STR, Unicode ("VTS2"))  // _STR: Description String
                Name (_HID, "MSHW0800")  // _HID: Hardware ID
                Name (_UID, 0x0A)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e1aca015-975c-46b9-b0f2-1d86821a6e35") /* Unknown UUID */))
                    {
                        If ((ToInteger (Arg2) == Zero))
                        {
                            If ((ToInteger (Arg1) == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x07                                             // .
                                })
                            }
                        }

                        If ((ToInteger (Arg1) == Zero))
                        {
                            If ((ToInteger (Arg2) == One))
                            {
                                Return (Buffer (One)
                                {
                                     0x0A                                             // .
                                })
                            }

                            If ((ToInteger (Arg2) == 0x02))
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                             // .
                                })
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        If ((TZSM & 0x0400))
        {
            Device (TS11)
            {
                Name (_STR, Unicode ("VTS3"))  // _STR: Description String
                Name (_HID, "MSHW0800")  // _HID: Hardware ID
                Name (_UID, 0x0B)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e1aca015-975c-46b9-b0f2-1d86821a6e35") /* Unknown UUID */))
                    {
                        If ((ToInteger (Arg2) == Zero))
                        {
                            If ((ToInteger (Arg1) == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x07                                             // .
                                })
                            }
                        }

                        If ((ToInteger (Arg1) == Zero))
                        {
                            If ((ToInteger (Arg2) == One))
                            {
                                Return (Buffer (One)
                                {
                                     0x0B                                             // .
                                })
                            }

                            If ((ToInteger (Arg2) == 0x02))
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                             // .
                                })
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        If ((TZSM & 0x0800))
        {
            Device (TS12)
            {
                Name (_STR, Unicode ("VTS4"))  // _STR: Description String
                Name (_HID, "MSHW0800")  // _HID: Hardware ID
                Name (_UID, 0x0C)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e1aca015-975c-46b9-b0f2-1d86821a6e35") /* Unknown UUID */))
                    {
                        If ((ToInteger (Arg2) == Zero))
                        {
                            If ((ToInteger (Arg1) == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x07                                             // .
                                })
                            }
                        }

                        If ((ToInteger (Arg1) == Zero))
                        {
                            If ((ToInteger (Arg2) == One))
                            {
                                Return (Buffer (One)
                                {
                                     0x0C                                             // .
                                })
                            }

                            If ((ToInteger (Arg2) == 0x02))
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                             // .
                                })
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }
    }

    Scope (\_SB)
    {
        Device (MPPS)
        {
            Name (_HID, "MSFT0010")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    If (((((TBID == 0x05) || (TBID == 0x08)) || (TBID == 
        0x09)) || (TBID == 0x0C)))
    {
        Scope (\_SB)
        {
            Device (OTCH)
            {
                Name (_HID, "MSHW0776")  // _HID: Hardware ID
                Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
                Name (_HRV, One)  // _HRV: Hardware Revision
                Name (_DEP, Package (0x03)  // _DEP: Dependencies
                {
                    \_SB.GIO0, , 
                    \_SB.I2C9, , 
                    \_SB.PEP0, 
                })
                Name (RBUF, Buffer (0x41)
                {
                    /* 0000 */  0x8E, 0x19, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00,  // ........
                    /* 0008 */  0x00, 0x01, 0x06, 0x00, 0x80, 0x1A, 0x06, 0x00,  // ........
                    /* 0010 */  0x41, 0x00, 0x5C, 0x5F, 0x53, 0x42, 0x2E, 0x49,  // A.\_SB.I
                    /* 0018 */  0x32, 0x43, 0x39, 0x00, 0x8C, 0x20, 0x00, 0x01,  // 2C9.. ..
                    /* 0020 */  0x00, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0028 */  0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23,  // .......#
                    /* 0030 */  0x00, 0x00, 0x00, 0x2B, 0x00, 0x5C, 0x5F, 0x53,  // ...+.\_S
                    /* 0038 */  0x42, 0x2E, 0x47, 0x49, 0x4F, 0x30, 0x00, 0x79,  // B.GIO0.y
                    /* 0040 */  0x00                                             // .
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.OTCH.RBUF */
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == One))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                        }
                        ElseIf ((Arg2 == One))
                        {
                            Return (One)
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                OperationRegion (G038, SystemMemory, 0x0F126000, 0x08)
                Field (G038, DWordAcc, NoLock, Preserve)
                {
                    C038,   32, 
                    S038,   32
                }

                OperationRegion (G048, SystemMemory, 0x0F130000, 0x08)
                Field (G048, DWordAcc, NoLock, Preserve)
                {
                    C048,   32, 
                    S048,   32
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    If (((S038 & 0x02) == Zero))
                    {
                        S048 &= 0xFFFFFFFFFFFFFFFD
                        Sleep (One)
                        S038 |= 0x02
                        Sleep (0x06)
                        S048 |= 0x02
                        Sleep (0x96)
                    }
                }

                Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                {
                    _PS3 ()
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    If (((S038 & 0x02) != Zero))
                    {
                        S048 &= 0xFFFFFFFFFFFFFFFD
                        S038 &= 0xFFFFFFFFFFFFFFFD
                        Sleep (0x32)
                    }
                }
            }
        }
    }
    ElseIf ((TBID == Zero))
    {
        Scope (\_SB)
        {
            PowerResource (TDPR, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (One)
                }

                OperationRegion (G049, SystemMemory, 0x0F131000, 0x08)
                Field (G049, DWordAcc, NoLock, Preserve)
                {
                    C049,   32, 
                    S049,   32
                }

                Method (_ON, 0, Serialized)  // _ON_: Power On
                {
                    Debug = "TDPR._ON()"
                    S049 = 0x02
                    Sleep (0x96)
                }

                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                {
                    Debug = "TDPR._OFF()"
                    S049 = Zero
                    Sleep (0x32)
                }
            }
        }

        Scope (\_SB.I2C9)
        {
            Device (ITCH)
            {
                Name (_HID, "MSHW0774")  // _HID: Hardware ID
                Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
                Name (_HRV, One)  // _HRV: Hardware Revision
                Name (_DEP, Package (0x03)  // _DEP: Dependencies
                {
                    \_SB.GIO0, , 
                    \_SB.I2C9, , 
                    \_SB.PEP0, 
                })
                Name (TCHB, 0x0F)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (TCHB) /* \_SB_.I2C9.ITCH.TCHB */
                }

                Name (RBUF, Buffer (0x41)
                {
                    /* 0000 */  0x8E, 0x19, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00,  // ........
                    /* 0008 */  0x00, 0x01, 0x06, 0x00, 0x80, 0x1A, 0x06, 0x00,  // ........
                    /* 0010 */  0x34, 0x00, 0x5C, 0x5F, 0x53, 0x42, 0x2E, 0x49,  // 4.\_SB.I
                    /* 0018 */  0x32, 0x43, 0x39, 0x00, 0x8C, 0x20, 0x00, 0x01,  // 2C9.. ..
                    /* 0020 */  0x00, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0028 */  0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23,  // .......#
                    /* 0030 */  0x00, 0x00, 0x00, 0x33, 0x00, 0x5C, 0x5F, 0x53,  // ...3.\_S
                    /* 0038 */  0x42, 0x2E, 0x47, 0x49, 0x4F, 0x30, 0x00, 0x79,  // B.GIO0.y
                    /* 0040 */  0x00                                             // .
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.I2C9.ITCH.RBUF */
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == One))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                        }
                        ElseIf ((Arg2 == One))
                        {
                            Return (Zero)
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                OperationRegion (G031, SystemMemory, 0x0F11F000, 0x08)
                Field (G031, DWordAcc, NoLock, Preserve)
                {
                    C031,   32, 
                    S031,   32
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    Debug = "ITCH._PS0()"
                    S031 = 0x02
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    Debug = "ITCH._PS3()"
                    S031 = Zero
                    Sleep (0x05)
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \_SB.TDPR, 
                })
            }
        }

        Scope (\_SB.GPU0.MON0)
        {
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                \_SB.TDPR, 
            })
        }
    }

    Scope (\_SB.IC11)
    {
        Device (TPAD)
        {
            Name (_HID, "MSHW0756")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_HRV, One)  // _HRV: Hardware Revision
            Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.GIO0, , 
                \_SB.IC11, , 
                \_SB.PEP0, 
            })
            Name (_STA, 0x0F)  // _STA: Status
            Name (RBUF, Buffer (0x41)
            {
                /* 0000 */  0x8E, 0x19, 0x00, 0x02, 0x00, 0x01, 0x02, 0x00,  // ........
                /* 0008 */  0x00, 0x01, 0x06, 0x00, 0x80, 0x1A, 0x06, 0x00,  // ........
                /* 0010 */  0x15, 0x00, 0x5C, 0x5F, 0x53, 0x42, 0x2E, 0x49,  // ..\_SB.I
                /* 0018 */  0x43, 0x31, 0x31, 0x00, 0x8C, 0x20, 0x00, 0x01,  // C11.. ..
                /* 0020 */  0x00, 0x01, 0x00, 0x12, 0x00, 0x03, 0x00, 0x00,  // ........
                /* 0028 */  0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23,  // .......#
                /* 0030 */  0x00, 0x00, 0x00, 0x80, 0x03, 0x5C, 0x5F, 0x53,  // .....\_S
                /* 0038 */  0x42, 0x2E, 0x47, 0x49, 0x4F, 0x30, 0x00, 0x79,  // B.GIO0.y
                /* 0040 */  0x00                                             // .
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF) /* \_SB_.IC11.TPAD.RBUF */
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    If ((ToInteger (Arg2) == Zero))
                    {
                        If ((ToInteger (Arg1) == One))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                    }

                    If ((ToInteger (Arg2) == One))
                    {
                        Return (One)
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        OperationRegion (G066, SystemMemory, 0x0F166000, 0x08)
        Field (G066, DWordAcc, NoLock, Preserve)
        {
            C066,   32, 
            S066,   32
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            S066 = 0x02
            Sleep (0x14)
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            S066 = Zero
            Sleep (0x32)
        }
    }

    If ((TBID != 0x0F))
    {
        Scope (\_SB.I2C1)
        {
            Device (FINK)
            {
                Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                {
                    Return (ToString (STDH, 0x09))
                }

                Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }
        }

        Scope (\_SB.I2C1.FINK)
        {
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (Buffer (0x56)
                {
                    /* 0000 */  0x8E, 0x19, 0x00, 0x02, 0x00, 0x01, 0x02, 0x00,  // ........
                    /* 0008 */  0x00, 0x01, 0x06, 0x00, 0xA0, 0x86, 0x01, 0x00,  // ........
                    /* 0010 */  0x3E, 0x00, 0x5C, 0x5F, 0x53, 0x42, 0x2E, 0x49,  // >.\_SB.I
                    /* 0018 */  0x32, 0x43, 0x31, 0x00, 0x8E, 0x19, 0x00, 0x02,  // 2C1.....
                    /* 0020 */  0x00, 0x01, 0x02, 0x00, 0x00, 0x01, 0x06, 0x00,  // ........
                    /* 0028 */  0xA0, 0x86, 0x01, 0x00, 0x44, 0x00, 0x5C, 0x5F,  // ....D.\_
                    /* 0030 */  0x53, 0x42, 0x2E, 0x49, 0x32, 0x43, 0x31, 0x00,  // SB.I2C1.
                    /* 0038 */  0x8E, 0x19, 0x00, 0x02, 0x00, 0x01, 0x02, 0x00,  // ........
                    /* 0040 */  0x00, 0x01, 0x06, 0x00, 0xA0, 0x86, 0x01, 0x00,  // ........
                    /* 0048 */  0x39, 0x00, 0x5C, 0x5F, 0x53, 0x42, 0x2E, 0x49,  // 9.\_SB.I
                    /* 0050 */  0x32, 0x43, 0x31, 0x00, 0x79, 0x00               // 2C1.y.
                })
            }
        }
    }

    Scope (\_SB.I2C5)
    {
        Device (PA01)
        {
            Name (_HID, "INA4230")  // _HID: Hardware ID
            Name (_CID, "INA4230")  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, Buffer (0x1E)
            {
                /* 0000 */  0x8E, 0x19, 0x00, 0x02, 0x00, 0x01, 0x02, 0x00,  // ........
                /* 0008 */  0x00, 0x01, 0x06, 0x00, 0x80, 0x1A, 0x06, 0x00,  // ........
                /* 0010 */  0x40, 0x00, 0x5C, 0x5F, 0x53, 0x42, 0x2E, 0x49,  // @.\_SB.I
                /* 0018 */  0x32, 0x43, 0x35, 0x00, 0x79, 0x00               // 2C5.y.
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF) /* \_SB_.I2C5.PA01.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PACS & 0x02)
                If ((Local0 == 0x02))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PBUF, Package (0x0C)
            {
                "VSYS_ROP", 
                0x0A, 
                0x24F2, 
                "NSP2", 
                0x32, 
                0x101C, 
                "3P86V_WIFI", 
                0x64, 
                0x0603, 
                "APC1", 
                0x32, 
                0x638E
            })
            Name (CBUF, Package (0x01)
            {
                0x04
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4993a436-e1ac-4dc7-b4f8-46a5008fb9e7") /* Unknown UUID */))
                {
                    If ((Arg1 == Zero))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                             // .
                            })
                        }

                        If ((Arg2 == One))
                        {
                            Return (PBUF) /* \_SB_.I2C5.PA01.PBUF */
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (CBUF) /* \_SB_.I2C5.PA01.CBUF */
                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        Device (PA02)
        {
            Name (_HID, "INA4230")  // _HID: Hardware ID
            Name (_CID, "INA4230")  // _CID: Compatible ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, Buffer (0x1E)
            {
                /* 0000 */  0x8E, 0x19, 0x00, 0x02, 0x00, 0x01, 0x02, 0x00,  // ........
                /* 0008 */  0x00, 0x01, 0x06, 0x00, 0x80, 0x1A, 0x06, 0x00,  // ........
                /* 0010 */  0x41, 0x00, 0x5C, 0x5F, 0x53, 0x42, 0x2E, 0x49,  // A.\_SB.I
                /* 0018 */  0x32, 0x43, 0x35, 0x00, 0x79, 0x00               // 2C5.y.
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF) /* \_SB_.I2C5.PA02.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PACS & 0x04)
                If ((Local0 == 0x04))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PBUF, Package (0x0C)
            {
                "3P3V_PANEL_IN", 
                0xC8, 
                0x07F1, 
                "VSYS_CORE", 
                0x0A, 
                0x83F4, 
                "VDD2H", 
                0x32, 
                0x200B, 
                "MX_APC2", 
                0x32, 
                0x386D
            })
            Name (CBUF, Package (0x01)
            {
                0x04
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4993a436-e1ac-4dc7-b4f8-46a5008fb9e7") /* Unknown UUID */))
                {
                    If ((Arg1 == Zero))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                             // .
                            })
                        }

                        If ((Arg2 == One))
                        {
                            Return (PBUF) /* \_SB_.I2C5.PA02.PBUF */
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (CBUF) /* \_SB_.I2C5.PA02.CBUF */
                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        Device (PA03)
        {
            Name (_HID, "INA4230")  // _HID: Hardware ID
            Name (_CID, "INA4230")  // _CID: Compatible ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (RBUF, Buffer (0x1E)
            {
                /* 0000 */  0x8E, 0x19, 0x00, 0x02, 0x00, 0x01, 0x02, 0x00,  // ........
                /* 0008 */  0x00, 0x01, 0x06, 0x00, 0x80, 0x1A, 0x06, 0x00,  // ........
                /* 0010 */  0x42, 0x00, 0x5C, 0x5F, 0x53, 0x42, 0x2E, 0x49,  // B.\_SB.I
                /* 0018 */  0x32, 0x43, 0x35, 0x00, 0x79, 0x00               // 2C5.y.
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF) /* \_SB_.I2C5.PA03.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PACS & 0x08)
                If ((Local0 == 0x08))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PBUF, Package (0x0C)
            {
                "APC2", 
                0x32, 
                0x65F4, 
                "MM", 
                0x32, 
                0x2427, 
                "NSP1", 
                0x64, 
                0x2A6B, 
                "BKLT_IN", 
                0xC8, 
                0x0258
            })
            Name (CBUF, Package (0x01)
            {
                0x04
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4993a436-e1ac-4dc7-b4f8-46a5008fb9e7") /* Unknown UUID */))
                {
                    If ((Arg1 == Zero))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                             // .
                            })
                        }

                        If ((Arg2 == One))
                        {
                            Return (PBUF) /* \_SB_.I2C5.PA03.PBUF */
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (CBUF) /* \_SB_.I2C5.PA03.CBUF */
                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        Device (PA04)
        {
            Name (_HID, "INA4230")  // _HID: Hardware ID
            Name (_CID, "INA4230")  // _CID: Compatible ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (RBUF, Buffer (0x1E)
            {
                /* 0000 */  0x8E, 0x19, 0x00, 0x02, 0x00, 0x01, 0x02, 0x00,  // ........
                /* 0008 */  0x00, 0x01, 0x06, 0x00, 0x80, 0x1A, 0x06, 0x00,  // ........
                /* 0010 */  0x43, 0x00, 0x5C, 0x5F, 0x53, 0x42, 0x2E, 0x49,  // C.\_SB.I
                /* 0018 */  0x32, 0x43, 0x35, 0x00, 0x79, 0x00               // 2C5.y.
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF) /* \_SB_.I2C5.PA04.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PACS & 0x10)
                If ((Local0 == 0x10))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PBUF, Package (0x0C)
            {
                "MX_GFX", 
                0x32, 
                0x096C, 
                "MX_APC0", 
                0x32, 
                0x1787, 
                "APC0", 
                0x32, 
                0x17CD, 
                "GFX", 
                0x32, 
                0x4099
            })
            Name (CBUF, Package (0x01)
            {
                0x04
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4993a436-e1ac-4dc7-b4f8-46a5008fb9e7") /* Unknown UUID */))
                {
                    If ((Arg1 == Zero))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                             // .
                            })
                        }

                        If ((Arg2 == One))
                        {
                            Return (PBUF) /* \_SB_.I2C5.PA04.PBUF */
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (CBUF) /* \_SB_.I2C5.PA04.CBUF */
                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        Device (PA05)
        {
            Name (_HID, "INA4230")  // _HID: Hardware ID
            Name (_CID, "INA4230")  // _CID: Compatible ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (RBUF, Buffer (0x1E)
            {
                /* 0000 */  0x8E, 0x19, 0x00, 0x02, 0x00, 0x01, 0x02, 0x00,  // ........
                /* 0008 */  0x00, 0x01, 0x06, 0x00, 0x80, 0x1A, 0x06, 0x00,  // ........
                /* 0010 */  0x44, 0x00, 0x5C, 0x5F, 0x53, 0x42, 0x2E, 0x49,  // D.\_SB.I
                /* 0018 */  0x32, 0x43, 0x35, 0x00, 0x79, 0x00               // 2C5.y.
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF) /* \_SB_.I2C5.PA05.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = (PACS & 0x20)
                If ((Local0 == 0x20))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PBUF, Package (0x0C)
            {
                "3P3V_SSD", 
                0x64, 
                0x08CA, 
                "VDDQ", 
                0x32, 
                0x0E5B, 
                "VDD2L", 
                0x32, 
                0x063D, 
                "MX_APC1", 
                0x32, 
                0x05A4
            })
            Name (CBUF, Package (0x01)
            {
                0x04
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4993a436-e1ac-4dc7-b4f8-46a5008fb9e7") /* Unknown UUID */))
                {
                    If ((Arg1 == Zero))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                             // .
                            })
                        }

                        If ((Arg2 == One))
                        {
                            Return (PBUF) /* \_SB_.I2C5.PA05.PBUF */
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (CBUF) /* \_SB_.I2C5.PA05.CBUF */
                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }

    Scope (_SB)
    {
        Device (SRTC)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.SSH, , 
                \_SB.TREE, 
            })
            Name (_SUB, "MSHW0217")  // _SUB: Subsystem ID
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return ("ACPI000E")
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_GCP, 0, NotSerialized)  // _GCP: Get Capabilities
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB)
    {
        Device (SAPD)
        {
            Name (_HID, "MSHW0299")  // _HID: Hardware ID
        }
    }

    Scope (\_SB)
    {
        Device (FAN0)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_STR, Unicode ("SAM FAN"))  // _STR: Description String
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.SSH, 
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }
}

