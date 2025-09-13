/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20250807 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ./ssdt.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00005897 (22679)
 *     Revision         0x03
 *     Checksum         0x7F
 *     OEM ID           "HUAWEI"
 *     OEM Table ID     "SSDT1Tbl"
 *     OEM Revision     0x00000002 (2)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180105 (538444037)
 */
DefinitionBlock ("", "SSDT", 3, "HUAWEI", "SSDT1Tbl", 0x00000002)
{
    External (_SB_.GIO0, DeviceObj)
    External (_SB_.GIO0.ESTA, IntObj)
    External (_SB_.GIO0.GABL, IntObj)
    External (_SB_.GPU0.LIDB, IntObj)
    External (_SB_.GPU0.MHW0, MethodObj)    // 0 Arguments
    External (_SB_.GPU0.MHW1, MethodObj)    // 0 Arguments
    External (_SB_.I2C2, DeviceObj)
    External (_SB_.IC16, DeviceObj)
    External (_SB_.IC16.MUEC, MutexObj)
    External (_SB_.IC16.REDY, IntObj)
    External (_SB_.PMIC, DeviceObj)
    External (_SB_.TZ31, DeviceObj)
    External (_SB_.TZ31.TPSV, IntObj)
    External (_SB_.TZ32, DeviceObj)
    External (_SB_.TZ32.TPSV, IntObj)
    External (_SB_.TZ33, DeviceObj)
    External (_SB_.TZ33.TPSV, IntObj)
    External (_SB_.TZ34, DeviceObj)
    External (_SB_.TZ34.TPSV, IntObj)
    External (_SB_.TZ70, DeviceObj)
    External (_SB_.TZ70.TPSV, IntObj)
    External (_SB_.TZ99, DeviceObj)
    External (_SB_.TZ99.TPSV, IntObj)
    External (_SB_.UCS0, DeviceObj)
    External (_SB_.UCS0.USBR, MethodObj)    // 0 Arguments
    External (_SB_.UCSI, DeviceObj)
    External (_SB_.UCSI.CCI_, FieldUnitObj)
    External (_SB_.UCSI.MSGI, FieldUnitObj)

    Scope (\_SB)
    {
        Name (ECOK, Zero)
        Name (SDWN, Zero)
        Mutex (MUT0, 0x00)
        Mutex (MUTX, 0x00)
    }

    Scope (\_SB.IC16)
    {
        Name (WMEN, Zero)
        Name (ECI2, ResourceTemplate ()
        {
            I2cSerialBusV2 (0x0038, ControllerInitiated, 0x00061A80,
                AddressingMode7Bit, "\\_SB.IC16",
                0x00, ResourceConsumer, , Exclusive,
                )
        })
        OperationRegion (ECFD, GenericSerialBus, Zero, 0x0200)
        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            AccessAs (BufferAcc, AttribRawBytes (0x01)), 
            TST1,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            AccessAs (BufferAcc, AttribRawBytes (0x02)), 
            TST2,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            AccessAs (BufferAcc, AttribRawBytes (0x03)), 
            TST3,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            AccessAs (BufferAcc, AttribRawBytes (0x04)), 
            TST4,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            AccessAs (BufferAcc, AttribRawBytes (0x05)), 
            TST5,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            AccessAs (BufferAcc, AttribRawBytes (0x06)), 
            TST6,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            AccessAs (BufferAcc, AttribRawBytes (0x07)), 
            TST7,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            AccessAs (BufferAcc, AttribRawBytes (0x08)), 
            TST8,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            AccessAs (BufferAcc, AttribRawBytes (0x0F)), 
            TST9,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            AccessAs (BufferAcc, AttribRawBytes (0x16)), 
            TS22,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            AccessAs (BufferAcc, AttribRawBytes (0x20)), 
            TSTC,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            AccessAs (BufferAcc, AttribRawBytes (0x23)), 
            TS35,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            AccessAs (BufferAcc, AttribRawBytes (0x40)), 
            TSTD,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            AccessAs (BufferAcc, AttribRawBytes (0xFE)), 
            TSTF,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            AccessAs (BufferAcc, AttribRawBytes (0xFF)), 
            TSTG,   8
        }

        Name (BUF0, Buffer (0x03)
        {
             0x00, 0x00, 0x00                                 // ...
        })
        CreateByteField (BUF0, Zero, BST0)
        CreateByteField (BUF0, One, BLN0)
        CreateByteField (BUF0, 0x02, D0T0)
        Name (BUF1, Buffer (0x04)
        {
             0x00, 0x00, 0x00, 0x00                           // ....
        })
        CreateByteField (BUF1, Zero, BST1)
        CreateByteField (BUF1, One, BLN1)
        CreateByteField (BUF1, 0x02, D1T0)
        CreateByteField (BUF1, 0x03, D1T1)
        Name (BUF2, Buffer (0x05)
        {
             0x00, 0x00, 0x00, 0x00, 0x00                     // .....
        })
        CreateByteField (BUF2, Zero, BST2)
        CreateByteField (BUF2, One, BLN2)
        CreateByteField (BUF2, 0x02, D2T0)
        CreateByteField (BUF2, 0x03, D2T1)
        CreateByteField (BUF2, 0x04, D2T2)
        Name (BUF3, Buffer (0x06)
        {
             0x00, 0x00, 0x00, 0x00, 0x00, 0x00               // ......
        })
        CreateByteField (BUF3, Zero, BST3)
        CreateByteField (BUF3, One, BLN3)
        CreateByteField (BUF3, 0x02, D3T0)
        CreateByteField (BUF3, 0x03, D3T1)
        CreateByteField (BUF3, 0x04, D3T2)
        CreateByteField (BUF3, 0x05, D3T3)
        Name (BUF9, Buffer (0x11)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0010 */  0x00                                             // .
        })
        CreateByteField (BUF9, Zero, BST9)
        CreateByteField (BUF9, One, BLN9)
        CreateByteField (BUF9, 0x02, D9T0)
        CreateByteField (BUF9, 0x03, D9T1)
        CreateByteField (BUF9, 0x04, D9T2)
        CreateByteField (BUF9, 0x05, D9T3)
        CreateByteField (BUF9, 0x06, D9T4)
        CreateByteField (BUF9, 0x07, D9T5)
        CreateByteField (BUF9, 0x08, D9T6)
        CreateByteField (BUF9, 0x09, D9T7)
        CreateByteField (BUF9, 0x0A, D9T8)
        CreateByteField (BUF9, 0x0B, D9T9)
        CreateByteField (BUF9, 0x0C, D9TA)
        CreateByteField (BUF9, 0x0D, D9TB)
        CreateByteField (BUF9, 0x0E, D9TC)
        CreateByteField (BUF9, 0x0F, D9TD)
        CreateByteField (BUF9, 0x10, D9TE)
        Name (BUFR, Buffer (0x18)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
        })
        CreateField (BUFR, Zero, 0x08, RSTA)
        CreateField (BUFR, 0x08, 0x08, RSIZ)
        CreateField (BUFR, 0x10, 0x08, RCMD)
        CreateField (BUFR, 0x18, 0x08, RCMS)
        CreateField (BUFR, 0x20, 0x20, RCII)
        CreateField (BUFR, 0x40, 0x80, RMGI)
        Method (ENMS, 0, NotSerialized)
        {
            Name (WBUF, Buffer (One)
            {
                 0xDB                                             // .
            })
            \_SB.IC16.ECCD (0x02, 0xB2, One, WBUF, 0x02)
        }

        Method (EXMS, 0, NotSerialized)
        {
            Name (WBUF, Buffer (One)
            {
                 0xEB                                             // .
            })
            \_SB.IC16.ECCD (0x02, 0xB2, One, WBUF, 0x02)
        }

        Method (ECCD, 5, Serialized)
        {
            Local2 = (Arg4 + 0x02)
            Local3 = (Arg4 * 0x08)
            Local4 = (Arg2 * 0x08)
            Name (IBUF, Buffer (0x0100)
            {
                 0x00                                             // .
            })
            Name (OBUF, Buffer (0x0102)
            {
                 0x00                                             // .
            })
            CreateByteField (IBUF, Zero, STAT)
            CreateByteField (IBUF, One, RESV)
            CreateByteField (IBUF, 0x02, MCMD)
            CreateByteField (IBUF, 0x03, SCMD)
            CreateByteField (IBUF, 0x04, BLEN)
            CreateField (OBUF, 0x10, Local3, DOBF)
            If ((\_SB.IC16.REDY != One))
            {
                OBUF [0x02] = 0x02
                Return (DOBF) /* \_SB_.IC16.ECCD.DOBF */
            }

            Local7 = Acquire (\_SB.IC16.MUEC, 0x03E8)
            If ((Local7 != Zero))
            {
                OBUF [0x02] = 0x03
                Return (DOBF) /* \_SB_.IC16.ECCD.DOBF */
            }

            If (((Arg2 > 0xFB) || (Arg4 > 0xFF)))
            {
                OBUF [0x02] = 0x02
                Release (\_SB.IC16.MUEC)
                Return (DOBF) /* \_SB_.IC16.ECCD.DOBF */
            }

            MCMD = Arg0
            SCMD = Arg1
            BLEN = Arg2
            If ((Arg2 > Zero))
            {
                CreateField (IBUF, 0x28, Local4, DIBF)
                DIBF = Arg3
            }
            Else
            {
                IBUF [0x05] = Arg3
            }

            If ((\_SB.IC16.REDY != One))
            {
                OBUF [0x02] = 0x02
                Release (\_SB.IC16.MUEC)
                Return (DOBF) /* \_SB_.IC16.ECCD.DOBF */
            }

            Switch (Arg2)
            {
                Case (Zero)
                {
                    TST3 = IBUF /* \_SB_.IC16.ECCD.IBUF */
                }
                Case (One)
                {
                    TST4 = IBUF /* \_SB_.IC16.ECCD.IBUF */
                }
                Case (0x02)
                {
                    TST5 = IBUF /* \_SB_.IC16.ECCD.IBUF */
                }
                Case (0x03)
                {
                    TST6 = IBUF /* \_SB_.IC16.ECCD.IBUF */
                }
                Case (0x04)
                {
                    TST7 = IBUF /* \_SB_.IC16.ECCD.IBUF */
                }
                Case (0x05)
                {
                    TST8 = IBUF /* \_SB_.IC16.ECCD.IBUF */
                }
                Default
                {
                }

            }

            Sleep (0x02)
            If ((\_SB.IC16.REDY != One))
            {
                OBUF [0x02] = 0x02
                Release (\_SB.IC16.MUEC)
                Return (DOBF) /* \_SB_.IC16.ECCD.DOBF */
            }

            Switch (Arg4)
            {
                Case (One)
                {
                    OBUF = TST1 /* \_SB_.IC16.TST1 */
                }
                Case (0x02)
                {
                    OBUF = TST2 /* \_SB_.IC16.TST2 */
                }
                Case (0x03)
                {
                    OBUF = TST3 /* \_SB_.IC16.TST3 */
                }
                Case (0x04)
                {
                    OBUF = TST4 /* \_SB_.IC16.TST4 */
                }
                Case (0x05)
                {
                    OBUF = TST5 /* \_SB_.IC16.TST5 */
                }
                Case (0x06)
                {
                    OBUF = TST6 /* \_SB_.IC16.TST6 */
                }
                Case (0x07)
                {
                    OBUF = TST7 /* \_SB_.IC16.TST7 */
                }
                Case (0x08)
                {
                    OBUF = TST8 /* \_SB_.IC16.TST8 */
                }
                Case (0x0F)
                {
                    OBUF = TST9 /* \_SB_.IC16.TST9 */
                }
                Case (0x16)
                {
                    OBUF = TS22 /* \_SB_.IC16.TS22 */
                }
                Case (0x20)
                {
                    OBUF = TSTC /* \_SB_.IC16.TSTC */
                }
                Case (0x23)
                {
                    OBUF = TS35 /* \_SB_.IC16.TS35 */
                }
                Case (0x40)
                {
                    OBUF = TSTD /* \_SB_.IC16.TSTD */
                }
                Case (0xFE)
                {
                    OBUF = TSTF /* \_SB_.IC16.TSTF */
                }
                Case (0xFF)
                {
                    OBUF = TSTG /* \_SB_.IC16.TSTG */
                }
                Default
                {
                }

            }

            Release (\_SB.IC16.MUEC)
            Return (DOBF) /* \_SB_.IC16.ECCD.DOBF */
        }

        Method (GEVT, 0, NotSerialized)
        {
            Local0 = Zero
            If ((\_SB.IC16.REDY == One))
            {
                Local7 = Acquire (\_SB.IC16.MUEC, 0x03E8)
                If ((Local7 != Zero))
                {
                    Return (Local0)
                }

                D2T0 = 0x06
                D2T1 = 0x84
                D2T2 = Zero
                If ((\_SB.IC16.REDY != One))
                {
                    Release (\_SB.IC16.MUEC)
                    Return (Local0)
                }

                TST3 = BUF2 /* \_SB_.IC16.BUF2 */
                Sleep (0x02)
                If ((\_SB.IC16.REDY != One))
                {
                    Release (\_SB.IC16.MUEC)
                    Return (Local0)
                }

                BUF3 = TST4 /* \_SB_.IC16.TST4 */
                If ((BST3 != One))
                {
                    Local0 = D3T2 /* \_SB_.IC16.D3T2 */
                }

                Release (\_SB.IC16.MUEC)
            }

            Return (Local0)
        }

        Method (INTC, 0, Serialized)
        {
            Name (LIB4, Buffer (0x04)
            {
                 0x00                                             // .
            })
            CreateByteField (LIB4, Zero, INL1)
            CreateByteField (LIB4, One, INL2)
            CreateByteField (LIB4, 0x02, INL3)
            CreateByteField (LIB4, 0x03, INL4)
            Local0 = GEVT ()
            Switch (Local0)
            {
                Case (0x21)
                {
                    If ((\_SB.IC16.REDY == One))
                    {
                        Local7 = Acquire (\_SB.IC16.MUEC, 0x03E8)
                        If ((Local7 == Zero))
                        {
                            D2T0 = 0x03
                            D2T1 = 0xD5
                            D2T2 = Zero
                            If ((\_SB.IC16.REDY != One))
                            {
                                Release (\_SB.IC16.MUEC)
                                Return (Local0)
                            }

                            TST3 = BUF2 /* \_SB_.IC16.BUF2 */
                            Sleep (0x02)
                            If ((\_SB.IC16.REDY != One))
                            {
                                Release (\_SB.IC16.MUEC)
                                Return (Local0)
                            }

                            BUFR = TS22 /* \_SB_.IC16.TS22 */
                            Release (\_SB.IC16.MUEC)
                            \_SB.UCSI.CCI = RCII /* \_SB_.IC16.RCII */
                            \_SB.UCSI.MSGI = RMGI /* \_SB_.IC16.RMGI */
                            Notify (\_SB.UCSI, 0x80) // Status Change
                        }
                    }
                }
                Case (0x22)
                {
                    Local0 = \_SB.UCS0.USBR ()
                }
                Case (0x81)
                {
                    If ((\_SB.IC16.REDY == One))
                    {
                        Name (LIB1, Buffer (One)
                        {
                             0x80                                             // .
                        })
                        LIB4 = \_SB.IC16.ECCD (0x02, 0x80, One, LIB1, 0x04)
                        INL3 &= 0x02
                        INL3 >>= One
                        \_SB.IC16.LID0.LIDB = INL3 /* \_SB_.IC16.INTC.INL3 */
                        \_SB.GPU0.LIDB = INL3 /* \_SB_.IC16.INTC.INL3 */
                        Notify (\_SB.IC16.LID0, 0x80) // Status Change
                    }
                }
                Case (0xA0)
                {
                    Notify (\_SB.ADP1, 0x80) // Status Change
                    Sleep (0x0A)
                    Notify (\_SB.BATC, 0x80) // Status Change
                }
                Case (0xA1)
                {
                    Notify (\_SB.BATC, 0x80) // Status Change
                }
                Case (0xA2)
                {
                    Notify (\_SB.BATC, 0x81) // Information Change
                }
                Case (0xA3)
                {
                    Notify (\_SB.BATC, 0x81) // Information Change
                    Sleep (0x64)
                    Notify (\_SB.BATC, 0x80) // Status Change
                }
                Case (0xB1)
                {
                    Notify (\_SB.BATC, 0x81) // Information Change
                }
                Case (0x0A)
                {
                    WMEN = 0x0281
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0x0B)
                {
                    WMEN = 0x0282
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0x0C)
                {
                    WMEN = 0x0283
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0x0D)
                {
                    WMEN = 0x0284
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0x0E)
                {
                    WMEN = 0x0285
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0x0F)
                {
                    WMEN = 0x0286
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0x10)
                {
                    WMEN = 0x0287
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0x12)
                {
                    WMEN = 0x0289
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0x13)
                {
                    WMEN = 0x028A
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0x17)
                {
                    WMEN = 0x02B5
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0x19)
                {
                    WMEN = 0x02BC
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0x20)
                {
                    WMEN = 0x02BD
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0x21)
                {
                    WMEN = 0x02C3
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0x22)
                {
                    WMEN = 0x0300
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0x23)
                {
                    WMEN = 0x0301
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0xBF)
                {
                    WMEN = 0x02B3
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0x18)
                {
                    WMEN = 0x02C0
                    Notify (\_SB.WMI1, 0xA0) // Device-Specific
                }
                Case (0xC0)
                {
                    Acquire (\_SB.IC16.MUEC, 0xFFFF)
                    D2T0 = 0x02
                    D2T1 = 0xE7
                    D2T2 = Zero
                    TST3 = BUF2 /* \_SB_.IC16.BUF2 */
                    Sleep (0x02)
                    BUF9 = TST9 /* \_SB_.IC16.TST9 */
                    Release (\_SB.IC16.MUEC)
                    If (((D9T8 == Zero) && (D9TD == Zero)))
                    {
                        \_SB.TZ31.TPSV = 0x0CA8
                        Notify (\_SB.TZ31, 0x81) // Information Change
                        \_SB.TZ32.TPSV = 0x0C62
                        Notify (\_SB.TZ32, 0x81) // Information Change
                        \_SB.TZ33.TPSV = 0x0CE4
                        Notify (\_SB.TZ33, 0x81) // Information Change
                        \_SB.TZ70.TPSV = 0x0C9E
                        Notify (\_SB.TZ70, 0x81) // Information Change
                        \_SB.TZ99.TPSV = 0x0EC4
                        Notify (\_SB.TZ99, 0x81) // Information Change
                    }

                    If (((D9T8 == One) && (D9TD == Zero)))
                    {
                        \_SB.TZ31.TPSV = 0x0CC6
                        Notify (\_SB.TZ31, 0x81) // Information Change
                        \_SB.TZ32.TPSV = 0x0CEE
                        Notify (\_SB.TZ32, 0x81) // Information Change
                        \_SB.TZ33.TPSV = 0x0D66
                        Notify (\_SB.TZ33, 0x81) // Information Change
                        \_SB.TZ70.TPSV = 0x0CE4
                        Notify (\_SB.TZ70, 0x81) // Information Change
                        \_SB.TZ99.TPSV = 0x0EC4
                        Notify (\_SB.TZ99, 0x81) // Information Change
                    }

                    If ((D9TD == One))
                    {
                        \_SB.TZ31.TPSV = 0x0C80
                        Notify (\_SB.TZ31, 0x81) // Information Change
                        \_SB.TZ32.TPSV = 0x0C62
                        Notify (\_SB.TZ32, 0x81) // Information Change
                        \_SB.TZ33.TPSV = 0x0D02
                        Notify (\_SB.TZ33, 0x81) // Information Change
                        \_SB.TZ70.TPSV = 0x0CD0
                        Notify (\_SB.TZ70, 0x81) // Information Change
                        \_SB.TZ99.TPSV = 0x0EC4
                        Notify (\_SB.TZ99, 0x81) // Information Change
                    }

                    If (((D9T8 == Zero) && (D9TD == 0x02)))
                    {
                        \_SB.TZ31.TPSV = 0x0CA8
                        Notify (\_SB.TZ31, 0x81) // Information Change
                        \_SB.TZ32.TPSV = 0x0C76
                        Notify (\_SB.TZ32, 0x81) // Information Change
                        \_SB.TZ33.TPSV = 0x0CE4
                        Notify (\_SB.TZ33, 0x81) // Information Change
                        \_SB.TZ70.TPSV = 0x0CB2
                        Notify (\_SB.TZ70, 0x81) // Information Change
                        \_SB.TZ99.TPSV = 0x0EC4
                        Notify (\_SB.TZ99, 0x81) // Information Change
                    }

                    If (((D9T8 == One) && (D9TD == 0x02)))
                    {
                        \_SB.TZ31.TPSV = 0x0CC6
                        Notify (\_SB.TZ31, 0x81) // Information Change
                        \_SB.TZ32.TPSV = 0x0CEE
                        Notify (\_SB.TZ32, 0x81) // Information Change
                        \_SB.TZ33.TPSV = 0x0D66
                        Notify (\_SB.TZ33, 0x81) // Information Change
                        \_SB.TZ70.TPSV = 0x0CE4
                        Notify (\_SB.TZ70, 0x81) // Information Change
                        \_SB.TZ99.TPSV = 0x0EC4
                        Notify (\_SB.TZ99, 0x81) // Information Change
                    }

                    If (((D9T8 == Zero) && (D9TD == 0x03)))
                    {
                        \_SB.TZ31.TPSV = 0x0CA8
                        Notify (\_SB.TZ31, 0x81) // Information Change
                        \_SB.TZ32.TPSV = 0x0C62
                        Notify (\_SB.TZ32, 0x81) // Information Change
                        \_SB.TZ33.TPSV = 0x0CD0
                        Notify (\_SB.TZ33, 0x81) // Information Change
                        \_SB.TZ70.TPSV = 0x0CB2
                        Notify (\_SB.TZ70, 0x81) // Information Change
                        \_SB.TZ99.TPSV = 0x0EC4
                        Notify (\_SB.TZ99, 0x81) // Information Change
                    }

                    If (((D9T8 == One) && (D9TD == 0x03)))
                    {
                        \_SB.TZ31.TPSV = 0x0CC6
                        Notify (\_SB.TZ31, 0x81) // Information Change
                        \_SB.TZ32.TPSV = 0x0CC6
                        Notify (\_SB.TZ32, 0x81) // Information Change
                        \_SB.TZ33.TPSV = 0x0D66
                        Notify (\_SB.TZ33, 0x81) // Information Change
                        \_SB.TZ70.TPSV = 0x0CE4
                        Notify (\_SB.TZ70, 0x81) // Information Change
                        \_SB.TZ99.TPSV = 0x0EC4
                        Notify (\_SB.TZ99, 0x81) // Information Change
                    }

                    If (((D9T8 == Zero) && (D9TD == 0x04)))
                    {
                        \_SB.TZ33.TPSV = 0x0C62
                        Notify (\_SB.TZ33, 0x81) // Information Change
                        \_SB.TZ99.TPSV = 0x0C80
                        Notify (\_SB.TZ99, 0x81) // Information Change
                    }

                    If (((D9T8 == One) && (D9TD == 0x04)))
                    {
                        \_SB.TZ33.TPSV = 0x0D2A
                        Notify (\_SB.TZ33, 0x81) // Information Change
                        \_SB.TZ99.TPSV = 0x0EC4
                        Notify (\_SB.TZ99, 0x81) // Information Change
                    }

                    If ((D9TE == Zero))
                    {
                        \_SB.TZ34.TPSV = 0x0D20
                        Notify (\_SB.TZ34, 0x81) // Information Change
                    }

                    If ((D9TE == One))
                    {
                        \_SB.TZ34.TPSV = 0x0AF0
                        Notify (\_SB.TZ34, 0x81) // Information Change
                    }

                    If ((D9TE == 0x02))
                    {
                        \_SB.TZ34.TPSV = 0x0AF0
                        Notify (\_SB.TZ34, 0x81) // Information Change
                    }

                    If ((D9TE == 0x03))
                    {
                        \_SB.TZ34.TPSV = 0x0AF0
                        Notify (\_SB.TZ34, 0x81) // Information Change
                    }
                }
                Default
                {
                }

            }

            Return (One)
        }
    }

    Scope (\_SB.GIO0)
    {
        Method (_EVT, 1, Serialized)  // _EVT: Event
        {
            Switch (Arg0)
            {
                Case (0x02C0)
                {
                    \_SB.IC16.INTC ()
                }

            }
        }
    }

    Scope (\_SB)
    {
        Method (MEGD, 2, Serialized)
        {
            Local1 = Zero
            Local1 = Arg0
            Local1 <<= 0x08
            Local1 |= Arg1
            Return (Local1)
        }

        OperationRegion (G41, SystemMemory, 0x0F129000, 0x18)
        Field (G41, DWordAcc, NoLock, Preserve)
        {
            PO01,   32, 
            PO02,   32, 
            PO03,   32, 
            PO04,   32, 
            PO05,   32, 
            PO06,   32
        }

        Device (BATC)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BCCE, One)
            Name (OTGS, Zero)
            Name (HSMD, Zero)
            Name (CHPR, One)
            Name (FGDV, 0x0A)
            Name (BCCC, 0x46)
            Name (BCIL, 0x65)
            Name (BCVF, 0x93)
            Name (BCFV, 0xED)
            Name (BCCH, 0x38)
            Name (BCST, 0x05)
            Name (BCPE, 0x74)
            Name (RECT, Zero)
            Name (BCCL, 0xFFFFFFFF)
            Name (SRNM, "123456789")
            Name (BCLP, 0x0FB8)
            Name (DSCP, 0x1045)
            Name (DSVO, 0x2D3C)
            Name (BTPC, Zero)
            Name (AVCU, Zero)
            Name (DCPS, Zero)
            Name (CTMP, 0x1E)
            Name (MPPP, 0xFF)
            Name (CMFG, One)
            Name (BAFG, One)
            Name (IBF1, Buffer (One)
            {
                 0x00                                             // .
            })
            Name (BUF1, Buffer (0x04)
            {
                 0x00                                             // .
            })
            CreateByteField (BUF1, Zero, STA1)
            CreateByteField (BUF1, One, BF1L)
            CreateByteField (BUF1, 0x02, MFLN)
            CreateByteField (BUF1, 0x03, MBUF)
            Name (BUFM, Buffer (0x10)
            {
                 0x00                                             // .
            })
            Name (BTTA, Buffer (0x0100)
            {
                 0x00                                             // .
            })
            Name (IBF2, Buffer (One)
            {
                 0x00                                             // .
            })
            Name (BUF2, Buffer (0x04)
            {
                 0x00                                             // .
            })
            CreateByteField (BUF2, Zero, STA2)
            CreateByteField (BUF2, One, BF2L)
            CreateByteField (BUF2, 0x02, BF2D)
            CreateByteField (BUF2, 0x03, BF2G)
            Name (IBF3, Buffer (One)
            {
                 0x00                                             // .
            })
            Name (BUF3, Buffer (0x04)
            {
                 0x00                                             // .
            })
            CreateByteField (BUF3, Zero, STA3)
            CreateByteField (BUF3, One, BF3L)
            CreateByteField (BUF3, 0x02, BF3D)
            CreateByteField (BUF3, 0x03, BF3G)
            Name (IBF4, Buffer (One)
            {
                 0x00                                             // .
            })
            Name (BUF4, Buffer (0x04)
            {
                 0x00                                             // .
            })
            CreateByteField (BUF4, Zero, STA4)
            CreateByteField (BUF4, One, BF4L)
            CreateByteField (BUF4, 0x02, B4D0)
            CreateByteField (BUF4, 0x03, B4D1)
            Name (BTB0, Buffer (0x03)
            {
                 0x00, 0x00, 0x00                                 // ...
            })
            CreateByteField (BTB0, Zero, BTS0)
            CreateByteField (BTB0, One, BTL0)
            CreateByteField (BTB0, 0x02, B0D0)
            Name (BTB1, Buffer (0x22)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0020 */  0x00, 0x00                                       // ..
            })
            CreateByteField (BTB1, Zero, BTS1)
            CreateByteField (BTB1, One, BTL1)
            CreateByteField (BTB1, 0x02, B1T0)
            Name (BTB2, Buffer (0x03)
            {
                 0x00, 0x00, 0x00                                 // ...
            })
            CreateByteField (BTB2, Zero, BTS2)
            CreateByteField (BTB2, One, BTL2)
            CreateByteField (BTB2, 0x02, B2D0)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.IC16, 
                \_SB.PMIC
            })
            Name (BIXP, Package (0x14)
            {
                One, 
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                0x0A, 
                0x02, 
                Zero, 
                0x00017318, 
                0x61A8, 
                0x3A98, 
                0x88B8, 
                0x61A8, 
                One, 
                One, 
                "HB30C4J7ECW-21", 
                "123456789", 
                "LION", 
                "HUAWEI"
            })
            Name (BSTP, Package (0x04)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
            {
                Acquire (\_SB.MUTX, 0xFFFF)
                If ((\_SB.IC16.REDY == One))
                {
                    Acquire (\_SB.MUT0, 0xFFFF)
                    If ((CMFG == One))
                    {
                        Local0 = One
                        Local1 = Zero
                        While ((Local0 < 0x10))
                        {
                            IBF1 = Local0
                            BUF1 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF1, 0x04)
                            If ((STA1 == Zero))
                            {
                                BUFM [Local1] = DerefOf (BUF1 [0x02])
                            }

                            Local0++
                            Local1++
                        }

                        BIXP [0x13] = ToString (BUFM, Ones)
                        CMFG = 0x02
                    }

                    If ((BAFG == One))
                    {
                        BTTA = BATN /* \BATN */
                        BIXP [0x10] = ToString (BTTA, Ones)
                        BAFG = 0x02
                    }

                    IBF2 = 0xA6
                    BUF2 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF2, 0x04)
                    Sleep (0x02)
                    IBF3 = 0xA7
                    BUF3 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF3, 0x04)
                    If (((STA2 == Zero) && (STA3 == Zero)))
                    {
                        ToDecimalString (MEGD (BF3D, BF2D), SRNM) /* \_SB_.BATC.SRNM */
                    }

                    IBF2 = 0xA2
                    BUF2 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF2, 0x04)
                    Sleep (0x02)
                    IBF3 = 0xA3
                    BUF3 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF3, 0x04)
                    If (((STA2 == Zero) && (STA3 == Zero)))
                    {
                        Local1 = Zero
                        Local1 = MEGD (BF3D, BF2D)
                        Local1 &= 0xFFFFFFFF
                        DSCP = Local1
                    }

                    IBF2 = 0xA4
                    BUF2 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF2, 0x04)
                    Sleep (0x02)
                    IBF3 = 0xA5
                    BUF3 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF3, 0x04)
                    If (((STA2 == Zero) && (STA3 == Zero)))
                    {
                        Local1 = Zero
                        Local1 = MEGD (BF3D, BF2D)
                        Local1 &= 0xFFFFFFFF
                        DSVO = Local1
                    }

                    IBF2 = 0x96
                    BUF2 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF2, 0x04)
                    Sleep (0x02)
                    IBF3 = 0x97
                    BUF3 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF3, 0x04)
                    If (((STA2 == Zero) && (STA3 == Zero)))
                    {
                        Local1 = Zero
                        Local1 = MEGD (BF3D, BF2D)
                        Local1 &= 0xFFFFFFFF
                        BCLP = Local1
                    }

                    IBF2 = 0xAA
                    BUF2 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF2, 0x04)
                    Sleep (0x02)
                    IBF3 = 0xAB
                    BUF3 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF3, 0x04)
                    If (((STA2 == Zero) && (STA3 == Zero)))
                    {
                        Local1 = Zero
                        Local1 = MEGD (BF3D, BF2D)
                        Local1 &= 0xFFFFFFFF
                        BCCL = Local1
                    }

                    Release (\_SB.MUT0)
                }

                BIXP [0x02] = DSCP /* \_SB_.BATC.DSCP */
                BIXP [0x03] = BCLP /* \_SB_.BATC.BCLP */
                BIXP [0x05] = DSVO /* \_SB_.BATC.DSVO */
                Local1 = ((DSCP * 0x08) / 0x64)
                BIXP [0x06] = Local1
                Local1 = ((DSCP * 0x03) / 0x64)
                BIXP [0x07] = Local1
                BIXP [0x08] = BCCL /* \_SB_.BATC.BCCL */
                BIXP [0x11] = SRNM /* \_SB_.BATC.SRNM */
                Release (\_SB.MUTX)
                Return (BIXP) /* \_SB_.BATC.BIXP */
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Acquire (\_SB.MUTX, 0xFFFF)
                If ((\_SB.IC16.REDY == One))
                {
                    Acquire (\_SB.MUT0, 0xFFFF)
                    IBF2 = 0x82
                    BUF2 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF2, 0x04)
                    If ((STA2 == Zero))
                    {
                        Local1 = Zero
                        Local1 = (BF2D & 0xFF)
                        BSTP [Zero] = Local1
                    }

                    IBF2 = 0x92
                    BUF2 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF2, 0x04)
                    Sleep (0x02)
                    IBF3 = 0x93
                    BUF3 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF3, 0x04)
                    If (((STA2 == Zero) && (STA3 == Zero)))
                    {
                        Local1 = Zero
                        Local1 = MEGD (BF3D, BF2D)
                        Local1 &= 0xFFFFFFFF
                        BSTP [0x03] = Local1
                    }

                    IBF2 = 0x9A
                    BUF2 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF2, 0x04)
                    Sleep (0x02)
                    IBF3 = 0x9B
                    BUF3 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF3, 0x04)
                    If (((STA2 == Zero) && (STA3 == Zero)))
                    {
                        Local1 = Zero
                        Local1 = MEGD (BF3D, BF2D)
                        Local1 &= 0xFFFF
                        Local2 = (Local1 & 0x8000)
                        If ((Local2 == 0x8000))
                        {
                            If ((Local1 == 0xFFFF))
                            {
                                BSTP [One] = 0xFFFFFFFF
                            }
                            Else
                            {
                                Local3 = ~Local1
                                Local3 &= 0xFFFF
                                Local3++
                                Local4 = (Local3 & 0xFFFFFFFF)
                                BSTP [One] = Local4
                            }
                        }
                        Else
                        {
                            BSTP [One] = Local1
                        }
                    }

                    IBF2 = 0x94
                    BUF2 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF2, 0x04)
                    Sleep (0x02)
                    IBF3 = 0x95
                    BUF3 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF3, 0x04)
                    If (((STA2 == Zero) && (STA3 == Zero)))
                    {
                        Local1 = Zero
                        Local1 = MEGD (BF3D, BF2D)
                        Local1 &= 0xFFFFFFFF
                        BSTP [0x02] = Local1
                    }

                    Release (\_SB.MUT0)
                }

                Release (\_SB.MUTX)
                Return (BSTP) /* \_SB_.BATC.BSTP */
            }

            Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
            {
            }

            Method (_BTM, 1, NotSerialized)  // _BTM: Battery Time
            {
                Return (0xFFFFFFFF)
            }

            Method (_BCT, 1, NotSerialized)  // _BCT: Battery Charge Time
            {
                Return (0xFFFFFFFF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Acquire (\_SB.MUTX, 0xFFFF)
                If ((\_SB.IC16.REDY == One))
                {
                    Acquire (\_SB.MUT0, 0xFFFF)
                    If ((PO02 == Zero))
                    {
                        SDWN = Zero
                        PO02 = 0x02
                        IBF2 = 0x90
                        \_SB.IC16.ECCD (0x02, 0xB2, One, IBF2, 0x02)
                    }

                    Sleep (One)
                    IBF2 = 0x81
                    BUF2 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF2, 0x03)
                    If ((STA2 == Zero))
                    {
                        Local1 = Zero
                        Local1 = (BF2D & 0x02)
                        If ((Local1 == 0x02))
                        {
                            Release (\_SB.MUT0)
                            Release (\_SB.MUTX)
                            Return (0x1F)
                        }
                        Else
                        {
                            Release (\_SB.MUT0)
                            Release (\_SB.MUTX)
                            Return (0x0F)
                        }
                    }

                    Release (\_SB.MUT0)
                }

                Release (\_SB.MUTX)
                Return (0x0F)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (\_SB)
            }

            Method (PSRC, 0, NotSerialized)
            {
                Acquire (\_SB.MUTX, 0xFFFF)
                If ((\_SB.IC16.REDY == One))
                {
                    Acquire (\_SB.MUT0, 0xFFFF)
                    IBF2 = 0x81
                    BUF2 = \_SB.IC16.ECCD (0x02, 0x80, One, IBF2, 0x03)
                    If ((STA2 == Zero))
                    {
                        Local1 = Zero
                        Local1 = (BF2D & One)
                        If ((Local1 == One))
                        {
                            Local1 = One
                        }
                        Else
                        {
                            Local1 = 0x02
                        }
                    }

                    Release (\_SB.MUT0)
                    Release (\_SB.MUTX)
                    Return (Local1)
                }

                Release (\_SB.MUTX)
                Return (One)
            }
        }

        Device (ADP1)
        {
            Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                If (CondRefOf (\_SB.BATC, Local1))
                {
                    Local0 = \_SB.BATC.PSRC ()
                    If ((Local0 == 0x02))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (One)
                    }
                }

                Return (One)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (\_SB)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (\_SB)
    {
        OperationRegion (G173, SystemMemory, 0x0F1AD000, 0x18)
        Field (G173, DWordAcc, NoLock, Preserve)
        {
            GA01,   32, 
            GA02,   32, 
            GA03,   32, 
            GA04,   32, 
            GA05,   32, 
            GA06,   32
        }
    }

    Scope (\_SB.IC16)
    {
        Device (LID0)
        {
            Name (_HID, "PNP0C0D" /* Lid Device */)  // _HID: Hardware ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.GIO0
            })
            Name (LIDB, One)
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                Return (LIDB) /* \_SB_.IC16.LID0.LIDB */
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                Name (TEMP, Zero)
                SDWN = Zero
                TEMP = GA02 /* \_SB_.GA02 */
                GA02 = (TEMP | 0x02)
                If (\_SB.GIO0.GABL)
                {
                    LIDB = One
                    Notify (\_SB.IC16.LID0, 0x80) // Status Change
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Name (TEMP, Zero)
                TEMP = GA02 /* \_SB_.GA02 */
                GA02 = (TEMP & 0xFD)
                If (\_SB.GIO0.GABL)
                {
                    LIDB = Zero
                    Notify (\_SB.IC16.LID0, 0x80) // Status Change
                }
            }
        }
    }

    Scope (\_SB)
    {
        Device (BTTN)
        {
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return ("ID9001")
            }

            Name (_CID, "PNP0C60" /* Display Sensor Device */)  // _CID: Compatible ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                GpioInt (Edge, ActiveBoth, Exclusive, PullNone, 0x0000,
                    "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x001A
                    }
            })
        }
    }

    Scope (\_SB)
    {
        Device (HWWD)
        {
            Name (_HID, EisaId ("WDT0001"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (TIME, Zero)
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.IC16
            })
            Method (GFUC, 0, Serialized)
            {
                Return (0x06)
            }

            Method (OWDT, 0, Serialized)
            {
                Name (WDT1, Buffer (0x03)
                {
                     0x00                                             // .
                })
                WDT1 [Zero] = One
                \_SB.IC16.ECCD (0x02, 0x56, 0x03, WDT1, 0x02)
                Return (0xFF01)
            }

            Method (CWDT, 0, Serialized)
            {
                Name (WDT2, Buffer (0x03)
                {
                     0x00                                             // .
                })
                WDT2 [Zero] = 0x03
                \_SB.IC16.ECCD (0x02, 0x56, 0x03, WDT2, 0x02)
                Return (0xFF02)
            }

            Method (SWDT, 1, Serialized)
            {
                TIME = Arg0
                Name (WDT3, Buffer (0x03)
                {
                     0x00                                             // .
                })
                WDT3 [Zero] = 0x04
                WDT3 [One] = (Arg0 >> 0x08)
                WDT3 [0x02] = (Arg0 & 0xFF)
                \_SB.IC16.ECCD (0x02, 0x56, 0x03, WDT3, 0x02)
                Return (Arg0)
            }

            Method (FWDT, 1, Serialized)
            {
                If ((TIME == Zero))
                {
                    Return (0xFF04)
                }

                Name (WDT4, Buffer (0x03){})
                WDT4 [Zero] = 0x04
                WDT4 [One] = (TIME >> 0x08)
                WDT4 [0x02] = (TIME & 0xFF)
                \_SB.IC16.ECCD (0x02, 0x56, 0x03, WDT4, 0x02)
                Return (0xFF04)
            }

            Method (SSMI, 0, NotSerialized)
            {
                Return (0xFF05)
            }

            Method (SSXS, 1, Serialized)
            {
                Name (WDT5, Buffer (0x02)
                {
                     0x00                                             // .
                })
                Sleep (0x02)
                WDT5 [Zero] = One
                WDT5 [One] = Arg0
                \_SB.IC16.ECCD (0x02, 0xA3, 0x02, WDT5, 0x02)
                Return (0xFF06)
            }

            Method (GSXS, 0, Serialized)
            {
                Name (WDT6, Buffer (0x02)
                {
                     0x00                                             // .
                })
                Name (WDBF, Buffer (0x04)
                {
                     0x00                                             // .
                })
                Local0 = Zero
                WDT6 [Zero] = 0x02
                WDT6 [One] = Zero
                WDBF = \_SB.IC16.ECCD (0x02, 0xA3, 0x02, WDT6, 0x04)
                If ((DerefOf (WDBF [Zero]) == Zero))
                {
                    Local0 = DerefOf (WDBF [0x02])
                }

                Return (Local0)
            }
        }
    }

    Scope (\_SB)
    {
        Mutex (MUTW, 0x00)
        Device (WMI1)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, "HWMI")  // _UID: Unique ID
            Name (_WDG, Buffer (0x3C)
            {
                /* 0000 */  0x5B, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,  // [.......
                /* 0008 */  0xA0, 0x00, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,  // ....)...
                /* 0010 */  0x41, 0x41, 0x01, 0x02, 0x5C, 0x0F, 0xBC, 0xAB,  // AA..\...
                /* 0018 */  0xA1, 0x8E, 0xD1, 0x11, 0xA0, 0x00, 0xC9, 0x06,  // ........
                /* 0020 */  0x29, 0x10, 0x00, 0x00, 0xA0, 0x00, 0x01, 0x08,  // ).......
                /* 0028 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  // !...f...
                /* 0030 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  // ......).
                /* 0038 */  0x42, 0x41, 0x01, 0x00                           // BA..
            })
            Name (WQBA, Buffer (0x03EE)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0xDE, 0x03, 0x00, 0x00, 0x38, 0x0C, 0x00, 0x00,  // ....8...
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x18, 0xD3, 0x85, 0x00, 0x01, 0x06, 0x18, 0x42,  // .......B
                /* 0020 */  0x10, 0x05, 0x10, 0x92, 0xE5, 0x81, 0x42, 0x04,  // ......B.
                /* 0028 */  0x8A, 0x40, 0x24, 0x69, 0x0E, 0x60, 0x30, 0x1A,  // .@$i.`0.
                /* 0030 */  0x40, 0x24, 0x09, 0x42, 0xBC, 0x22, 0x20, 0x42,  // @$.B." B
                /* 0038 */  0x20, 0x24, 0x51, 0x80, 0x79, 0x01, 0xBA, 0x05,  //  $Q.y...
                /* 0040 */  0x18, 0x16, 0x60, 0x5B, 0x80, 0x69, 0x01, 0x8E,  // ..`[.i..
                /* 0048 */  0x81, 0xD4, 0xBF, 0x3F, 0xB4, 0x40, 0x24, 0x02,  // ...?.@$.
                /* 0050 */  0x92, 0x4A, 0x81, 0x90, 0x50, 0x01, 0xCA, 0x05,  // .J..P...
                /* 0058 */  0xF8, 0x16, 0xA0, 0x1D, 0x51, 0x92, 0x05, 0x58,  // ....Q..X
                /* 0060 */  0x86, 0x11, 0x81, 0xBD, 0x0A, 0xB0, 0x29, 0xC0,  // ......).
                /* 0068 */  0x24, 0x1A, 0x82, 0xA0, 0x9C, 0x61, 0xA0, 0xE0,  // $....a..
                /* 0070 */  0x0D, 0xC8, 0x06, 0xC1, 0x44, 0x0F, 0x02, 0x25,  // ....D..%
                /* 0078 */  0x66, 0x34, 0x64, 0x06, 0x9D, 0xCF, 0x45, 0xF0,  // f4d...E.
                /* 0080 */  0x27, 0x51, 0xB8, 0x00, 0xE9, 0x18, 0x1A, 0xC1,  // 'Q......
                /* 0088 */  0x11, 0x25, 0xE8, 0x70, 0x48, 0x92, 0x8D, 0x20,  // .%.pH.. 
                /* 0090 */  0x41, 0x02, 0x14, 0xC2, 0xCB, 0xA7, 0x00, 0xA7,  // A.......
                /* 0098 */  0x28, 0xD2, 0x28, 0xC0, 0x3A, 0x9C, 0x60, 0x63,  // (.(.:.`c
                /* 00A0 */  0x72, 0xA4, 0x28, 0x07, 0x71, 0x36, 0x06, 0xEB,  // r.(.q6..
                /* 00A8 */  0x19, 0x45, 0x40, 0xA7, 0xC2, 0x09, 0xA2, 0x1F,  // .E@.....
                /* 00B0 */  0x0A, 0x46, 0x06, 0x84, 0x3C, 0x0A, 0xB0, 0x8A,  // .F..<...
                /* 00B8 */  0xA6, 0xB9, 0x24, 0xB0, 0x7B, 0x01, 0x06, 0x67,  // ..$.{..g
                /* 00C0 */  0x21, 0x84, 0x23, 0x29, 0x4C, 0x80, 0x66, 0x01,  // !.#)L.f.
                /* 00C8 */  0xD6, 0x04, 0x28, 0x16, 0x60, 0x4B, 0x80, 0xB8,  // ..(.`K..
                /* 00D0 */  0x21, 0x69, 0x32, 0x8D, 0xA1, 0x08, 0x22, 0xC2,  // !i2...".
                /* 00D8 */  0x71, 0x46, 0x31, 0x66, 0xC0, 0x08, 0x46, 0x39,  // qF1f..F9
                /* 00E0 */  0x9A, 0xE6, 0x40, 0xA4, 0x4D, 0x80, 0x32, 0x10,  // ..@.M.2.
                /* 00E8 */  0xA1, 0xC5, 0x62, 0x08, 0xB6, 0x3F, 0x08, 0x32,  // ..b..?.2
                /* 00F0 */  0x72, 0xDC, 0x11, 0xC0, 0xE3, 0x39, 0xA9, 0xC8,  // r....9..
                /* 00F8 */  0x07, 0xE8, 0x51, 0x24, 0xF0, 0xA8, 0xCE, 0xAF,  // ..Q$....
                /* 0100 */  0x5C, 0x5C, 0x89, 0x47, 0x15, 0xC6, 0x09, 0x24,  // \\.G...$
                /* 0108 */  0x70, 0xB0, 0x13, 0x81, 0x24, 0x80, 0x28, 0x12,  // p...$.(.
                /* 0110 */  0x3C, 0x6A, 0xE0, 0x09, 0x8E, 0xDF, 0x43, 0x3B,  // <j....C;
                /* 0118 */  0xCE, 0xA3, 0x3E, 0xCE, 0x13, 0x38, 0x57, 0x8F,  // ..>..8W.
                /* 0120 */  0xA0, 0xCE, 0x53, 0x01, 0x19, 0x03, 0xC3, 0x4A,  // ..S....J
                /* 0128 */  0xF0, 0x87, 0xE0, 0x93, 0x00, 0xDE, 0x35, 0xA0,  // ......5.
                /* 0130 */  0xFE, 0xFF, 0xF7, 0x83, 0x27, 0x01, 0x36, 0xE4,  // ....'.6.
                /* 0138 */  0x70, 0x98, 0xF1, 0x7A, 0xE2, 0xC7, 0xE9, 0x51,  // p..z...Q
                /* 0140 */  0x1E, 0x09, 0x83, 0x38, 0xA2, 0x83, 0xC3, 0x0E,  // ...8....
                /* 0148 */  0xF9, 0x64, 0x8E, 0xAC, 0x54, 0x01, 0x66, 0x4F,  // .d..T.fO
                /* 0150 */  0x08, 0xB2, 0x08, 0xA4, 0xF1, 0xF8, 0x50, 0xE0,  // ......P.
                /* 0158 */  0xF9, 0xBC, 0x05, 0x24, 0xB0, 0xFC, 0x41, 0xA0,  // ...$..A.
                /* 0160 */  0x46, 0x66, 0x68, 0x8F, 0xFB, 0x91, 0x80, 0x1D,  // Ffh.....
                /* 0168 */  0x16, 0x0E, 0x8B, 0x89, 0x3D, 0x4C, 0xD0, 0xF1,  // ....=L..
                /* 0170 */  0x80, 0xFF, 0x56, 0x70, 0xFC, 0x11, 0x4E, 0xDF,  // ..Vp..N.
                /* 0178 */  0xF3, 0x35, 0x41, 0x81, 0xC0, 0xE8, 0x01, 0xD9,  // .5A.....
                /* 0180 */  0xAF, 0x00, 0x84, 0xE0, 0x65, 0x8E, 0x48, 0xC7,  // ....e.H.
                /* 0188 */  0x80, 0x08, 0x09, 0xDE, 0x1B, 0xE2, 0x1E, 0xF8,  // ........
                /* 0190 */  0xF3, 0x02, 0x83, 0x08, 0xF3, 0xD6, 0xE0, 0x11,  // ........
                /* 0198 */  0x1C, 0x0D, 0x13, 0x79, 0x98, 0x40, 0x0F, 0x80,  // ...y.@..
                /* 01A0 */  0x9F, 0x02, 0xE2, 0x87, 0x3D, 0x99, 0x03, 0x38,  // ....=..8
                /* 01A8 */  0x9C, 0x28, 0xE7, 0x70, 0x3C, 0xBE, 0x42, 0x18,  // .(.p<.B.
                /* 01B0 */  0x21, 0xFE, 0xB3, 0xC1, 0x73, 0x86, 0xAF, 0x0D,  // !...s...
                /* 01B8 */  0x27, 0xF4, 0x18, 0x71, 0x4A, 0x2F, 0x03, 0x26,  // '..qJ/.&
                /* 01C0 */  0x18, 0xF9, 0x35, 0xA0, 0x53, 0x88, 0xE3, 0x82,  // ..5.S...
                /* 01C8 */  0xC8, 0xC6, 0x4A, 0x7D, 0xE8, 0xA0, 0x71, 0x57,  // ..J}..qW
                /* 01D0 */  0xAB, 0x01, 0xE1, 0xB0, 0x9F, 0x2C, 0x4C, 0x30,  // .....,L0
                /* 01D8 */  0x24, 0x98, 0x4E, 0x24, 0x3C, 0x1E, 0x85, 0x44,  // $.N$<..D
                /* 01E0 */  0xD0, 0x68, 0x3C, 0x06, 0x77, 0xEC, 0x83, 0x09,  // .h<.w...
                /* 01E8 */  0x05, 0x31, 0xA0, 0x33, 0x41, 0xC8, 0xC8, 0x28,  // .1.3A..(
                /* 01F0 */  0xE8, 0x41, 0x80, 0xCF, 0xE0, 0xA5, 0xE2, 0x91,  // .A......
                /* 01F8 */  0xC1, 0xA7, 0x8E, 0x28, 0x27, 0xE4, 0x04, 0x10,  // ...('...
                /* 0200 */  0x3A, 0x3C, 0x78, 0x84, 0x3E, 0x08, 0xF0, 0x13,  // :<x.>...
                /* 0208 */  0x8A, 0x6F, 0x06, 0xC6, 0xF6, 0xA1, 0xC1, 0xFF,  // .o......
                /* 0210 */  0xFF, 0x7F, 0x0A, 0x1D, 0x2C, 0x19, 0xD3, 0x59,  // ....,..Y
                /* 0218 */  0x3E, 0x15, 0xF8, 0x00, 0x60, 0x35, 0x70, 0x28,  // >...`5p(
                /* 0220 */  0x68, 0x1F, 0x39, 0xF8, 0xBD, 0x45, 0x77, 0x02,  // h.9..Ew.
                /* 0228 */  0xE8, 0xE3, 0x39, 0x10, 0x0F, 0xE8, 0x98, 0x12,  // ..9.....
                /* 0230 */  0xD4, 0x77, 0x25, 0x00, 0x05, 0x90, 0x0F, 0x01,  // .w%.....
                /* 0238 */  0x56, 0x7A, 0x0F, 0xA0, 0x53, 0x08, 0x11, 0x26,  // Vz..S..&
                /* 0240 */  0x9A, 0xD1, 0xF9, 0x71, 0xC3, 0x43, 0xE6, 0x51,  // ...q.C.Q
                /* 0248 */  0x60, 0x34, 0x64, 0x83, 0x78, 0x60, 0x8E, 0x03,  // `4d.x`..
                /* 0250 */  0x21, 0x27, 0x47, 0x09, 0xD4, 0x58, 0x3D, 0xA1,  // !'G..X=.
                /* 0258 */  0xCE, 0x6E, 0x23, 0x1A, 0xC1, 0x9B, 0x8B, 0x0F,  // .n#.....
                /* 0260 */  0x06, 0xEF, 0x12, 0x3E, 0x26, 0xB0, 0x61, 0x3F,  // ...>&.a?
                /* 0268 */  0x72, 0xC0, 0x3A, 0xB3, 0x78, 0xF0, 0x9E, 0x88,  // r.:.x...
                /* 0270 */  0x47, 0x8D, 0x1F, 0x2E, 0x1F, 0x8D, 0x8F, 0x14,  // G.......
                /* 0278 */  0xF0, 0xA7, 0xCB, 0xE7, 0xE3, 0xE1, 0x91, 0x93,  // ........
                /* 0280 */  0x01, 0xFA, 0xBC, 0xE0, 0x93, 0x81, 0xCF, 0x0B,  // ........
                /* 0288 */  0x07, 0xE3, 0x9B, 0x01, 0x27, 0x18, 0xE2, 0x68,  // ....'..h
                /* 0290 */  0x40, 0x87, 0x05, 0xAE, 0xB3, 0x01, 0x5F, 0x96,  // @....._.
                /* 0298 */  0x47, 0x07, 0xEF, 0x8C, 0x44, 0x46, 0x07, 0xFD,  // G...DF..
                /* 02A0 */  0xFF, 0x7F, 0x37, 0xC0, 0x1D, 0x3F, 0xC0, 0x71,  // ..7..?.q
                /* 02A8 */  0x37, 0x80, 0x09, 0x8F, 0x39, 0x59, 0xD8, 0xC2,  // 7...9Y..
                /* 02B0 */  0x78, 0xE8, 0xB0, 0xF8, 0xB1, 0xC0, 0x77, 0x8D,  // x.....w.
                /* 02B8 */  0x37, 0x27, 0xDF, 0x45, 0x70, 0x63, 0x7A, 0x2D,  // 7'.Epcz-
                /* 02C0 */  0xF0, 0x39, 0xC0, 0xB0, 0x1E, 0x2F, 0x87, 0x35,  // .9.../.5
                /* 02C8 */  0x5A, 0xD8, 0x13, 0x7F, 0x4A, 0xF1, 0x0D, 0xC7,  // Z...J...
                /* 02D0 */  0x13, 0xF3, 0x0D, 0x81, 0x9D, 0x6D, 0xC0, 0x01,  // .....m..
                /* 02D8 */  0x88, 0xF7, 0x7E, 0xAD, 0x21, 0x13, 0x30, 0x20,  // ..~.!.0 
                /* 02E0 */  0x9B, 0xE3, 0x43, 0x14, 0x58, 0x8E, 0x06, 0xC7,  // ..C.X...
                /* 02E8 */  0x79, 0x6E, 0x2F, 0x4E, 0xFC, 0x0C, 0x05, 0x83,  // yn/N....
                /* 02F0 */  0xC0, 0x31, 0x9E, 0x07, 0x06, 0xF1, 0x0A, 0x25,  // .1.....%
                /* 02F8 */  0x1C, 0x06, 0x75, 0xF6, 0x02, 0xDE, 0x27, 0x0D,  // ..u...'.
                /* 0300 */  0x8F, 0x13, 0x1C, 0xD3, 0x7C, 0xEC, 0x30, 0xCA,  // ....|.0.
                /* 0308 */  0xFF, 0x3F, 0xD2, 0x61, 0xBE, 0x1C, 0x45, 0xF1,  // .?.a..E.
                /* 0310 */  0x5C, 0x3C, 0xAE, 0x47, 0x01, 0x06, 0x75, 0xF4,  // \<.G..u.
                /* 0318 */  0x2F, 0x06, 0xB1, 0x8C, 0x72, 0x6E, 0xB1, 0x0E,  // /...rn..
                /* 0320 */  0x20, 0xCE, 0xA3, 0x83, 0x91, 0x02, 0x05, 0x39,  //  ......9
                /* 0328 */  0x88, 0x18, 0x81, 0x7C, 0xAE, 0xF0, 0xE9, 0x0B,  // ...|....
                /* 0330 */  0x5C, 0x33, 0x78, 0xFA, 0x02, 0xC6, 0x91, 0x5F,  // \3x...._
                /* 0338 */  0x1C, 0x3A, 0x13, 0xF8, 0xF4, 0x05, 0xF0, 0xE2,  // .:......
                /* 0340 */  0xFF, 0x7F, 0xFA, 0xE2, 0xD1, 0x8F, 0x40, 0xE8,  // ......@.
                /* 0348 */  0x51, 0xF8, 0xB0, 0x11, 0xF1, 0x30, 0x4E, 0xDB,  // Q....0N.
                /* 0350 */  0x04, 0xA3, 0x0E, 0x9A, 0x8A, 0x3A, 0xA5, 0xA0,  // .....:..
                /* 0358 */  0x0E, 0x17, 0x3E, 0xA5, 0xB0, 0xC3, 0xC2, 0xEB,  // ..>.....
                /* 0360 */  0x83, 0x21, 0x1E, 0x52, 0x30, 0x07, 0x00, 0x1F,  // .!.R0...
                /* 0368 */  0x29, 0xC0, 0x31, 0x12, 0xCC, 0x69, 0xC2, 0xA7,  // ).1..i..
                /* 0370 */  0x08, 0x9F, 0x0A, 0x7D, 0x9F, 0xF0, 0xC9, 0xC3,  // ...}....
                /* 0378 */  0x30, 0x46, 0x32, 0x9E, 0x8F, 0x14, 0x78, 0xC8,  // 0F2...x.
                /* 0380 */  0x40, 0xAF, 0x14, 0xB8, 0x83, 0x11, 0x18, 0xE5,  // @.......
                /* 0388 */  0x1D, 0xDD, 0x40, 0x77, 0xFA, 0xC0, 0x9C, 0xDC,  // ..@w....
                /* 0390 */  0x80, 0xC9, 0xD5, 0xC3, 0x43, 0xE0, 0x67, 0x09,  // ....C.g.
                /* 0398 */  0x0F, 0x81, 0x0F, 0xE0, 0x11, 0xE4, 0xEC, 0x7C,  // .......|
                /* 03A0 */  0x0E, 0x3A, 0x27, 0xDC, 0x59, 0x85, 0x4F, 0x09,  // .:'.Y.O.
                /* 03A8 */  0x37, 0x00, 0x8C, 0x42, 0x9B, 0x3E, 0x35, 0x1A,  // 7..B.>5.
                /* 03B0 */  0xB5, 0x6A, 0x50, 0xA6, 0x46, 0x99, 0x06, 0xB5,  // .jP.F...
                /* 03B8 */  0xFA, 0x54, 0x6A, 0xCC, 0xD8, 0xC1, 0xC1, 0xA2,  // .Tj.....
                /* 03C0 */  0xDE, 0x0E, 0x3A, 0x1C, 0x38, 0x12, 0x08, 0x15,  // ..:.8...
                /* 03C8 */  0x73, 0xB2, 0x91, 0x11, 0x10, 0x29, 0x03, 0x11,  // s....)..
                /* 03D0 */  0x90, 0xFF, 0xFF, 0x42, 0x9E, 0x46, 0x02, 0xB2,  // ...B.F..
                /* 03D8 */  0x2C, 0x10, 0x01, 0x39, 0x22, 0x10, 0x0D, 0x0C,  // ,..9"...
                /* 03E0 */  0x44, 0xE5, 0x9A, 0x00, 0x61, 0x61, 0x41, 0x68,  // D...aaAh
                /* 03E8 */  0x4C, 0x15, 0x20, 0xEC, 0xFF, 0x0F               // L. ...
            })
            Method (GVER, 0, NotSerialized)
            {
                Name (BUFF, Buffer (0x0100){})
                Name (DATI, Buffer (0x04){})
                Local1 = Zero
                Local2 = Zero
                Local3 = Zero
                Local4 = Zero
                Local5 = Zero
                CreateByteField (BUFF, Zero, STAT)
                CreateWordField (BUFF, One, WINV)
                CreateWordField (BUFF, 0x03, WDEV)
                CreateWordField (BUFF, 0x07, VERA)
                STAT = Zero
                DATI = 0x00180001
                Local1 = DerefOf (DATI [Zero])
                Local2 = DerefOf (DATI [One])
                Local3 = DerefOf (DATI [0x02])
                Local4 = DerefOf (DATI [0x03])
                Local2 <<= 0x08
                Local5 = (Local2 | Local1)
                WINV = Local5
                Local4 <<= 0x08
                Local5 = (Local4 | Local3)
                WDEV = Local5
                Return (BUFF) /* \_SB_.WMI1.GVER.BUFF */
            }

            Method (GI2C, 1, NotSerialized)
            {
                Local0 = Arg0
                CreateByteField (Local0, 0x02, GCMD)
                CreateByteField (Local0, 0x03, GCTP)
                CreateByteField (Local0, 0x04, GIDL)
                Local6 = (GIDL * 0x08)
                CreateField (Local0, 0x28, Local6, DATA)
                If ((GIDL == Zero))
                {
                    Local5 = One
                }
                Else
                {
                    Local5 = GIDL /* \_SB_.WMI1.GI2C.GIDL */
                }

                Name (GBEC, Buffer (Local5){})
                If ((GIDL == Zero))
                {
                    GBEC [Zero] = One
                }
                Else
                {
                    GBEC = DATA /* \_SB_.WMI1.GI2C.DATA */
                }

                If ((GCMD == 0x04))
                {
                    If (((GCTP == 0x0F) || (GCTP == 0x10)))
                    {
                        SDWN = One
                    }

                    If ((GCTP == 0x0E))
                    {
                        SDWN = One
                    }
                }

                Local4 = (Local5 + 0x05)
                CreateByteField (Local0, Local4, GOPL)
                Name (BUFF, Buffer (0x0100){})
                BUFF = \_SB.IC16.ECCD (GCMD, GCTP, GIDL, GBEC, GOPL)
                Return (BUFF) /* \_SB_.WMI1.GI2C.BUFF */
            }

            Method (WMAA, 3, Serialized)
            {
                Acquire (MUTW, 0xFFFF)
                Name (WMRP, Package (0x02)
                {
                    Buffer (0x04){}, 
                    Buffer (0x0100){}
                })
                Local0 = Arg2
                CreateByteField (Local0, Zero, MFID)
                CreateByteField (Local0, One, SFID)
                Local1 = DerefOf (WMRP [One])
                CreateByteField (Local1, Zero, STAT)
                STAT = One
                If ((SDWN == One))
                {
                    Switch (MFID)
                    {
                        Case (One)
                        {
                            Switch (SFID)
                            {
                                Case (One)
                                {
                                    Local1 = GVER ()
                                }

                            }
                        }
                        Case (0x02)
                        {
                            Switch (SFID)
                            {
                                Case (0x10)
                                {
                                    Local1 = GI2C (Local0)
                                }

                            }
                        }

                    }

                    WMRP [One] = Local1
                    Release (MUTW)
                    Return (WMRP) /* \_SB_.WMI1.WMAA.WMRP */
                }

                Switch (MFID)
                {
                    Case (One)
                    {
                        Switch (SFID)
                        {
                            Case (One)
                            {
                                Local1 = GVER ()
                            }

                        }
                    }
                    Case (0x02)
                    {
                        Switch (SFID)
                        {
                            Case (One)
                            {
                                Local1 = GTSI (Local0)
                            }
                            Case (0x02)
                            {
                                Local1 = GTMP (Local0)
                            }
                            Case (0x03)
                            {
                                Local1 = STMT (Local0)
                            }
                            Case (0x04)
                            {
                                Local1 = GPSI (Local0)
                            }
                            Case (0x09)
                            {
                                Local1 = GCVA (Local0)
                            }
                            Case (0x0C)
                            {
                                Local1 = GBAI (Local0)
                            }
                            Case (0x0D)
                            {
                                Local1 = GCII (Local0)
                            }
                            Case (0x0E)
                            {
                                Local1 = GADI (Local0)
                            }
                            Case (0x10)
                            {
                                Local1 = GI2C (Local0)
                            }

                        }
                    }
                    Case (0x03)
                    {
                        Switch (SFID)
                        {
                            Case (0x10)
                            {
                                Local1 = SBTT (Local0)
                            }
                            Case (0x11)
                            {
                                Local1 = GBTT (Local0)
                            }
                            Case (0x12)
                            {
                                Local1 = SBAC (Local0)
                            }
                            Case (0x13)
                            {
                                Local1 = GBAC (Local0)
                            }
                            Case (0x14)
                            {
                                Local1 = GAIT (Local0)
                            }
                            Case (0x15)
                            {
                                Local1 = SBCM (Local0)
                            }
                            Case (0x16)
                            {
                                Local1 = GBCM (Local0)
                            }
                            Case (0x17)
                            {
                                Local1 = GRPL (Local0)
                            }

                        }
                    }
                    Case (0x04)
                    {
                        Switch (SFID)
                        {
                            Case (0x06)
                            {
                                Local1 = GFRS (Local0)
                            }
                            Case (0x07)
                            {
                                Local1 = SFRS (Local0)
                            }
                            Case (0x16)
                            {
                                Local1 = THMS (Local0)
                            }

                        }
                    }
                    Case (0x05)
                    {
                        Switch (SFID)
                        {
                            Case (One)
                            {
                                Local1 = GSTP (Local0)
                            }

                        }
                    }
                    Case (0x06)
                    {
                        Switch (SFID)
                        {
                            Case (0x04)
                            {
                                Local1 = GLOG (Local0)
                            }
                            Case (0x07)
                            {
                                Local1 = GNTB (Local0)
                            }
                            Case (0x08)
                            {
                                Local1 = SNTB (Local0)
                            }
                            Case (0x0A)
                            {
                                Local1 = GSWL (Local0)
                            }
                            Case (0x0C)
                            {
                                Local1 = GECL (Local0)
                            }
                            Case (0x0E)
                            {
                                Local1 = GPDV (Local0)
                            }
                            Case (0x0F)
                            {
                                Local1 = SOSF (Local0)
                            }
                            Case (0x10)
                            {
                                Local1 = GOSF (Local0)
                            }
                            Case (0x16)
                            {
                                Local1 = GECV (Local0)
                            }
                            Case (0x17)
                            {
                                Local1 = SECV (Local0)
                            }
                            Case (0x19)
                            {
                                Local1 = SSCV (Local0)
                            }
                            Case (0x22)
                            {
                                Local1 = GPKB (Local0)
                            }
                            Case (0x24)
                            {
                                Local1 = SMDC (Local0)
                            }

                        }
                    }
                    Case (0x07)
                    {
                        Switch (SFID)
                        {
                            Case (0x02)
                            {
                                Local1 = SCAB (Local0)
                            }

                        }
                    }

                }

                WMRP [One] = Local1
                Release (MUTW)
                Return (WMRP) /* \_SB_.WMI1.WMAA.WMRP */
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
            {
                Return (\_SB.IC16.WMEN)
            }
        }
    }

    Method (GTSI, 1, NotSerialized)
    {
        Name (BUFF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        CreateByteField (BUFF, Zero, STAT)
        CreateByteField (BUFF, One, TSI1)
        CreateByteField (BUFF, 0x02, TSI2)
        CreateByteField (BUFF, 0x03, TSI3)
        CreateByteField (BUFF, 0x04, TSI4)
        CreateByteField (BUFF, 0x05, TSI5)
        CreateByteField (BUFF, 0x06, TSI6)
        CreateByteField (BUFF, 0x07, TSI7)
        STAT = Zero
        TSI1 = 0xA0
        TSI2 = 0xC1
        TSI3 = 0x20
        TSI4 = Zero
        TSI5 = Zero
        TSI6 = Zero
        TSI7 = Zero
        Return (BUFF) /* \GTSI.BUFF */
    }

    Method (GTMP, 1, NotSerialized)
    {
        Name (BUFF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Name (BUF1, Buffer (0x04)
        {
             0x00                                             // .
        })
        Name (TEMP, Buffer (0x02)
        {
             0x00                                             // .
        })
        Name (TEML, Zero)
        Name (TEMH, Zero)
        CreateByteField (Arg0, 0x02, ISNB)
        CreateByteField (BUFF, Zero, STAT)
        CreateByteField (BUFF, One, TFLG)
        CreateByteField (BUFF, 0x02, TMPI)
        CreateByteField (BUFF, 0x03, TMPD)
        Local1 = Zero
        Local2 = Zero
        Local3 = Zero
        Local4 = Zero
        Local5 = Zero
        If (((ISNB >= Zero) && (ISNB <= 0x2C)))
        {
            BUF1 = \_SB.IC16.ECCD (0x02, 0x61, One, ISNB, 0x04)
            TEMP [Zero] = DerefOf (BUF1 [0x02])
            TEMP [One] = DerefOf (BUF1 [0x03])
            Local1 = TEMP /* \GTMP.TEMP */
            Local2 = DerefOf (TEMP [Zero])
            Local3 = DerefOf (TEMP [One])
            If ((Local2 == 0xFF))
            {
                TEMP = Zero
                STAT = One
            }
            Else
            {
                Local4 = (Local3 << 0x08)
                Local1 = (Local4 | Local2)
                Local4 = (Local3 & 0x80)
                If (Local4)
                {
                    TFLG = One
                    Local5 = (Local1 - One)
                    Local1 = ~Local5
                }

                Divide (Local1, 0x0A, Local4, Local5)
                TMPD = Local4
                TMPI = Local5
                STAT = Zero
            }
        }
        Else
        {
            TEMP = Zero
            STAT = One
        }

        Return (BUFF) /* \GTMP.BUFF */
    }

    Method (STMT, 1, NotSerialized)
    {
        Name (BUFF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Local0 = Arg0
        CreateByteField (BUFF, Zero, STAT)
        CreateByteField (Local0, 0x02, SSRN)
        CreateByteField (Local0, 0x04, UFLG)
        CreateByteField (Local0, 0x05, TUIN)
        CreateByteField (Local0, 0x06, DFLG)
        CreateByteField (Local0, 0x07, TDIN)
        Name (DATI, Buffer (0x05){})
        CreateByteField (DATI, One, TUPL)
        CreateByteField (DATI, 0x02, TUPH)
        CreateByteField (DATI, 0x03, TDWL)
        CreateByteField (DATI, 0x04, TDWH)
        Local1 = Zero
        Local2 = Zero
        Local3 = Zero
        Local4 = Zero
        Local5 = Zero
        Local1 = TUIN /* \STMT.TUIN */
        Local2 = TDIN /* \STMT.TDIN */
        Local3 = (Local1 * 0x0A)
        Local4 = (Local2 * 0x0A)
        If (UFLG)
        {
            Local5 = ~Local3
            Local3 = (Local5 + One)
        }

        If (DFLG)
        {
            Local5 = ~Local4
            Local4 = (Local5 + One)
        }

        Local1 = (Local3 >> 0x08)
        TUPH = Local1
        Local2 = (Local3 | 0xFF)
        TUPL = Local2
        Local1 = (Local4 >> 0x08)
        TDWH = Local1
        Local2 = (Local4 | 0xFF)
        TDWL = Local2
        If ((!UFLG && (TUIN > 0xC8)))
        {
            STAT = One
        }
        ElseIf ((TDIN && (TDIN > 0x64)))
        {
            STAT = One
        }
        Else
        {
            DATI [Zero] = SSRN /* \STMT.SSRN */
            BUFF = \_SB.IC16.ECCD (0x02, 0x62, 0x05, DATI, 0x02)
        }

        Return (BUFF) /* \STMT.BUFF */
    }

    Method (GPSI, 1, NotSerialized)
    {
        Name (IBUF, Buffer (One)
        {
             0x00                                             // .
        })
        Name (OLEN, 0x0100)
        Name (OBUF, Buffer (OLEN)
        {
             0x00                                             // .
        })
        CreateByteField (OBUF, Zero, STAT)
        STAT = One
        OBUF = \_SB.IC16.ECCD (0x02, 0x5A, Zero, IBUF, 0x03)
        OBUF [One] = DerefOf (OBUF [0x02])
        OBUF [0x02] = Zero
        Return (OBUF) /* \GPSI.OBUF */
    }

    Method (GBAI, 1, Serialized)
    {
        Name (OLEN, 0x0100)
        Name (OBUF, Buffer (OLEN){})
        CreateByteField (Arg0, 0x02, RID0)
        Switch (ToInteger (RID0))
        {
            Case (Zero)
            {
                OBUF = CM80 (0x02, 0x90)
            }
            Case (One)
            {
                OBUF = CM80 (0x02, 0x9A)
            }
            Case (0x02)
            {
                OBUF = CM80 (0x02, 0xA0)
            }
            Case (0x03)
            {
                OBUF = CM80 (0x02, 0x98)
            }
            Case (0x04)
            {
                OBUF = CM80 (0x02, 0x84)
            }
            Case (0x05)
            {
                OBUF = CM80 (0x02, 0xA6)
            }
            Case (0x06)
            {
                OBUF = CM80 (0x10, 0x10)
            }
            Case (0x07)
            {
                OBUF = CM80 (0x02, 0x60)
            }
            Case (0x08)
            {
                OBUF = CM80 (0x02, 0x5E)
            }
            Case (0x09)
            {
                OBUF = CM80 (0x02, 0x5C)
            }
            Case (0x0A)
            {
                OBUF = CM80 (0x02, 0x5A)
            }
            Case (0x0B)
            {
                OBUF = CM12 (0x82, One)
            }
            Case (0x0C)
            {
                OBUF = CM12 (0x82, 0x02)
            }
            Case (0x0D)
            {
                OBUF = CM12 (0x82, 0x03)
            }
            Case (0x0E)
            {
                OBUF = CM12 (0x82, 0x04)
            }
            Case (0x0F)
            {
                OBUF = CM12 (0x82, 0x05)
            }
            Case (0x10)
            {
                OBUF = CM12 (0x81, One)
            }
            Case (0x11)
            {
                OBUF = CM12 (0x81, 0x02)
            }
            Case (0x12)
            {
                OBUF = CM12 (0x81, 0x03)
            }
            Case (0x13)
            {
                OBUF = CM12 (0x81, 0x04)
            }
            Case (0x14)
            {
                OBUF = CM12 (0x81, 0x05)
            }
            Case (0x15)
            {
                OBUF = CM80 (0x02, 0x9C)
            }
            Case (0x16)
            {
                OBUF = CM80 (0x02, 0xAA)
            }
            Case (0x17)
            {
                OBUF = CM80 (0x02, 0x94)
            }
            Case (0x18)
            {
                OBUF = CM80 (0x02, 0x90)
            }
            Case (0x19)
            {
                OBUF = CM80 (0x02, 0x92)
            }
            Case (0x1A)
            {
                OBUF = CM80 (0x02, 0x96)
            }
            Case (0x1B)
            {
                OBUF = CM12 (0x82, 0x06)
            }
            Case (0x1C)
            {
                OBUF = CM12 (0x82, 0x07)
            }
            Case (0x1D)
            {
                OBUF = CM12 (0x82, 0x08)
            }
            Case (0x1E)
            {
                OBUF = CM12 (0x82, 0x09)
            }
            Case (0x1F)
            {
                OBUF = CM12 (0x82, 0x0A)
            }
            Case (0x20)
            {
                OBUF = CM80 (0x02, 0x94)
            }
            Case (0x21)
            {
                OBUF = CM80 (0x02, 0x90)
            }
            Case (0x22)
            {
                OBUF = CM12 (0x82, 0x0B)
            }
            Case (0x23)
            {
                OBUF = CM12 (0x82, 0x0C)
            }
            Case (0x24)
            {
                OBUF = CM80 (0x02, 0xA2)
            }
            Case (0x25)
            {
                OBUF = CM12 (0x82, 0x0D)
            }
            Default
            {
                Return (OBUF) /* \GBAI.OBUF */
            }

        }

        Return (OBUF) /* \GBAI.OBUF */
    }

    Method (CM80, 2, NotSerialized)
    {
        Name (IBUF, Buffer (One)
        {
             0x00                                             // .
        })
        Name (TLEN, 0x20)
        Name (TBUF, Buffer (TLEN)
        {
             0x00                                             // .
        })
        Name (OLEN, 0x0100)
        Name (OBUF, Buffer (OLEN){})
        CreateByteField (IBUF, Zero, DAT0)
        CreateByteField (TBUF, Zero, STAT)
        Local0 = Arg0
        DAT0 = Arg1
        Local1 = One
        While ((Local0 > Zero))
        {
            TBUF = \_SB.IC16.ECCD (0x02, 0x80, One, IBUF, 0x03)
            If ((STAT != Zero))
            {
                OBUF [Zero] = One
            }
            Else
            {
                OBUF [Local1] = DerefOf (TBUF [0x02])
            }

            Local0--
            Local1++
            DAT0++
        }

        Return (OBUF) /* \CM80.OBUF */
    }

    Method (CM12, 2, NotSerialized)
    {
        Name (IBUF, Buffer (One){})
        Name (OLEN, 0x0100)
        Name (OBUF, Buffer (OLEN){})
        CreateByteField (OBUF, Zero, STAT)
        IBUF [Zero] = Arg1
        OBUF = \_SB.IC16.ECCD (0x02, Arg0, One, IBUF, 0x04)
        If ((STAT == Zero))
        {
            Local0 = DerefOf (OBUF [One])
            Local1 = One
            Local2 = 0x02
            While ((Local0 >= Zero))
            {
                OBUF [Local1] = DerefOf (OBUF [Local2])
                Local0--
                Local1++
                Local2++
            }
        }

        Return (OBUF) /* \CM12.OBUF */
    }

    Method (GCII, 1, Serialized)
    {
        Name (ILEN, One)
        Name (IBUF, Buffer (ILEN)
        {
             0x00                                             // .
        })
        Name (OLEN, 0x0100)
        Name (OBUF, Buffer (OLEN)
        {
             0x00                                             // .
        })
        Name (DBUF, Buffer (0x04)
        {
             0x00                                             // .
        })
        CreateField (DBUF, 0x10, 0x10, DATA)
        CreateField (OBUF, 0x08, 0x10, DATO)
        CreateByteField (OBUF, Zero, STAT)
        CreateByteField (Arg0, 0x02, RID0)
        CreateByteField (IBUF, Zero, CMD0)
        Switch (ToInteger (RID0))
        {
            Case (Zero)
            {
                CMD0 = 0x20
            }
            Case (One)
            {
                CMD0 = 0x21
            }
            Case (0x02)
            {
                CMD0 = 0x22
            }
            Case (0x03)
            {
                CMD0 = 0x23
            }
            Case (0x04)
            {
                CMD0 = 0x24
            }
            Case (0x05)
            {
                CMD0 = 0x25
            }
            Case (0x06)
            {
                CMD0 = 0x26
            }
            Case (0x07)
            {
                CMD0 = 0x27
            }
            Case (0x08)
            {
                CMD0 = 0x28
            }
            Default
            {
                Return (OBUF) /* \GCII.OBUF */
            }

        }

        DBUF = \_SB.IC16.ECCD (0x02, 0x63, ILEN, IBUF, 0x04)
        STAT = DerefOf (DBUF [Zero])
        If ((STAT == Zero))
        {
            DATO = DATA /* \GCII.DATA */
        }

        Return (OBUF) /* \GCII.OBUF */
    }

    Method (GCVA, 1, NotSerialized)
    {
        Name (BUFF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Name (BUF1, Buffer (0x03)
        {
             0x00                                             // .
        })
        Name (BUF2, Buffer (0x03)
        {
             0x00                                             // .
        })
        Name (VALE, Buffer (0x02)
        {
             0x00                                             // .
        })
        Local0 = Arg0
        CreateByteField (Local0, 0x02, VANU)
        CreateByteField (BUFF, Zero, STAT)
        CreateByteField (BUFF, One, FLAG)
        CreateByteField (BUFF, 0x02, VALL)
        CreateByteField (BUFF, 0x03, VALH)
        Local1 = Zero
        Local2 = Zero
        Local3 = Zero
        Local4 = Zero
        Local5 = Zero
        If ((VANU == Zero))
        {
            Name (INH1, Buffer (One)
            {
                 0x00                                             // .
            })
            Name (INL1, Buffer (One)
            {
                 0x01                                             // .
            })
            BUF1 = \_SB.IC16.ECCD (0x02, 0x67, One, INH1, 0x03)
            VALH = DerefOf (BUF1 [0x02])
            BUF2 = \_SB.IC16.ECCD (0x02, 0x67, One, INL1, 0x03)
            VALL = DerefOf (BUF2 [0x02])
            Local1 = VALH /* \GCVA.VALH */
            Local2 = VALL /* \GCVA.VALL */
            Local3 = (Local1 << 0x08)
            Local4 = (Local3 | Local2)
            Local5 = (Local1 & 0x80)
            If (Local5)
            {
                FLAG = One
                Local5 = (Local4 - One)
                Local4 = ~Local5
                Local1 = (Local4 >> 0x08)
                Local2 = (Local4 & 0xFF)
                VALH = Local1
                VALL = Local2
                VALE = Local4
            }
        }

        If ((VANU == 0x10))
        {
            Name (INH2, Buffer (One)
            {
                 0x02                                             // .
            })
            Name (INL2, Buffer (One)
            {
                 0x03                                             // .
            })
            BUF1 = \_SB.IC16.ECCD (0x02, 0x67, One, INH2, 0x03)
            VALH = DerefOf (BUF1 [0x02])
            BUF2 = \_SB.IC16.ECCD (0x02, 0x67, One, INL2, 0x03)
            VALL = DerefOf (BUF2 [0x02])
            Local1 = VALH /* \GCVA.VALH */
            Local2 = VALL /* \GCVA.VALL */
            Local3 = (Local1 << 0x08)
            Local4 = (Local3 | Local2)
            Local5 = (Local1 & 0x80)
            If (Local5)
            {
                FLAG = One
                Local5 = (Local4 - One)
                Local4 = ~Local5
                Local1 = (Local4 >> 0x08)
                Local2 = (Local4 & 0xFF)
                VALH = Local1
                VALL = Local2
                VALE = Local4
            }
        }

        If ((VANU == 0x20))
        {
            Name (INH3, Buffer (One)
            {
                 0x0A                                             // .
            })
            Name (INL3, Buffer (One)
            {
                 0x0B                                             // .
            })
            BUF1 = \_SB.IC16.ECCD (0x02, 0x67, One, INH3, 0x03)
            VALH = DerefOf (BUF1 [0x02])
            BUF2 = \_SB.IC16.ECCD (0x02, 0x67, One, INL3, 0x03)
            VALL = DerefOf (BUF2 [0x02])
            Local1 = VALH /* \GCVA.VALH */
            Local2 = VALL /* \GCVA.VALL */
            Local3 = (Local1 << 0x08)
            Local4 = (Local3 | Local2)
            Local5 = (Local1 & 0x80)
            If (Local5)
            {
                FLAG = One
                Local5 = (Local4 - One)
                Local4 = ~Local5
                Local1 = (Local4 >> 0x08)
                Local2 = (Local4 & 0xFF)
                VALH = Local1
                VALL = Local2
                VALE = Local4
            }
        }

        If ((VANU == 0x30))
        {
            Name (INH4, Buffer (One)
            {
                 0x08                                             // .
            })
            Name (INL4, Buffer (One)
            {
                 0x09                                             // .
            })
            BUF1 = \_SB.IC16.ECCD (0x02, 0x67, One, INH4, 0x03)
            VALH = DerefOf (BUF1 [0x02])
            BUF2 = \_SB.IC16.ECCD (0x02, 0x67, One, INL4, 0x03)
            VALH = DerefOf (BUF1 [0x02])
            Local1 = VALH /* \GCVA.VALH */
            Local2 = VALL /* \GCVA.VALL */
            Local3 = (Local1 << 0x08)
            Local4 = (Local3 | Local2)
            Local5 = (Local1 & 0x80)
            If (Local5)
            {
                FLAG = One
                Local5 = (Local4 - One)
                Local4 = ~Local5
                Local1 = (Local4 >> 0x08)
                Local2 = (Local4 & 0xFF)
                VALH = Local1
                VALL = Local2
                VALE = Local4
            }
        }

        If (((VALH == 0xFF) || (VALL == 0xFF)))
        {
            STAT = One
        }
        Else
        {
            STAT = Zero
        }

        Return (BUFF) /* \GCVA.BUFF */
    }

    Method (GADI, 1, Serialized)
    {
        Name (ILEN, One)
        Name (IBUF, Buffer (ILEN)
        {
             0x00                                             // .
        })
        Name (OBUF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Name (DBUF, Buffer (0x04)
        {
             0x00                                             // .
        })
        CreateField (DBUF, 0x10, 0x10, DATA)
        CreateField (OBUF, 0x08, 0x10, DATO)
        CreateByteField (OBUF, Zero, STAT)
        CreateByteField (Arg0, 0x02, RID0)
        CreateByteField (IBUF, Zero, CMD0)
        Switch (ToInteger (RID0))
        {
            Case (Zero)
            {
                CMD0 = 0x11
            }
            Case (One)
            {
                CMD0 = 0x12
            }
            Case (0x02)
            {
                CMD0 = 0x13
            }
            Default
            {
                Return (OBUF) /* \GADI.OBUF */
            }

        }

        DBUF = \_SB.IC16.ECCD (0x02, 0x63, ILEN, IBUF, 0x04)
        STAT = DerefOf (DBUF [Zero])
        If ((STAT == Zero))
        {
            DATO = DATA /* \GADI.DATA */
        }

        Return (OBUF) /* \GADI.OBUF */
    }

    Method (SBTT, 1, NotSerialized)
    {
        Name (BUFF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Name (BUF1, Buffer (One)
        {
             0x00                                             // .
        })
        Name (BUF2, Buffer (One)
        {
             0x00                                             // .
        })
        Name (BUF3, Buffer (One)
        {
             0x00                                             // .
        })
        CreateByteField (Arg0, 0x02, STCP)
        CreateByteField (Arg0, 0x03, SOCP)
        CreateByteField (BUFF, Zero, STAT)
        CreateByteField (BUF1, Zero, STA1)
        CreateByteField (BUF2, Zero, STA2)
        CreateByteField (BUF3, Zero, STA3)
        Name (DATI, Buffer (0x02){})
        CreateByteField (DATI, Zero, DAT1)
        CreateByteField (DATI, One, DAT2)
        DAT1 = 0x03
        DAT2 = 0x5A
        BUF1 = \_SB.IC16.ECCD (0x02, 0x68, 0x02, DATI, One)
        If ((STA1 == One))
        {
            STAT = One
        }
        Else
        {
            If (((STCP != Zero) && (SOCP == Zero)))
            {
                DAT1 = One
                If (((STCP >= Zero) && (STCP <= 0x64)))
                {
                    DAT2 = STCP /* \SBTT.STCP */
                    BUF2 = \_SB.IC16.ECCD (0x02, 0x68, 0x02, DATI, One)
                }
            }
            ElseIf ((SOCP != Zero))
            {
                If ((((STCP >= Zero) && (STCP <= SOCP)) && 
                    (SOCP <= 0x64)))
                {
                    DAT1 = One
                    DAT2 = STCP /* \SBTT.STCP */
                    BUF2 = \_SB.IC16.ECCD (0x02, 0x68, 0x02, DATI, One)
                    DAT1 = 0x02
                    DAT2 = SOCP /* \SBTT.SOCP */
                    BUF3 = \_SB.IC16.ECCD (0x02, 0x68, 0x02, DATI, One)
                }
            }
            Else
            {
                STAT = One
            }

            If (((STA2 == One) || (STA3 == One)))
            {
                STAT = One
            }
            Else
            {
                STAT = Zero
            }
        }

        Return (BUFF) /* \SBTT.BUFF */
    }

    Method (GBTT, 1, NotSerialized)
    {
        Name (BUFF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Name (DBUF, Buffer (0x03)
        {
             0x00                                             // .
        })
        CreateField (DBUF, 0x10, 0x08, DATA)
        CreateByteField (BUFF, Zero, STAT)
        CreateByteField (BUFF, One, STCP)
        CreateByteField (BUFF, 0x02, SOCP)
        Name (STIN, Buffer (One)
        {
             0x01                                             // .
        })
        Name (SPIN, Buffer (One)
        {
             0x02                                             // .
        })
        DBUF = \_SB.IC16.ECCD (0x02, 0x69, One, STIN, 0x03)
        STCP = DATA /* \GBTT.DATA */
        DBUF = \_SB.IC16.ECCD (0x02, 0x69, One, SPIN, 0x03)
        SOCP = DATA /* \GBTT.DATA */
        If (((STCP == 0xFF) || (SOCP == 0xFF)))
        {
            STAT = One
        }
        Else
        {
            STAT = Zero
        }

        Return (BUFF) /* \GBTT.BUFF */
    }

    Method (SBAC, 1, Serialized)
    {
        Name (BUFF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Name (DATI, Buffer (One)
        {
             0x00                                             // .
        })
        CreateByteField (DATI, Zero, CMD0)
        CreateByteField (Arg0, 0x02, RID0)
        CreateByteField (BUFF, Zero, STAT)
        STAT = One
        Switch (ToInteger (RID0))
        {
            Case (One)
            {
                CMD0 = One
            }
            Case (0x02)
            {
                CMD0 = Zero
            }
            Default
            {
                Return (BUFF) /* \SBAC.BUFF */
            }

        }

        STAT = \_SB.IC16.ECCD (0x02, 0xE5, One, DATI, One)
        Return (BUFF) /* \SBAC.BUFF */
    }

    Method (GBAC, 1, Serialized)
    {
        Name (BUFF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Name (DBUF, Buffer (0x03)
        {
             0x00                                             // .
        })
        Name (DATI, Buffer (One)
        {
             0x00                                             // .
        })
        CreateByteField (BUFF, Zero, STAT)
        CreateWordField (BUFF, One, CFLG)
        STAT = Zero
        DBUF = \_SB.IC16.ECCD (0x02, 0xE6, Zero, DATI, 0x03)
        STAT = DerefOf (DBUF [Zero])
        If ((STAT == Zero))
        {
            CFLG = DerefOf (DBUF [0x02])
            Switch (ToInteger (CFLG))
            {
                Case (Zero)
                {
                    CFLG = 0x02
                }
                Case (One)
                {
                    CFLG = One
                }
                Default
                {
                    Return (BUFF) /* \GBAC.BUFF */
                }

            }
        }

        Return (BUFF) /* \GBAC.BUFF */
    }

    Method (GAIT, 1, NotSerialized)
    {
        Name (OLEN, 0x0100)
        Name (BUFF, Buffer (OLEN)
        {
             0x00                                             // .
        })
        Name (DATI, Buffer (One)
        {
             0x00                                             // .
        })
        Name (DBUF, Buffer (0x04)
        {
             0x00                                             // .
        })
        CreateField (DBUF, 0x10, 0x10, DATA)
        CreateField (BUFF, 0x08, 0x10, DATO)
        CreateByteField (BUFF, Zero, STAT)
        STAT = Zero
        DBUF = \_SB.IC16.ECCD (0x02, 0xE2, Zero, DATI, 0x04)
        STAT = DerefOf (DBUF [Zero])
        If ((STAT == Zero))
        {
            DATO = DATA /* \GAIT.DATA */
        }

        Return (BUFF) /* \GAIT.BUFF */
    }

    Method (SBCM, 1, NotSerialized)
    {
        Name (BUFF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Name (DBUF, Buffer (0x02)
        {
             0x00                                             // .
        })
        Name (DATI, Buffer (0x04)
        {
             0x00                                             // .
        })
        CreateByteField (BUFF, Zero, STAT)
        STAT = Zero
        CreateByteField (Arg0, 0x02, CHMD)
        CreateByteField (Arg0, 0x03, DELY)
        CreateByteField (Arg0, 0x04, STCP)
        CreateByteField (Arg0, 0x05, SOCP)
        If (((STCP >= Zero) && (STCP <= 0x64)))
        {
            If (((SOCP >= Zero) && (SOCP <= 0x64)))
            {
                DATI [Zero] = CHMD /* \SBCM.CHMD */
                DATI [One] = DELY /* \SBCM.DELY */
                DATI [0x02] = STCP /* \SBCM.STCP */
                DATI [0x03] = SOCP /* \SBCM.SOCP */
                DBUF = \_SB.IC16.ECCD (0x02, 0xE3, 0x04, DATI, 0x02)
                STAT = DerefOf (DBUF [Zero])
            }
            Else
            {
                STAT = One
            }
        }
        Else
        {
            STAT = One
        }

        Return (BUFF) /* \SBCM.BUFF */
    }

    Method (GBCM, 1, NotSerialized)
    {
        Name (OLEN, 0x0100)
        Name (BUFF, Buffer (OLEN)
        {
             0x00                                             // .
        })
        Name (DBUF, Buffer (0x06)
        {
             0x00                                             // .
        })
        CreateField (DBUF, 0x10, 0x20, DATA)
        CreateField (BUFF, 0x08, 0x20, DATO)
        Name (DATI, Buffer (One){})
        CreateByteField (BUFF, Zero, STAT)
        STAT = Zero
        DBUF = \_SB.IC16.ECCD (0x02, 0xE4, Zero, DATI, 0x06)
        STAT = DerefOf (DBUF [Zero])
        If ((STAT == Zero))
        {
            DATO = DATA /* \GBCM.DATA */
        }

        Return (BUFF) /* \GBCM.BUFF */
    }

    Method (GRPL, 1, NotSerialized)
    {
        Name (IBUF, Buffer (One)
        {
             0x00                                             // .
        })
        Name (OBUF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Name (DBUF, Buffer (0x04)
        {
             0x00                                             // .
        })
        CreateField (DBUF, 0x10, 0x10, DATA)
        CreateField (OBUF, 0x08, 0x10, DATO)
        CreateByteField (OBUF, Zero, STAT)
        STAT = One
        DBUF = \_SB.IC16.ECCD (0x02, 0xAA, Zero, IBUF, 0x04)
        STAT = DerefOf (DBUF [Zero])
        If ((STAT == Zero))
        {
            DATO = DATA /* \GRPL.DATA */
        }

        Return (OBUF) /* \GRPL.OBUF */
    }

    Method (GFRS, 1, NotSerialized)
    {
        Name (BUFF, Buffer (0x0100){})
        Name (DBUF, Buffer (0x03)
        {
             0x00                                             // .
        })
        CreateByteField (BUFF, Zero, STAT)
        CreateByteField (BUFF, One, RELT)
        STAT = Zero
        Local1 = Zero
        DBUF = \_SB.IC16.ECCD (0x02, 0x6B, Zero, Zero, 0x03)
        Local1 = DerefOf (DBUF [0x02])
        If ((Local1 == 0x55))
        {
            RELT = One
        }
        ElseIf ((Local1 == 0x5A))
        {
            RELT = 0x02
        }
        Else
        {
            STAT = One
        }

        Return (BUFF) /* \GFRS.BUFF */
    }

    Method (SFRS, 1, Serialized)
    {
        Name (BUFF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Name (RELT, Zero)
        Name (TEMP, Zero)
        CreateByteField (BUFF, Zero, STAT)
        CreateByteField (Arg0, 0x02, SFNM)
        Switch (ToInteger (SFNM))
        {
            Case (One)
            {
                STAT = \_SB.IC16.ECCD (0x02, 0x6C, One, 0x55, One)
                Break
            }
            Case (0x02)
            {
                STAT = \_SB.IC16.ECCD (0x02, 0x6C, One, 0x5A, One)
                Break
            }
            Default
            {
                STAT = One
            }

        }

        Return (BUFF) /* \SFRS.BUFF */
    }

    Method (GECV, 1, Serialized)
    {
        Name (IBUF, Buffer (One)
        {
             0x00                                             // .
        })
        Name (TLEN, 0x06)
        Name (TBUF, Buffer (TLEN)
        {
             0x00                                             // .
        })
        Name (OLEN, 0x0100)
        Name (OBUF, Buffer (OLEN)
        {
             0x00                                             // .
        })
        CreateByteField (IBUF, Zero, DAT0)
        CreateByteField (TBUF, Zero, STAT)
        CreateByteField (Arg0, 0x02, RID0)
        Local0 = 0x04
        Switch (ToInteger (RID0))
        {
            Case (One)
            {
                DAT0 = Zero
            }
            Case (0x02)
            {
                DAT0 = 0x04
            }
            Case (0x03)
            {
                DAT0 = 0x08
            }
            Case (0x04)
            {
                DAT0 = 0x0C
            }
            Case (0x05)
            {
                DAT0 = 0x10
            }
            Case (0x06)
            {
                DAT0 = 0x14
            }
            Case (0x07)
            {
                DAT0 = 0x18
            }
            Case (0x08)
            {
                DAT0 = 0x1C
            }
            Case (0x09)
            {
                DAT0 = 0x20
            }
            Case (0x0A)
            {
                Local0 = 0x03
                DAT0 = 0x24
            }
            Default
            {
                Return (OBUF) /* \GECV.OBUF */
            }

        }

        Local1 = One
        While ((Local0 > Zero))
        {
            TBUF = \_SB.IC16.ECCD (0x03, 0xBE, One, IBUF, TLEN)
            If ((STAT != Zero))
            {
                OBUF [Zero] = One
            }
            Else
            {
                OBUF [Local1] = DerefOf (TBUF [0x02])
                Local1++
                OBUF [Local1] = DerefOf (TBUF [0x03])
                Local1++
                OBUF [Local1] = DerefOf (TBUF [0x04])
                Local1++
                OBUF [Local1] = DerefOf (TBUF [0x05])
                Local1++
            }

            Local0--
            DAT0++
        }

        Return (OBUF) /* \GECV.OBUF */
    }

    Method (SECV, 1, NotSerialized)
    {
        Name (ILEN, 0x05)
        Name (IBUF, Buffer (ILEN)
        {
             0x00                                             // .
        })
        Name (OLEN, 0x0100)
        Name (OBUF, Buffer (OLEN)
        {
             0x00                                             // .
        })
        CreateByteField (OBUF, Zero, STAT)
        STAT = One
        IBUF [Zero] = DerefOf (Arg0 [0x02])
        IBUF [One] = DerefOf (Arg0 [0x03])
        IBUF [0x02] = DerefOf (Arg0 [0x04])
        IBUF [0x03] = DerefOf (Arg0 [0x05])
        IBUF [0x04] = DerefOf (Arg0 [0x06])
        STAT = \_SB.IC16.ECCD (0x03, 0xBF, ILEN, IBUF, One)
        Return (OBUF) /* \SECV.OBUF */
    }

    Method (SSCV, 1, NotSerialized)
    {
        Name (ILEN, 0x04)
        Name (IBUF, Buffer (ILEN)
        {
             0xFF                                             // .
        })
        Name (OLEN, 0x0100)
        Name (OBUF, Buffer (OLEN)
        {
             0xFF                                             // .
        })
        CreateByteField (OBUF, Zero, STAT)
        STAT = One
        IBUF [Zero] = 0x28
        IBUF [One] = DerefOf (Arg0 [0x02])
        IBUF [0x02] = DerefOf (Arg0 [0x03])
        IBUF [0x03] = DerefOf (Arg0 [0x04])
        STAT = \_SB.IC16.ECCD (0x03, 0xBF, ILEN, IBUF, One)
        Return (OBUF) /* \SSCV.OBUF */
    }

    Method (GSWL, 1, NotSerialized)
    {
        Name (OBUF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Name (DATI, Buffer (0x02)
        {
             0x00                                             // .
        })
        CreateByteField (OBUF, Zero, STAT)
        CreateByteField (Arg0, 0x02, DTYP)
        STAT = One
        DATI [Zero] = One
        DATI [One] = Zero
        Local1 = \_SB.IC16.ECCD (0x02, 0xB7, 0x02, DATI, 0x20)
        OBUF = PSWL (DTYP, Local1)
        Return (OBUF) /* \GSWL.OBUF */
    }

    Method (GPDC, 2, Serialized)
    {
        Name (OBUF, Buffer (One)
        {
             0xEE                                             // .
        })
        CreateByteField (OBUF, Zero, PDCO)
        Switch (ToInteger (Arg1))
        {
            Case (One)
            {
                PDCO = 0xCC
            }
            Case (0x02)
            {
                PDCO = 0xCC
            }
            Case (0x09)
            {
                PDCO = 0xCC
            }
            Default
            {
            }

        }

        If ((ToInteger (Arg0) == 0x02))
        {
            Return (OBUF) /* \GPDC.OBUF */
        }

        Switch (ToInteger (Arg1))
        {
            Case (0x1B)
            {
                PDCO = 0xCC
            }
            Case (0x29)
            {
                PDCO = 0xCC
            }
            Case (0x41)
            {
                PDCO = 0xCC
            }
            Case (0x61)
            {
                PDCO = 0xCC
            }
            Case (0xA7)
            {
                PDCO = 0xCC
            }
            Case (0x10DC)
            {
                PDCO = 0xCC
            }
            Case (0x10F3)
            {
                PDCO = 0xCC
            }
            Case (0x10F4)
            {
                PDCO = 0xCC
            }
            Case (0x10F5)
            {
                PDCO = 0xCC
            }
            Case (0x10D0)
            {
                PDCO = 0xCC
            }
            Default
            {
                PDCO = 0xEE
            }

        }

        Return (OBUF) /* \GPDC.OBUF */
    }

    Method (PSWL, 2, Serialized)
    {
        Name (OBUF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        CreateByteField (OBUF, Zero, STAT)
        STAT = DerefOf (Arg1 [Zero])
        If ((STAT != Zero))
        {
            Return (OBUF) /* \PSWL.OBUF */
        }

        Switch (ToInteger (Arg0))
        {
            Case (One)
            {
                CreateWordField (Arg1, 0x11, SDCA)
                OBUF [One] = GPDC (One, SDCA)
                OBUF [0x02] = DerefOf (Arg1 [0x11])
                OBUF [0x03] = DerefOf (Arg1 [0x12])
                OBUF [0x04] = 0xFF
                OBUF [0x05] = DerefOf (Arg1 [0x13])
                OBUF [0x06] = DerefOf (Arg1 [0x14])
                OBUF [0x07] = DerefOf (Arg1 [0x15])
                OBUF [0x08] = DerefOf (Arg1 [0x16])
            }
            Case (0x02)
            {
                CreateByteField (Arg1, 0x08, WACA)
                OBUF [One] = GPDC (0x02, WACA)
                OBUF [0x02] = DerefOf (Arg1 [0x08])
                OBUF [0x03] = 0xFF
                OBUF [0x04] = 0xFF
                OBUF [0x05] = DerefOf (Arg1 [0x09])
                OBUF [0x06] = DerefOf (Arg1 [0x0A])
                OBUF [0x07] = DerefOf (Arg1 [0x0B])
                OBUF [0x08] = DerefOf (Arg1 [0x0C])
            }
            Default
            {
                STAT = One
            }

        }

        Return (OBUF) /* \PSWL.OBUF */
    }

    Method (GECL, 1, NotSerialized)
    {
        Name (OLEN, 0x0100)
        Name (BUFF, Buffer (OLEN)
        {
             0x00                                             // .
        })
        Name (DATI, Buffer (0x02)
        {
             0x00                                             // .
        })
        CreateByteField (BUFF, Zero, STAT)
        STAT = Zero
        CreateByteField (Arg0, 0x02, LGTP)
        CreateByteField (Arg0, 0x03, ECID)
        DATI [Zero] = LGTP /* \GECL.LGTP */
        DATI [One] = ECID /* \GECL.ECID */
        BUFF = \_SB.IC16.ECCD (0x02, 0xB7, 0x02, DATI, 0xFF)
        Return (BUFF) /* \GECL.BUFF */
    }

    Method (GPDV, 1, NotSerialized)
    {
        Name (BUFF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Name (DBUF, Buffer (0x08)
        {
             0x00                                             // .
        })
        Name (DATI, Buffer (0x02)
        {
             0x00                                             // .
        })
        CreateField (DBUF, 0x10, 0x28, DATA)
        CreateField (BUFF, 0x08, 0x28, DATO)
        CreateByteField (Arg0, 0x02, IIND)
        CreateByteField (DATI, Zero, PDVR)
        CreateByteField (DATI, One, PDID)
        CreateByteField (BUFF, Zero, STAT)
        STAT = Zero
        PDVR = 0x30
        PDID = IIND /* \GPDV.IIND */
        DBUF = \_SB.IC16.ECCD (0x02, 0x9A, 0x02, DATI, 0x08)
        STAT = DerefOf (DBUF [Zero])
        If ((STAT == Zero))
        {
            DATO = DATA /* \GPDV.DATA */
        }

        Return (BUFF) /* \GPDV.BUFF */
    }

    Method (SMDC, 1, NotSerialized)
    {
        Name (OLEN, 0x40)
        Name (DBUF, Buffer (OLEN)
        {
             0x00                                             // .
        })
        Name (BUFF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Name (DATI, Buffer (0x02){})
        CreateField (DBUF, 0x10, 0x01A0, DATA)
        CreateField (BUFF, 0x08, 0x01A0, DATO)
        CreateByteField (Arg0, 0x02, SCMD)
        CreateByteField (Arg0, 0x03, I2CN)
        CreateByteField (BUFF, Zero, STAT)
        STAT = Zero
        DATI [Zero] = SCMD /* \SMDC.SCMD */
        DATI [One] = I2CN /* \SMDC.I2CN */
        DBUF = \_SB.IC16.ECCD (0x02, 0xBF, 0x02, DATI, OLEN)
        STAT = DerefOf (DBUF [Zero])
        If ((STAT == Zero))
        {
            DATO = DATA /* \SMDC.DATA */
        }
        Else
        {
            BUFF [Zero] = One
        }

        Return (BUFF) /* \SMDC.BUFF */
    }

    Method (GNTB, 1, NotSerialized)
    {
        Name (BUFF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Name (DBUF, Buffer (0x04)
        {
             0x00                                             // .
        })
        Name (DATI, Buffer (One)
        {
             0x00                                             // .
        })
        CreateByteField (BUFF, Zero, STAT)
        STAT = Zero
        DBUF = \_SB.IC16.ECCD (0x03, 0xE1, Zero, DATI, 0x04)
        STAT = DerefOf (DBUF [Zero])
        If ((STAT == Zero))
        {
            BUFF [One] = DerefOf (DBUF [0x02])
        }

        Return (BUFF) /* \GNTB.BUFF */
    }

    Method (SNTB, 1, Serialized)
    {
        Name (IBUF, Buffer (One)
        {
             0x00                                             // .
        })
        Name (OLEN, 0x0100)
        Name (OBUF, Buffer (OLEN)
        {
             0x00                                             // .
        })
        CreateByteField (OBUF, Zero, STAT)
        CreateByteField (Arg0, 0x02, NBTP)
        STAT = One
        Switch (ToInteger (NBTP))
        {
            Case (Zero)
            {
                IBUF [Zero] = NBTP /* \SNTB.NBTP */
            }
            Case (0x02)
            {
                IBUF [Zero] = NBTP /* \SNTB.NBTP */
            }
            Case (0x08)
            {
                IBUF [Zero] = NBTP /* \SNTB.NBTP */
            }
            Case (0x0A)
            {
                IBUF [Zero] = NBTP /* \SNTB.NBTP */
            }
            Case (0x0C)
            {
                IBUF [Zero] = NBTP /* \SNTB.NBTP */
            }
            Default
            {
                Return (OBUF) /* \SNTB.OBUF */
            }

        }

        STAT = \_SB.IC16.ECCD (0x03, 0xE0, One, IBUF, One)
        Return (OBUF) /* \SNTB.OBUF */
    }

    Method (GPKB, 1, Serialized)
    {
        Name (BUFF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Name (DBUF, Buffer (0x04)
        {
             0x00                                             // .
        })
        Name (DATI, Buffer (One)
        {
             0x00                                             // .
        })
        CreateByteField (BUFF, Zero, STAT)
        STAT = Zero
        DBUF = \_SB.IC16.ECCD (0x03, 0xE5, Zero, DATI, 0x04)
        STAT = DerefOf (DBUF [Zero])
        If ((STAT == Zero))
        {
            Switch (ToInteger (DerefOf (DBUF [0x02])))
            {
                Case (Zero)
                {
                    BUFF [One] = One
                }
                Case (One)
                {
                    BUFF [One] = 0x02
                }

            }
        }

        Return (BUFF) /* \GPKB.BUFF */
    }

    Method (SOSF, 1, Serialized)
    {
        Name (IBUF, Buffer (One)
        {
             0x00                                             // .
        })
        Name (OLEN, 0x0100)
        Name (OBUF, Buffer (OLEN)
        {
             0x00                                             // .
        })
        CreateByteField (Arg0, 0x02, FLAG)
        CreateByteField (OBUF, Zero, STAT)
        STAT = One
        Switch (ToInteger (FLAG))
        {
            Case (One)
            {
                IBUF [Zero] = One
            }
            Case (0x02)
            {
                IBUF [Zero] = Zero
            }
            Default
            {
                Return (OBUF) /* \SOSF.OBUF */
            }

        }

        STAT = \_SB.IC16.ECCD (0x03, 0xE2, One, IBUF, One)
        Return (OBUF) /* \SOSF.OBUF */
    }

    Method (GOSF, 1, Serialized)
    {
        Name (BUFF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Name (DBUF, Buffer (0x04)
        {
             0x00                                             // .
        })
        Name (DATI, Buffer (One)
        {
             0x00                                             // .
        })
        CreateByteField (BUFF, Zero, STAT)
        STAT = Zero
        DBUF = \_SB.IC16.ECCD (0x03, 0xE3, Zero, DATI, 0x04)
        STAT = DerefOf (DBUF [Zero])
        If ((STAT == Zero))
        {
            Switch (ToInteger (DerefOf (DBUF [0x02])))
            {
                Case (Zero)
                {
                    BUFF [One] = 0x02
                }
                Case (One)
                {
                    BUFF [One] = One
                }
                Default
                {
                    Return (BUFF) /* \GOSF.BUFF */
                }

            }
        }

        Return (BUFF) /* \GOSF.BUFF */
    }

    Method (GLOG, 1, NotSerialized)
    {
        Name (OLEN, 0x0100)
        Name (BUFF, Buffer (OLEN)
        {
             0x00                                             // .
        })
        Name (DBUF, Buffer (OLEN)
        {
             0x00                                             // .
        })
        Name (DATI, Buffer (0x02)
        {
             0x00                                             // .
        })
        CreateField (DBUF, 0x10, 0x07F0, DATA)
        CreateField (BUFF, 0x08, 0x07F0, DATO)
        CreateByteField (BUFF, Zero, STAT)
        STAT = Zero
        CreateByteField (Arg0, 0x02, ECID)
        DATI [Zero] = One
        DATI [One] = ECID /* \GLOG.ECID */
        DBUF = \_SB.IC16.ECCD (0x02, 0xB7, 0x02, DATI, 0xFF)
        STAT = DerefOf (DBUF [Zero])
        If ((STAT == Zero))
        {
            DATO = DATA /* \GLOG.DATA */
        }

        Return (BUFF) /* \GLOG.BUFF */
    }

    Method (SCAB, 1, NotSerialized)
    {
        Local0 = Arg0
        CreateByteField (Local0, 0x02, GCMD)
        Name (BUFF, Buffer (0x0100){})
        BUFF [Zero] = Zero
        Name (WCBC, Buffer (0x04)
        {
             0x00                                             // .
        })
        Name (WCAB, Buffer (0x04)
        {
             0x00                                             // .
        })
        CreateByteField (WCAB, Zero, MSTA)
        CreateByteField (WCAB, One, SLEN)
        CreateByteField (WCAB, 0x02, WDTA)
        WCAB = \_SB.IC16.ECCD (0x02, 0x83, Zero, WCBC, 0x04)
        If ((WDTA == Zero))
        {
            BUFF [One] = 0x0A
            Return (BUFF) /* \SCAB.BUFF */
        }

        If ((GCMD == Zero))
        {
            \_SB.GPU0.MHW0 ()
            BUFF [One] = 0x0B
            Return (BUFF) /* \SCAB.BUFF */
        }

        If ((GCMD == One))
        {
            \_SB.GPU0.MHW1 ()
            BUFF [One] = 0x0C
            Return (BUFF) /* \SCAB.BUFF */
        }

        BUFF [0x02] = GCMD /* \SCAB.GCMD */
        BUFF [One] = 0x0D
        Return (BUFF) /* \SCAB.BUFF */
    }

    Method (THMS, 1, NotSerialized)
    {
        Local0 = Arg0
        CreateByteField (Local0, 0x02, GCMD)
        Name (BUFF, Buffer (0x0100){})
        BUFF [Zero] = Zero
        Name (WBUF, Buffer (One)
        {
             0xF1                                             // .
        })
        Name (WDBF, Buffer (0x04)
        {
             0x00                                             // .
        })
        BUFF [Zero] = One
        If ((GCMD == One))
        {
            WBUF [Zero] = GCMD /* \THMS.GCMD */
            WDBF = \_SB.IC16.ECCD (0x02, 0xE9, One, WBUF, 0x02)
            If ((DerefOf (WDBF [Zero]) == 0x40))
            {
                BUFF [Zero] = Zero
                BUFF [One] = 0x40
                Return (BUFF) /* \THMS.BUFF */
            }

            BUFF [Zero] = Zero
            BUFF [One] = One
            \_SB.TZ31.TPSV = 0x0D02
            Notify (\_SB.TZ31, 0x81) // Information Change
            \_SB.TZ32.TPSV = 0x0D2A
            Notify (\_SB.TZ32, 0x81) // Information Change
            \_SB.TZ33.TPSV = 0x0D52
            Notify (\_SB.TZ33, 0x81) // Information Change
            Return (BUFF) /* \THMS.BUFF */
        }

        If ((GCMD == Zero))
        {
            WBUF [Zero] = Zero
            \_SB.IC16.ECCD (0x02, 0xE9, One, WBUF, 0x02)
            BUFF [Zero] = Zero
            BUFF [One] = 0x02
            \_SB.TZ31.TPSV = 0x0CA8
            Notify (\_SB.TZ31, 0x81) // Information Change
            \_SB.TZ32.TPSV = 0x0C8A
            Notify (\_SB.TZ32, 0x81) // Information Change
            \_SB.TZ33.TPSV = 0x0D34
            Notify (\_SB.TZ33, 0x81) // Information Change
            Return (BUFF) /* \THMS.BUFF */
        }

        If ((GCMD == 0x03))
        {
            WBUF [Zero] = GCMD /* \THMS.GCMD */
            WDBF = \_SB.IC16.ECCD (0x02, 0xE9, One, WBUF, 0x02)
            If ((DerefOf (WDBF [Zero]) == 0x40))
            {
                BUFF [Zero] = Zero
                BUFF [One] = 0x41
                Return (BUFF) /* \THMS.BUFF */
            }

            BUFF [Zero] = Zero
            BUFF [One] = 0x03
            \_SB.TZ31.TPSV = 0x0D02
            Notify (\_SB.TZ31, 0x81) // Information Change
            \_SB.TZ32.TPSV = 0x0D2A
            Notify (\_SB.TZ32, 0x81) // Information Change
            \_SB.TZ33.TPSV = 0x0D52
            Notify (\_SB.TZ33, 0x81) // Information Change
            Return (BUFF) /* \THMS.BUFF */
        }

        If ((GCMD == 0x02))
        {
            WBUF [Zero] = 0x02
            \_SB.IC16.ECCD (0x02, 0xE9, One, WBUF, 0x02)
            BUFF [Zero] = Zero
            BUFF [One] = 0x04
            \_SB.TZ31.TPSV = 0x0CA8
            Notify (\_SB.TZ31, 0x81) // Information Change
            \_SB.TZ32.TPSV = 0x0C8A
            Notify (\_SB.TZ32, 0x81) // Information Change
            \_SB.TZ33.TPSV = 0x0D34
            Notify (\_SB.TZ33, 0x81) // Information Change
            Return (BUFF) /* \THMS.BUFF */
        }

        Return (BUFF) /* \THMS.BUFF */
    }

    OperationRegion (GNVS, SystemMemory, 0xFFF20000, 0x1002)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        TSOP,   64, 
        DPTR,   64, 
        EPTR,   64, 
        CPTR,   64, 
        UPTR,   64, 
        ULEN,   32, 
        SECB,   8, 
        USBE,   8, 
        HDDE,   8, 
        PXEE,   8, 
        UPKS,   8, 
        OSAR,   8, 
        BDEV,   8, 
        HWSR,   8, 
        ATTE,   8, 
        TPMS,   8, 
        BATN,   256, 
        RSVE,   32080
    }

    Mutex (MMUT, 0x00)
    Method (GSTP, 1, NotSerialized)
    {
        Name (BUFF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        Local0 = Arg0
        CreateByteField (Local0, 0x02, ITEM)
        CreateByteField (BUFF, Zero, STAT)
        STAT = One
        If ((ITEM == Zero))
        {
            STAT = Zero
            BUFF [One] = SECB /* \SECB */
        }

        If ((ITEM == 0x10))
        {
            STAT = Zero
            BUFF [One] = TPMS /* \TPMS */
        }

        If ((ITEM == 0x21))
        {
            STAT = Zero
            BUFF [One] = HDDE /* \HDDE */
        }

        If ((ITEM == 0x22))
        {
            STAT = Zero
            BUFF [One] = PXEE /* \PXEE */
        }

        If ((ITEM == 0x30))
        {
            STAT = Zero
            BUFF [One] = UPKS /* \UPKS */
        }

        If ((ITEM == 0x41))
        {
            STAT = Zero
            BUFF [One] = OSAR /* \OSAR */
        }

        If ((ITEM == 0x42))
        {
            STAT = Zero
            BUFF [One] = HWSR /* \HWSR */
        }

        If ((ITEM == 0x50))
        {
            STAT = Zero
            BUFF [One] = BDEV /* \BDEV */
        }

        Return (BUFF) /* \GSTP.BUFF */
    }
}

