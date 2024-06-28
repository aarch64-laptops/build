/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ./ssdt.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002A69 (10857)
 *     Revision         0x02
 *     Checksum         0x93
 *     OEM ID           "OEMID "
 *     OEM Table ID     "SsdtSurf"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20230628 (539166248)
 */
DefinitionBlock ("", "SSDT", 2, "OEMID ", "SsdtSurf", 0x00001000)
{
    External (_SB_.GIO0, DeviceObj)
    External (_SB_.I2C1, DeviceObj)
    External (_SB_.I2C5, DeviceObj)
    External (_SB_.IC10, DeviceObj)
    External (_SB_.IC10.NFC1.NFCE, FieldUnitObj)
    External (_SB_.PEP0, DeviceObj)
    External (_SB_.PM01, DeviceObj)
    External (_SB_.SP11, DeviceObj)
    External (_SB_.SSH_.PDSM, MethodObj)    // 4 Arguments
    External (_SB_.SSH_.PFUN, MethodObj)    // 0 Arguments
    External (_SB_.TREE, DeviceObj)
    External (_SB_.UAR3, DeviceObj)
    External (BCLE, IntObj)

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

    OperationRegion (FNVS, SystemMemory, 0xD5767000, 0x000C)
    Field (FNVS, AnyAcc, Lock, Preserve)
    {
        MFGM,   8, 
        RFLA,   8, 
        Offset (0x03), 
        SGCP,   32, 
        UWBE,   8, 
        TBID,   8, 
        SKID,   8, 
        NFCE,   8, 
        BRID,   8
    }

    OperationRegion (MNVS, SystemMemory, 0xD5766000, 0x0043)
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

    OperationRegion (RSRS, SystemMemory, RSMP, 0x1000)
    Field (RSRS, ByteAcc, NoLock, Preserve)
    {
        REVI,   8, 
        Offset (0x0C), 
        GUI0,   32, 
        GUI1,   32, 
        GUI2,   32, 
        GUI3,   32, 
        Offset (0x430), 
        CSZE,   32, 
        GWAS,   32, 
        GWSI,   8, 
        GWDS,   32, 
        GWRE,   32, 
        SCAP,   64
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
            \_SB.SSH
        })
    }

    Scope (\_SB.WSID)
    {
        Device (SHPS)
        {
            Name (_ADR, 0x9086E8DA)  // _ADR: Address
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.SSH
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
        Device (SHPS)
        {
            Name (_HID, "MSHW0153")  // _HID: Hardware ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.SSH
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
                            Local0 = 0x06
                            Local0 |= 0x0808
                            Return (Local0)
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

    Scope (\_SB.SHPS)
    {
    }

    Scope (\_SB)
    {
        Device (SLT)
        {
            Name (_HID, "MSHW0005")  // _HID: Hardware ID
            Name (_CID, "PNP0C60" /* Display Sensor Device */)  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
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
                \_SB.UAR3, 
                \_SB.GIO0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (PINI, 0, NotSerialized)
            {
                Return (Zero)
            }

            Name (SBUF, ResourceTemplate ()
            {
                UartSerialBusV2 (0x00000000, DataBitsEight, StopBitsOne,
                    0xC0, LittleEndian, ParityTypeNone, FlowControlHardware,
                    0x0040, 0x0040, "\\_SB.UAR3",
                    0x00, ResourceConsumer, _Y00, Exclusive,
                    )
                GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x0000,
                    "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0380
                    }
                GpioIo (Shared, PullNone, 0x0000, 0x0000, IoRestrictionInputOnly,
                    "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x005B
                    }
            })
            CreateDWordField (SBUF, \_SB.SSH._Y00._SPE, BAUD)  // _SPE: Speed
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
                \_SB.PM01, 
                \_SB.GIO0
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
                Return (ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, SharedAndWake, PullNone, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x03C0
                        }
                    GpioIo (Shared, PullNone, 0x0000, 0x0000, IoRestrictionInputOnly,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0013
                        }
                    GpioInt (Edge, ActiveBoth, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        RawDataBuffer (0x04)  // Vendor Data
                        {
                            0x01, 0xFF, 0xFF, 0xFF
                        })
                        {   // Pin list
                            0x00D5
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionInputOnly,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        RawDataBuffer (0x04)  // Vendor Data
                        {
                            0x01, 0xFF, 0xFF, 0xFF
                        })
                        {   // Pin list
                            0x00D5
                        }
                    GpioInt (Edge, ActiveBoth, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        RawDataBuffer (0x04)  // Vendor Data
                        {
                            0x01, 0xFF, 0xFF, 0xFF
                        })
                        {   // Pin list
                            0x00D7
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionInputOnly,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        RawDataBuffer (0x04)  // Vendor Data
                        {
                            0x01, 0xFF, 0xFF, 0xFF
                        })
                        {   // Pin list
                            0x00D7
                        }
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

    ThermalZone (TPOL)
    {
        Name (_HID, "MSHW0187")  // _HID: Hardware ID
        Name (_UID, One)  // _UID: Unique ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            Return (Package (0x01)
            {
                \_SB.PEP0
            })
        }

        Name (CFG0, Package (0x02)
        {
            "\\_SB.TZ2", 
            "\\_SB.TZ6"
        })
        Method (INPS, 0, NotSerialized)
        {
            Return (CFG0) /* \TPOL.CFG0 */
        }

        Name (CFG1, Package (0x09)
        {
            "\\_SB.SYSM.CLS0.CPU0", 
            "\\_SB.SYSM.CLS1.CPU0", 
            "\\_SB.SYSM.CLS2.CPU0", 
            "\\_SB.GPU0", 
            "\\_SB.AGR0", 
            "\\_SB.MSKN", 
            "\\_SB.CSW0", 
            "\\_SB.MJCT", 
            "\\_SB.MBJ0"
        })
        Method (OPTS, 0, NotSerialized)
        {
            Return (CFG1) /* \TPOL.CFG1 */
        }
    }

    Scope (\_SB)
    {
        If ((TZSM & One))
        {
            ThermalZone (TZ01)
            {
                Name (_STR, Unicode ("RTS1"))  // _STR: Description String
                Name (_HID, "MSHW0188")  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e484ea9d-cc7c-4055-a94d-9e95f1f33b84") /* Unknown UUID */))
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
            ThermalZone (TZ02)
            {
                Name (_STR, Unicode ("RTS2"))  // _STR: Description String
                Name (_HID, "MSHW0188")  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e484ea9d-cc7c-4055-a94d-9e95f1f33b84") /* Unknown UUID */))
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
            ThermalZone (TZ03)
            {
                Name (_STR, Unicode ("RTS3"))  // _STR: Description String
                Name (_HID, "MSHW0188")  // _HID: Hardware ID
                Name (_UID, 0x03)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e484ea9d-cc7c-4055-a94d-9e95f1f33b84") /* Unknown UUID */))
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
            ThermalZone (TZ04)
            {
                Name (_STR, Unicode ("RTS4"))  // _STR: Description String
                Name (_HID, "MSHW0188")  // _HID: Hardware ID
                Name (_UID, 0x04)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e484ea9d-cc7c-4055-a94d-9e95f1f33b84") /* Unknown UUID */))
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
            ThermalZone (TZ05)
            {
                Name (_STR, Unicode ("RTS5"))  // _STR: Description String
                Name (_HID, "MSHW0188")  // _HID: Hardware ID
                Name (_UID, 0x05)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e484ea9d-cc7c-4055-a94d-9e95f1f33b84") /* Unknown UUID */))
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
            ThermalZone (TZ06)
            {
                Name (_STR, Unicode ("RTS6"))  // _STR: Description String
                Name (_HID, "MSHW0188")  // _HID: Hardware ID
                Name (_UID, 0x06)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e484ea9d-cc7c-4055-a94d-9e95f1f33b84") /* Unknown UUID */))
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
            ThermalZone (TZ07)
            {
                Name (_STR, Unicode ("RTS7"))  // _STR: Description String
                Name (_HID, "MSHW0188")  // _HID: Hardware ID
                Name (_UID, 0x07)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e484ea9d-cc7c-4055-a94d-9e95f1f33b84") /* Unknown UUID */))
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
            ThermalZone (TZ08)
            {
                Name (_STR, Unicode ("RTS8"))  // _STR: Description String
                Name (_HID, "MSHW0188")  // _HID: Hardware ID
                Name (_UID, 0x08)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e484ea9d-cc7c-4055-a94d-9e95f1f33b84") /* Unknown UUID */))
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
            ThermalZone (TZ09)
            {
                Name (_STR, Unicode ("VTS1"))  // _STR: Description String
                Name (_HID, "MSHW0188")  // _HID: Hardware ID
                Name (_UID, 0x09)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e484ea9d-cc7c-4055-a94d-9e95f1f33b84") /* Unknown UUID */))
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
            ThermalZone (TZ0A)
            {
                Name (_STR, Unicode ("VTS2"))  // _STR: Description String
                Name (_HID, "MSHW0188")  // _HID: Hardware ID
                Name (_UID, 0x0A)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e484ea9d-cc7c-4055-a94d-9e95f1f33b84") /* Unknown UUID */))
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
            ThermalZone (TZ0B)
            {
                Name (_STR, Unicode ("VTS3"))  // _STR: Description String
                Name (_HID, "MSHW0188")  // _HID: Hardware ID
                Name (_UID, 0x0B)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e484ea9d-cc7c-4055-a94d-9e95f1f33b84") /* Unknown UUID */))
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
            ThermalZone (TZ0C)
            {
                Name (_STR, Unicode ("VTS4"))  // _STR: Description String
                Name (_HID, "MSHW0188")  // _HID: Hardware ID
                Name (_UID, 0x0C)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e484ea9d-cc7c-4055-a94d-9e95f1f33b84") /* Unknown UUID */))
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

    If ((TBID != 0x10))
    {
        Scope (\_SB.PEP0)
        {
            Method (LPMX, 0, NotSerialized)
            {
                Return (LPXC) /* \_SB_.PEP0.LPXC */
            }

            Name (LPXC, Package (0x01)
            {
                Package (0x07)
                {
                    "DEVICE", 
                    "\\_SB.GTCH", 
                    Package (0x03)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }
                    }, 

                    Package (0x05)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x40, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x0A
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x30, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package (0x05)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x30, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x0A
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x40, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }
                    }
                }
            })
        }

        Scope (\_SB)
        {
            Device (GTCH)
            {
                Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                {
                    Return (ToString (SHSD, 0x09))
                }

                Name (_CID, "PNP0C51")  // _CID: Compatible ID
                Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                Name (_HRV, One)  // _HRV: Hardware Revision
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    \_SB.GIO0, 
                    \_SB.SP11
                })
                Name (RBUF, ResourceTemplate ()
                {
                    SpiSerialBusV2 (0x0000, PolarityLow, FourWireMode, 0x08,
                        ControllerInitiated, 0x02625A00, ClockPolarityLow,
                        ClockPhaseFirst, "\\_SB.SP11",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0033
                        }
                    GpioIo (Exclusive, PullDown, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0040
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDown, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0440
                        }
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.GTCH.RBUF */
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("6e2ac436-0fcf-41af-a265-b32a220dcfab") /* Unknown UUID */))
                    {
                        If ((ToInteger (Arg1) == One))
                        {
                            If ((ToInteger (Arg2) == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }

                            If ((ToInteger (Arg2) == One))
                            {
                                Return (One)
                            }
                        }

                        If ((ToInteger (Arg1) == 0x03))
                        {
                            If ((ToInteger (Arg2) == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x7F                                             // .
                                })
                            }

                            If ((ToInteger (Arg2) == One))
                            {
                                Return (0x1000)
                            }

                            If ((ToInteger (Arg2) == 0x02))
                            {
                                Return (0x1004)
                            }

                            If ((ToInteger (Arg2) == 0x03))
                            {
                                Return (0x2000)
                            }

                            If ((ToInteger (Arg2) == 0x04))
                            {
                                Return (Buffer (One)
                                {
                                     0xEB                                             // .
                                })
                            }

                            If ((ToInteger (Arg2) == 0x05))
                            {
                                Return (Buffer (One)
                                {
                                     0xE2                                             // .
                                })
                            }

                            If ((ToInteger (Arg2) == 0x06))
                            {
                                Return (0xA000)
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                OperationRegion (GI64, SystemMemory, 0x0F140000, 0x18)
                Field (GI64, DWordAcc, NoLock, Preserve)
                {
                    VCFG,   32, 
                    VSTE,   32, 
                    Offset (0x0C), 
                    Offset (0x10), 
                    Offset (0x14), 
                    Offset (0x18)
                }

                OperationRegion (GI48, SystemMemory, 0x0F130000, 0x18)
                Field (GI48, DWordAcc, NoLock, Preserve)
                {
                    RCFG,   32, 
                    RSTE,   32, 
                    Offset (0x0C), 
                    Offset (0x10), 
                    Offset (0x14), 
                    Offset (0x18)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_S1D, 0, NotSerialized)  // _S1D: S1 Device State
                {
                    Return (0x03)
                }

                Method (_S2D, 0, NotSerialized)  // _S2D: S2 Device State
                {
                    Return (0x03)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x03)
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    RSTE = Zero
                    Local0 = (VSTE & 0x02)
                    If ((Local0 == Zero))
                    {
                        VCFG = 0x0200
                        VSTE = 0x02
                        Sleep (0x0A)
                    }

                    RCFG = 0x0200
                    RSTE = 0x02
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    Local0 = (VSTE & 0x02)
                    If ((Local0 == Zero))
                    {
                        VCFG = 0x0200
                        VSTE = 0x02
                        Sleep (0x01F4)
                    }

                    RCFG = 0x0200
                    RSTE = 0x02
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    RSTE = Zero
                    Sleep (0x0A)
                    VSTE = Zero
                }

                Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                {
                    RSTE = Zero
                    Sleep (0x012C)
                    RSTE = 0x02
                }
            }
        }

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
            Name (LCD0, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x003E, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, , Exclusive,
                    )
                I2cSerialBusV2 (0x0044, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, , Exclusive,
                    )
                I2cSerialBusV2 (0x0039, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, , Exclusive,
                    )
            })
            Name (OLED, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x003E, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, , Exclusive,
                    )
                I2cSerialBusV2 (0x0044, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, , Exclusive,
                    )
                I2cSerialBusV2 (0x0023, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, , Exclusive,
                    )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If ((TBID == Zero))
                {
                    Return (OLED) /* \_SB_.I2C1.FINK.OLED */
                }

                Return (LCD0) /* \_SB_.I2C1.FINK.LCD0 */
            }
        }
    }

    Scope (\_SB.I2C5)
    {
        Device (PA01)
        {
            Name (_HID, "MAX34417")  // _HID: Hardware ID
            Name (_CID, "MAX34417")  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x001A, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.I2C5",
                    0x00, ResourceConsumer, , Exclusive,
                    )
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

            Name (PD10, Package (0x08)
            {
                "PMI_CPU_MX_APC0", 
                0x05, 
                "PMI_GPU", 
                0x05, 
                "PMI_CPU_MX_APC2", 
                0x05, 
                "PMI_CPU_VSYS_1B", 
                0x05
            })
            Name (PD11, Package (0x08)
            {
                "PMI_CPU_MX_APC0", 
                0x05, 
                "PMI_GPU", 
                0x05, 
                "PMI_CPU_MX_APC2", 
                0x05, 
                "PMI_CPU_VSYS_1B", 
                0x05
            })
            Name (PD20, Package (0x08)
            {
                "PMI_CPU_MX_APC0", 
                0x05, 
                "PMI_GPU", 
                0x05, 
                "PMI_CPU_MX_APC2", 
                0x05, 
                "PMI_CPU_MM", 
                0x05
            })
            Name (PD21, Package (0x08)
            {
                "PMI_CPU_MX_APC0", 
                0x05, 
                "PMI_GPU", 
                0x05, 
                "PMI_CPU_MX_APC2", 
                0x05, 
                "PMI_CPU_MM", 
                0x05
            })
            Name (PT10, Package (0x08)
            {
                "PMI_CPU_MX_APC0", 
                0x05, 
                "PMI_GPU", 
                0x05, 
                "PMI_CPU_MX_APC2", 
                0x05, 
                "PMI_CPU_VSYS_1B", 
                0x05
            })
            Name (PT11, Package (0x08)
            {
                "PMI_CPU_MX_APC0", 
                0x05, 
                "PMI_GPU", 
                0x05, 
                "PMI_CPU_MX_APC2", 
                0x05, 
                "PMI_CPU_VSYS_1B", 
                0x05
            })
            Name (PT20, Package (0x08)
            {
                "PMI_CPU_MX_APC0", 
                0x05, 
                "PMI_GPU", 
                0x05, 
                "PMI_CPU_MX_APC2", 
                0x05, 
                "PMI_CPU_MM", 
                0x05
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
                            If ((SKID > 0x07))
                            {
                                If ((OMBR == Zero))
                                {
                                    Return (PT10) /* \_SB_.I2C5.PA01.PT10 */
                                }

                                If ((OMBR == One))
                                {
                                    Return (PT11) /* \_SB_.I2C5.PA01.PT11 */
                                }

                                If ((OMBR >= 0x02))
                                {
                                    Return (PT20) /* \_SB_.I2C5.PA01.PT20 */
                                }
                            }
                            Else
                            {
                                If ((OMBR == Zero))
                                {
                                    Return (PD10) /* \_SB_.I2C5.PA01.PD10 */
                                }

                                If ((OMBR == One))
                                {
                                    Return (PD11) /* \_SB_.I2C5.PA01.PD11 */
                                }

                                If ((OMBR == 0x02))
                                {
                                    Return (PD20) /* \_SB_.I2C5.PA01.PD20 */
                                }

                                If ((OMBR >= 0x03))
                                {
                                    Return (PD21) /* \_SB_.I2C5.PA01.PD21 */
                                }
                            }

                            Return (PT10) /* \_SB_.I2C5.PA01.PT10 */
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
            Name (_HID, "MAX34417")  // _HID: Hardware ID
            Name (_CID, "MAX34417")  // _CID: Compatible ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0016, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.I2C5",
                    0x00, ResourceConsumer, , Exclusive,
                    )
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

            Name (PD10, Package (0x08)
            {
                "STORAGE", 
                0x0A, 
                "PMI_CPU_APC1", 
                0x05, 
                "PMI_CPU_APC2", 
                0x05, 
                "PMI_CPU_MX_APC1", 
                0x05
            })
            Name (PD11, Package (0x08)
            {
                "PMI_SYSTEM_USB", 
                0x05, 
                "PMI_CPU_APC1", 
                0x05, 
                "PMI_CPU_APC2", 
                0x05, 
                "PMI_CPU_MX_APC1", 
                0x05
            })
            Name (PD20, Package (0x08)
            {
                "STORAGE", 
                0x0A, 
                "PMI_CPU_APC1", 
                0x05, 
                "PMI_CPU_APC2", 
                0x05, 
                "PMI_CPU_MX_APC1", 
                0x05
            })
            Name (PD21, Package (0x08)
            {
                "STORAGE", 
                0x0A, 
                "PMI_CPU_APC1", 
                0x05, 
                "PMI_CPU_APC2", 
                0x05, 
                "PMI_CPU_MX_APC1", 
                0x05
            })
            Name (PT10, Package (0x08)
            {
                "STORAGE", 
                0x0A, 
                "PMI_CPU_APC1", 
                0x05, 
                "PMI_CPU_APC2", 
                0x05, 
                "PMI_CPU_MX_APC1", 
                0x05
            })
            Name (PT11, Package (0x08)
            {
                "STORAGE", 
                0x0A, 
                "PMI_CPU_APC1", 
                0x05, 
                "PMI_CPU_APC2", 
                0x05, 
                "PMI_CPU_MX_APC1", 
                0x05
            })
            Name (PT20, Package (0x08)
            {
                "STORAGE", 
                0x0A, 
                "PMI_CPU_APC1", 
                0x05, 
                "PMI_CPU_APC2", 
                0x05, 
                "PMI_CPU_MX_APC1", 
                0x05
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
                            If ((SKID > 0x07))
                            {
                                If ((OMBR == Zero))
                                {
                                    Return (PT10) /* \_SB_.I2C5.PA02.PT10 */
                                }

                                If ((OMBR == One))
                                {
                                    Return (PT11) /* \_SB_.I2C5.PA02.PT11 */
                                }

                                If ((OMBR >= 0x02))
                                {
                                    Return (PT20) /* \_SB_.I2C5.PA02.PT20 */
                                }
                            }
                            Else
                            {
                                If ((OMBR == Zero))
                                {
                                    Return (PD10) /* \_SB_.I2C5.PA02.PD10 */
                                }

                                If ((OMBR == One))
                                {
                                    Return (PD11) /* \_SB_.I2C5.PA02.PD11 */
                                }

                                If ((OMBR == 0x02))
                                {
                                    Return (PD20) /* \_SB_.I2C5.PA02.PD20 */
                                }

                                If ((OMBR >= 0x03))
                                {
                                    Return (PD21) /* \_SB_.I2C5.PA02.PD21 */
                                }
                            }

                            Return (PT10) /* \_SB_.I2C5.PA02.PT10 */
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
            Name (_HID, "MAX34417")  // _HID: Hardware ID
            Name (_CID, "MAX34417")  // _CID: Compatible ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0018, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.I2C5",
                    0x00, ResourceConsumer, , Exclusive,
                    )
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

            Name (PD10, Package (0x08)
            {
                "DISPLAY_PANEL", 
                0x14, 
                "DISPLAY_BACKLIGHT", 
                0x14, 
                "MBB", 
                0x0A, 
                "PMI_SYSTEM_VSYS_ISNS", 
                0x05
            })
            Name (PD11, Package (0x08)
            {
                "DISPLAY_PANEL", 
                0x14, 
                "DISPLAY_BACKLIGHT", 
                0x14, 
                "MBB", 
                0x0A, 
                "PMI_SYSTEM", 
                0x05
            })
            Name (PD20, Package (0x08)
            {
                "DISPLAY_PANEL", 
                0x14, 
                "DISPLAY_BACKLIGHT", 
                0x14, 
                "MBB", 
                0x0A, 
                "PMI_NSP", 
                0x05
            })
            Name (PD21, Package (0x08)
            {
                "DISPLAY_PANEL", 
                0x14, 
                "DISPLAY_BACKLIGHT", 
                0x14, 
                "MBB", 
                0x0A, 
                "PMI_NSP", 
                0x05
            })
            Name (PT10, Package (0x08)
            {
                "DISPLAY_PANEL", 
                0x14, 
                "DISPLAY_BACKLIGHT", 
                0x14, 
                "", 
                Zero, 
                "PMI_SYSTEM_VSYS_ISNS", 
                0x05
            })
            Name (PT11, Package (0x08)
            {
                "DISPLAY_PANEL", 
                0x14, 
                "DISPLAY_BACKLIGHT", 
                0x14, 
                "", 
                Zero, 
                "PMI_SYSTEM_VSYS_ISNS", 
                0x05
            })
            Name (PT20, Package (0x08)
            {
                "DISPLAY_PANEL", 
                0x14, 
                "DISPLAY_BACKLIGHT", 
                0x14, 
                "PMI_TOUCH", 
                0x14, 
                "PMI_NSP", 
                0x05
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
                            If ((SKID > 0x07))
                            {
                                If ((OMBR == Zero))
                                {
                                    Return (PT10) /* \_SB_.I2C5.PA03.PT10 */
                                }

                                If ((OMBR == One))
                                {
                                    Return (PT11) /* \_SB_.I2C5.PA03.PT11 */
                                }

                                If ((OMBR >= 0x02))
                                {
                                    Return (PT20) /* \_SB_.I2C5.PA03.PT20 */
                                }
                            }
                            Else
                            {
                                If ((OMBR == Zero))
                                {
                                    Return (PD10) /* \_SB_.I2C5.PA03.PD10 */
                                }

                                If ((OMBR == One))
                                {
                                    Return (PD11) /* \_SB_.I2C5.PA03.PD11 */
                                }

                                If ((OMBR == 0x02))
                                {
                                    Return (PD20) /* \_SB_.I2C5.PA03.PD20 */
                                }

                                If ((OMBR >= 0x03))
                                {
                                    Return (PD21) /* \_SB_.I2C5.PA03.PD21 */
                                }
                            }

                            Return (PT10) /* \_SB_.I2C5.PA03.PT10 */
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
            Name (_HID, "MAX34417")  // _HID: Hardware ID
            Name (_CID, "MAX34417")  // _CID: Compatible ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0014, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.I2C5",
                    0x00, ResourceConsumer, , Exclusive,
                    )
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

            Name (PD10, Package (0x08)
            {
                "PMI_CPU_VSYS_1A", 
                0x05, 
                "PMI_CPU_MM", 
                0x05, 
                "PMI_SYSTEM_5VSB", 
                0x0A, 
                "PMI_SYSTEM_3P3VSB", 
                0x0A
            })
            Name (PD11, Package (0x08)
            {
                "PMI_CPU_VSYS_1A", 
                0x05, 
                "PMI_CPU_MM", 
                0x05, 
                "PMI_SYSTEM_5VSB", 
                0x0A, 
                "PMI_SYSTEM_S1C_S2C", 
                0x05
            })
            Name (PD20, Package (0x08)
            {
                "PMI_CPU_VSYS_1A", 
                0x05, 
                "PMI_CPU_VSYS_1B", 
                0x05, 
                "PMI_USB", 
                0x05, 
                "PMI_SYSTEM", 
                0x05
            })
            Name (PD21, Package (0x08)
            {
                "PMI_CPU_VSYS_1A", 
                0x05, 
                "PMI_CPU_VSYS_1B", 
                0x05, 
                "PMI_USB", 
                0x05, 
                "PMI_SYSTEM", 
                0x05
            })
            Name (PD30, Package (0x08)
            {
                "PMI_USB_N", 
                0x05, 
                "PMI_SYSTEM_N", 
                0x05, 
                "PMI_USB_P", 
                0x05, 
                "PMI_SYSTEM_P", 
                0x05
            })
            Name (PT10, Package (0x08)
            {
                "PMI_CPU_VSYS_1A", 
                0x05, 
                "PMI_CPU_MM", 
                0x05, 
                "PMI_SYSTEM_5VSB", 
                0x0A, 
                "PMI_SYSTEM_3P3VSB", 
                0x0A
            })
            Name (PT11, Package (0x08)
            {
                "PMI_CPU_VSYS_1A", 
                0x05, 
                "PMI_CPU_MM", 
                0x05, 
                "PMI_SYSTEM_5VSB", 
                0x0A, 
                "PMI_NSP", 
                0x05
            })
            Name (PT20, Package (0x08)
            {
                "PMI_CPU_VSYS_1A", 
                0x05, 
                "PMI_CPU_VSYS_1B", 
                0x05, 
                "PMI_USB", 
                0x05, 
                "PMI_SYSTEM", 
                0x05
            })
            Name (PT30, Package (0x08)
            {
                "PMI_USB_N", 
                0x05, 
                "PMI_SYSTEM_N", 
                0x05, 
                "PMI_USB_P", 
                0x05, 
                "PMI_SYSTEM_P", 
                0x05
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
                            If ((SKID > 0x07))
                            {
                                If ((OMBR == Zero))
                                {
                                    Return (PT10) /* \_SB_.I2C5.PA04.PT10 */
                                }

                                If ((OMBR == One))
                                {
                                    Return (PT11) /* \_SB_.I2C5.PA04.PT11 */
                                }

                                If (((OMBR >= 0x02) && (OMBR <= 0x07)))
                                {
                                    Return (PT20) /* \_SB_.I2C5.PA04.PT20 */
                                }

                                If ((OMBR >= 0x08))
                                {
                                    Return (PT30) /* \_SB_.I2C5.PA04.PT30 */
                                }
                            }
                            Else
                            {
                                If ((OMBR == Zero))
                                {
                                    Return (PD10) /* \_SB_.I2C5.PA04.PD10 */
                                }

                                If ((OMBR == One))
                                {
                                    Return (PD11) /* \_SB_.I2C5.PA04.PD11 */
                                }

                                If ((OMBR == 0x02))
                                {
                                    Return (PD20) /* \_SB_.I2C5.PA04.PD20 */
                                }

                                If (((OMBR >= 0x03) && (OMBR <= 0x05)))
                                {
                                    Return (PD21) /* \_SB_.I2C5.PA04.PD21 */
                                }

                                If ((OMBR >= 0x07))
                                {
                                    Return (PD30) /* \_SB_.I2C5.PA04.PD30 */
                                }
                            }

                            Return (PT10) /* \_SB_.I2C5.PA04.PT10 */
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
            Name (_HID, "MAX34417")  // _HID: Hardware ID
            Name (_CID, "MAX34417")  // _CID: Compatible ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0012, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.I2C5",
                    0x00, ResourceConsumer, , Exclusive,
                    )
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

            Name (PD10, Package (0x08)
            {
                "MAINMEM_VDD2H", 
                0x05, 
                "MAINMEM_VDD2L", 
                0x0A, 
                "WIFI", 
                0x0A, 
                "PMI_CPU_APC0", 
                0x05
            })
            Name (PD11, Package (0x08)
            {
                "MAINMEM_VDD2H", 
                0x05, 
                "MAINMEM_VDD2L", 
                0x0A, 
                "WIFI", 
                0x0A, 
                "PMI_CPU_APC0", 
                0x05
            })
            Name (PD20, Package (0x08)
            {
                "MAINMEM_VDD2H", 
                0x05, 
                "PMI_CPU_CX", 
                0x05, 
                "WIFI", 
                0x0A, 
                "PMI_CPU_APC0", 
                0x05
            })
            Name (PD21, Package (0x08)
            {
                "MAINMEM_VDD2H", 
                0x05, 
                "PMI_CPU_CX", 
                0x05, 
                "WIFI", 
                0x0A, 
                "PMI_CPU_APC0", 
                0x05
            })
            Name (PT10, Package (0x08)
            {
                "MAINMEM_VDD2H", 
                0x05, 
                "MAINMEM_VDD2L", 
                0x0A, 
                "WIFI", 
                0x0A, 
                "PMI_CPU_APC0", 
                0x05
            })
            Name (PT11, Package (0x08)
            {
                "MAINMEM_VDD2H", 
                0x05, 
                "MAINMEM_VDD2L", 
                0x0A, 
                "WIFI", 
                0x0A, 
                "PMI_CPU_APC0", 
                0x05
            })
            Name (PT20, Package (0x08)
            {
                "MAINMEM_VDD2H", 
                0x05, 
                "PMI_CPU_CX", 
                0x05, 
                "WIFI", 
                0x0A, 
                "PMI_CPU_APC0", 
                0x05
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
                            If ((SKID > 0x07))
                            {
                                If ((OMBR == Zero))
                                {
                                    Return (PT10) /* \_SB_.I2C5.PA05.PT10 */
                                }

                                If ((OMBR == One))
                                {
                                    Return (PT11) /* \_SB_.I2C5.PA05.PT11 */
                                }

                                If ((OMBR >= 0x02))
                                {
                                    Return (PT20) /* \_SB_.I2C5.PA05.PT20 */
                                }
                            }
                            Else
                            {
                                If ((OMBR == Zero))
                                {
                                    Return (PD10) /* \_SB_.I2C5.PA05.PD10 */
                                }

                                If ((OMBR == One))
                                {
                                    Return (PD11) /* \_SB_.I2C5.PA05.PD11 */
                                }

                                If ((OMBR == 0x02))
                                {
                                    Return (PD20) /* \_SB_.I2C5.PA05.PD20 */
                                }

                                If ((OMBR >= 0x03))
                                {
                                    Return (PD21) /* \_SB_.I2C5.PA05.PD21 */
                                }
                            }

                            Return (PT10) /* \_SB_.I2C5.PA05.PT10 */
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
                \_SB.SSH, 
                \_SB.TREE
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

    If (((BRID >= 0x07) || ((SKID != 0x0D) && 
        (SKID != 0x0E))))
    {
        Scope (\_SB)
        {
            Device (FAN0)
            {
                Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
                Name (_STR, Unicode ("SAM FAN"))  // _STR: Description String
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    \_SB.SSH
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }
        }
    }

    If (((((SKID == 0x08) || (SKID == 0x0A)) || (SKID == 
        0x0B)) || (SKID == 0x0D)))
    {
        Scope (\_SB.IC10)
        {
            Device (NFC1)
            {
                Name (_HID, "1FC93002")  // _HID: Hardware ID
                Name (NFCR, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0028, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.IC10",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0400
                        }
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0044
                        }
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x007C
                        }
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (NFCR) /* \_SB_.IC10.NFC1.NFCR */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((NFCE == One))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
        }
    }
}

