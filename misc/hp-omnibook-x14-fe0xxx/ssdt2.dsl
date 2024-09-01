/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt2.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000CE96 (52886)
 *     Revision         0x01
 *     Checksum         0x85
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "8CBE    "
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "HP  "
 *     Compiler Version 0x20230628 (539166248)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "8CBE    ", 0x00001000)
{
    External (_SB_.IC10, DeviceObj)
    External (_SB_.UCS0.ECC0, IntObj)
    External (_SB_.UCS0.ECC1, IntObj)
    External (BSCH, MethodObj)    // 0 Arguments
    External (BSCT, MethodObj)    // 0 Arguments
    External (BSCY, MethodObj)    // 0 Arguments
    External (BSDC, MethodObj)    // 0 Arguments
    External (BSDN, MethodObj)    // 0 Arguments
    External (BSDV, MethodObj)    // 0 Arguments
    External (BSFC, MethodObj)    // 0 Arguments
    External (BSMD, MethodObj)    // 0 Arguments
    External (BSME, MethodObj)    // 0 Arguments
    External (BSMN, MethodObj)    // 0 Arguments
    External (BSRC, MethodObj)    // 0 Arguments
    External (BSSN, MethodObj)    // 0 Arguments
    External (PBDE, MethodObj)    // 0 Arguments
    External (SSMP, FieldUnitObj)

    Scope (\_SB)
    {
        Mutex (OEMX, 0x00)
    }

    Scope (\_SB.IC10)
    {
        Name (ECIC, ResourceTemplate ()
        {
            I2cSerialBusV2 (0x0028, ControllerInitiated, 0x00061A80,
                AddressingMode7Bit, "\\_SB.IC10",
                0x00, ResourceConsumer, , Exclusive,
                )
        })
        OperationRegion (ICCR, GenericSerialBus, Zero, 0x0100)
        Field (ICCR, BufferAcc, NoLock, Preserve)
        {
            Connection (ECIC), 
            AccessAs (BufferAcc, AttribRawProcessBytes (0x01)), 
            IC01,   8, 
            AccessAs (BufferAcc, AttribRawBytes (0x05)), 
            IC05,   8, 
            AccessAs (BufferAcc, AttribBytes (0x20)), 
            Offset (0xE0), 
            ICE0,   8, 
            ICE1,   8, 
            Offset (0xED), 
            ICED,   8, 
            ICEE,   8, 
            ICEF,   8
        }

        Name (ECB1, Buffer (0x06)
        {
             0x00, 0x04, 0x00, 0x00, 0x00, 0x00               // ......
        })
        CreateByteField (ECB1, Zero, EB10)
        CreateByteField (ECB1, One, EB11)
        CreateByteField (ECB1, 0x02, EB12)
        CreateWordField (ECB1, 0x03, EB13)
        CreateByteField (ECB1, 0x05, EB15)
        Name (ECB5, Buffer (0x07)
        {
             0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00         // .......
        })
        CreateByteField (ECB5, Zero, EB50)
        CreateByteField (ECB5, One, EB51)
        CreateByteField (ECB5, 0x02, EB52)
        CreateWordField (ECB5, 0x03, EB53)
        CreateByteField (ECB5, 0x05, EB55)
        CreateByteField (ECB5, 0x06, EB56)
        Method (RDMB, 1, Serialized)
        {
            Acquire (\_SB.OEMX, 0xFFFF)
            EB11 = 0x04
            EB12 = Zero
            EB13 = Arg0
            EB15 = One
            ECB1 = IC01 = ECB1 /* \_SB_.IC10.ECB1 */
            If ((EB10 == Zero))
            {
                Stall (0x05)
                Release (\_SB.OEMX)
                Return (EB12) /* \_SB_.IC10.EB12 */
            }

            Stall (0x05)
            Release (\_SB.OEMX)
            Return (0xFF)
        }

        Method (WRMB, 2, Serialized)
        {
            Acquire (\_SB.OEMX, 0xFFFF)
            EB51 = 0x05
            EB52 = One
            EB53 = Arg0
            EB55 = One
            EB56 = Arg1
            IC05 = ECB5 /* \_SB_.IC10.ECB5 */
            If ((EB50 == Zero))
            {
                Stall (0x05)
            }

            Stall (0x05)
            Release (\_SB.OEMX)
        }

        Method (RDEC, 1, Serialized)
        {
            Acquire (\_SB.OEMX, 0xFFFF)
            EB11 = 0x04
            EB12 = 0x02
            EB13 = (0xFF & Arg0)
            EB15 = One
            ECB1 = IC01 = ECB1 /* \_SB_.IC10.ECB1 */
            If ((EB10 == Zero))
            {
                Stall (0x05)
                Release (\_SB.OEMX)
                Return (EB12) /* \_SB_.IC10.EB12 */
            }

            Stall (0x05)
            Release (\_SB.OEMX)
            Return (0xFF)
        }

        Method (WREC, 2, Serialized)
        {
            Acquire (\_SB.OEMX, 0xFFFF)
            EB51 = 0x05
            EB52 = 0x03
            EB53 = (0xFF & Arg0)
            EB55 = One
            EB56 = Arg1
            IC05 = ECB5 /* \_SB_.IC10.ECB5 */
            If ((EB50 == Zero))
            {
                Stall (0x05)
            }

            Stall (0x05)
            Release (\_SB.OEMX)
        }

        Method (WRER, 2, Serialized)
        {
            Acquire (\_SB.OEMX, 0xFFFF)
            EB51 = 0x05
            EB52 = 0x03
            EB53 = (0xFF & Arg0)
            EB55 = One
            EB56 = Arg1
            IC05 = ECB5 /* \_SB_.IC10.ECB5 */
            If ((EB50 == Zero))
            {
                Stall (0x05)
                Release (\_SB.OEMX)
                Return (Zero)
            }

            Stall (0x05)
            Release (\_SB.OEMX)
            Return (0xFF)
        }

        Method (INTR, 0, NotSerialized)
        {
            Acquire (\_SB.OEMX, 0xFFFF)
            EB11 = 0x04
            EB12 = 0xF0
            EB13 = Zero
            EB15 = One
            ECB1 = IC01 = ECB1 /* \_SB_.IC10.ECB1 */
            If ((EB10 == Zero))
            {
                Stall (0x05)
                Release (\_SB.OEMX)
                Return (EB12) /* \_SB_.IC10.EB12 */
            }

            Stall (0x05)
            Release (\_SB.OEMX)
            Return (0xFF)
        }

        Method (AOEC, 3, Serialized)
        {
            Local0 = RDEC (Arg0)
            Local0 &= Arg1
            Local0 |= Arg2
            WREC (Arg0, Local0)
        }

        Method (ICRC, 1, Serialized)
        {
            Name (TPBF, Buffer (0x22){})
            If ((Arg0 == 0xEE))
            {
                TPBF = ICEE /* \_SB_.IC10.ICEE */
            }

            If ((Arg0 == 0xEF))
            {
                TPBF = ICEF /* \_SB_.IC10.ICEF */
            }

            Return (TPBF) /* \_SB_.IC10.ICRC.TPBF */
        }

        Method (ICWC, 2, Serialized)
        {
            Local0 = Zero
            Name (TPBF, Buffer (0x22){})
            TPBF = Arg1
            If ((Arg0 == 0xE0))
            {
                ICE0 = TPBF /* \_SB_.IC10.ICWC.TPBF */
            }

            If ((Arg0 == 0xE1))
            {
                ICE1 = TPBF /* \_SB_.IC10.ICWC.TPBF */
            }

            If ((Arg0 == 0xED))
            {
                ICED = TPBF /* \_SB_.IC10.ICWC.TPBF */
            }

            Return (TPBF) /* \_SB_.IC10.ICWC.TPBF */
        }
    }

    Scope (\_SB)
    {
        Name (EPST, Zero)
        Name (ERDL, Zero)
        Method (UBBF, 4, NotSerialized)
        {
            Local0 = (Arg3 * 0x08)
            CreateField (Arg0, Arg1, Local0, TBUF)
            TBUF = Arg2
        }

        Method (RBBF, 3, NotSerialized)
        {
            Local1 = (Arg2 * 0x08)
            CreateField (Arg0, Arg1, Local1, TBUF)
            Local0 = TBUF /* \_SB_.RBBF.TBUF */
            Return (Local0)
        }

        Method (ECRC, 1, NotSerialized)
        {
            Acquire (\_SB.OEMX, 0xFFFF)
            Local1 = Buffer (0x0400){}
            \_SB.WMID.EHWB = Buffer (0x0400){}
            \_SB.WMID.HWRC = Zero
            \_SB.EPST = Zero
            \_SB.ERDL = Zero
            Name (OFST, Zero)
            Name (BUFF, Buffer (0x22){})
            Name (BUF2, Buffer (0x22){})
            CreateByteField (BUFF, Zero, STAT)
            CreateByteField (BUFF, One, LEN)
            CreateByteField (BUF2, Zero, STA2)
            CreateByteField (BUF2, One, LEN2)
            CreateWordField (BUFF, 0x02, CIDX)
            LEN = 0x02
            CIDX = ToInteger (Arg0)
            BUFF = \_SB.IC10.ICWC (0xE0, BUFF)
            If ((STAT != Zero))
            {
                \_SB.EPST = 0xE1
                Release (\_SB.OEMX)
                Return (0xE1)
            }

            CreateByteField (BUFF, 0x02, CSTS)
            CreateByteField (BUFF, 0x03, DLEN)
            CreateField (BUF2, 0x10, 0x0100, DBUF)
            OFST = Zero
            While (One)
            {
                BUFF = Buffer (0x22){}
                LEN = One
                BUFF = \_SB.IC10.ICRC (0xEE)
                If ((STAT != Zero))
                {
                    \_SB.EPST = 0xE2
                    Release (\_SB.OEMX)
                    Return (0xE2)
                }

                If ((CSTS == 0x81))
                {
                    If ((DLEN >= 0x20))
                    {
                        LEN2 = 0x20
                    }
                    Else
                    {
                        LEN2 = DLEN /* \_SB_.ECRC.DLEN */
                    }

                    If ((DLEN > \_SB.ERDL))
                    {
                        \_SB.ERDL = DLEN /* \_SB_.ECRC.DLEN */
                    }

                    If ((DLEN == Zero))
                    {
                        \_SB.EPST = 0xE3
                    }

                    BUF2 = Buffer (0x22){}
                    BUF2 = \_SB.IC10.ICRC (0xEF)
                    UBBF (Local1, OFST, DBUF, 0x20)
                    OFST += 0x0100 /* \_SB_.ECRC.OFST */
                }

                If ((CSTS == 0x80))
                {
                    Break
                }

                If ((CSTS == Zero))
                {
                    Stall (0x05)
                }
            }

            \_SB.WMID.EHWB = Local1
            Release (\_SB.OEMX)
            Return (Zero)
        }

        Method (ECWC, 3, NotSerialized)
        {
            Acquire (\_SB.OEMX, 0xFFFF)
            Local0 = Arg2
            \_SB.EPST = Zero
            Name (OFST, Zero)
            Name (BUFF, Buffer (0x22){})
            Name (BUF2, Buffer (0x22){})
            CreateByteField (BUFF, Zero, STAT)
            CreateByteField (BUFF, One, LEN)
            CreateByteField (BUF2, Zero, STA2)
            CreateByteField (BUF2, One, LEN2)
            CreateWordField (BUFF, 0x02, CIDX)
            CreateByteField (BUFF, 0x04, DLEN)
            CIDX = ToInteger (Arg0)
            DLEN = ToInteger (Arg1)
            BUFF = \_SB.IC10.ICWC (0xE1, BUFF)
            If ((STAT != Zero))
            {
                \_SB.EPST = 0xE4
                Release (\_SB.OEMX)
                Return (0xE4)
            }

            CreateByteField (BUFF, 0x02, CSTS)
            CreateByteField (BUFF, 0x03, DLN2)
            CreateField (BUF2, 0x10, 0x0100, DBUF)
            OFST = Zero
            While (One)
            {
                BUFF = Buffer (0x22){}
                LEN = One
                BUFF = \_SB.IC10.ICRC (0xEE)
                If ((STAT != Zero))
                {
                    \_SB.EPST = 0xE5
                    Release (\_SB.OEMX)
                    Return (0xE5)
                }

                If ((CSTS == 0x81))
                {
                    If ((DLN2 >= 0x20))
                    {
                        LEN2 = 0x20
                    }
                    Else
                    {
                        LEN2 = DLN2 /* \_SB_.ECWC.DLN2 */
                    }

                    BUF2 = Buffer (0x22){}
                    DBUF = RBBF (Local0, OFST, 0x20)
                    BUF2 = \_SB.IC10.ICWC (0xED, BUF2)
                    If ((STA2 != Zero))
                    {
                        \_SB.EPST = 0xE6
                        Release (\_SB.OEMX)
                        Return (0xE6)
                    }

                    OFST += 0x0100 /* \_SB_.ECWC.OFST */
                }

                If ((CSTS == 0x80))
                {
                    Break
                }

                If ((CSTS == Zero))
                {
                    Stall (0x05)
                }
            }

            Release (\_SB.OEMX)
            Return (Zero)
        }
    }

    Method (HODW, 1, NotSerialized)
    {
        CreateDWordField (Arg0, 0x10, IEAX)
        CreateWordField (Arg0, 0x10, INAX)
        CreateByteField (Arg0, 0x10, INAL)
        CreateByteField (Arg0, 0x11, INAH)
        CreateDWordField (Arg0, 0x14, IEBX)
        CreateWordField (Arg0, 0x14, INBX)
        CreateByteField (Arg0, 0x14, INBL)
        CreateByteField (Arg0, 0x15, INBH)
        CreateDWordField (Arg0, 0x18, IECX)
        CreateWordField (Arg0, 0x18, INCX)
        CreateByteField (Arg0, 0x18, INCL)
        CreateByteField (Arg0, 0x19, INCH)
        CreateDWordField (Arg0, 0x1C, IEDX)
        CreateWordField (Arg0, 0x1C, INDX)
        CreateByteField (Arg0, 0x1C, INDL)
        CreateByteField (Arg0, 0x1D, INDH)
        CreateDWordField (Arg0, 0x20, CFLG)
        CreateDWordField (Arg0, 0x24, IESI)
        CreateWordField (Arg0, 0x24, INSI)
        CreateDWordField (Arg0, 0x28, IEDI)
        CreateWordField (Arg0, 0x28, INDI)
        Local0 = Package (0x03)
            {
                Zero, 
                0x1C, 
                Buffer (0x1C){}
            }
        DerefOf (Local0 [0x02]) [0x10] = One
        DerefOf (Local0 [0x02]) [One] = 0x86
        If ((IEAX == 0x9611))
        {
            If ((INBL == 0x2B))
            {
                If ((INBH == Zero))
                {
                    If ((INCL == 0x10))
                    {
                        DerefOf (Local0 [0x02]) [0x0C] = 0x06
                        DerefOf (Local0 [0x02]) [0x10] = Zero
                        DerefOf (Local0 [0x02]) [One] = Zero
                    }

                    If ((INCL == 0x11))
                    {
                        DerefOf (Local0 [0x02]) [0x0C] = One
                        DerefOf (Local0 [0x02]) [0x10] = Zero
                        DerefOf (Local0 [0x02]) [One] = Zero
                    }

                    If ((INCL == 0x20))
                    {
                        If ((INCH == Zero))
                        {
                            Local1 = \_SB.IC10.RDEC (0xA8)
                            DerefOf (Local0 [0x02]) [0x0C] = Local1
                            DerefOf (Local0 [0x02]) [0x0D] = \_SB.IC10.RDEC (0xA0)
                            DerefOf (Local0 [0x02]) [0x10] = Zero
                            DerefOf (Local0 [0x02]) [One] = Zero
                        }

                        If ((INCH == One))
                        {
                            Local1 = \_SB.IC10.RDEC (0xA9)
                            DerefOf (Local0 [0x02]) [0x0C] = Local1
                            DerefOf (Local0 [0x02]) [0x0D] = \_SB.IC10.RDEC (0xA1)
                            DerefOf (Local0 [0x02]) [0x10] = Zero
                            DerefOf (Local0 [0x02]) [One] = Zero
                        }

                        If ((INCH == 0x02))
                        {
                            Local1 = \_SB.IC10.RDEC (0xAA)
                            DerefOf (Local0 [0x02]) [0x0C] = Local1
                            DerefOf (Local0 [0x02]) [0x0D] = \_SB.IC10.RDEC (0xA2)
                            DerefOf (Local0 [0x02]) [0x10] = Zero
                            DerefOf (Local0 [0x02]) [One] = Zero
                        }

                        If ((INCH == 0x03))
                        {
                            Local1 = \_SB.IC10.RDEC (0xAB)
                            DerefOf (Local0 [0x02]) [0x0C] = Local1
                            DerefOf (Local0 [0x02]) [0x0D] = \_SB.IC10.RDEC (0xA3)
                            DerefOf (Local0 [0x02]) [0x10] = Zero
                            DerefOf (Local0 [0x02]) [One] = Zero
                        }

                        If ((INCH == 0x04))
                        {
                            Local1 = \_SB.IC10.RDEC (0xAC)
                            DerefOf (Local0 [0x02]) [0x0C] = Local1
                            DerefOf (Local0 [0x02]) [0x0D] = \_SB.IC10.RDEC (0xA4)
                            DerefOf (Local0 [0x02]) [0x10] = Zero
                            DerefOf (Local0 [0x02]) [One] = Zero
                        }

                        If ((INCH == 0x05))
                        {
                            Local1 = \_SB.IC10.RDEC (0xAD)
                            DerefOf (Local0 [0x02]) [0x0C] = Local1
                            DerefOf (Local0 [0x02]) [0x0D] = \_SB.IC10.RDEC (0xA5)
                            DerefOf (Local0 [0x02]) [0x10] = Zero
                            DerefOf (Local0 [0x02]) [One] = Zero
                        }
                    }

                    If ((INCL == 0x21))
                    {
                        If ((INCH == Zero))
                        {
                            Local1 = \_SB.IC10.RDEC (0x95)
                            DerefOf (Local0 [0x02]) [0x0C] = Local1
                            DerefOf (Local0 [0x02]) [0x0D] = Zero
                            DerefOf (Local0 [0x02]) [0x10] = Zero
                            DerefOf (Local0 [0x02]) [One] = Zero
                        }
                    }
                }

                If ((INBH == 0x02))
                {
                    If ((INCH == Zero))
                    {
                        If (((INCL >= Zero) && (INCL <= 0xFF)))
                        {
                            \_SB.IC10.AOEC (0x93, 0xEF, 0x10)
                            \_SB.IC10.WREC (0x94, INCL)
                            DerefOf (Local0 [0x02]) [0x10] = Zero
                            DerefOf (Local0 [0x02]) [One] = Zero
                        }
                    }
                }

                If ((INBH == 0x10))
                {
                    \_SB.IC10.AOEC (0x93, 0xEF, 0x10)
                }
            }

            If ((INBL == 0x31))
            {
                If ((INBH == Zero))
                {
                    Local1 = \_SB.IC10.RDEC (INCH)
                    DerefOf (Local0 [0x02]) [0x08] = Local1
                    DerefOf (Local0 [0x02]) [0x10] = Zero
                    DerefOf (Local0 [0x02]) [One] = Zero
                }

                If ((INBH == One))
                {
                    \_SB.IC10.WREC (INCH, INCL)
                    DerefOf (Local0 [0x02]) [0x10] = Zero
                    DerefOf (Local0 [0x02]) [One] = Zero
                }

                If ((INBH == 0x02))
                {
                    Local1 = \_SB.IC10.RDMB (INDX)
                    DerefOf (Local0 [0x02]) [0x08] = Local1
                    DerefOf (Local0 [0x02]) [0x10] = Zero
                    DerefOf (Local0 [0x02]) [One] = Zero
                }

                If ((INBH == 0x03))
                {
                    \_SB.IC10.WRMB (INDX, INCL)
                    DerefOf (Local0 [0x02]) [0x10] = Zero
                    DerefOf (Local0 [0x02]) [One] = Zero
                }

                If ((INBH == 0x04))
                {
                    DerefOf (Local0 [0x02]) [0x08] = \_SB.UCS0.ECC0 /* External reference */
                    DerefOf (Local0 [0x02]) [0x0C] = \_SB.UCS0.ECC1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x10] = Zero
                    DerefOf (Local0 [0x02]) [One] = Zero
                }
            }
        }

        Return (Local0)
    }

    Scope (\_SB)
    {
        Method (WQET, 1, Serialized)
        {
            Switch (ToInteger (Arg0))
            {
                Case (0x1B)
                {
                    Local0 = \_SB.IC10.RDEC (0x58)
                    Local1 = \_SB.IC10.RDEC (0x57)
                    If (((Local1 == 0x70) && (Local0 == 0x02)))
                    {
                        \_SB.WMID.GWET (0x04, 0x0270)
                    }

                    If (((Local1 == 0xA6) && (Local0 == 0x21)))
                    {
                        \_SB.WMID.GWET (0x1D, 0x21A6)
                    }

                    If (((Local1 == 0xA7) && (Local0 == 0x21)))
                    {
                        \_SB.WMID.GWET (0x1D, 0x21A7)
                    }

                    If (((Local1 == 0xA8) && (Local0 == 0x21)))
                    {
                        Local2 = \_SB.IC10.RDEC (0x9C)
                        Local2 &= One
                        If (Local2)
                        {
                            \_SB.WMID.GWET (0x1D, 0x000121A8)
                        }
                        Else
                        {
                            \_SB.WMID.GWET (0x1D, 0x21A8)
                        }
                    }
                }
                Default
                {
                }

            }
        }
    }

    Mutex (MSMT, 0x00)
    Scope (\_SB)
    {
        Name (ETYP, Buffer (One){})
        Device (\_SB.WMID)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (WEI1, Buffer (0x04)
            {
                 0x00                                             // .
            })
            Name (WED1, Buffer (0x04)
            {
                 0x00                                             // .
            })
            Name (WEI2, Zero)
            Name (WED2, Zero)
            Name (WEVT, Zero)
            Name (IWOA, One)
            Name (_WDG, Buffer (0x0104)
            {
                /* 0000 */  0x34, 0xF0, 0xB7, 0x5F, 0x63, 0x2C, 0xE9, 0x45,  // 4.._c,.E
                /* 0008 */  0xBE, 0x91, 0x3D, 0x44, 0xE2, 0xC7, 0x07, 0xE4,  // ..=D....
                /* 0010 */  0x41, 0x41, 0x01, 0x02, 0x79, 0x42, 0xF2, 0x95,  // AA..yB..
                /* 0018 */  0x7B, 0x4D, 0x34, 0x43, 0x93, 0x87, 0xAC, 0xCD,  // {M4C....
                /* 0020 */  0xC6, 0x7E, 0xF6, 0x1C, 0x80, 0x00, 0x01, 0x08,  // .~......
                /* 0028 */  0x18, 0x43, 0x81, 0x2B, 0xE8, 0x4B, 0x07, 0x47,  // .C.+.K.G
                /* 0030 */  0x9D, 0x84, 0xA1, 0x90, 0xA8, 0x59, 0xB5, 0xD0,  // .....Y..
                /* 0038 */  0xA0, 0x00, 0x01, 0x08, 0x21, 0x12, 0x90, 0x05,  // ....!...
                /* 0040 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                /* 0048 */  0xC9, 0x06, 0x29, 0x10, 0x41, 0x42, 0x01, 0x00,  // ..).AB..
                /* 0050 */  0xEB, 0x91, 0x4C, 0x1F, 0x5C, 0xDC, 0x0B, 0x46,  // ..L.\..F
                /* 0058 */  0x95, 0x1D, 0xC7, 0xCB, 0x9B, 0x4B, 0x8D, 0x5E,  // .....K.^
                /* 0060 */  0x42, 0x41, 0x01, 0x02, 0x49, 0x4B, 0x11, 0x2D,  // BA..IK.-
                /* 0068 */  0xFB, 0x2D, 0x30, 0x41, 0xB8, 0xFE, 0x4A, 0x3C,  // .-0A..J<
                /* 0070 */  0x09, 0xE7, 0x51, 0x33, 0x42, 0x43, 0x45, 0x00,  // ..Q3BCE.
                /* 0078 */  0xE3, 0x08, 0x8D, 0x98, 0xF4, 0x68, 0x35, 0x4C,  // .....h5L
                /* 0080 */  0xAF, 0x3E, 0x6A, 0x1B, 0x81, 0x06, 0xF8, 0x3C,  // .>j....<
                /* 0088 */  0x42, 0x44, 0x1A, 0x00, 0x46, 0x97, 0xEA, 0x14,  // BD..F...
                /* 0090 */  0x1F, 0xCE, 0x98, 0x40, 0xA0, 0xE0, 0x70, 0x45,  // ...@..pE
                /* 0098 */  0xCB, 0x4D, 0xA7, 0x45, 0x42, 0x45, 0x03, 0x00,  // .M.EBE..
                /* 00A0 */  0x28, 0x20, 0x2F, 0x32, 0x84, 0x0F, 0x01, 0x49,  // ( /2...I
                /* 00A8 */  0x98, 0x8E, 0x01, 0x51, 0x76, 0x04, 0x9E, 0x2D,  // ...Qv..-
                /* 00B0 */  0x42, 0x46, 0x01, 0x00, 0x3D, 0xDE, 0x32, 0x82,  // BF..=.2.
                /* 00B8 */  0x3D, 0x66, 0x27, 0x43, 0xA8, 0xF4, 0xE2, 0x93,  // =f'C....
                /* 00C0 */  0xAD, 0xB9, 0xBF, 0x05, 0x42, 0x47, 0x00, 0x00,  // ....BG..
                /* 00C8 */  0x36, 0x64, 0x1F, 0x8F, 0x42, 0x9F, 0xC8, 0x42,  // 6d..B..B
                /* 00D0 */  0xBA, 0xDC, 0x0E, 0x94, 0x24, 0xF2, 0x0C, 0x9A,  // ....$...
                /* 00D8 */  0x42, 0x48, 0x00, 0x00, 0x35, 0x64, 0x1F, 0x8F,  // BH..5d..
                /* 00E0 */  0x42, 0x9F, 0xC8, 0x42, 0xBA, 0xDC, 0x0E, 0x94,  // B..B....
                /* 00E8 */  0x24, 0xF2, 0x0C, 0x9A, 0x42, 0x49, 0x00, 0x00,  // $...BI..
                /* 00F0 */  0xB6, 0x63, 0x4E, 0xDF, 0xBC, 0x3B, 0x58, 0x48,  // .cN..;XH
                /* 00F8 */  0x97, 0x37, 0xC7, 0x4F, 0x82, 0xF8, 0x21, 0xF3,  // .7.O..!.
                /* 0100 */  0x42, 0x4A, 0x00, 0x00                           // BJ..
            })
            Name (EVNT, Package (0x03)
            {
                Package (0x05)
                {
                    "Unknown Event", 
                    "Unknown event type", 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x05)
                {
                    "Unknown Event", 
                    "Unknown event type", 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x05)
                {
                    "Unknown Event", 
                    "Unknown event type", 
                    Zero, 
                    Zero, 
                    Zero
                }
            })
            OperationRegion (HNVS, SystemMemory, 0xD46D9018, 0x000014EE)
            Field (HNVS, AnyAcc, NoLock, Preserve)
            {
                SIGN,   32, 
                REVN,   32, 
                HWBC,   32, 
                HWCT,   32, 
                HWRC,   8, 
                HWBF,   1024, 
                EHWB,   8192, 
                WHWB,   32768, 
                IAOR,   8, 
                CDAT,   32, 
                WLVD,   16, 
                WLDD,   16, 
                WLSV,   16, 
                WLSS,   16, 
                BTVD,   16, 
                BTDD,   16, 
                WWVD,   16, 
                WWDD,   16, 
                GPVD,   16, 
                GPDD,   16, 
                FACM,   16, 
                SMA4,   8, 
                WIVD,   16, 
                WIDD,   16, 
                RCKP,   8, 
                HDSM,   16, 
                HD1H,   64, 
                HD2H,   64, 
                OD1H,   64, 
                EBUR,   8, 
                HD1P,   16, 
                HD1M,   16, 
                HD2P,   16, 
                HD2M,   16, 
                OD1P,   16, 
                OD1M,   16, 
                HBUP,   8, 
                HSIN,   8, 
                HJVS,   8, 
                HTVS,   8, 
                HTST,   8, 
                HBTE,   8, 
                BRTE,   8, 
                ABTE,   8, 
                OLVD,   16, 
                OLDD,   16, 
                WSTF,   8, 
                MPMM,   8, 
                HROL,   8, 
                FBAQ,   8, 
                HF01,   8, 
                HRSV,   32
            }

            Name (FSB0, Zero)
            Name (FSB1, Zero)
            Name (FSB2, Zero)
            Name (FSB3, Zero)
            Name (FSB4, Zero)
            Name (FSB5, Zero)
            Name (FSB6, Zero)
            OperationRegion (OHFL, SystemMemory, 0xD46D8018, 0x0000002A)
            Field (OHFL, AnyAcc, NoLock, Preserve)
            {
                Offset (0x00), 
                Offset (0x01), 
                Offset (0x02), 
                HL00,   1, 
                Offset (0x03), 
                Offset (0x04), 
                HL01,   1, 
                Offset (0x05), 
                Offset (0x06), 
                Offset (0x07), 
                Offset (0x08), 
                    ,   6, 
                HL02,   1, 
                Offset (0x09), 
                Offset (0x0A), 
                Offset (0x0B), 
                Offset (0x0C), 
                Offset (0x0D), 
                Offset (0x0E), 
                Offset (0x0F), 
                Offset (0x10), 
                Offset (0x11), 
                Offset (0x12), 
                Offset (0x13), 
                Offset (0x14), 
                Offset (0x15), 
                Offset (0x16), 
                Offset (0x17), 
                Offset (0x18), 
                Offset (0x19), 
                Offset (0x1A), 
                Offset (0x1B), 
                Offset (0x1C), 
                Offset (0x1D), 
                Offset (0x1E), 
                Offset (0x1F), 
                Offset (0x20), 
                    ,   7, 
                HL03,   1, 
                Offset (0x21), 
                Offset (0x22), 
                Offset (0x23), 
                Offset (0x24), 
                Offset (0x25), 
                Offset (0x26), 
                Offset (0x27), 
                Offset (0x28)
            }

            Name (WQAB, Buffer (0x2135)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0x25, 0x21, 0x00, 0x00, 0xB0, 0xCB, 0x00, 0x00,  // %!......
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x28, 0x27, 0xA1, 0x00, 0x01, 0x06, 0x18, 0x42,  // ('.....B
                /* 0020 */  0x10, 0x4D, 0x10, 0x92, 0x46, 0x62, 0x02, 0x89,  // .M..Fb..
                /* 0028 */  0x80, 0x90, 0x18, 0x18, 0x14, 0x81, 0x85, 0x00,  // ........
                /* 0030 */  0x49, 0x02, 0x88, 0xC4, 0x41, 0xE1, 0x20, 0xD4,  // I...A. .
                /* 0038 */  0x9F, 0x40, 0x7E, 0x05, 0x20, 0x74, 0x28, 0x40,  // .@~. t(@
                /* 0040 */  0xA6, 0x00, 0x83, 0x02, 0x9C, 0x22, 0x88, 0xA0,  // ....."..
                /* 0048 */  0x57, 0x01, 0x36, 0x05, 0x98, 0x14, 0x60, 0x51,  // W.6...`Q
                /* 0050 */  0x80, 0x76, 0x01, 0x96, 0x05, 0xE8, 0x16, 0x20,  // .v..... 
                /* 0058 */  0x1D, 0x96, 0x88, 0x04, 0x47, 0x89, 0x01, 0x47,  // ....G..G
                /* 0060 */  0xE9, 0xC4, 0x16, 0x6E, 0xD8, 0xE0, 0x85, 0xA2,  // ...n....
                /* 0068 */  0x68, 0x06, 0x51, 0x12, 0x94, 0x8B, 0x20, 0x5D,  // h.Q... ]
                /* 0070 */  0x10, 0x52, 0x2E, 0xC0, 0x37, 0x82, 0x06, 0x10,  // .R..7...
                /* 0078 */  0xA5, 0x77, 0x01, 0xB6, 0x05, 0x98, 0x86, 0x27,  // .w.....'
                /* 0080 */  0xD2, 0x20, 0xE4, 0x60, 0x08, 0x54, 0xCE, 0x80,  // . .`.T..
                /* 0088 */  0x20, 0x69, 0x44, 0x21, 0x1E, 0xA7, 0x44, 0x08,  //  iD!..D.
                /* 0090 */  0x0A, 0x84, 0x90, 0xD4, 0xF1, 0xA0, 0xA0, 0x71,  // .......q
                /* 0098 */  0x88, 0xAD, 0xCE, 0x46, 0x93, 0xA9, 0x74, 0x7E,  // ...F..t~
                /* 00A0 */  0x48, 0x82, 0x70, 0xC6, 0x2A, 0x7E, 0x3A, 0x9A,  // H.p.*~:.
                /* 00A8 */  0xD0, 0xD9, 0x9C, 0x60, 0xE7, 0x18, 0x72, 0x3C,  // ...`..r<
                /* 00B0 */  0x48, 0xF4, 0x20, 0xB8, 0x00, 0x0F, 0x1C, 0x2C,  // H. ....,
                /* 00B8 */  0x34, 0x84, 0x22, 0x6B, 0x80, 0xC1, 0x8C, 0xDD,  // 4."k....
                /* 00C0 */  0x63, 0xB1, 0x0B, 0x4E, 0x0A, 0xEC, 0x61, 0xB3,  // c..N..a.
                /* 00C8 */  0x01, 0x19, 0xA2, 0x24, 0x38, 0xD4, 0x11, 0xC0,  // ...$8...
                /* 00D0 */  0x12, 0x05, 0x98, 0x1F, 0x87, 0x0C, 0x0F, 0x95,  // ........
                /* 00D8 */  0x8C, 0x25, 0x24, 0x1B, 0xAB, 0x87, 0xC2, 0xA5,  // .%$.....
                /* 00E0 */  0x40, 0x68, 0x6C, 0x27, 0xED, 0x19, 0x45, 0x2C,  // @hl'..E,
                /* 00E8 */  0x79, 0x4A, 0x82, 0x49, 0xE0, 0x51, 0x44, 0x36,  // yJ.I.QD6
                /* 00F0 */  0x1A, 0x27, 0x28, 0x1B, 0x1A, 0x25, 0x03, 0x42,  // .'(..%.B
                /* 00F8 */  0x9E, 0x05, 0x58, 0x07, 0x26, 0x04, 0x76, 0x2F,  // ..X.&.v/
                /* 0100 */  0xC0, 0x9A, 0x00, 0x73, 0xB3, 0x90, 0xB1, 0xB9,  // ...s....
                /* 0108 */  0xE8, 0xFF, 0x0F, 0x71, 0xB0, 0x31, 0xDA, 0x9A,  // ...q.1..
                /* 0110 */  0xAE, 0x90, 0xC2, 0xC4, 0x88, 0x12, 0x2C, 0x5E,  // ......,^
                /* 0118 */  0xC5, 0xC3, 0x10, 0xCA, 0x93, 0x42, 0xA8, 0x48,  // .....B.H
                /* 0120 */  0x95, 0xA1, 0x68, 0xB4, 0x51, 0x2A, 0x14, 0xE0,  // ..h.Q*..
                /* 0128 */  0x4C, 0x80, 0x30, 0x5C, 0x1D, 0x03, 0x82, 0x46,  // L.0\...F
                /* 0130 */  0x88, 0x15, 0x29, 0x56, 0xFB, 0x83, 0x20, 0xF1,  // ..)V.. .
                /* 0138 */  0x2D, 0x40, 0x54, 0x01, 0xA2, 0x48, 0xA3, 0x41,  // -@T..H.A
                /* 0140 */  0x9D, 0x03, 0x3C, 0x5C, 0x0F, 0xF5, 0xF0, 0x3D,  // ..<\...=
                /* 0148 */  0xF6, 0x93, 0x0C, 0x72, 0x90, 0x67, 0xF1, 0xA8,  // ...r.g..
                /* 0150 */  0x70, 0x9C, 0x06, 0x49, 0xE0, 0x0B, 0x80, 0x4F,  // p..I...O
                /* 0158 */  0x08, 0x1E, 0x38, 0xDE, 0x35, 0xA0, 0x66, 0x7C,  // ..8.5.f|
                /* 0160 */  0xBC, 0x4C, 0x10, 0x1C, 0x6A, 0x88, 0x1E, 0x68,  // .L..j..h
                /* 0168 */  0xB8, 0x13, 0x38, 0x44, 0x06, 0xE8, 0x49, 0x3D,  // ..8D..I=
                /* 0170 */  0x52, 0x60, 0x07, 0x77, 0x32, 0xEF, 0x01, 0xAF,  // R`.w2...
                /* 0178 */  0x0A, 0xCD, 0x5E, 0x12, 0x08, 0xC1, 0xF1, 0xF8,  // ..^.....
                /* 0180 */  0x7E, 0xC0, 0x26, 0x9C, 0xC0, 0xF2, 0x07, 0x81,  // ~.&.....
                /* 0188 */  0x1A, 0x99, 0xA1, 0x3D, 0xCA, 0xD3, 0x8A, 0x19,  // ...=....
                /* 0190 */  0xF2, 0x31, 0xC1, 0x04, 0x16, 0x0B, 0x21, 0x05,  // .1....!.
                /* 0198 */  0x10, 0x1A, 0x0F, 0xF8, 0x6F, 0x00, 0x8F, 0x17,  // ....o...
                /* 01A0 */  0xBE, 0x12, 0xC4, 0xF6, 0x80, 0x12, 0x0C, 0x0B,  // ........
                /* 01A8 */  0x21, 0x23, 0xAB, 0xF0, 0x78, 0xE8, 0x28, 0x7C,  // !#..x.(|
                /* 01B0 */  0x95, 0x38, 0x9C, 0xD3, 0x8A, 0x67, 0x82, 0xE1,  // .8...g..
                /* 01B8 */  0x20, 0xF4, 0x05, 0x90, 0x00, 0x51, 0xE7, 0x0C,  //  ....Q..
                /* 01C0 */  0xD4, 0x61, 0xC1, 0xE7, 0x04, 0x76, 0x33, 0x38,  // .a...v38
                /* 01C8 */  0x83, 0x47, 0x00, 0x8F, 0xE4, 0x84, 0xFC, 0x2B,  // .G.....+
                /* 01D0 */  0xF1, 0xC0, 0xE0, 0x03, 0xE2, 0xEF, 0x1F, 0xA7,  // ........
                /* 01D8 */  0xEC, 0x11, 0x9C, 0xA9, 0x01, 0x7D, 0x1C, 0xF0,  // .....}..
                /* 01E0 */  0xFF, 0x7F, 0x28, 0x7C, 0x88, 0x1E, 0xDF, 0x29,  // ..(|...)
                /* 01E8 */  0x1F, 0xAF, 0x4F, 0x17, 0x96, 0x35, 0x4E, 0xE8,  // ..O..5N.
                /* 01F0 */  0x77, 0x08, 0x9F, 0x38, 0x7C, 0x64, 0x71, 0x44,  // w..8|dqD
                /* 01F8 */  0x08, 0x39, 0x39, 0x05, 0xA0, 0x81, 0x4F, 0xF7,  // .99...O.
                /* 0200 */  0xEC, 0x22, 0x9C, 0xAE, 0x27, 0xE5, 0x40, 0xC3,  // ."..'.@.
                /* 0208 */  0xA0, 0xE3, 0x04, 0xC7, 0x79, 0x00, 0x1C, 0xE3,  // ....y...
                /* 0210 */  0x84, 0x7F, 0x2E, 0x80, 0x3F, 0x40, 0x7E, 0xCA,  // ....?@~.
                /* 0218 */  0x78, 0xC5, 0x48, 0xE0, 0x98, 0x23, 0x44, 0x9F,  // x.H..#D.
                /* 0220 */  0x6B, 0x3C, 0x42, 0x2C, 0xFC, 0x53, 0x45, 0xE1,  // k<B,.SE.
                /* 0228 */  0x03, 0x21, 0x63, 0x04, 0x17, 0xA0, 0xC7, 0x08,  // .!c.....
                /* 0230 */  0x7C, 0x03, 0x8E, 0x11, 0x7D, 0x94, 0xE0, 0xEA,  // |...}...
                /* 0238 */  0x0F, 0x1A, 0x74, 0x80, 0xB8, 0xFF, 0xFF, 0x00,  // ..t.....
                /* 0240 */  0xE1, 0x83, 0x7A, 0x80, 0xC0, 0x37, 0xFA, 0xD1,  // ..z..7..
                /* 0248 */  0x03, 0x3D, 0x2E, 0x8B, 0x3E, 0x0F, 0xC8, 0xF8,  // .=..>...
                /* 0250 */  0x89, 0x46, 0xF3, 0xE2, 0xA7, 0x03, 0x7E, 0xF8,  // .F....~.
                /* 0258 */  0x00, 0x0F, 0xA8, 0x87, 0x84, 0x03, 0xC5, 0x4C,  // .......L
                /* 0260 */  0x9B, 0x83, 0x3E, 0xBB, 0x1C, 0x3A, 0x76, 0xB8,  // ..>..:v.
                /* 0268 */  0xE0, 0x3F, 0x81, 0x80, 0x4B, 0xDE, 0x21, 0x0C,  // .?..K.!.
                /* 0270 */  0x14, 0x23, 0xC6, 0x9F, 0x83, 0x7C, 0x0A, 0x03,  // .#...|..
                /* 0278 */  0xFF, 0xFF, 0xFF, 0x14, 0x06, 0xFE, 0xE1, 0xF0,  // ........
                /* 0280 */  0x20, 0x4F, 0x07, 0x9F, 0xB6, 0xA8, 0x74, 0x18,  //  O....t.
                /* 0288 */  0xD4, 0x81, 0x0B, 0xB0, 0x32, 0x89, 0x08, 0xCF,  // ....2...
                /* 0290 */  0x12, 0xB5, 0x41, 0xE8, 0xD4, 0xF0, 0x36, 0xF1,  // ..A...6.
                /* 0298 */  0xB6, 0xE5, 0x5B, 0x40, 0x9C, 0xD3, 0xEC, 0xED,  // ..[@....
                /* 02A0 */  0xC0, 0x45, 0x30, 0x22, 0xD4, 0x0C, 0x45, 0x4E,  // .E0"..EN
                /* 02A8 */  0x5A, 0x11, 0x63, 0x44, 0x79, 0xDC, 0x32, 0xCA,  // Z.cDy.2.
                /* 02B0 */  0xDB, 0xD6, 0x0B, 0x40, 0xBC, 0x13, 0x7B, 0xDE,  // ...@..{.
                /* 02B8 */  0x32, 0x46, 0xF0, 0xC8, 0x0F, 0x5C, 0x2C, 0xC6,  // 2F...\,.
                /* 02C0 */  0xEA, 0xF5, 0x5F, 0xF3, 0x81, 0x0B, 0x70, 0xF6,  // .._...p.
                /* 02C8 */  0xFF, 0x3F, 0x70, 0x01, 0x1C, 0x0A, 0x7A, 0x18,  // .?p...z.
                /* 02D0 */  0x42, 0x0F, 0xC3, 0x53, 0x39, 0x97, 0x87, 0xC8,  // B..S9...
                /* 02D8 */  0x53, 0x89, 0x18, 0x35, 0x4C, 0xD4, 0x67, 0x28,  // S..5L.g(
                /* 02E0 */  0xDF, 0x2D, 0x7C, 0x20, 0x02, 0xDF, 0x99, 0x0B,  // .-| ....
                /* 02E8 */  0xF8, 0xFD, 0xFF, 0x0F, 0x44, 0x70, 0x8E, 0x29,  // ....Dp.)
                /* 02F0 */  0xB8, 0x33, 0x0D, 0x78, 0x7C, 0xCE, 0x40, 0x20,  // .3.x|.@ 
                /* 02F8 */  0xA7, 0xE2, 0x43, 0x0D, 0x60, 0x41, 0xF4, 0x13,  // ..C.`A..
                /* 0300 */  0xC2, 0x27, 0x1A, 0x2A, 0x13, 0x06, 0x75, 0xA8,  // .'.*..u.
                /* 0308 */  0x01, 0xAC, 0x5C, 0x61, 0x9E, 0x46, 0xCF, 0xF9,  // ..\a.F..
                /* 0310 */  0x59, 0xC6, 0xA7, 0x1A, 0x1F, 0x4A, 0x8D, 0x63,  // Y....J.c
                /* 0318 */  0x88, 0x97, 0x99, 0x87, 0x1A, 0x1F, 0x0B, 0x5E,  // .......^
                /* 0320 */  0x49, 0x7D, 0xA8, 0x31, 0x54, 0x9C, 0x87, 0x1A,  // I}.1T...
                /* 0328 */  0x0F, 0x37, 0x50, 0xD4, 0x37, 0x9B, 0x67, 0x1B,  // .7P.7.g.
                /* 0330 */  0xA3, 0xC7, 0xF7, 0x0D, 0xD5, 0x10, 0x0F, 0x35,  // .......5
                /* 0338 */  0x4C, 0xF2, 0x4A, 0x35, 0x16, 0x1F, 0x6A, 0xC0,  // L.J5..j.
                /* 0340 */  0xF1, 0xFF, 0x3F, 0xD4, 0x00, 0xFC, 0xFF, 0xFF,  // ..?.....
                /* 0348 */  0x1F, 0x6A, 0x00, 0x47, 0x47, 0x03, 0x38, 0x47,  // .j.GG.8G
                /* 0350 */  0x46, 0xDC, 0xD1, 0x00, 0x5C, 0x87, 0x52, 0xE0,  // F...\.R.
                /* 0358 */  0x70, 0x34, 0x00, 0x1E, 0x47, 0x21, 0x30, 0x5F,  // p4..G!0_
                /* 0360 */  0x68, 0x7C, 0x14, 0x02, 0x16, 0xFF, 0xFF, 0xA3,  // h|......
                /* 0368 */  0x10, 0xF8, 0x65, 0x9F, 0x83, 0x50, 0x42, 0x8F,  // ..e..PB.
                /* 0370 */  0x42, 0x80, 0xA0, 0xDB, 0xCF, 0x53, 0xC4, 0xB3,  // B....S..
                /* 0378 */  0x8F, 0x2F, 0x3F, 0x0F, 0x04, 0x11, 0x5E, 0xF3,  // ./?...^.
                /* 0380 */  0x7D, 0x0A, 0xF2, 0x21, 0xDF, 0x47, 0x21, 0x06,  // }..!.G!.
                /* 0388 */  0x63, 0x28, 0x5F, 0x83, 0x7C, 0x14, 0x62, 0x50,  // c(_.|.bP
                /* 0390 */  0xAF, 0x41, 0xBE, 0xEF, 0x1B, 0xE4, 0xF1, 0x22,  // .A....."
                /* 0398 */  0x48, 0xEC, 0x67, 0x02, 0x1F, 0x85, 0x98, 0xE8,  // H.g.....
                /* 03A0 */  0xA3, 0x10, 0xA0, 0xF0, 0xFF, 0x7F, 0x14, 0x02,  // ........
                /* 03A8 */  0xF8, 0xFF, 0xFF, 0x3F, 0x0A, 0x01, 0xCE, 0x02,  // ...?....
                /* 03B0 */  0x1C, 0x0D, 0x40, 0x37, 0xAD, 0x47, 0x21, 0xF0,  // ..@7.G!.
                /* 03B8 */  0xDE, 0x59, 0x4E, 0xFB, 0x04, 0x7C, 0x16, 0x02,  // .YN..|..
                /* 03C0 */  0xCC, 0xFE, 0xFF, 0xCF, 0x42, 0xC0, 0xEC, 0x28,  // ....B..(
                /* 03C8 */  0x74, 0x14, 0x67, 0xF9, 0x2A, 0xF4, 0x04, 0xF0,  // t.g.*...
                /* 03D0 */  0x02, 0x10, 0x23, 0xCC, 0x3B, 0xD0, 0x4B, 0x26,  // ..#.;.K&
                /* 03D8 */  0xBB, 0x8B, 0x1B, 0xE7, 0xC9, 0xE5, 0x2C, 0x9E,  // ......,.
                /* 03E0 */  0xC4, 0x7D, 0x09, 0xF2, 0x81, 0xE2, 0x59, 0xC8,  // .}....Y.
                /* 03E8 */  0x50, 0xA7, 0x1B, 0xF4, 0x8D, 0xDC, 0x03, 0x8B,  // P.......
                /* 03F0 */  0x19, 0x3F, 0xC4, 0xF3, 0x90, 0x21, 0x9E, 0x85,  // .?...!..
                /* 03F8 */  0x00, 0x76, 0xFD, 0xFF, 0xCF, 0x42, 0x00, 0xFF,  // .v...B..
                /* 0400 */  0xFF, 0xFF, 0x47, 0x03, 0xF8, 0x2F, 0x00, 0x9F,  // ..G../..
                /* 0408 */  0x85, 0x80, 0xE7, 0x09, 0xE0, 0x41, 0xDB, 0x67,  // .....A.g
                /* 0410 */  0x21, 0x80, 0x33, 0x87, 0xCB, 0xF3, 0x7F, 0x05,  // !.3.....
                /* 0418 */  0x3A, 0x96, 0xF7, 0x08, 0xCF, 0xFA, 0x24, 0x5F,  // :.....$_
                /* 0420 */  0x2F, 0x3D, 0xD3, 0x87, 0x82, 0x67, 0x21, 0x86,  // /=...g!.
                /* 0428 */  0x75, 0x18, 0x3E, 0x0B, 0x31, 0x88, 0x17, 0x4D,  // u.>.1..M
                /* 0430 */  0x43, 0xBC, 0x70, 0xFA, 0x30, 0xE0, 0xFF, 0x3F,  // C.p.0..?
                /* 0438 */  0x5E, 0xE0, 0x57, 0x4E, 0x03, 0x05, 0x09, 0xF4,  // ^.WN....
                /* 0440 */  0x2C, 0x04, 0x30, 0xFE, 0xFF, 0x7F, 0x16, 0x02,  // ,.0.....
                /* 0448 */  0xC8, 0xB8, 0x46, 0x9D, 0x85, 0x80, 0xE5, 0x6D,  // ..F....m
                /* 0450 */  0xE5, 0x19, 0xDB, 0xA7, 0x95, 0x04, 0xFF, 0xFF,  // ........
                /* 0458 */  0x67, 0x21, 0xC0, 0x41, 0x2E, 0x23, 0x07, 0x21,  // g!.A.#.!
                /* 0460 */  0x4C, 0xC4, 0x87, 0x83, 0x8F, 0x99, 0x80, 0x9E,  // L.......
                /* 0468 */  0x29, 0xBE, 0xB8, 0x1B, 0xE3, 0x09, 0xE0, 0x45,  // )......E
                /* 0470 */  0xE2, 0x31, 0x93, 0x1D, 0x35, 0x0D, 0xF3, 0x2C,  // .1..5..,
                /* 0478 */  0x64, 0xBC, 0xB3, 0x78, 0x0D, 0x78, 0x82, 0xF7,  // d..x.x..
                /* 0480 */  0xE4, 0x9F, 0x85, 0x18, 0xD8, 0x61, 0x05, 0x7B,  // .....a.{
                /* 0488 */  0x14, 0x32, 0xA8, 0xC1, 0x63, 0x87, 0x08, 0x13,  // .2..c...
                /* 0490 */  0xE8, 0x59, 0x88, 0xC5, 0x7D, 0xAE, 0xE8, 0x3C,  // .Y..}..<
                /* 0498 */  0xE1, 0xB3, 0x10, 0xF0, 0xFE, 0xFF, 0x9F, 0x25,  // .......%
                /* 04A0 */  0xE0, 0x5E, 0x0D, 0x9E, 0x85, 0x00, 0x13, 0x87,  // .^......
                /* 04A8 */  0x0D, 0x9F, 0x35, 0xC0, 0x33, 0x7C, 0x8F, 0xEA,  // ..5.3|..
                /* 04B0 */  0x1C, 0x1E, 0x8F, 0x81, 0x7F, 0x56, 0x1D, 0xE7,  // .....V..
                /* 04B8 */  0x04, 0x96, 0x7B, 0xD1, 0xB2, 0x71, 0xA0, 0xA1,  // ..{..q..
                /* 04C0 */  0x23, 0xB2, 0x3A, 0x20, 0x8D, 0x0D, 0x73, 0x29,  // #.: ..s)
                /* 04C8 */  0x89, 0x7C, 0x72, 0x6C, 0xD4, 0x56, 0x04, 0xA7,  // .|rl.V..
                /* 04D0 */  0x33, 0x93, 0x4F, 0x00, 0xD6, 0x42, 0x21, 0x05,  // 3.O..B!.
                /* 04D8 */  0x34, 0x1A, 0x8B, 0xE1, 0x9D, 0xF9, 0xE8, 0x44,  // 4......D
                /* 04E0 */  0x41, 0x0C, 0xE8, 0xE3, 0x90, 0x6D, 0x1C, 0x0A,  // A....m..
                /* 04E8 */  0x50, 0x7B, 0xD1, 0x14, 0xC8, 0x39, 0x07, 0xA3,  // P{...9..
                /* 04F0 */  0x7F, 0x76, 0x74, 0x36, 0xBE, 0x13, 0x70, 0x0D,  // .vt6..p.
                /* 04F8 */  0x10, 0x3A, 0x25, 0x18, 0xDA, 0x6A, 0x04, 0xFC,  // .:%..j..
                /* 0500 */  0xFF, 0x67, 0x89, 0x01, 0x33, 0xFE, 0x53, 0x8C,  // .g..3.S.
                /* 0508 */  0x09, 0x7C, 0x8E, 0xC1, 0x1F, 0x0C, 0xF0, 0x03,  // .|......
                /* 0510 */  0x7F, 0x31, 0xA8, 0xFA, 0x5E, 0xA0, 0xFB, 0x82,  // .1..^...
                /* 0518 */  0xD5, 0xDD, 0x64, 0x20, 0xCC, 0xC8, 0x04, 0xF5,  // ..d ....
                /* 0520 */  0x9D, 0x0E, 0x40, 0x01, 0xE4, 0x0B, 0x81, 0xCF,  // ..@.....
                /* 0528 */  0x51, 0x0F, 0x05, 0x6C, 0x22, 0x21, 0xC2, 0x44,  // Q..l"!.D
                /* 0530 */  0x33, 0x3A, 0x62, 0xC2, 0xA8, 0xE8, 0x13, 0xA6,  // 3:b.....
                /* 0538 */  0x20, 0x9E, 0xB0, 0x63, 0x4D, 0x18, 0x3D, 0x13,  //  ..cM.=.
                /* 0540 */  0x5F, 0x74, 0xD8, 0x88, 0x31, 0x21, 0xAE, 0x1E,  // _t..1!..
                /* 0548 */  0xD0, 0x26, 0x18, 0xD4, 0x97, 0x22, 0x58, 0x43,  // .&..."XC
                /* 0550 */  0xE6, 0x63, 0xF1, 0x05, 0x02, 0x37, 0x65, 0x30,  // .c...7e0
                /* 0558 */  0xCE, 0x89, 0x5D, 0x13, 0x7C, 0xD9, 0xC1, 0xCD,  // ..].|...
                /* 0560 */  0x19, 0x8C, 0xF0, 0x98, 0xBB, 0x18, 0xBF, 0x3A,  // .......:
                /* 0568 */  0x79, 0x74, 0xFC, 0xA0, 0xE0, 0x1B, 0x0E, 0xC3,  // yt......
                /* 0570 */  0x7E, 0x32, 0xF3, 0x8C, 0xDE, 0xCB, 0x7C, 0x8D,  // ~2....|.
                /* 0578 */  0xC3, 0xC0, 0x7A, 0xBC, 0x1C, 0xD6, 0x68, 0x61,  // ..z...ha
                /* 0580 */  0x0F, 0xED, 0x3D, 0xC4, 0xFF, 0xFF, 0x43, 0x8C,  // ..=...C.
                /* 0588 */  0xCF, 0x13, 0xC6, 0x08, 0xEB, 0xDB, 0x0B, 0x38,  // .......8
                /* 0590 */  0xEE, 0x59, 0xF0, 0xEF, 0x1A, 0xE0, 0xB9, 0x84,  // .Y......
                /* 0598 */  0xF8, 0xAE, 0x01, 0x30, 0xF0, 0xFF, 0x7F, 0xD7,  // ...0....
                /* 05A0 */  0x00, 0x4E, 0xD7, 0x04, 0xDF, 0x35, 0x80, 0xF7,  // .N...5..
                /* 05A8 */  0xD0, 0x7D, 0xD7, 0x00, 0xAE, 0xD9, 0xEF, 0x1A,  // .}......
                /* 05B0 */  0xA8, 0x63, 0x80, 0x15, 0xDE, 0x35, 0xA0, 0x5D,  // .c...5.]
                /* 05B8 */  0xD9, 0xDE, 0xD7, 0x9E, 0xB0, 0xAC, 0xE9, 0xB2,  // ........
                /* 05C0 */  0x81, 0x52, 0x73, 0xD9, 0x00, 0x14, 0xFC, 0xFF,  // .Rs.....
                /* 05C8 */  0x2F, 0x1B, 0x80, 0x01, 0x29, 0x13, 0x46, 0x85,  // /...).F.
                /* 05D0 */  0x9F, 0x30, 0x05, 0xF1, 0x84, 0x1D, 0xEC, 0xB2,  // .0......
                /* 05D8 */  0x01, 0x8A, 0x18, 0x97, 0x0D, 0xD0, 0x8F, 0xED,  // ........
                /* 05E0 */  0x65, 0x03, 0x18, 0xDC, 0x13, 0xF8, 0x6D, 0x03,  // e.....m.
                /* 05E8 */  0x78, 0x43, 0xFA, 0xB6, 0x01, 0xD6, 0xFF, 0xFF,  // xC......
                /* 05F0 */  0x6D, 0x03, 0xAC, 0xF9, 0x6F, 0x1B, 0x28, 0x0E,  // m...o.(.
                /* 05F8 */  0xAB, 0xBC, 0x6D, 0x40, 0x3C, 0xC9, 0x33, 0x02,  // ..m@<.3.
                /* 0600 */  0xAB, 0xBA, 0x6E, 0xA0, 0xF4, 0x5C, 0x37, 0x00,  // ..n..\7.
                /* 0608 */  0x12, 0x88, 0x99, 0x30, 0x2A, 0xFE, 0x84, 0x29,  // ...0*..)
                /* 0610 */  0x88, 0x27, 0xEC, 0x68, 0xD7, 0x0D, 0x50, 0x04,  // .'.h..P.
                /* 0618 */  0xB9, 0x6E, 0x80, 0x7E, 0x5E, 0x09, 0xFE, 0xFF,  // .n.~^...
                /* 0620 */  0xAF, 0x1B, 0xC0, 0xE0, 0xA2, 0x80, 0xB9, 0x6F,  // .......o
                /* 0628 */  0x00, 0x6F, 0x58, 0x7E, 0xDF, 0x00, 0x7C, 0xDC,  // .oX~..|.
                /* 0630 */  0xC4, 0x31, 0xF7, 0x0D, 0xC0, 0xCC, 0xFF, 0xFF,  // .1......
                /* 0638 */  0xBE, 0x01, 0xB0, 0xE7, 0xA2, 0x80, 0xBB, 0x6F,  // .......o
                /* 0640 */  0x00, 0xEF, 0x8B, 0xB4, 0xEF, 0x1B, 0x60, 0xFE,  // ......`.
                /* 0648 */  0xFF, 0xDF, 0x37, 0xC0, 0x28, 0x6D, 0xFD, 0x1E,  // ..7.(m..
                /* 0650 */  0x1C, 0x3D, 0x21, 0x78, 0x7C, 0xB8, 0xFB, 0xA5,  // .=!x|...
                /* 0658 */  0xC7, 0xE7, 0xBB, 0x39, 0x38, 0x06, 0x79, 0x8C,  // ...98.y.
                /* 0660 */  0x87, 0x76, 0xC0, 0xAF, 0xEF, 0x9E, 0x98, 0xEF,  // .v......
                /* 0668 */  0xE6, 0xC0, 0xFF, 0x4C, 0x70, 0x3C, 0x18, 0x68,  // ...Lp<.h
                /* 0670 */  0x1C, 0x62, 0xAB, 0x97, 0x06, 0x72, 0x34, 0x38,  // .b...r48
                /* 0678 */  0x3F, 0xDC, 0x19, 0x81, 0x61, 0x15, 0x7F, 0xF2,  // ?...a...
                /* 0680 */  0x47, 0x38, 0xC7, 0xD0, 0xD9, 0xE1, 0x20, 0xB1,  // G8.... .
                /* 0688 */  0x83, 0xE0, 0xC1, 0x56, 0x6D, 0x02, 0x85, 0x86,  // ...Vm...
                /* 0690 */  0x50, 0x14, 0x18, 0x14, 0x8B, 0x0F, 0x18, 0xF8,  // P.......
                /* 0698 */  0x61, 0xB3, 0xB3, 0x00, 0x93, 0x04, 0x87, 0x3A,  // a......:
                /* 06A0 */  0x02, 0xF8, 0x3E, 0xD1, 0xFC, 0x38, 0x74, 0x37,  // ..>..8t7
                /* 06A8 */  0x38, 0x54, 0x8F, 0xE5, 0xA1, 0x80, 0x9E, 0x01,  // 8T......
                /* 06B0 */  0x71, 0xC7, 0x0C, 0x32, 0x69, 0xCF, 0x28, 0xE2,  // q..2i.(.
                /* 06B8 */  0x53, 0xC2, 0x29, 0x85, 0x49, 0xE0, 0xF3, 0x03,  // S.).I...
                /* 06C0 */  0x43, 0xE3, 0x04, 0xAF, 0x0D, 0xA1, 0xF9, 0xFF,  // C.......
                /* 06C8 */  0xFF, 0xA4, 0xC0, 0x3C, 0xDF, 0x31, 0x04, 0x6C,  // ...<.1.l
                /* 06D0 */  0x02, 0xBB, 0xBF, 0x64, 0xC8, 0xDA, 0xC0, 0x75,  // ...d...u
                /* 06D8 */  0x4B, 0x32, 0x44, 0x6F, 0x38, 0xB2, 0x85, 0xA2,  // K2Do8...
                /* 06E0 */  0xE9, 0x44, 0x79, 0xDF, 0x88, 0x62, 0x67, 0x08,  // .Dy..bg.
                /* 06E8 */  0xC2, 0x88, 0x12, 0x2C, 0xC8, 0xA3, 0x42, 0xAC,  // ...,..B.
                /* 06F0 */  0x28, 0x2F, 0x05, 0x46, 0x88, 0x18, 0xE2, 0x95,  // (/.F....
                /* 06F8 */  0x23, 0xD0, 0x09, 0x87, 0x0F, 0xF2, 0xD8, 0x14,  // #.......
                /* 0700 */  0xA7, 0xFD, 0x41, 0x90, 0x58, 0x4F, 0x02, 0x8D,  // ..A.XO..
                /* 0708 */  0xC5, 0x91, 0x46, 0x83, 0x3A, 0x07, 0x78, 0xB8,  // ..F.:.x.
                /* 0710 */  0x3E, 0xC4, 0x78, 0xF8, 0x0F, 0x21, 0x06, 0x39,  // >.x..!.9
                /* 0718 */  0xC8, 0x73, 0x7B, 0x54, 0x38, 0x4E, 0x5F, 0x25,  // .s{T8N_%
                /* 0720 */  0x4C, 0xF0, 0x02, 0xE0, 0x83, 0x0A, 0x1C, 0xD7,  // L.......
                /* 0728 */  0x80, 0x9A, 0xF1, 0x33, 0x06, 0x58, 0x8E, 0xE3,  // ...3.X..
                /* 0730 */  0x3E, 0xA9, 0xC0, 0x1D, 0x8F, 0xEF, 0x07, 0x6C,  // >......l
                /* 0738 */  0xC2, 0x09, 0x2C, 0x7F, 0x10, 0xA8, 0xE3, 0x0C,  // ..,.....
                /* 0740 */  0x9F, 0xE7, 0x0B, 0x8B, 0x21, 0x1F, 0x13, 0x4C,  // ....!..L
                /* 0748 */  0x60, 0xB1, 0x27, 0x1B, 0x3A, 0x1E, 0xF0, 0xDF,  // `.'.:...
                /* 0750 */  0x63, 0x1E, 0x2F, 0x7C, 0x32, 0xF1, 0x7C, 0x4D,  // c./|2.|M
                /* 0758 */  0x30, 0x22, 0x84, 0x9C, 0x8C, 0x07, 0x7D, 0x87,  // 0"....}.
                /* 0760 */  0xC0, 0x5C, 0x6F, 0xD8, 0xB9, 0x85, 0x8B, 0x3A,  // .\o....:
                /* 0768 */  0x68, 0xA0, 0x4E, 0x0B, 0x3E, 0x28, 0xB0, 0x9B,  // h.N.>(..
                /* 0770 */  0x11, 0xE6, 0xB8, 0xCE, 0xCF, 0x2A, 0x60, 0xF8,  // .....*`.
                /* 0778 */  0xFF, 0x9F, 0x55, 0x60, 0x8F, 0x10, 0xFE, 0xED,  // ..U`....
                /* 0780 */  0xC1, 0xF3, 0xF2, 0x95, 0xE1, 0xD5, 0x21, 0x81,  // ......!.
                /* 0788 */  0x43, 0x8E, 0x10, 0x3D, 0x2E, 0x8F, 0x10, 0x73,  // C..=...s
                /* 0790 */  0x3E, 0xC2, 0x0C, 0x11, 0x5C, 0x67, 0x01, 0x70,  // >...\g.p
                /* 0798 */  0x0C, 0x11, 0xF8, 0x1C, 0x70, 0xC0, 0x71, 0x69,  // ....p.qi
                /* 07A0 */  0xE2, 0x03, 0xF5, 0x01, 0x07, 0x70, 0x70, 0x4D,  // .....ppM
                /* 07A8 */  0xC3, 0x1D, 0x70, 0xC0, 0x71, 0x16, 0x60, 0xFF,  // ..p.q.`.
                /* 07B0 */  0xFF, 0xC3, 0x0D, 0x2C, 0x49, 0x26, 0x0E, 0x23,  // ...,I&.#
                /* 07B8 */  0x18, 0x11, 0x30, 0x28, 0x02, 0x02, 0xA4, 0xB3,  // ..0(....
                /* 07C0 */  0x80, 0x0F, 0x29, 0x00, 0x1F, 0xAE, 0x0C, 0x0F,  // ..).....
                /* 07C8 */  0x29, 0xD8, 0x93, 0x86, 0x07, 0x8E, 0x1B, 0x85,  // ).......
                /* 07D0 */  0x07, 0x8D, 0x0B, 0x30, 0x68, 0x7A, 0xE2, 0x80,  // ...0hz..
                /* 07D8 */  0x7F, 0x4C, 0xF0, 0x19, 0x05, 0x1C, 0xE3, 0x06,  // .L......
                /* 07E0 */  0xDF, 0x2A, 0x0C, 0xFC, 0xFF, 0x3F, 0x30, 0xCC,  // .*...?0.
                /* 07E8 */  0xE1, 0xC2, 0x63, 0x39, 0x8A, 0xA0, 0x07, 0x1E,  // ..c9....
                /* 07F0 */  0xD4, 0xF7, 0x8C, 0x33, 0xF7, 0x24, 0x8F, 0xD1,  // ...3.$..
                /* 07F8 */  0x51, 0x0F, 0x27, 0xF4, 0xE4, 0x85, 0x3B, 0x57,  // Q.'...;W
                /* 0800 */  0xF9, 0x0A, 0x71, 0x14, 0x18, 0xB8, 0x77, 0x29,  // ..q...w)
                /* 0808 */  0x8F, 0xCF, 0x17, 0x2B, 0xC3, 0x63, 0x46, 0xFB,  // ...+.cF.
                /* 0810 */  0x1E, 0x72, 0xD6, 0x11, 0x02, 0xE2, 0x2F, 0x75,  // .r..../u
                /* 0818 */  0x6C, 0xC0, 0x60, 0x39, 0x18, 0x00, 0x87, 0x01,  // l.`9....
                /* 0820 */  0xE3, 0x13, 0x0D, 0x58, 0x67, 0x1B, 0x3C, 0xF4,  // ...Xg.<.
                /* 0828 */  0x69, 0x31, 0xC4, 0xE3, 0x0B, 0xFB, 0x56, 0x61,  // i1....Va
                /* 0830 */  0x82, 0xEA, 0x41, 0x75, 0x12, 0xF4, 0xD0, 0xC0,  // ..Au....
                /* 0838 */  0x01, 0xE8, 0xA1, 0xC1, 0x3F, 0xB9, 0x90, 0xFB,  // ....?...
                /* 0840 */  0x2B, 0x1D, 0x82, 0xB5, 0xE2, 0x69, 0xDE, 0x47,  // +....i.G
                /* 0848 */  0x1E, 0xF3, 0xDC, 0xA2, 0xBC, 0x0D, 0x3C, 0x07,  // ......<.
                /* 0850 */  0xF0, 0xD3, 0x82, 0x87, 0xE3, 0x63, 0x81, 0xC7,  // .....c..
                /* 0858 */  0xE9, 0x4B, 0x58, 0x82, 0xF7, 0x1A, 0x9F, 0x6C,  // .KX....l
                /* 0860 */  0x1E, 0x5C, 0x58, 0xB2, 0x21, 0xA0, 0x06, 0xEB,  // .\X.!...
                /* 0868 */  0x21, 0x60, 0xA6, 0x9A, 0xC0, 0x49, 0x46, 0x80,  // !`...IF.
                /* 0870 */  0xCA, 0x00, 0xA1, 0x1B, 0xCB, 0xE9, 0x3E, 0x8B,  // ......>.
                /* 0878 */  0x84, 0x38, 0xCD, 0x47, 0x99, 0xC7, 0x02, 0x8F,  // .8.G....
                /* 0880 */  0xF5, 0xC1, 0xC0, 0xFF, 0x7F, 0xCD, 0x23, 0xD4,  // ......#.
                /* 0888 */  0x7D, 0xCD, 0x33, 0x7B, 0x3A, 0xC0, 0xAC, 0x22,  // }.3{:.."
                /* 0890 */  0xDC, 0x7B, 0xCE, 0x1B, 0x86, 0xD1, 0x9E, 0x2D,  // .{.....-
                /* 0898 */  0x7C, 0xCD, 0x78, 0xD6, 0x34, 0x42, 0x38, 0x76,  // |.x.4B8v
                /* 08A0 */  0x83, 0xF3, 0x48, 0x8C, 0xF0, 0x82, 0xC0, 0x4E,  // ..H....N
                /* 08A8 */  0x0C, 0x0F, 0x30, 0xC6, 0x39, 0x79, 0xC3, 0xFA,  // ..0.9y..
                /* 08B0 */  0xC2, 0xCB, 0x40, 0x83, 0x19, 0xDB, 0x97, 0x01,  // ..@.....
                /* 08B8 */  0x36, 0x2A, 0xDF, 0x88, 0xC0, 0x97, 0xFC, 0x62,  // 6*.....b
                /* 08C0 */  0x00, 0x65, 0x16, 0xBE, 0x9E, 0xF8, 0xA0, 0xC4,  // .e......
                /* 08C8 */  0x2E, 0x06, 0x2C, 0xE5, 0xC5, 0x00, 0x54, 0x37,  // ..,...T7
                /* 08D0 */  0x0C, 0x5F, 0x0C, 0xE0, 0x5F, 0x89, 0x5E, 0x0C,  // ._.._.^.
                /* 08D8 */  0xC0, 0x70, 0x71, 0xF2, 0x3D, 0xC0, 0x1E, 0xEE,  // .pq.=...
                /* 08E0 */  0xA3, 0x74, 0x9C, 0xBE, 0xFD, 0xBD, 0x19, 0xF8,  // .t......
                /* 08E8 */  0x6C, 0xC0, 0x60, 0x3C, 0xC3, 0x30, 0xC6, 0x08,  // l.`<.0..
                /* 08F0 */  0xE3, 0x51, 0x86, 0x31, 0xC1, 0xDC, 0xB7, 0x03,  // .Q.1....
                /* 08F8 */  0xE8, 0x39, 0x87, 0x81, 0x4A, 0x78, 0x3B, 0x80,  // .9..Jx;.
                /* 0900 */  0x72, 0x0E, 0xE8, 0xF2, 0x68, 0x42, 0x4F, 0x01,  // r...hBO.
                /* 0908 */  0x4F, 0x07, 0x3E, 0x29, 0x1A, 0xA2, 0xAF, 0xB1,  // O.>)....
                /* 0910 */  0x0A, 0x26, 0x50, 0xC4, 0x07, 0x0D, 0x3E, 0xB5,  // .&P...>.
                /* 0918 */  0x28, 0x3E, 0x15, 0x78, 0x2D, 0xCF, 0x4E, 0xE1,  // (>.x-.N.
                /* 0920 */  0xE2, 0x9C, 0x89, 0xA7, 0x6A, 0x38, 0x03, 0xBD,  // ....j8..
                /* 0928 */  0xE6, 0x86, 0x63, 0xFF, 0x7F, 0x38, 0xFC, 0xA9,  // ..c..8..
                /* 0930 */  0xE0, 0x35, 0x80, 0x1D, 0x24, 0x3D, 0x2D, 0x23,  // .5..$=-#
                /* 0938 */  0xC2, 0x38, 0xA4, 0x3C, 0x32, 0xF8, 0xB6, 0x18,  // .8.<2...
                /* 0940 */  0xC7, 0x90, 0x0F, 0x91, 0xBE, 0x13, 0x18, 0xF2,  // ........
                /* 0948 */  0x21, 0xEF, 0x79, 0xC7, 0xC0, 0xAF, 0x08, 0x71,  // !.y....q
                /* 0950 */  0x9E, 0xB2, 0x7C, 0x67, 0xF0, 0x65, 0x01, 0x7C,  // ..|g.e.|
                /* 0958 */  0x91, 0x2E, 0x0B, 0x68, 0x68, 0x9F, 0x64, 0x7C,  // ...hh.d|
                /* 0960 */  0x41, 0x30, 0xEC, 0x89, 0xB3, 0x00, 0x77, 0x05,  // A0....w.
                /* 0968 */  0x50, 0x81, 0xFA, 0xAE, 0x00, 0xFF, 0x42, 0xF0,  // P.....B.
                /* 0970 */  0xAE, 0x00, 0x86, 0x79, 0xF9, 0x56, 0xC0, 0x35,  // ...y.V.5
                /* 0978 */  0x1D, 0x4A, 0xD0, 0x67, 0x12, 0x5F, 0x17, 0x70,  // .J.g._.p
                /* 0980 */  0x53, 0x64, 0xA9, 0x8E, 0x0A, 0xD0, 0x53, 0x4C,  // Sd....SL
                /* 0988 */  0x02, 0x75, 0x47, 0xF7, 0x51, 0x01, 0xC6, 0x4D,  // .uG.Q..M
                /* 0990 */  0xD9, 0x07, 0x54, 0x76, 0x5A, 0x60, 0x67, 0x21,  // ..TvZ`g!
                /* 0998 */  0x76, 0x1D, 0xC1, 0x5D, 0x49, 0x18, 0xCA, 0xB3,  // v..]I...
                /* 09A0 */  0x81, 0x2F, 0x59, 0xFC, 0x70, 0x00, 0x03, 0xDC,  // ./Y.p...
                /* 09A8 */  0xB3, 0x38, 0xC4, 0x08, 0xB1, 0xD9, 0x81, 0xEB,  // .8......
                /* 09B0 */  0x75, 0xD2, 0x70, 0x2F, 0x44, 0xEC, 0xFF, 0x7F,  // u.p/D...
                /* 09B8 */  0x32, 0x00, 0xE3, 0x51, 0x1B, 0x1C, 0x27, 0x9D,  // 2..Q..'.
                /* 09C0 */  0xF0, 0x91, 0x9E, 0x59, 0xF8, 0x49, 0x19, 0x30,  // ...Y.I.0
                /* 09C8 */  0x71, 0xF2, 0x03, 0xE3, 0xC9, 0x1A, 0xC6, 0x00,  // q.......
                /* 09D0 */  0xB8, 0xBC, 0x57, 0x95, 0x81, 0xFC, 0x43, 0x90,  // ..W...C.
                /* 09D8 */  0x20, 0x18, 0xD4, 0x29, 0x19, 0x38, 0x1C, 0xC5,  //  ..).8..
                /* 09E0 */  0x70, 0xA7, 0x64, 0x78, 0x50, 0xF8, 0xC3, 0x00,  // p.dxP...
                /* 09E8 */  0xE6, 0x46, 0xE8, 0x7B, 0x82, 0xA1, 0xDE, 0x93,  // .F.{....
                /* 09F0 */  0x0E, 0xE3, 0x91, 0xD0, 0x04, 0x3E, 0x2D, 0xC3,  // .....>-.
                /* 09F8 */  0xFA, 0xFF, 0x9F, 0x96, 0xF9, 0x39, 0x21, 0xFE,  // .....9!.
                /* 0A00 */  0x53, 0xCE, 0xFB, 0xC5, 0x83, 0xB2, 0x31, 0xA2,  // S.....1.
                /* 0A08 */  0xBC, 0x2A, 0xFB, 0x9C, 0x69, 0x14, 0x76, 0x4B,  // .*..i.vK
                /* 0A10 */  0x7E, 0x73, 0x78, 0x55, 0xF6, 0x69, 0xF9, 0xDC,  // ~sxU.i..
                /* 0A18 */  0x22, 0xBD, 0x2F, 0x7B, 0xE4, 0x31, 0xE3, 0xC4,  // "./{.1..
                /* 0A20 */  0x0A, 0x12, 0xE8, 0x7D, 0x23, 0x4A, 0xD8, 0x18,  // ...}#J..
                /* 0A28 */  0xE1, 0x02, 0x3D, 0x2D, 0xB3, 0x63, 0xBB, 0x87,  // ..=-.c..
                /* 0A30 */  0xEC, 0xB3, 0x02, 0xEE, 0xEC, 0x00, 0x77, 0x7A,  // ......wz
                /* 0A38 */  0xFC, 0xF4, 0x00, 0x38, 0x01, 0x7A, 0x7A, 0x00,  // ...8.zz.
                /* 0A40 */  0xDB, 0x79, 0x03, 0xEE, 0x81, 0x00, 0x71, 0xFC,  // .y....q.
                /* 0A48 */  0x47, 0x05, 0xBF, 0xB2, 0x50, 0x38, 0x7E, 0x6C,  // G...P8~l
                /* 0A50 */  0xE7, 0xC7, 0x12, 0xDC, 0xE1, 0xC0, 0x47, 0x06,  // ......G.
                /* 0A58 */  0x1F, 0x20, 0x71, 0x43, 0xF1, 0xA1, 0x02, 0x79,  // . qC...y
                /* 0A60 */  0x16, 0x00, 0xC5, 0xE8, 0xD9, 0x08, 0xD8, 0x0D,  // ........
                /* 0A68 */  0xE6, 0xA5, 0x25, 0xCA, 0xFF, 0xFF, 0xBD, 0x81,  // ..%.....
                /* 0A70 */  0x9D, 0x52, 0x70, 0x07, 0x01, 0xF0, 0x1D, 0x03,  // .Rp.....
                /* 0A78 */  0xC0, 0x3B, 0x18, 0x2E, 0x6B, 0xCC, 0x28, 0x21,  // .;..k.(!
                /* 0A80 */  0x30, 0x1A, 0x33, 0xEE, 0x10, 0xC2, 0x4F, 0x04,  // 0.3...O.
                /* 0A88 */  0xB8, 0x31, 0x7B, 0xDC, 0x1E, 0x33, 0xEE, 0x38,  // .1{..3.8
                /* 0A90 */  0xCB, 0x47, 0xF5, 0x94, 0x11, 0xCA, 0x07, 0x0E,  // .G......
                /* 0A98 */  0x76, 0xCE, 0x78, 0x23, 0xE0, 0x43, 0x07, 0x1E,  // v.x#.C..
                /* 0AA0 */  0x07, 0x18, 0xDC, 0x91, 0x02, 0x8C, 0x97, 0x03,  // ........
                /* 0AA8 */  0x36, 0x76, 0x70, 0x07, 0x21, 0xA7, 0x40, 0x96,  // 6vp.!.@.
                /* 0AB0 */  0x0E, 0xA3, 0xB1, 0xE3, 0x64, 0x03, 0xE9, 0x18,  // ....d...
                /* 0AB8 */  0xE3, 0x43, 0xAE, 0xC7, 0x8E, 0x1B, 0xAC, 0xC7,  // .C......
                /* 0AC0 */  0x8E, 0x3B, 0xBE, 0x60, 0xFF, 0xFF, 0xC7, 0x17,  // .;.`....
                /* 0AC8 */  0x30, 0x8C, 0x81, 0x8B, 0x1F, 0x06, 0xFA, 0xE6,  // 0.......
                /* 0AD0 */  0xE7, 0xD1, 0x19, 0xDC, 0xC3, 0xF6, 0x09, 0x26,  // .......&
                /* 0AD8 */  0xC6, 0x1B, 0x4C, 0x88, 0x47, 0x96, 0x97, 0x96,  // ..L.G...
                /* 0AE0 */  0x08, 0x0F, 0x2D, 0xBE, 0xB9, 0xBC, 0xB4, 0xF8,  // ..-.....
                /* 0AE8 */  0x16, 0x63, 0x94, 0x10, 0x11, 0x0E, 0x26, 0xCE,  // .c....&.
                /* 0AF0 */  0x13, 0x8C, 0x11, 0x0E, 0x3C, 0x8A, 0x21, 0x22,  // ....<.!"
                /* 0AF8 */  0x9C, 0x40, 0x88, 0x93, 0x3E, 0xD9, 0x20, 0xE1,  // .@..>. .
                /* 0B00 */  0x63, 0x84, 0x8D, 0x16, 0xE5, 0x09, 0x86, 0x8D,  // c.......
                /* 0B08 */  0x85, 0x9F, 0x57, 0x3C, 0x78, 0x7E, 0x5A, 0xF3,  // ..W<x~Z.
                /* 0B10 */  0x5D, 0xD0, 0x93, 0x39, 0xC7, 0x87, 0x2C, 0x4F,  // ]..9..,O
                /* 0B18 */  0xED, 0x71, 0xD2, 0x87, 0x59, 0xDC, 0xA0, 0x1E,  // .q..Y...
                /* 0B20 */  0x1C, 0xD9, 0x5D, 0xC7, 0xC7, 0x6B, 0xEC, 0x29,  // ..]..k.)
                /* 0B28 */  0xC8, 0x43, 0xE0, 0x27, 0x02, 0x5F, 0x10, 0x3D,  // .C.'._.=
                /* 0B30 */  0x59, 0xDF, 0xF5, 0xD8, 0xBD, 0xCC, 0x18, 0xD5,  // Y.......
                /* 0B38 */  0x4F, 0x01, 0x75, 0x4C, 0x39, 0x83, 0x57, 0x08,  // O.uL9.W.
                /* 0B40 */  0x76, 0xCF, 0xF3, 0x21, 0xDB, 0x77, 0x49, 0x36,  // v..!.wI6
                /* 0B48 */  0x0A, 0xDC, 0x21, 0xC1, 0x67, 0x24, 0x7E, 0xAA,  // ..!.g$~.
                /* 0B50 */  0xF0, 0x30, 0x3C, 0x0A, 0x18, 0x33, 0x78, 0x47,  // .0<..3xG
                /* 0B58 */  0x38, 0xB4, 0x10, 0x07, 0xFC, 0xBE, 0xCB, 0x86,  // 8.......
                /* 0B60 */  0x1A, 0xE3, 0xF4, 0x7C, 0xFE, 0x60, 0x83, 0x80,  // ...|.`..
                /* 0B68 */  0x0F, 0x75, 0xA8, 0x1E, 0xE6, 0x51, 0xBD, 0x14,  // .u...Q..
                /* 0B70 */  0x32, 0x9C, 0xB3, 0x83, 0x3B, 0x08, 0xEC, 0xF1,  // 2...;...
                /* 0B78 */  0xC3, 0x83, 0xE0, 0x37, 0x4B, 0x3E, 0x08, 0x76,  // ...7K>.v
                /* 0B80 */  0xBE, 0x79, 0x83, 0x33, 0xC8, 0xFF, 0xFF, 0x18,  // .y.3....
                /* 0B88 */  0x60, 0x9F, 0xA9, 0x7C, 0x34, 0x41, 0x1C, 0x01,  // `..|4A..
                /* 0B90 */  0xD1, 0xE7, 0x0F, 0x8F, 0xE1, 0x4D, 0x8E, 0x0F,  // .....M..
                /* 0B98 */  0x07, 0x7B, 0xF4, 0xC0, 0x9D, 0x44, 0xE0, 0x1E,  // .{...D..
                /* 0BA0 */  0xBB, 0x0E, 0xDA, 0xD7, 0x38, 0x5F, 0xB4, 0x60,  // ....8_.`
                /* 0BA8 */  0xDC, 0xF7, 0x9E, 0x45, 0xC0, 0x8F, 0xF1, 0xD8,  // ...E....
                /* 0BB0 */  0x02, 0x8E, 0x43, 0x09, 0xB8, 0x83, 0x1D, 0xD7,  // ..C.....
                /* 0BB8 */  0x38, 0x84, 0xA2, 0xC0, 0xE8, 0x50, 0x82, 0x8B,  // 8....P..
                /* 0BC0 */  0x01, 0x24, 0x18, 0xC7, 0x38, 0xA3, 0xA1, 0x2F,  // .$..8../
                /* 0BC8 */  0x91, 0x3E, 0xA4, 0xC1, 0x19, 0x34, 0xEC, 0x79,  // .>...4.y
                /* 0BD0 */  0x3E, 0xA1, 0x70, 0x7B, 0x02, 0x14, 0x9D, 0x50,  // >.p{...P
                /* 0BD8 */  0x40, 0x86, 0xFB, 0x0C, 0x82, 0x3D, 0x21, 0xF0,  // @....=!.
                /* 0BE0 */  0x33, 0x08, 0xFB, 0xFF, 0x1F, 0x1C, 0x3D, 0xEE,  // 3.....=.
                /* 0BE8 */  0xF7, 0x46, 0x9F, 0x1A, 0xD9, 0xDC, 0x1F, 0x02,  // .F......
                /* 0BF0 */  0x4E, 0xE0, 0xDC, 0xD9, 0xA9, 0x19, 0x77, 0x66,  // N.....wf
                /* 0BF8 */  0xC0, 0x9E, 0x3F, 0x3C, 0x04, 0x7E, 0x2E, 0xF0,  // ..?<.~..
                /* 0C00 */  0xF0, 0x3D, 0x04, 0xFC, 0xE0, 0x1F, 0x98, 0x0D,  // .=......
                /* 0C08 */  0x0E, 0xC6, 0x53, 0x84, 0xAF, 0x1D, 0x1C, 0x9C,  // ..S.....
                /* 0C10 */  0x9F, 0x06, 0x0C, 0xCE, 0x5F, 0xA1, 0x3E, 0xCF,  // ...._.>.
                /* 0C18 */  0x33, 0x70, 0xEC, 0xA9, 0xD7, 0xF7, 0x0E, 0xCF,  // 3p......
                /* 0C20 */  0xD7, 0x87, 0x0A, 0xFC, 0x4D, 0xCF, 0x87, 0x0A,  // ....M...
                /* 0C28 */  0x70, 0x1C, 0x1E, 0xF8, 0x61, 0x85, 0x0D, 0xE1,  // p...a...
                /* 0C30 */  0x51, 0x00, 0x7F, 0x6A, 0xF1, 0xF1, 0x2F, 0xCE,  // Q..j../.
                /* 0C38 */  0x53, 0x04, 0xBB, 0x8D, 0x60, 0x0F, 0x17, 0x80,  // S...`...
                /* 0C40 */  0xA3, 0x68, 0x67, 0x31, 0x54, 0x98, 0xB3, 0x18,  // .hg1T...
                /* 0C48 */  0xF9, 0xFF, 0x9F, 0xA3, 0x50, 0x67, 0x31, 0x7A,  // ....Pg1z
                /* 0C50 */  0xB8, 0x00, 0x5C, 0x08, 0x3E, 0x1E, 0x80, 0xE6,  // ..\.>...
                /* 0C58 */  0x20, 0xF0, 0xB8, 0xE0, 0x0B, 0xC1, 0x91, 0x1C,  //  .......
                /* 0C60 */  0xC8, 0xD3, 0x01, 0xE0, 0x53, 0x1E, 0x09, 0x3D,  // ....S..=
                /* 0C68 */  0x1F, 0x59, 0x10, 0x0C, 0xEA, 0x7C, 0xE0, 0x13,  // .Y...|..
                /* 0C70 */  0x8A, 0x8F, 0x1D, 0xFC, 0x6C, 0xE0, 0x1B, 0xB9,  // ....l...
                /* 0C78 */  0x87, 0xCA, 0x4F, 0xCD, 0x3E, 0x69, 0xF3, 0xE0,  // ..O.>i..
                /* 0C80 */  0x3F, 0x69, 0xD9, 0x80, 0x51, 0xA0, 0x61, 0xA0,  // ?i..Q.a.
                /* 0C88 */  0x46, 0xE4, 0x23, 0xD2, 0xFF, 0xFF, 0xB9, 0x0D,  // F.#.....
                /* 0C90 */  0x1B, 0x60, 0x68, 0xF4, 0x1C, 0x0E, 0xE3, 0x80,  // .`h.....
                /* 0C98 */  0xEB, 0x73, 0x38, 0x76, 0x40, 0x3E, 0x87, 0xC3,  // .s8v@>..
                /* 0CA0 */  0x3F, 0x47, 0xC3, 0x1F, 0x1B, 0x3B, 0xDD, 0xF3,  // ?G...;..
                /* 0CA8 */  0x81, 0xC1, 0xBA, 0x7E, 0x63, 0x06, 0x06, 0xB6,  // ...~c...
                /* 0CB0 */  0x6F, 0x91, 0x07, 0x06, 0x1C, 0x51, 0xCF, 0xC6,  // o....Q..
                /* 0CB8 */  0x57, 0x08, 0x0F, 0x0C, 0x6C, 0x80, 0x1E, 0x18,  // W...l...
                /* 0CC0 */  0xF0, 0x89, 0x05, 0x21, 0x27, 0x03, 0x43, 0x9D,  // ...!'.C.
                /* 0CC8 */  0x32, 0x8C, 0x1C, 0xF3, 0x89, 0xC3, 0xC3, 0xF0,  // 2.......
                /* 0CD0 */  0xA1, 0x22, 0xEA, 0x33, 0xC0, 0x23, 0x1E, 0x1B,  // .".3.#..
                /* 0CD8 */  0x1B, 0xFB, 0xFF, 0x8F, 0x0D, 0x2C, 0xC7, 0x16,  // .....,..
                /* 0CE0 */  0x8F, 0x0D, 0xFC, 0x47, 0x78, 0xFC, 0xD8, 0xE0,  // ...Gx...
                /* 0CE8 */  0x8C, 0xE5, 0xD1, 0xC4, 0x97, 0x99, 0x23, 0x3B,  // ......#;
                /* 0CF0 */  0x8D, 0x33, 0x7B, 0x0D, 0xF1, 0xD1, 0xEE, 0xF1,  // .3{.....
                /* 0CF8 */  0xDB, 0x63, 0x03, 0x97, 0x85, 0xB1, 0x01, 0xA5,  // .c......
                /* 0D00 */  0x90, 0x63, 0x43, 0x1F, 0x52, 0x7C, 0x0A, 0xB0,  // .cC.R|..
                /* 0D08 */  0x71, 0x54, 0x32, 0x0F, 0x1F, 0xAF, 0x7C, 0x62,  // qT2...|b
                /* 0D10 */  0x38, 0xBA, 0x20, 0x6F, 0xE8, 0xBE, 0x5C, 0xF8,  // 8. o..\.
                /* 0D18 */  0x48, 0x63, 0x30, 0x5F, 0x5A, 0x7C, 0x06, 0xE5,  // Hc0_Z|..
                /* 0D20 */  0x43, 0x04, 0x97, 0x86, 0x21, 0x02, 0xA5, 0x50,  // C...!..P
                /* 0D28 */  0x43, 0x44, 0x8F, 0xE7, 0xFF, 0xFF, 0x08, 0xE6,  // CD......
                /* 0D30 */  0x21, 0xB2, 0xA1, 0x81, 0xF7, 0x1B, 0xA3, 0xA1,  // !.......
                /* 0D38 */  0x01, 0xA1, 0x70, 0x43, 0x43, 0x1F, 0xD6, 0x7C,  // ..pCC..|
                /* 0D40 */  0x08, 0x60, 0x10, 0xBE, 0x0D, 0xB0, 0xAB, 0x80,  // .`......
                /* 0D48 */  0xAF, 0x42, 0x1E, 0xE0, 0x93, 0x28, 0x1B, 0x1E,  // .B...(..
                /* 0D50 */  0xF8, 0x06, 0xE5, 0xE1, 0x01, 0x9F, 0xF0, 0xC0,  // ........
                /* 0D58 */  0x5E, 0x85, 0x87, 0x47, 0xCF, 0x4A, 0x1E, 0x1E,  // ^..G.J..
                /* 0D60 */  0x3C, 0x90, 0xC7, 0x08, 0x76, 0x0E, 0xF1, 0xE0,  // <...v...
                /* 0D68 */  0xC0, 0x61, 0x62, 0x70, 0xA0, 0x38, 0xFA, 0xE3,  // .abp.8..
                /* 0D70 */  0x86, 0xC0, 0x2E, 0xB3, 0x9E, 0x38, 0xBF, 0xB2,  // .....8..
                /* 0D78 */  0x78, 0x50, 0xF8, 0xFF, 0xFF, 0x11, 0x00, 0xD6,  // xP......
                /* 0D80 */  0x71, 0x06, 0x7C, 0xC1, 0x0E, 0x07, 0xE8, 0x63,  // q.|....c
                /* 0D88 */  0x22, 0x1B, 0xC3, 0x43, 0xC4, 0x83, 0xAB, 0x07,  // "..C....
                /* 0D90 */  0xE2, 0x6B, 0xC7, 0x6B, 0x31, 0xEE, 0x68, 0x00,  // .k.k1.h.
                /* 0D98 */  0x2E, 0x15, 0x47, 0x03, 0xA0, 0x74, 0xB0, 0x05,  // ..G..t..
                /* 0DA0 */  0xC7, 0x3D, 0xCD, 0x47, 0x3B, 0xCC, 0x1C, 0x3D,  // .=.G;..=
                /* 0DA8 */  0x80, 0xE7, 0x37, 0x8F, 0x96, 0x9F, 0xDF, 0x00,  // ..7.....
                /* 0DB0 */  0x47, 0x41, 0x0F, 0xB6, 0x74, 0xE0, 0x8E, 0x06,  // GA..t...
                /* 0DB8 */  0x83, 0x3A, 0xBF, 0x61, 0xFE, 0xFF, 0xE7, 0x37,  // .:.a...7
                /* 0DC0 */  0x30, 0x44, 0x00, 0xD7, 0x99, 0xC6, 0xE7, 0x17,  // 0D......
                /* 0DC8 */  0x38, 0x43, 0x3D, 0x68, 0x5F, 0x13, 0x3C, 0x6B,  // 8C=h_.<k
                /* 0DD0 */  0xDF, 0xB8, 0xD8, 0x39, 0x01, 0x5C, 0x03, 0xF2,  // ...9.\..
                /* 0DD8 */  0x49, 0x07, 0x38, 0x02, 0x9F, 0xC4, 0x03, 0xFE,  // I.8.....
                /* 0DE0 */  0xA1, 0x81, 0x79, 0x58, 0x1E, 0x1A, 0xF0, 0x39,  // ..yX...9
                /* 0DE8 */  0x1A, 0xE0, 0x4E, 0x14, 0xE0, 0xB9, 0x8D, 0xE0,  // ..N.....
                /* 0DF0 */  0x0E, 0x14, 0xC0, 0xE2, 0xFF, 0x7F, 0xA0, 0x00,  // ........
                /* 0DF8 */  0x56, 0x47, 0x7C, 0x8F, 0x8B, 0x43, 0xE3, 0x10,  // VG|..C..
                /* 0E00 */  0x1F, 0xD2, 0xCE, 0xD9, 0xE7, 0xAF, 0x33, 0xC5,  // ......3.
                /* 0E08 */  0x9D, 0x45, 0xC0, 0x70, 0xA2, 0x47, 0xBC, 0xD3,  // .E.p.G..
                /* 0E10 */  0x0C, 0xE4, 0x07, 0x86, 0x84, 0xC0, 0xA0, 0x4E,  // .......N
                /* 0E18 */  0x40, 0x1E, 0x8A, 0x0F, 0x06, 0x1C, 0xD8, 0x47,  // @......G
                /* 0E20 */  0x04, 0x76, 0x2E, 0x60, 0x07, 0x28, 0xC3, 0xF1,  // .v.`.(..
                /* 0E28 */  0xB3, 0x80, 0x4F, 0x09, 0x0F, 0x35, 0xC7, 0xF1,  // ..O..5..
                /* 0E30 */  0xB8, 0xE9, 0xBB, 0x99, 0x21, 0xD9, 0xD5, 0xE0,  // ....!...
                /* 0E38 */  0xF9, 0x07, 0x7B, 0xDA, 0x85, 0x73, 0xC4, 0x05,  // ..{..s..
                /* 0E40 */  0x17, 0x81, 0xCF, 0x3A, 0x1E, 0x05, 0x3F, 0x3D,  // ...:..?=
                /* 0E48 */  0x78, 0x8E, 0x6F, 0x0C, 0x3E, 0x3D, 0x30, 0xF7,  // x.o.>=0.
                /* 0E50 */  0x02, 0xCC, 0x1D, 0xBA, 0x85, 0x70, 0x4C, 0xAF,  // .....pL.
                /* 0E58 */  0x0F, 0x31, 0x8E, 0xFA, 0xB1, 0xA1, 0x2D, 0x01,  // .1....-.
                /* 0E60 */  0xDA, 0x50, 0x74, 0x07, 0x78, 0x19, 0x88, 0x12,  // .Pt.x...
                /* 0E68 */  0xE2, 0x08, 0x22, 0xB5, 0x86, 0xA2, 0x99, 0x47,  // .."....G
                /* 0E70 */  0x8A, 0x12, 0x30, 0x9E, 0x61, 0x1A, 0x9B, 0x8C,  // ..0.a...
                /* 0E78 */  0x20, 0x63, 0x84, 0x8E, 0x13, 0x2C, 0x4A, 0xB4,  //  c...,J.
                /* 0E80 */  0x57, 0x80, 0xF6, 0x47, 0xCB, 0x56, 0xAC, 0xB1,  // W..G.V..
                /* 0E88 */  0x38, 0xD2, 0xC9, 0x12, 0x3D, 0x6C, 0x1F, 0xB3,  // 8...=l..
                /* 0E90 */  0xF1, 0xA7, 0x55, 0xCC, 0xFF, 0x9F, 0xE0, 0x55,  // ..U....U
                /* 0E98 */  0xC5, 0x07, 0x05, 0x1F, 0x00, 0xF0, 0x2E, 0x01,  // ........
                /* 0EA0 */  0x75, 0x75, 0xF4, 0xB8, 0x7D, 0xDE, 0x00, 0xFF,  // uu..}...
                /* 0EA8 */  0xF5, 0x02, 0x4B, 0x50, 0xFE, 0x20, 0x50, 0x23,  // ..KP. P#
                /* 0EB0 */  0x33, 0xB4, 0xC7, 0xF9, 0x36, 0x63, 0xC8, 0x27,  // 3...6c.'
                /* 0EB8 */  0x27, 0x13, 0x58, 0xEC, 0x09, 0x15, 0x68, 0x0C,  // '.X...h.
                /* 0EC0 */  0xFE, 0x69, 0xC3, 0xD7, 0x76, 0xCF, 0xD7, 0xE7,  // .i..v...
                /* 0EC8 */  0x38, 0x80, 0x0F, 0xFF, 0xFF, 0x73, 0x1C, 0x60,  // 8....s.`
                /* 0ED0 */  0x68, 0x38, 0xB8, 0xA3, 0x0F, 0xDC, 0x2B, 0x09,  // h8....+.
                /* 0ED8 */  0x3F, 0xFC, 0x00, 0xCE, 0x80, 0x1E, 0x7E, 0xC0,  // ?.....~.
                /* 0EE0 */  0x3E, 0x54, 0xDC, 0x10, 0x78, 0x84, 0x15, 0xD1,  // >T..x...
                /* 0EE8 */  0xC3, 0x80, 0x45, 0xC3, 0xA0, 0xCE, 0x6B, 0xD8,  // ..E...k.
                /* 0EF0 */  0xFF, 0xFF, 0x79, 0x0D, 0xB6, 0x38, 0x70, 0x1D,  // ..y..8p.
                /* 0EF8 */  0x54, 0x7D, 0x36, 0x86, 0x33, 0xA8, 0xD3, 0xEE,  // T}6.3...
                /* 0F00 */  0xFD, 0xAE, 0x40, 0x2E, 0x22, 0x1E, 0xF4, 0xF9,  // ..@."...
                /* 0F08 */  0x3C, 0x3B, 0xB0, 0x03, 0x1B, 0xF0, 0x1F, 0x1B,  // <;......
                /* 0F10 */  0x9C, 0x1B, 0xC0, 0x53, 0x74, 0x84, 0x63, 0x03,  // ...St.c.
                /* 0F18 */  0xFB, 0x89, 0x0D, 0x38, 0x9D, 0xED, 0xE0, 0x5C,  // ...8...\
                /* 0F20 */  0xA1, 0xD8, 0x6D, 0x1F, 0x37, 0x34, 0xB0, 0xD9,  // ..m.74..
                /* 0F28 */  0x18, 0x1A, 0xC8, 0xFE, 0xFF, 0x87, 0x4F, 0xE0,  // ......O.
                /* 0F30 */  0x75, 0xE8, 0xE2, 0x97, 0x8A, 0xE7, 0x2F, 0x7E,  // u...../~
                /* 0F38 */  0xB8, 0x03, 0x9C, 0x4B, 0x3B, 0xD9, 0xA1, 0xC4,  // ...K;...
                /* 0F40 */  0x1C, 0xEE, 0x00, 0x29, 0xFF, 0xFF, 0xC3, 0x1D,  // ...)....
                /* 0F48 */  0xB8, 0xEE, 0x72, 0xEF, 0x0C, 0x2F, 0x0D, 0x9E,  // ..r../..
                /* 0F50 */  0xD3, 0xBB, 0x9D, 0x31, 0x5E, 0xEA, 0x8C, 0x10,  // ...1^...
                /* 0F58 */  0x85, 0xDD, 0x06, 0xA2, 0xD9, 0xDB, 0xE1, 0x8E,  // ........
                /* 0F60 */  0x9C, 0xF0, 0x38, 0x66, 0xA4, 0x27, 0xBD, 0x60,  // ..8f.'.`
                /* 0F68 */  0x91, 0x22, 0x1E, 0x4E, 0x94, 0x10, 0xC1, 0x5E,  // .".N...^
                /* 0F70 */  0x27, 0x9E, 0xF2, 0x1E, 0xEE, 0x98, 0x90, 0xC3,  // '.......
                /* 0F78 */  0x1D, 0xD0, 0x71, 0x7D, 0xB8, 0x03, 0x2A, 0x27,  // ..q}..*'
                /* 0F80 */  0x2A, 0xFC, 0xE1, 0x0E, 0x30, 0xFB, 0xFF, 0x3F,  // *...0..?
                /* 0F88 */  0xDC, 0x01, 0x8C, 0x3A, 0xA3, 0xE1, 0x0E, 0x77,  // ...:...w
                /* 0F90 */  0x60, 0x3B, 0xFD, 0x00, 0xE7, 0xFF, 0xFF, 0xE9,  // `;......
                /* 0F98 */  0x07, 0x78, 0x8F, 0x15, 0xC6, 0x18, 0x78, 0xB4,  // .x....x.
                /* 0FA0 */  0x25, 0x51, 0x20, 0x87, 0x81, 0x41, 0x11, 0x38,  // %Q ..A.8
                /* 0FA8 */  0xC8, 0xA1, 0x8E, 0x06, 0x3B, 0xBD, 0x40, 0x99,  // ....;.@.
                /* 0FB0 */  0xCB, 0x81, 0x9E, 0xC2, 0x33, 0x82, 0x0F, 0x60,  // ....3..`
                /* 0FB8 */  0x60, 0x3F, 0xD5, 0x01, 0x87, 0x53, 0x03, 0x3E,  // `?...S.>
                /* 0FC0 */  0xD0, 0x09, 0x05, 0x3D, 0x0A, 0x9F, 0x4D, 0xC0,  // ...=..M.
                /* 0FC8 */  0x7B, 0xA4, 0x03, 0x36, 0xFF, 0xFF, 0xB3, 0x09,  // {..6....
                /* 0FD0 */  0x7B, 0x35, 0xFA, 0x6C, 0x82, 0x63, 0x31, 0xEA,  // {5.l.c1.
                /* 0FD8 */  0x1B, 0xC4, 0x21, 0xBE, 0x74, 0xF8, 0xDC, 0xF8,  // ..!.t...
                /* 0FE0 */  0x4E, 0xE3, 0x4B, 0x00, 0xE6, 0xFA, 0x61, 0x82,  // N.K...a.
                /* 0FE8 */  0x31, 0x21, 0xF4, 0xC9, 0xF2, 0xA9, 0x0E, 0x38,  // 1!.....8
                /* 0FF0 */  0x1D, 0x4E, 0xE0, 0x8D, 0x1E, 0x77, 0x5A, 0xF0,  // .N...wZ.
                /* 0FF8 */  0x70, 0x38, 0xB8, 0x67, 0xF3, 0x2C, 0xF1, 0x44,  // p8.g.,.D
                /* 1000 */  0xE4, 0x71, 0xF8, 0x74, 0x02, 0xBC, 0x0E, 0x18,  // .q.t....
                /* 1008 */  0x98, 0x19, 0x84, 0x7F, 0x08, 0x61, 0xA7, 0x4F,  // .....a.O
                /* 1010 */  0x1F, 0x99, 0x3C, 0xF7, 0x77, 0x23, 0x9F, 0x4E,  // ..<.w#.N
                /* 1018 */  0x00, 0x5F, 0xFF, 0xFF, 0xA3, 0x1E, 0xB0, 0x90,  // ._......
                /* 1020 */  0xA8, 0xE1, 0x9C, 0x87, 0x11, 0x05, 0x83, 0x3A,  // .......:
                /* 1028 */  0xEA, 0x01, 0xD6, 0x2E, 0x7A, 0x36, 0x86, 0xA0,  // ....z6..
                /* 1030 */  0x8B, 0xC0, 0x19, 0x84, 0x78, 0xBC, 0x7B, 0xC5,  // ....x.{.
                /* 1038 */  0x8B, 0xE4, 0x3B, 0x40, 0x9C, 0x47, 0x3D, 0x83,  // ..;@.G=.
                /* 1040 */  0xBD, 0x7D, 0x3C, 0x48, 0x44, 0x89, 0xF3, 0xA8,  // .}<HD...
                /* 1048 */  0xE7, 0xD1, 0x87, 0xF2, 0xE4, 0x43, 0x9D, 0x7E,  // .....C.~
                /* 1050 */  0xAC, 0xB0, 0x81, 0x9E, 0xF8, 0x5E, 0xF4, 0x42,  // .....^.B
                /* 1058 */  0x1A, 0xE1, 0x51, 0x8F, 0x09, 0x7A, 0x79, 0xE8,  // ..Q..zy.
                /* 1060 */  0x70, 0xE5, 0xA3, 0x1E, 0x60, 0xE5, 0xFF, 0x7F,  // p...`...
                /* 1068 */  0xD4, 0x03, 0xF8, 0xFF, 0xFF, 0x3F, 0xEA, 0x81,  // .....?..
                /* 1070 */  0xF9, 0xF4, 0x04, 0xF8, 0x3F, 0xD6, 0xE0, 0x8E,  // ....?...
                /* 1078 */  0x8A, 0x60, 0x3B, 0x3F, 0x01, 0x2E, 0xFE, 0xFF,  // .`;?....
                /* 1080 */  0xE7, 0x27, 0x30, 0x0D, 0xDD, 0xE7, 0x27, 0x30,  // .'0...'0
                /* 1088 */  0x8F, 0x16, 0xE6, 0x01, 0x01, 0x71, 0x56, 0x44,  // .....qVD
                /* 1090 */  0x85, 0x7F, 0xC8, 0x18, 0x0E, 0x15, 0x1C, 0x48,  // .......H
                /* 1098 */  0xBF, 0x28, 0x1F, 0x01, 0x81, 0xCB, 0x51, 0x11,  // .(....Q.
                /* 10A0 */  0x38, 0x9C, 0x59, 0xF0, 0x42, 0x4E, 0x1D, 0xE8,  // 8.Y.BN..
                /* 10A8 */  0xF1, 0x18, 0xF4, 0x95, 0xC3, 0x57, 0x02, 0x7E,  // .....W.~
                /* 10B0 */  0xE4, 0x60, 0xA1, 0x8F, 0x1C, 0xA0, 0x3A, 0x2C,  // .`....:,
                /* 10B8 */  0x82, 0xEF, 0xC8, 0x01, 0x8E, 0xEB, 0x55, 0x60,  // ......U`
                /* 10C0 */  0xFE, 0xFF, 0x07, 0x66, 0xB7, 0x83, 0xD7, 0x4F,  // ...f...O
                /* 10C8 */  0x4F, 0xE2, 0x31, 0xEA, 0x38, 0x43, 0x14, 0x8E,  // O.1.8C..
                /* 10D0 */  0x49, 0x0E, 0x06, 0x91, 0xDE, 0xC1, 0xD8, 0x00,  // I.......
                /* 10D8 */  0x5F, 0x5E, 0x7C, 0xA8, 0xF2, 0x31, 0x10, 0x18,  // _^|..1..
                /* 10E0 */  0x42, 0x9C, 0x0D, 0x3F, 0x5D, 0x18, 0xF3, 0x74,  // B..?]..t
                /* 10E8 */  0xF8, 0x31, 0x10, 0xB0, 0x2E, 0xF5, 0x0C, 0x88,  // .1......
                /* 10F0 */  0x12, 0x77, 0x0C, 0x04, 0x52, 0xFF, 0xFF, 0x63,  // .w..R..c
                /* 10F8 */  0x20, 0x70, 0xBD, 0x04, 0x7A, 0xCC, 0x67, 0xFC,  //  p..z.g.
                /* 1100 */  0xE6, 0xF7, 0xE4, 0x17, 0xA5, 0xB6, 0xEB, 0x9F,  // ........
                /* 1108 */  0xEE, 0x06, 0xC6, 0x7A, 0x08, 0x78, 0x02, 0xF4,  // ...z.x..
                /* 1110 */  0xFD, 0xCF, 0xC7, 0x8A, 0x28, 0x01, 0xA3, 0xC4,  // ....(...
                /* 1118 */  0x7A, 0x11, 0x34, 0x66, 0x8C, 0x60, 0xEF, 0x80,  // z.4f.`..
                /* 1120 */  0x31, 0x1F, 0x09, 0x3D, 0xC2, 0x68, 0xC1, 0x0D,  // 1..=.h..
                /* 1128 */  0xF4, 0x18, 0xC8, 0x84, 0x1D, 0x03, 0x01, 0x12,  // ........
                /* 1130 */  0xFD, 0xFF, 0x8F, 0x81, 0x00, 0x23, 0x4F, 0x50,  // .....#OP
                /* 1138 */  0xC0, 0xF6, 0xFF, 0x7F, 0x82, 0x02, 0x0C, 0x1D,  // ........
                /* 1140 */  0x05, 0xC1, 0x7C, 0x86, 0x02, 0xAC, 0x1D, 0x05,  // ..|.....
                /* 1148 */  0xC1, 0x3E, 0x5A, 0x98, 0xA3, 0xE0, 0x31, 0x5F,  // .>Z...1_
                /* 1150 */  0x1E, 0x06, 0xA2, 0xC1, 0x24, 0xFC, 0xFF, 0x8F,  // ....$...
                /* 1158 */  0x82, 0xD8, 0x50, 0x40, 0x3A, 0x77, 0x38, 0xD4,  // ..P@:w8.
                /* 1160 */  0xE9, 0x05, 0x7D, 0x50, 0xF0, 0xB0, 0x9F, 0x0A,  // ..}P....
                /* 1168 */  0x3C, 0x89, 0x53, 0xF5, 0xB5, 0xE0, 0x28, 0x9E,  // <.S...(.
                /* 1170 */  0x00, 0x7C, 0x18, 0x04, 0xFE, 0x43, 0x83, 0x35,  // .|...C.5
                /* 1178 */  0x89, 0xE2, 0x87, 0x06, 0xEA, 0xB3, 0x07, 0xF8,  // ........
                /* 1180 */  0x86, 0x06, 0x8E, 0xA8, 0x67, 0x1C, 0xF4, 0x89,  // ....g...
                /* 1188 */  0xC8, 0x67, 0x83, 0x98, 0x6F, 0x1E, 0x11, 0x9E,  // .g..o...
                /* 1190 */  0x3C, 0x7C, 0x7D, 0x60, 0x27, 0x4F, 0x9F, 0x9A,  // <|}`'O..
                /* 1198 */  0x02, 0x45, 0x79, 0xDF, 0xE0, 0x71, 0x4E, 0x39,  // .Ey..qN9
                /* 11A0 */  0xA0, 0x3A, 0xFC, 0x82, 0xE3, 0xC0, 0x0B, 0xE3,  // .:......
                /* 11A8 */  0xFF, 0x7F, 0xE0, 0x65, 0xC7, 0x29, 0x1F, 0x4B,  // ...e.).K
                /* 11B0 */  0xC0, 0x77, 0x26, 0x85, 0x73, 0x73, 0xF1, 0x1D,  // .w&.ss..
                /* 11B8 */  0x8F, 0x9D, 0x06, 0xC0, 0xA6, 0xE3, 0x34, 0x00,  // ......4.
                /* 11C0 */  0x94, 0x62, 0x0D, 0x0C, 0x7D, 0x54, 0x31, 0x6A,  // .b..}T1j
                /* 11C8 */  0xEF, 0x93, 0xD0, 0xC4, 0xD8, 0x75, 0xE4, 0x25,  // .....u.%
                /* 11D0 */  0xC5, 0xD7, 0x93, 0x67, 0x2D, 0xF0, 0xF9, 0x18,  // ...g-...
                /* 11D8 */  0x1B, 0x50, 0x3A, 0x81, 0xF1, 0xA3, 0x27, 0x98,  // .P:...'.
                /* 11E0 */  0x60, 0x0E, 0xE6, 0x55, 0xDC, 0x83, 0x7C, 0x12,  // `..U..|.
                /* 11E8 */  0x62, 0xA7, 0x1C, 0xF0, 0xFE, 0xFF, 0x0F, 0x9E,  // b.......
                /* 11F0 */  0x80, 0x3D, 0x11, 0xA7, 0x4E, 0x54, 0xEC, 0x37,  // .=..NT.7
                /* 11F8 */  0x97, 0x0F, 0x9E, 0x80, 0xBC, 0x3B, 0x83, 0x11,  // .....;..
                /* 1200 */  0xCE, 0x3F, 0xC4, 0x03, 0x44, 0x88, 0x67, 0x4E,  // .?..D.gN
                /* 1208 */  0x83, 0xC4, 0x09, 0xF2, 0x32, 0xF0, 0xE0, 0xE9,  // ....2...
                /* 1210 */  0x7B, 0x67, 0x9C, 0x67, 0xCF, 0x28, 0x6F, 0x9E,  // {g.g.(o.
                /* 1218 */  0x46, 0x38, 0xFA, 0x78, 0x06, 0x7A, 0xE7, 0x0C,  // F8.x.z..
                /* 1220 */  0xF1, 0xD6, 0xF9, 0x0C, 0xFA, 0xEA, 0x69, 0xB4,  // ......i.
                /* 1228 */  0x58, 0xC1, 0x8F, 0xF1, 0xC1, 0x93, 0x45, 0x3E,  // X.....E>
                /* 1230 */  0x23, 0xD1, 0x83, 0x27, 0xEC, 0xFF, 0xFF, 0xC1,  // #..'....
                /* 1238 */  0x13, 0xE0, 0xFF, 0xFF, 0xFF, 0xE0, 0x09, 0x18,  // ........
                /* 1240 */  0x3B, 0x83, 0x01, 0xC7, 0x13, 0x1B, 0x38, 0xCE,  // ;.....8.
                /* 1248 */  0x60, 0xC0, 0xE5, 0xE8, 0x0F, 0x9E, 0x93, 0x26,  // `......&
                /* 1250 */  0x8C, 0x23, 0x13, 0xF8, 0xFF, 0xFF, 0x47, 0x26,  // .#....G&
                /* 1258 */  0xC0, 0xD5, 0x58, 0x61, 0x8C, 0x81, 0x27, 0x7B,  // ..Xa..'{
                /* 1260 */  0x1A, 0xD0, 0xE3, 0x80, 0x45, 0x1D, 0x98, 0x04,  // ....E...
                /* 1268 */  0xC3, 0x59, 0x7C, 0x58, 0xF0, 0x11, 0x81, 0x1F,  // .Y|X....
                /* 1270 */  0x16, 0x3C, 0x82, 0x8A, 0xC7, 0x49, 0x8F, 0x45,  // .<...I.E
                /* 1278 */  0x3E, 0x77, 0xB2, 0x43, 0x82, 0x0F, 0x21, 0x1E,  // >w.C..!.
                /* 1280 */  0xA4, 0x0F, 0xB3, 0xE0, 0x39, 0x58, 0xC1, 0xBB,  // ....9X..
                /* 1288 */  0x2E, 0xC1, 0x39, 0x15, 0x00, 0x66, 0xFE, 0xFF,  // ..9..f..
                /* 1290 */  0x04, 0xB5, 0xAB, 0x38, 0x5D, 0xB0, 0x00, 0x07,  // ...8]...
                /* 1298 */  0x30, 0xD9, 0x38, 0x86, 0x50, 0x0E, 0x1F, 0x5D,  // 0.8.P..]
                /* 12A0 */  0x3D, 0x4D, 0x76, 0x24, 0x83, 0x19, 0x0B, 0x52,  // =Mv$...R
                /* 12A8 */  0x27, 0x01, 0x0F, 0xC0, 0x81, 0x60, 0xA4, 0x9D,  // '....`..
                /* 12B0 */  0x44, 0xA3, 0x31, 0x9C, 0xD5, 0xC2, 0x08, 0xCE,  // D.1.....
                /* 12B8 */  0x20, 0x3E, 0x8E, 0x38, 0xD7, 0x91, 0x0A, 0xBD,  //  >.8....
                /* 12C0 */  0x1B, 0x1D, 0xA7, 0x50, 0x41, 0xEE, 0x25, 0x74,  // ...PA.%t
                /* 12C8 */  0xDE, 0xBE, 0x1B, 0xF0, 0x77, 0x9A, 0xC7, 0x62,  // ....w..b
                /* 12D0 */  0x60, 0xDF, 0x4E, 0xC0, 0x31, 0x17, 0xAB, 0x01,  // `.N.1...
                /* 12D8 */  0x45, 0x0D, 0xC0, 0x68, 0x98, 0x53, 0xC0, 0x53,  // E..h.S.S
                /* 12E0 */  0x09, 0xB8, 0x82, 0xCD, 0x0D, 0x7D, 0x61, 0xB1,  // .....}a.
                /* 12E8 */  0xD6, 0xA9, 0xE8, 0xF8, 0xF4, 0x3E, 0x70, 0x70,  // .....>pp
                /* 12F0 */  0xC0, 0x63, 0xF6, 0x1E, 0x1C, 0x2C, 0x34, 0x0F,  // .c...,4.
                /* 12F8 */  0x0E, 0x6C, 0xD9, 0x06, 0x87, 0x56, 0x72, 0x17,  // .l...Vr.
                /* 1300 */  0x21, 0x87, 0x0F, 0xFC, 0xEC, 0x60, 0xFC, 0xFF,  // !....`..
                /* 1308 */  0x67, 0x07, 0x46, 0x40, 0xCF, 0x0E, 0x16, 0x92,  // g.F@....
                /* 1310 */  0x67, 0x07, 0x36, 0x7D, 0x67, 0x11, 0x50, 0x00,  // g.6}g.P.
                /* 1318 */  0xF9, 0xDE, 0xE1, 0x73, 0xCB, 0xB3, 0x07, 0x1B,  // ...s....
                /* 1320 */  0xC3, 0xA3, 0x8B, 0xD1, 0x8C, 0xCE, 0x35, 0xDD,  // ......5.
                /* 1328 */  0x26, 0x50, 0x2A, 0x6E, 0x13, 0x14, 0xC4, 0x37,  // &P*n...7
                /* 1330 */  0x00, 0x27, 0xA4, 0xD1, 0x3D, 0x0D, 0x37, 0x13,  // .'..=.7.
                /* 1338 */  0xE3, 0x3F, 0x62, 0xF8, 0x88, 0x70, 0x48, 0x67,  // .?b..pHg
                /* 1340 */  0x6B, 0x82, 0x79, 0x20, 0xF5, 0x7E, 0xF4, 0x65,  // k.y .~.e
                /* 1348 */  0x0F, 0x3F, 0xFB, 0x90, 0x0F, 0x2E, 0x9E, 0x86,  // .?......
                /* 1350 */  0xAF, 0x37, 0xE4, 0xDE, 0x41, 0xA7, 0xED, 0x33,  // .7..A..3
                /* 1358 */  0x03, 0xE6, 0x30, 0xED, 0xEB, 0x54, 0x02, 0xCB,  // ..0..T..
                /* 1360 */  0xBA, 0x4A, 0x50, 0x0F, 0x17, 0x10, 0x7A, 0xA1,  // .JP...z.
                /* 1368 */  0xF1, 0xBD, 0x30, 0xC1, 0xC3, 0x99, 0x6F, 0x67,  // ..0...og
                /* 1370 */  0xEF, 0x25, 0xEC, 0x70, 0x98, 0xE0, 0xDD, 0x30,  // .%.p...0
                /* 1378 */  0xC1, 0xBC, 0x83, 0x40, 0x8D, 0xCA, 0x83, 0xC0,  // ...@....
                /* 1380 */  0x1C, 0xBF, 0x4C, 0x30, 0xDF, 0x18, 0x50, 0xC9,  // ..L0..P.
                /* 1388 */  0x2E, 0x5A, 0xF4, 0x0C, 0xF3, 0x0E, 0xE3, 0x4B,  // .Z.....K
                /* 1390 */  0x82, 0xAF, 0x1F, 0x3E, 0xB7, 0x78, 0x01, 0xAF,  // ...>.x..
                /* 1398 */  0x5B, 0x30, 0x08, 0x9E, 0x81, 0x5E, 0x5D, 0x0C,  // [0...^].
                /* 13A0 */  0x15, 0x27, 0xF0, 0xAB, 0xC0, 0x1B, 0x4D, 0x88,  // .'....M.
                /* 13A8 */  0x60, 0x86, 0x3D, 0xFC, 0x90, 0x6F, 0x31, 0x3E,  // `.=..o1>
                /* 13B0 */  0x5F, 0xFA, 0x06, 0x10, 0xEB, 0x75, 0xC4, 0xFF,  // _....u..
                /* 13B8 */  0xFF, 0x91, 0xF2, 0x63, 0xCB, 0x01, 0x45, 0x7A,  // ...c..Ez
                /* 13C0 */  0xEB, 0xF3, 0x04, 0x7C, 0x96, 0xF1, 0x71, 0xF0,  // ...|..q.
                /* 13C8 */  0xA4, 0x7C, 0xAF, 0x34, 0xFA, 0x2B, 0x84, 0x0F,  // .|.4.+..
                /* 13D0 */  0x3F, 0x46, 0xF6, 0x39, 0x87, 0x1D, 0x0C, 0xD9,  // ?F.9....
                /* 13D8 */  0xA0, 0x38, 0xE2, 0x03, 0xC3, 0x4B, 0x8D, 0xA7,  // .8...K..
                /* 13E0 */  0xC2, 0xCE, 0x5D, 0x30, 0x0E, 0x0E, 0xEC, 0x58,  // ..]0...X
                /* 13E8 */  0x84, 0x39, 0xEA, 0x81, 0xEB, 0x64, 0xE3, 0x93,  // .9...d..
                /* 13F0 */  0x03, 0x98, 0xE1, 0x31, 0x87, 0x6B, 0x9F, 0x37,  // ...1.k.7
                /* 13F8 */  0x7C, 0x33, 0xF0, 0xB8, 0xF8, 0x91, 0xC3, 0xC7,  // |3......
                /* 1400 */  0x3B, 0x86, 0x7D, 0x9A, 0x3E, 0x1A, 0xBD, 0xBC,  // ;.}.>...
                /* 1408 */  0xF9, 0xF4, 0x82, 0x81, 0xF5, 0xA5, 0x81, 0xC3,  // ........
                /* 1410 */  0x1A, 0x2D, 0xEC, 0x63, 0xC0, 0x99, 0xFB, 0x42,  // .-.c...B
                /* 1418 */  0x84, 0x3B, 0x75, 0x82, 0x05, 0x10, 0x7F, 0x2B,  // .;u....+
                /* 1420 */  0x79, 0xE4, 0xF0, 0x04, 0x0C, 0xC8, 0x72, 0xAF,  // y.....r.
                /* 1428 */  0x4B, 0x07, 0x22, 0x7E, 0xCA, 0xB3, 0xBA, 0x03,  // K."~....
                /* 1430 */  0x11, 0x02, 0xE3, 0x71, 0xF4, 0xF1, 0xC3, 0xB3,  // ...q....
                /* 1438 */  0xF1, 0x51, 0xC0, 0xC7, 0x28, 0xCF, 0xFC, 0x8C,  // .Q..(...
                /* 1440 */  0x22, 0xBD, 0x32, 0x58, 0xCB, 0x89, 0x08, 0xA5,  // ".2X....
                /* 1448 */  0x02, 0x46, 0x81, 0x69, 0x74, 0xE7, 0xE0, 0x11,  // .F.it...
                /* 1450 */  0x61, 0x04, 0x67, 0x10, 0x8F, 0xD6, 0x37, 0x17,  // a.g...7.
                /* 1458 */  0x18, 0xFF, 0xFF, 0x9B, 0x0B, 0xF0, 0x3A, 0x13,  // ......:.
                /* 1460 */  0x01, 0x97, 0xEB, 0xA5, 0x67, 0x87, 0xBB, 0x2C,  // ....g..,
                /* 1468 */  0xB2, 0x69, 0x1B, 0xF7, 0x15, 0xD5, 0xA7, 0x63,  // .i.....c
                /* 1470 */  0x4F, 0xFC, 0xB4, 0x61, 0x9C, 0x8C, 0x00, 0x1F,  // O..a....
                /* 1478 */  0x77, 0x1D, 0xC0, 0xC9, 0xFF, 0xFF, 0xAE, 0x03,  // w.......
                /* 1480 */  0xF0, 0xFF, 0xFF, 0x7F, 0xD7, 0xE1, 0xF7, 0x07,  // ........
                /* 1488 */  0xDF, 0x75, 0x80, 0x6B, 0xA4, 0x55, 0x51, 0x11,  // .u.k.UQ.
                /* 1490 */  0xBF, 0x05, 0x85, 0x80, 0x41, 0x8D, 0xCE, 0xD7,  // ....A...
                /* 1498 */  0x0A, 0xFC, 0xB1, 0x84, 0x81, 0xB3, 0xF3, 0x8A,  // ........
                /* 14A0 */  0xE1, 0xF8, 0xC0, 0x3D, 0xBE, 0xD7, 0x95, 0xD3,  // ...=....
                /* 14A8 */  0x7A, 0x36, 0xF0, 0x8D, 0xC5, 0x90, 0xEC, 0x82,  // z6......
                /* 14B0 */  0x8A, 0xBB, 0x5F, 0xF8, 0x46, 0xED, 0xA9, 0xBE,  // .._.F...
                /* 14B8 */  0x28, 0xBC, 0x27, 0xF8, 0x8E, 0xC0, 0xA0, 0x60,  // (.'....`
                /* 14C0 */  0xDC, 0x51, 0x31, 0x07, 0x54, 0x38, 0x04, 0x67,  // .Q1.T8.g
                /* 14C8 */  0x7C, 0x14, 0x98, 0x41, 0xFA, 0x90, 0xF2, 0x7A,  // |..A...z
                /* 14D0 */  0xE0, 0xC1, 0x32, 0xF7, 0xC7, 0x0D, 0x5D, 0x22,  // ..2...]"
                /* 14D8 */  0x1E, 0x36, 0x9E, 0x0C, 0x9A, 0x43, 0xD1, 0x99,  // .6...C..
                /* 14E0 */  0xE0, 0x14, 0xDA, 0x1A, 0x96, 0x70, 0xDE, 0x37,  // .....p.7
                /* 14E8 */  0x42, 0x44, 0x09, 0xF6, 0xC2, 0xF1, 0xC6, 0xF0,  // BD......
                /* 14F0 */  0x34, 0x1B, 0x25, 0x5E, 0xA4, 0x80, 0xD1, 0xA2,  // 4.%^....
                /* 14F8 */  0x04, 0xEB, 0x0D, 0x42, 0xA0, 0x91, 0x42, 0x04,  // ...B..B.
                /* 1500 */  0x0C, 0x51, 0x1C, 0x96, 0xE0, 0xA2, 0xB7, 0x7F,  // .Q......
                /* 1508 */  0x8D, 0x67, 0x6F, 0x02, 0x1D, 0x65, 0x1C, 0xE9,  // .go..e..
                /* 1510 */  0xB8, 0x83, 0x1E, 0xB6, 0x6F, 0xAC, 0xFC, 0x7C,  // ....o..|
                /* 1518 */  0xEF, 0x71, 0xF9, 0x02, 0x8A, 0x21, 0x78, 0xCD,  // .q...!x.
                /* 1520 */  0xF0, 0x17, 0xC0, 0x07, 0x00, 0xBC, 0x6B, 0x40,  // ......k@
                /* 1528 */  0xCD, 0xFC, 0xB1, 0x00, 0xD6, 0xFF, 0xFF, 0x46,  // .......F
                /* 1530 */  0x0F, 0xBE, 0xEB, 0x35, 0x5E, 0xFE, 0x20, 0x50,  // ...5^. P
                /* 1538 */  0x97, 0x19, 0x7E, 0xF6, 0xF0, 0xCD, 0xD5, 0xF7,  // ..~.....
                /* 1540 */  0x80, 0xC3, 0x62, 0xB7, 0x6E, 0x3E, 0x1E, 0xF0,  // ..b.n>..
                /* 1548 */  0x0F, 0xFD, 0xA5, 0xD7, 0x87, 0x0A, 0xCF, 0xD7,  // ........
                /* 1550 */  0x57, 0x5F, 0xDF, 0xBE, 0xC1, 0x7B, 0x39, 0x06,  // W_...{9.
                /* 1558 */  0xEC, 0x09, 0xBE, 0x81, 0x83, 0x7C, 0xBC, 0xD8,  // .....|..
                /* 1560 */  0xFF, 0xFF, 0x78, 0xE1, 0x8C, 0x83, 0x2B, 0x27,  // ..x...+'
                /* 1568 */  0xA1, 0xC7, 0x02, 0x6B, 0x85, 0x41, 0xDD, 0xC2,  // ...k.A..
                /* 1570 */  0xC1, 0xA5, 0x09, 0x5C, 0x57, 0x65, 0x1F, 0x6A,  // ...\We.j
                /* 1578 */  0x7C, 0x08, 0xC6, 0x9F, 0x2F, 0x70, 0x01, 0x86,  // |.../p..
                /* 1580 */  0x4C, 0x4F, 0x65, 0x30, 0xAE, 0x29, 0x3E, 0x95,  // LOe0.)>.
                /* 1588 */  0x61, 0xEE, 0x0E, 0x1E, 0x90, 0x8F, 0x18, 0xC0,  // a.......
                /* 1590 */  0x67, 0x15, 0x1E, 0x18, 0xEE, 0xB4, 0xE0, 0x9B,  // g.......
                /* 1598 */  0x92, 0x41, 0xCF, 0x31, 0xA8, 0x8F, 0x3C, 0x27,  // .A.1..<'
                /* 15A0 */  0xEF, 0x7B, 0xC2, 0xE3, 0x84, 0xA3, 0x9E, 0x83,  // .{......
                /* 15A8 */  0xE8, 0xD8, 0xC0, 0x71, 0xDC, 0x00, 0xC7, 0xE1,  // ...q....
                /* 15B0 */  0x06, 0x77, 0xCE, 0x63, 0xE3, 0xC2, 0xC0, 0x3D,  // .w.c...=
                /* 15B8 */  0x17, 0x78, 0x18, 0xBE, 0xE9, 0x78, 0x44, 0x98,  // .x...xD.
                /* 15C0 */  0xF1, 0x3F, 0xEA, 0x19, 0x21, 0x20, 0xFE, 0x62,  // .?..! .b
                /* 15C8 */  0xC4, 0x06, 0x0C, 0xA6, 0xFF, 0xFF, 0x80, 0xF9,  // ........
                /* 15D0 */  0xAD, 0xCD, 0xD7, 0x37, 0xDC, 0x80, 0x7D, 0x75,  // ...7..}u
                /* 15D8 */  0xF0, 0x05, 0xC3, 0x27, 0x30, 0xA3, 0xBF, 0xC0,  // ...'0...
                /* 15E0 */  0x3C, 0x89, 0xF9, 0xD8, 0x40, 0x2E, 0x70, 0x74,  // <...@.pt
                /* 15E8 */  0xC0, 0xE0, 0x00, 0xF4, 0x80, 0xE1, 0x1F, 0x2E,  // ........
                /* 15F0 */  0xDE, 0xE5, 0xC0, 0x70, 0x15, 0xF4, 0x71, 0xC1,  // ...p..q.
                /* 15F8 */  0xC7, 0x1E, 0x2B, 0xBA, 0xCB, 0xA1, 0x6F, 0x72,  // ..+...or
                /* 1600 */  0x86, 0x89, 0x63, 0x88, 0x37, 0x30, 0x76, 0x97,  // ..c.70v.
                /* 1608 */  0x20, 0x87, 0x39, 0xA8, 0x77, 0x09, 0xCF, 0x81,  //  .9.w...
                /* 1610 */  0x9F, 0x2D, 0x7C, 0x82, 0xF3, 0xCD, 0x27, 0xC4,  // .-|...'.
                /* 1618 */  0xA9, 0x3E, 0x5A, 0xBD, 0x07, 0xF8, 0xE8, 0xF1,  // .>Z.....
                /* 1620 */  0xDE, 0xE5, 0xB3, 0x13, 0xBB, 0x08, 0xF8, 0xC8,  // ........
                /* 1628 */  0x65, 0x1C, 0x4F, 0xD3, 0x57, 0x40, 0x0F, 0xD9,  // e.O.W@..
                /* 1630 */  0x60, 0xAF, 0x1A, 0x3E, 0x81, 0xF9, 0xE8, 0x86,  // `..>....
                /* 1638 */  0x3B, 0x46, 0x79, 0x26, 0x9E, 0xBE, 0xEF, 0x20,  // ;Fy&... 
                /* 1640 */  0xEC, 0x48, 0x72, 0xD4, 0xA1, 0xAE, 0xE9, 0x11,  // .Hr.....
                /* 1648 */  0xE5, 0x84, 0x0E, 0xC4, 0xB7, 0x36, 0x70, 0x46,  // .....6pF
                /* 1650 */  0xBB, 0x7F, 0xA0, 0xB7, 0xE9, 0x91, 0x61, 0x8E,  // ......a.
                /* 1658 */  0x06, 0xB0, 0x2E, 0x21, 0x60, 0xF9, 0xFF, 0xDF,  // ...!`...
                /* 1660 */  0x0C, 0xD8, 0x1D, 0xC3, 0x97, 0x10, 0xE0, 0x13,  // ........
                /* 1668 */  0xF4, 0x12, 0x81, 0xBE, 0x66, 0x78, 0x74, 0x8F,  // ....fxt.
                /* 1670 */  0x00, 0x98, 0x2B, 0x06, 0x3B, 0x16, 0xF8, 0xB0,  // ..+.;...
                /* 1678 */  0xE1, 0x6B, 0x00, 0xBB, 0x17, 0x38, 0xCC, 0x3D,  // .k...8.=
                /* 1680 */  0x02, 0x54, 0xA0, 0x1E, 0x1E, 0x7C, 0xB5, 0xF7,  // .T...|..
                /* 1688 */  0x08, 0x50, 0x9C, 0x2C, 0x7D, 0x68, 0xF0, 0x40,  // .P.,}h.@
                /* 1690 */  0xAD, 0xEA, 0x8C, 0x09, 0xE5, 0x88, 0xC9, 0xA1,  // ........
                /* 1698 */  0xA2, 0xB1, 0x5B, 0x01, 0xBB, 0x5D, 0xFA, 0x26,  // ..[..].&
                /* 16A0 */  0x01, 0x37, 0xCF, 0x2C, 0x50, 0x49, 0x6E, 0x12,  // .7.,PIn.
                /* 16A8 */  0xD0, 0x61, 0xBA, 0xBC, 0xCC, 0xD0, 0xF9, 0x1F,  // .a......
                /* 16B0 */  0xB8, 0x6F, 0x75, 0x1E, 0xA1, 0x0F, 0x11, 0x0C,  // .ou.....
                /* 16B8 */  0xE5, 0x3D, 0xCF, 0xA7, 0x30, 0x7E, 0x86, 0xF0,  // .=..0~..
                /* 16C0 */  0x01, 0x93, 0x9D, 0x29, 0xF8, 0x59, 0x13, 0x77,  // ...).Y.w
                /* 16C8 */  0x07, 0x30, 0xCA, 0x9B, 0xA7, 0x27, 0xC0, 0xCE,  // .0...'..
                /* 16D0 */  0x9F, 0x46, 0x7E, 0x37, 0x78, 0x17, 0xF0, 0xF4,  // .F~7x...
                /* 16D8 */  0x7D, 0x2F, 0xE2, 0x87, 0x04, 0xF6, 0xFF, 0x3F,  // }/.....?
                /* 16E0 */  0x51, 0x80, 0x29, 0xD8, 0x9D, 0x0E, 0x0A, 0xF4,  // Q.).....
                /* 16E8 */  0x09, 0x79, 0x44, 0x46, 0xF5, 0x11, 0x81, 0x5F,  // .yDF..._
                /* 16F0 */  0x92, 0xC0, 0x78, 0x24, 0xF1, 0x81, 0x02, 0x08,  // ..x$....
                /* 16F8 */  0xDD, 0x0B, 0x50, 0xA7, 0x0F, 0x7E, 0x78, 0xF6,  // ..P..~x.
                /* 1700 */  0x05, 0xD5, 0x98, 0xEF, 0x56, 0x8F, 0x70, 0x9E,  // ....V.p.
                /* 1708 */  0x1C, 0xE6, 0x72, 0xC0, 0xE2, 0x5C, 0x93, 0x40,  // ..r..\.@
                /* 1710 */  0x75, 0xDC, 0xE5, 0xA3, 0x83, 0x7B, 0x6D, 0xC5,  // u....{m.
                /* 1718 */  0x0F, 0xEE, 0x9D, 0xE5, 0x9D, 0xCF, 0x50, 0x1E,  // ......P.
                /* 1720 */  0x24, 0xF8, 0xAE, 0xAD, 0xE0, 0xB8, 0xAA, 0xC1,  // $.......
                /* 1728 */  0x38, 0xB6, 0xF0, 0x4B, 0x1E, 0xBC, 0xFF, 0xFF,  // 8..K....
                /* 1730 */  0x25, 0x0F, 0xB0, 0x30, 0x2C, 0x2E, 0xF8, 0xEF,  // %..0,...
                /* 1738 */  0x61, 0x20, 0x2A, 0x11, 0x06, 0x45, 0x60, 0x79,  // a *..E`y
                /* 1740 */  0xF7, 0x56, 0x0A, 0x7F, 0xC8, 0x60, 0xBC, 0x29,  // .V...`.)
                /* 1748 */  0xF0, 0x49, 0x63, 0x47, 0x0D, 0xD8, 0x19, 0x2A,  // .IcG...*
                /* 1750 */  0xEE, 0xA6, 0x08, 0xD6, 0xA9, 0x62, 0x86, 0xC0,  // .....b..
                /* 1758 */  0x83, 0x3D, 0x00, 0x7C, 0xBE, 0xF2, 0x19, 0x40,  // .=.|...@
                /* 1760 */  0x51, 0x60, 0xC8, 0xFF, 0x1F, 0x86, 0x1D, 0xDA,  // Q`......
                /* 1768 */  0xE1, 0xDC, 0x86, 0x01, 0x07, 0x23, 0xC6, 0x5D,  // .....#.]
                /* 1770 */  0x0A, 0xE1, 0x4E, 0xF9, 0x1D, 0x25, 0xF6, 0x73,  // ..N..%.s
                /* 1778 */  0x39, 0x9B, 0x2E, 0xEE, 0x6A, 0xEE, 0xD3, 0x09,  // 9...j...
                /* 1780 */  0xBB, 0x20, 0xC3, 0x38, 0x0B, 0x3C, 0x02, 0xBC,  // . .8.<..
                /* 1788 */  0x9A, 0xF3, 0x0B, 0xF2, 0x0B, 0xF1, 0x0B, 0xC1,  // ........
                /* 1790 */  0x1B, 0xB2, 0x6F, 0x4A, 0xCF, 0x06, 0x2F, 0x3B,  // ..oJ../;
                /* 1798 */  0x31, 0xDE, 0x8D, 0x7D, 0x4A, 0xF6, 0x79, 0xE7,  // 1..}J.y.
                /* 17A0 */  0x05, 0xD9, 0x18, 0x47, 0x13, 0x31, 0xCA, 0xB9,  // ...G.1..
                /* 17A8 */  0x3D, 0x0C, 0xBC, 0x26, 0x1B, 0xE5, 0xFD, 0xE4,  // =..&....
                /* 17B0 */  0x85, 0x20, 0x62, 0x34, 0x43, 0x04, 0x8D, 0x11,  // . b4C...
                /* 17B8 */  0xE8, 0x7D, 0xD9, 0x78, 0x2F, 0xC8, 0x4C, 0xE0,  // .}.x/.L.
                /* 17C0 */  0x5B, 0x41, 0x07, 0x17, 0x5F, 0x90, 0x01, 0x43,  // [A.._..C
                /* 17C8 */  0xFF, 0xFF, 0x0B, 0x32, 0xB0, 0x3F, 0x19, 0x01,  // ...2.?..
                /* 17D0 */  0x3E, 0x4F, 0x1C, 0xB8, 0x4B, 0x35, 0xF8, 0x4E,  // >O..K5.N
                /* 17D8 */  0x36, 0xC0, 0xFA, 0xFF, 0x7F, 0xB2, 0x01, 0xFB,  // 6.......
                /* 17E0 */  0xD0, 0x7D, 0xB2, 0x01, 0xF7, 0x68, 0xE1, 0x1D,  // .}...h..
                /* 17E8 */  0x4D, 0x10, 0x27, 0x1B, 0x0A, 0xE4, 0xE0, 0xEB,  // M.'.....
                /* 17F0 */  0xA2, 0x70, 0x3C, 0xF4, 0x49, 0x84, 0x1E, 0x9D,  // .p<.I...
                /* 17F8 */  0x7C, 0x94, 0xC4, 0x9D, 0x19, 0x3C, 0x91, 0x77,  // |....<.w
                /* 1800 */  0x16, 0x8F, 0xE2, 0x65, 0xD0, 0xF7, 0x82, 0x13,  // ...e....
                /* 1808 */  0x79, 0x7D, 0xB0, 0x9C, 0x63, 0x24, 0xA8, 0x46,  // y}..c$.F
                /* 1810 */  0xE2, 0xE3, 0x03, 0xFC, 0xEB, 0x8B, 0x8F, 0x91,  // ........
                /* 1818 */  0xF0, 0xF9, 0xFC, 0xC3, 0xF2, 0x60, 0x0C, 0xE9,  // .....`..
                /* 1820 */  0x53, 0x24, 0x07, 0x79, 0x76, 0x79, 0x0C, 0xE1,  // S$.yvy..
                /* 1828 */  0x17, 0x48, 0xB8, 0xA7, 0x99, 0x03, 0xC0, 0xC8,  // .H......
                /* 1830 */  0xBA, 0x3C, 0xA2, 0xCF, 0x8E, 0x1C, 0x23, 0xAE,  // .<....#.
                /* 1838 */  0x2F, 0x8A, 0xBE, 0x02, 0xFB, 0x20, 0x70, 0x3E,  // /.... p>
                /* 1840 */  0xCF, 0x89, 0xE0, 0xFA, 0xFF, 0x9F, 0x13, 0x31,  // .......1
                /* 1848 */  0xA3, 0xE6, 0x47, 0x1B, 0x3E, 0x7E, 0x0E, 0xFE,  // ..G.>~..
                /* 1850 */  0x56, 0xF0, 0x40, 0xE9, 0x63, 0x51, 0x88, 0x47,  // V.@.cQ.G
                /* 1858 */  0x24, 0x7E, 0x4E, 0x04, 0x97, 0x89, 0x73, 0x22,  // $~N...s"
                /* 1860 */  0x90, 0x38, 0xF4, 0xC2, 0x38, 0x2D, 0xE0, 0x06,  // .8..8-..
                /* 1868 */  0xE2, 0x33, 0x25, 0x76, 0xCA, 0x27, 0xC2, 0xCE,  // .3%v.'..
                /* 1870 */  0x25, 0x98, 0xD1, 0x81, 0xEB, 0x72, 0xEF, 0xD1,  // %....r..
                /* 1878 */  0x81, 0xFF, 0x24, 0x80, 0xC7, 0x7A, 0xBC, 0x03,  // ..$..z..
                /* 1880 */  0xDF, 0x49, 0xDD, 0x77, 0x13, 0x5F, 0x64, 0x7C,  // .I.w._d|
                /* 1888 */  0x28, 0x7A, 0x6C, 0x01, 0x56, 0xFF, 0xFF, 0xF3,  // (zl.V...
                /* 1890 */  0x1D, 0x60, 0x2A, 0xDC, 0xE1, 0x0E, 0x15, 0xE7,  // .`*.....
                /* 1898 */  0x7C, 0x07, 0x50, 0xE3, 0x6C, 0xFD, 0x7C, 0x07,  // |.P.l.|.
                /* 18A0 */  0xAE, 0xFF, 0xFF, 0xF9, 0x0E, 0x86, 0xC8, 0xF3,  // ........
                /* 18A8 */  0x1D, 0x40, 0xF6, 0xFF, 0xFF, 0x19, 0x00, 0x73,  // .@.....s
                /* 18B0 */  0x46, 0xC3, 0x9D, 0xEF, 0xC0, 0x76, 0xB4, 0x01,  // F....v..
                /* 18B8 */  0xCC, 0x4D, 0xE3, 0xD1, 0x06, 0xDC, 0xC3, 0x85,  // .M......
                /* 18C0 */  0x3D, 0x0C, 0x9E, 0xE1, 0x0D, 0xE5, 0x43, 0x01,  // =.....C.
                /* 18C8 */  0x95, 0x74, 0xCA, 0xA6, 0x30, 0x66, 0xF1, 0x91,  // .t..0f..
                /* 18D0 */  0xC1, 0x07, 0x05, 0x7E, 0x64, 0xF0, 0x39, 0xE1,  // ...~d.9.
                /* 18D8 */  0xF1, 0xE1, 0x50, 0xD9, 0x11, 0xC6, 0x97, 0x10,  // ..P.....
                /* 18E0 */  0x1F, 0x15, 0x58, 0xF4, 0x71, 0xD2, 0x13, 0x14,  // ..X.q...
                /* 18E8 */  0x18, 0x87, 0xF8, 0xC8, 0xE7, 0x41, 0x3C, 0xD9,  // .....A<.
                /* 18F0 */  0xC0, 0x3A, 0x17, 0xFC, 0xFF, 0x9F, 0x0B, 0x00,  // .:......
                /* 18F8 */  0x33, 0x3A, 0x9F, 0x6F, 0x1A, 0xB9, 0x35, 0x82,  // 3:.o..5.
                /* 1900 */  0xC8, 0xC6, 0x51, 0x84, 0x72, 0x38, 0xC9, 0xE2,  // ..Q.r8..
                /* 1908 */  0x74, 0x11, 0xF4, 0x09, 0xC9, 0xD7, 0x8B, 0x53,  // t......S
                /* 1910 */  0x39, 0x55, 0xFC, 0x55, 0xC4, 0xCA, 0x21, 0x05,  // 9U.U..!.
                /* 1918 */  0xEF, 0xE3, 0x8A, 0x35, 0xC3, 0x28, 0xDE, 0x6B,  // ...5.(.k
                /* 1920 */  0x44, 0xA3, 0xF1, 0x08, 0x1C, 0x08, 0x46, 0x70,  // D.....Fp
                /* 1928 */  0x06, 0xF1, 0x49, 0xC4, 0xD9, 0x8E, 0x3A, 0x68,  // ..I...:h
                /* 1930 */  0x25, 0xE7, 0x3D, 0x32, 0x06, 0x76, 0xD0, 0xC1,  // %.=2.v..
                /* 1938 */  0x04, 0xB9, 0x9E, 0xD0, 0x99, 0xFB, 0x72, 0xC0,  // ......r.
                /* 1940 */  0x35, 0x40, 0xE8, 0x00, 0x62, 0x70, 0x5F, 0x52,  // 5@..bp_R
                /* 1948 */  0x60, 0x5C, 0xA8, 0x7C, 0x49, 0xC1, 0x9C, 0x8D,  // `\.|I...
                /* 1950 */  0x3C, 0x1B, 0xAB, 0x01, 0x45, 0x0D, 0xC0, 0x68,  // <...E..h
                /* 1958 */  0x98, 0x73, 0xC0, 0xC3, 0x09, 0xB8, 0x72, 0x5D,  // .s....r]
                /* 1960 */  0xF8, 0xD0, 0x2F, 0x09, 0xDF, 0x2D, 0x1E, 0x6C,  // ../..-.l
                /* 1968 */  0xD8, 0xDC, 0xC0, 0xF5, 0xFF, 0x9F, 0x1B, 0xCC,  // ........
                /* 1970 */  0xF1, 0x7B, 0x6E, 0xB0, 0xD0, 0x3C, 0x37, 0xF8,  // .{n..<7.
                /* 1978 */  0xF7, 0x3D, 0xEC, 0xE1, 0x10, 0x8F, 0xCC, 0xE6,  // .=......
                /* 1980 */  0xF6, 0x1C, 0x10, 0xE1, 0x15, 0xC1, 0x97, 0x1C,  // ........
                /* 1988 */  0x8F, 0x0E, 0x38, 0x00, 0x7A, 0x74, 0xB0, 0x90,  // ..8.zt..
                /* 1990 */  0x3C, 0x3A, 0xB0, 0x25, 0x1C, 0x1D, 0x5A, 0x0F,  // <:.%..Z.
                /* 1998 */  0x88, 0x5C, 0x9E, 0xB1, 0xC8, 0xC9, 0xE4, 0xF4,  // .\......
                /* 19A0 */  0x4E, 0xE6, 0x99, 0xE0, 0xEC, 0x9E, 0x2E, 0x82,  // N.......
                /* 19A8 */  0x04, 0x8A, 0x13, 0xFD, 0xD9, 0xC4, 0x13, 0x04,  // ........
                /* 19B0 */  0x0E, 0x03, 0xF0, 0x04, 0x61, 0xA1, 0x79, 0x82,  // ....a.y.
                /* 19B8 */  0x60, 0x8B, 0x78, 0xCD, 0x40, 0xDF, 0x3C, 0x61,  // `.x.@.<a
                /* 19C0 */  0x60, 0xFF, 0xFF, 0x5F, 0xE7, 0x98, 0xF7, 0xDB,  // `.._....
                /* 19C8 */  0x0D, 0xB9, 0x11, 0x00, 0x8F, 0x4B, 0xA1, 0x47,  // .....K.G
                /* 19D0 */  0x08, 0x0B, 0xCD, 0x47, 0x0D, 0xB0, 0xC5, 0x1B,  // ...G....
                /* 19D8 */  0x21, 0x7A, 0x58, 0xBE, 0x95, 0x9C, 0xDF, 0xC9,  // !zX.....
                /* 19E0 */  0x1D, 0x1F, 0xB0, 0x02, 0xF6, 0xF8, 0x60, 0xA1,  // ......`.
                /* 19E8 */  0x78, 0x7C, 0x60, 0xD3, 0x77, 0x37, 0x02, 0x05,  // x|`.w7..
                /* 19F0 */  0x90, 0x4F, 0x42, 0x3E, 0x9F, 0xBC, 0x0C, 0xB1,  // .OB>....
                /* 19F8 */  0x31, 0xBC, 0x4D, 0x19, 0xCD, 0xE8, 0x3C, 0xD3,  // 1.M...<.
                /* 1A00 */  0x96, 0x74, 0xBE, 0xE1, 0x29, 0x60, 0x74, 0x76,  // .t..)`tv
                /* 1A08 */  0x31, 0x88, 0x6F, 0x24, 0x56, 0x08, 0xA2, 0x63,  // 1.o$V..c
                /* 1A10 */  0x08, 0xFE, 0xBA, 0xEB, 0x19, 0xBD, 0x29, 0x78,  // ......)x
                /* 1A18 */  0xB6, 0x26, 0xA8, 0x07, 0x52, 0x27, 0x4F, 0x38,  // .&..R'O8
                /* 1A20 */  0xB7, 0x0B, 0xF6, 0xFF, 0x3F, 0x48, 0xB1, 0xBB,  // ....?H..
                /* 1A28 */  0xB5, 0xCF, 0xD8, 0xF0, 0x0F, 0x99, 0x1E, 0x8F,  // ........
                /* 1A30 */  0x6D, 0x1C, 0x8C, 0xE8, 0x09, 0xCB, 0x87, 0x6C,  // m......l
                /* 1A38 */  0x7E, 0x98, 0x78, 0x52, 0x62, 0xE7, 0xC9, 0x04,  // ~.xRb...
                /* 1A40 */  0x6F, 0x94, 0x09, 0x7A, 0x3B, 0x5F, 0xD3, 0x9B,  // o..z;_..
                /* 1A48 */  0xB6, 0x21, 0xA3, 0x32, 0x58, 0x43, 0x3C, 0xF3,  // .!.2XC<.
                /* 1A50 */  0x32, 0x7D, 0xEB, 0xD3, 0x71, 0x1B, 0xAE, 0x1E,  // 2}..q...
                /* 1A58 */  0x40, 0x8D, 0x85, 0x2B, 0x81, 0xD1, 0xA0, 0xC3,  // @..+....
                /* 1A60 */  0x3D, 0x5D, 0xBD, 0x5D, 0xF9, 0xB2, 0xE0, 0x0B,  // =].]....
                /* 1A68 */  0x83, 0x2F, 0x54, 0x3E, 0x7C, 0x1A, 0xEC, 0xBC,  // ./T>|...
                /* 1A70 */  0x22, 0xBC, 0x30, 0xF8, 0x36, 0xC5, 0x8E, 0xD7,  // ".0.6...
                /* 1A78 */  0x0C, 0x32, 0x54, 0x9C, 0xC0, 0x6F, 0xD7, 0x1C,  // .2T..o..
                /* 1A80 */  0x2C, 0xEC, 0x63, 0xC0, 0xE3, 0x86, 0xEF, 0x65,  // ,.c....e
                /* 1A88 */  0xEC, 0x26, 0x10, 0xEB, 0x31, 0xC9, 0x23, 0xE6,  // .&..1.#.
                /* 1A90 */  0xF7, 0xA9, 0x03, 0x8A, 0xF4, 0xFC, 0xE3, 0x09,  // ........
                /* 1A98 */  0xF8, 0x92, 0xE5, 0xFB, 0xE3, 0x49, 0xF9, 0xAC,  // .....I..
                /* 1AA0 */  0x6A, 0xF4, 0x57, 0x09, 0x5F, 0xCA, 0x8C, 0xEC,  // j.W._...
                /* 1AA8 */  0x13, 0x18, 0xBB, 0x49, 0xB2, 0x41, 0xF1, 0xAB,  // ...I.A..
                /* 1AB0 */  0xA9, 0x0F, 0x21, 0x9E, 0x0A, 0xBB, 0x3F, 0x61,  // ..!...?a
                /* 1AB8 */  0xC0, 0x8E, 0xC0, 0xA7, 0x43, 0x7E, 0x74, 0x09,  // ....C~t.
                /* 1AC0 */  0x14, 0xA5, 0x78, 0x4C, 0xDD, 0x1C, 0x3C, 0x43,  // ..xL..<C
                /* 1AC8 */  0x83, 0x62, 0xE0, 0x0F, 0x92, 0xCD, 0x2E, 0xAE,  // .b......
                /* 1AD0 */  0xB1, 0x7C, 0x2F, 0x31, 0x22, 0x76, 0x40, 0x0C,  // .|/1"v@.
                /* 1AD8 */  0xE5, 0x3D, 0xD2, 0xEA, 0x51, 0xC8, 0x1C, 0x3C,  // .=..Q..<
                /* 1AE0 */  0x22, 0xCF, 0xC6, 0xD3, 0x61, 0xA7, 0x0E, 0xFC,  // "...a...
                /* 1AE8 */  0x24, 0x7C, 0x6A, 0xF2, 0xC1, 0xCE, 0x03, 0xF2,  // $|j.....
                /* 1AF0 */  0x50, 0xF8, 0x14, 0x19, 0xB0, 0xFF, 0xFF, 0xC0,  // P.......
                /* 1AF8 */  0x78, 0x98, 0x97, 0x00, 0x06, 0xED, 0xE1, 0x33,  // x......3
                /* 1B00 */  0xF4, 0x17, 0x23, 0xA3, 0xF3, 0xF3, 0xCE, 0xE9,  // ..#.....
                /* 1B08 */  0xF8, 0x1C, 0xEA, 0xA3, 0x86, 0xEF, 0x01, 0x98,  // ........
                /* 1B10 */  0x33, 0x99, 0x4F, 0x00, 0x3E, 0xB3, 0x31, 0xA0,  // 3.O.>.1.
                /* 1B18 */  0x47, 0x7B, 0x06, 0xF2, 0xBE, 0xCA, 0x2E, 0x3F,  // G{.....?
                /* 1B20 */  0x18, 0xA4, 0x77, 0x5D, 0x9F, 0x7E, 0x30, 0xF7,  // ..w].~0.
                /* 1B28 */  0x33, 0x0E, 0x16, 0xE8, 0x58, 0xF9, 0x64, 0xE2,  // 3...X.d.
                /* 1B30 */  0x79, 0xC2, 0x1E, 0x29, 0x9C, 0xDB, 0x26, 0x8C,  // y..)..&.
                /* 1B38 */  0x2B, 0x2F, 0xBF, 0x06, 0xF2, 0x5B, 0x39, 0xB8,  // +/...[9.
                /* 1B40 */  0xAE, 0x18, 0x3E, 0x99, 0x80, 0x19, 0x1E, 0x13,  // ..>.....
                /* 1B48 */  0xE8, 0x3C, 0x43, 0x65, 0x8D, 0x0B, 0x75, 0xA4,  // .<Ce..u.
                /* 1B50 */  0xF1, 0x35, 0x95, 0x61, 0x3F, 0x0C, 0x78, 0xD2,  // .5.a?.x.
                /* 1B58 */  0x87, 0x79, 0x82, 0x2F, 0x6B, 0x18, 0x58, 0x5F,  // .y./k.X_
                /* 1B60 */  0x4A, 0x38, 0xAC, 0xD1, 0xC2, 0xBE, 0x0E, 0x18,  // J8......
                /* 1B68 */  0xF6, 0x11, 0x10, 0x77, 0xFD, 0x05, 0x0B, 0x20,  // ...w... 
                /* 1B70 */  0xFE, 0x92, 0xF0, 0x60, 0xE0, 0x09, 0x18, 0x90,  // ...`....
                /* 1B78 */  0xC5, 0x59, 0x15, 0x15, 0xB1, 0x1C, 0x05, 0x80,  // .Y......
                /* 1B80 */  0x41, 0xFD, 0xFF, 0x47, 0xE7, 0xFB, 0x37, 0xE0,  // A..G..7.
                /* 1B88 */  0xE4, 0xB2, 0x8D, 0xBF, 0x47, 0xBC, 0x1E, 0x78,  // ....G..x
                /* 1B90 */  0xB0, 0xEC, 0xB2, 0xFD, 0x20, 0xF3, 0x80, 0xF0,  // .... ...
                /* 1B98 */  0x1C, 0xF3, 0x0E, 0xF3, 0x50, 0xF0, 0x2E, 0x13,  // ....P...
                /* 1BA0 */  0x21, 0xC8, 0x53, 0xF6, 0x3B, 0x42, 0x84, 0x50,  // !.S.;B.P
                /* 1BA8 */  0x81, 0x5E, 0xB6, 0x8D, 0x17, 0xF4, 0x65, 0x22,  // .^....e"
                /* 1BB0 */  0x4A, 0x9C, 0x28, 0x11, 0x42, 0x19, 0xE3, 0x5C,  // J.(.B..\
                /* 1BB8 */  0x9E, 0x0E, 0x5E, 0x6A, 0xC2, 0x3D, 0x26, 0x04,  // ..^j.=&.
                /* 1BC0 */  0x7E, 0x72, 0x88, 0x12, 0xD8, 0x63, 0x7C, 0xD9,  // ~r...c|.
                /* 1BC8 */  0x66, 0xE2, 0x2F, 0x32, 0xBA, 0x27, 0xF9, 0xB2,  // f./2.'..
                /* 1BD0 */  0x0D, 0x38, 0xFF, 0xFF, 0x5F, 0xB6, 0xC1, 0x75,  // .8.._..u
                /* 1BD8 */  0x71, 0x06, 0xF3, 0x8D, 0x16, 0x30, 0x77, 0x71,  // q....0wq
                /* 1BE0 */  0x06, 0xFB, 0x70, 0x61, 0x0F, 0x83, 0x87, 0x79,  // ..pa...y
                /* 1BE8 */  0x4F, 0xF8, 0x50, 0x42, 0xE5, 0xC3, 0xA0, 0xCE,  // O.PB....
                /* 1BF0 */  0x25, 0xC0, 0xF1, 0xFF, 0x7F, 0x2E, 0x01, 0x46,  // %......F
                /* 1BF8 */  0x33, 0x7A, 0x03, 0x78, 0x15, 0x38, 0xED, 0x47,  // 3z.x.8.G
                /* 1C00 */  0x91, 0x87, 0x92, 0x43, 0x88, 0xF1, 0x3E, 0x12,  // ...C..>.
                /* 1C08 */  0xC4, 0x08, 0x87, 0xFE, 0x5C, 0xE2, 0xEB, 0xC8,  // ....\...
                /* 1C10 */  0x93, 0x5B, 0x88, 0x28, 0xEF, 0x27, 0x4F, 0x28,  // .[.(.'O(
                /* 1C18 */  0x86, 0x88, 0x12, 0x2C, 0x46, 0xB0, 0xD0, 0x4F,  // ...,F..O
                /* 1C20 */  0x25, 0xC6, 0x60, 0x87, 0x94, 0x20, 0xE1, 0x9E,  // %.`.. ..
                /* 1C28 */  0x4B, 0x98, 0xF4, 0xEF, 0x9D, 0xCE, 0xB9, 0x3E,  // K......>
                /* 1C30 */  0x97, 0x00, 0xFC, 0x08, 0x77, 0xB7, 0x45, 0x9F,  // ....w.E.
                /* 1C38 */  0x1B, 0x7C, 0x4C, 0xF0, 0xF9, 0xC0, 0x10, 0x8D,  // .|L.....
                /* 1C40 */  0x5F, 0x0C, 0xC8, 0xF5, 0xCD, 0x77, 0x04, 0x1F,  // _....w..
                /* 1C48 */  0x13, 0x5E, 0xE0, 0x18, 0x81, 0xFF, 0xFF, 0x01,  // .^......
                /* 1C50 */  0x86, 0x4E, 0xCF, 0x9D, 0xE0, 0x18, 0x94, 0x87,  // .N......
                /* 1C58 */  0x07, 0xFE, 0x03, 0x19, 0x3E, 0xFC, 0x75, 0x12,  // ....>.u.
                /* 1C60 */  0x75, 0x4C, 0xE0, 0xC3, 0x83, 0x77, 0xFA, 0x73,  // uL...w.s
                /* 1C68 */  0xC8, 0xA3, 0x18, 0x1D, 0x1C, 0x38, 0x9E, 0xEF,  // .....8..
                /* 1C70 */  0x1A, 0x1C, 0x08, 0x0E, 0x27, 0x0F, 0x1E, 0xD8,  // ....'...
                /* 1C78 */  0xC3, 0x19, 0x9B, 0x38, 0x1F, 0xC2, 0xD1, 0xF8,  // ...8....
                /* 1C80 */  0x08, 0x00, 0x8E, 0xB3, 0x03, 0xF8, 0xA2, 0x0E,  // ........
                /* 1C88 */  0x17, 0x7D, 0x38, 0xF0, 0x1D, 0x13, 0x06, 0xFA,  // .}8.....
                /* 1C90 */  0x6B, 0x86, 0x6F, 0x6F, 0x46, 0xE7, 0x71, 0x06,  // k.ooF.q.
                /* 1C98 */  0x0C, 0xAA, 0xC1, 0x7A, 0xC0, 0xF0, 0xFF, 0xFF,  // ...z....
                /* 1CA0 */  0x67, 0x40, 0xFC, 0x0C, 0x5E, 0x2E, 0x9E, 0x2C,  // g@..^..,
                /* 1CA8 */  0xF8, 0x28, 0xC1, 0x77, 0xE2, 0xF3, 0x89, 0x02,  // .(.w....
                /* 1CB0 */  0x37, 0x18, 0x9F, 0xEA, 0x31, 0x67, 0x09, 0xB0,  // 7...1g..
                /* 1CB8 */  0x5D, 0x57, 0x7D, 0x96, 0x00, 0x3E, 0xF2, 0x0E,  // ]W}..>..
                /* 1CC0 */  0x58, 0xA0, 0x39, 0x20, 0xC1, 0x38, 0x59, 0x01,  // X.9 .8Y.
                /* 1CC8 */  0x76, 0xC6, 0xF1, 0x64, 0x05, 0xE6, 0xFF, 0xFF,  // v..d....
                /* 1CD0 */  0xF0, 0x7C, 0x04, 0xC7, 0x8F, 0x81, 0x2B, 0xB4,  // .|....+.
                /* 1CD8 */  0xE9, 0x53, 0xA3, 0x51, 0xAB, 0x06, 0x65, 0x6A,  // .S.Q..ej
                /* 1CE0 */  0x94, 0x69, 0x50, 0xAB, 0x4F, 0xA5, 0xC6, 0x8C,  // .iP.O...
                /* 1CE8 */  0x09, 0x3B, 0x55, 0x29, 0xE0, 0xB3, 0x41, 0x03,  // .;U)..A.
                /* 1CF0 */  0xB3, 0x3C, 0x0A, 0x81, 0x58, 0xCC, 0x9B, 0x42,  // .<..X..B
                /* 1CF8 */  0x20, 0x0E, 0x0B, 0x42, 0x23, 0x1D, 0x8E, 0x04,  //  ..B#...
                /* 1D00 */  0x62, 0xC9, 0x47, 0x2C, 0x81, 0x58, 0xAE, 0x07,  // b.G,.X..
                /* 1D08 */  0x10, 0x16, 0xF0, 0x4D, 0x22, 0x70, 0xF2, 0x46,  // ...M"p.F
                /* 1D10 */  0x12, 0x38, 0x79, 0x26, 0x08, 0xC4, 0x91, 0x41,  // .8y&...A
                /* 1D18 */  0xA8, 0x50, 0x1D, 0x20, 0x2C, 0x26, 0x08, 0x0D,  // .P. ,&..
                /* 1D20 */  0xE5, 0x03, 0x84, 0x49, 0x7F, 0x1A, 0x08, 0x90,  // ...I....
                /* 1D28 */  0x18, 0x01, 0x61, 0xE1, 0x1E, 0x12, 0x02, 0xB1,  // ..a.....
                /* 1D30 */  0xB4, 0xE7, 0x83, 0x40, 0x2C, 0xC4, 0x0A, 0x08,  // ...@,...
                /* 1D38 */  0x8B, 0x0B, 0x42, 0xC3, 0x69, 0x01, 0x61, 0x92,  // ..B.i.a.
                /* 1D40 */  0xCC, 0x80, 0xB0, 0x40, 0x20, 0x54, 0xFE, 0x2B,  // ...@ T.+
                /* 1D48 */  0x5D, 0x20, 0x16, 0xE9, 0x06, 0x90, 0x2E, 0x5D,  // ] .....]
                /* 1D50 */  0x20, 0x0E, 0xA2, 0x07, 0x84, 0xC9, 0xF0, 0x03,  //  .......
                /* 1D58 */  0xC2, 0x42, 0x83, 0xD0, 0x68, 0xEF, 0x09, 0x01,  // .B..h...
                /* 1D60 */  0x12, 0x43, 0x20, 0x2C, 0xBE, 0x23, 0x10, 0x26,  // .C ,.#.&
                /* 1D68 */  0xFE, 0x69, 0x22, 0x10, 0xE7, 0xB7, 0x04, 0x71,  // .i"....q
                /* 1D70 */  0x53, 0x1A, 0x62, 0x4D, 0x40, 0x4C, 0x83, 0x27,  // S.bM@L.'
                /* 1D78 */  0x20, 0xA6, 0x08, 0x44, 0x40, 0x8E, 0xFD, 0xD2,  //  ..D@...
                /* 1D80 */  0x10, 0x90, 0x35, 0x98, 0x02, 0x62, 0xD1, 0x41,  // ..5..b.A
                /* 1D88 */  0x04, 0x64, 0x21, 0xAA, 0x80, 0x58, 0x5E, 0x57,  // .d!..X^W
                /* 1D90 */  0x40, 0x2C, 0x3C, 0x88, 0x80, 0x9C, 0xF9, 0xCD,  // @,<.....
                /* 1D98 */  0x2A, 0x20, 0x2B, 0x78, 0x74, 0x3D, 0x04, 0xB0,  // * +xt=..
                /* 1DA0 */  0xAF, 0xBC, 0x80, 0x9C, 0x1C, 0x44, 0x40, 0x0E,  // .....D@.
                /* 1DA8 */  0xEC, 0x0B, 0x88, 0xC5, 0x07, 0x11, 0x90, 0xB3,  // ........
                /* 1DB0 */  0xFE, 0xC1, 0x05, 0xE4, 0xE0, 0x20, 0x1A, 0x04,  // ..... ..
                /* 1DB8 */  0xF9, 0x68, 0x08, 0xC8, 0xE9, 0x41, 0x04, 0x44,  // .h...A.D
                /* 1DC0 */  0x7E, 0xE4, 0x02, 0xB1, 0xDA, 0x2F, 0xB9, 0x40,  // ~..../.@
                /* 1DC8 */  0xAC, 0xE7, 0x4F, 0xAE, 0xA1, 0x10, 0x10, 0xAA,  // ..O.....
                /* 1DD0 */  0x5C, 0xDD, 0x49, 0x85, 0xFD, 0xFF, 0x73, 0x80,  // \.I...s.
                /* 1DD8 */  0xD0, 0x5C, 0x20, 0x02, 0xB3, 0x0A, 0x77, 0x40,  // .\ ...w@
                /* 1DE0 */  0x4C, 0x15, 0x88, 0x80, 0x9C, 0x00, 0x88, 0xA6,  // L.......
                /* 1DE8 */  0x02, 0xA1, 0x29, 0xC1, 0xA8, 0xAE, 0x37, 0x88,  // ..)...7.
                /* 1DF0 */  0x80, 0x9C, 0x00, 0x84, 0xA6, 0x02, 0xA1, 0x29,  // .......)
                /* 1DF8 */  0x41, 0x04, 0x68, 0x55, 0xF6, 0x80, 0x98, 0x52,  // A.hU...R
                /* 1E00 */  0x10, 0xAA, 0x1C, 0x84, 0xA6, 0x03, 0xA1, 0xB2,  // ........
                /* 1E08 */  0xDF, 0xFD, 0x3A, 0x2C, 0x10, 0x10, 0x01, 0x39,  // ..:,...9
                /* 1E10 */  0x3A, 0x08, 0x15, 0xEE, 0x0F, 0x84, 0xE9, 0x7D,  // :......}
                /* 1E18 */  0x66, 0x08, 0xD0, 0xE9, 0x40, 0x04, 0xE4, 0xC4,  // f...@...
                /* 1E20 */  0x20, 0x54, 0xC1, 0x0F, 0x23, 0x08, 0x11, 0x0B,  //  T..#...
                /* 1E28 */  0x42, 0x15, 0xFC, 0x30, 0x82, 0x12, 0x2D, 0x2F,  // B..0..-/
                /* 1E30 */  0x0E, 0x01, 0x59, 0x1F, 0x08, 0xD5, 0x0B, 0x22,  // ..Y...."
                /* 1E38 */  0x30, 0x67, 0x03, 0xA2, 0x79, 0x41, 0x68, 0x7E,  // 0g..yAh~
                /* 1E40 */  0x30, 0xAA, 0xD5, 0x28, 0x10, 0xD3, 0x0F, 0x42,  // 0..(...B
                /* 1E48 */  0xF3, 0x80, 0x08, 0xCC, 0x0A, 0xDE, 0x1E, 0x07,  // ........
                /* 1E50 */  0xCC, 0x40, 0xA8, 0x4A, 0x10, 0x81, 0x39, 0x17,  // .@.J..9.
                /* 1E58 */  0x10, 0xCD, 0x0A, 0x42, 0xB3, 0x83, 0x51, 0xED,  // ...B..Q.
                /* 1E60 */  0x9F, 0x10, 0x0D, 0x80, 0x80, 0xD0, 0x7C, 0x20,  // ......| 
                /* 1E68 */  0x3A, 0x0C, 0x90, 0xE7, 0xA0, 0x80, 0xAC, 0x11,  // :.......
                /* 1E70 */  0x84, 0x6A, 0x06, 0xD1, 0xF1, 0x80, 0x00, 0xD1,  // .j......
                /* 1E78 */  0xFC, 0x20, 0x54, 0xCF, 0xC7, 0x24, 0x18, 0xC9,  // . T..$..
                /* 1E80 */  0x00, 0x22, 0x20, 0x6B, 0xF9, 0xF2, 0x07, 0x22,  // ." k..."
                /* 1E88 */  0xFA, 0x41, 0x04, 0xE4, 0x4C, 0x20, 0x34, 0x23,  // .A..L 4#
                /* 1E90 */  0x18, 0x55, 0xFB, 0x2E, 0xD2, 0x71, 0x80, 0x80,  // .U...q..
                /* 1E98 */  0xD0, 0x44, 0x20, 0x1A, 0x1E, 0x79, 0xED, 0x1C,  // .D ..y..
                /* 1EA0 */  0x1E, 0x03, 0xA1, 0x2A, 0x41, 0x04, 0x66, 0x8D,  // ...*A.f.
                /* 1EA8 */  0x0F, 0x4C, 0x81, 0x38, 0x21, 0x08, 0x55, 0x6F,  // .L.8!.Uo
                /* 1EB0 */  0xF7, 0xC0, 0x40, 0xF5, 0x82, 0xB0, 0xFF, 0xBF,  // ..@.....
                /* 1EB8 */  0x5A, 0xC1, 0x83, 0xA0, 0x20, 0x34, 0x11, 0x88,  // Z... 4..
                /* 1EC0 */  0x0E, 0x19, 0xE4, 0xD5, 0x12, 0x88, 0xE8, 0x02,  // ........
                /* 1EC8 */  0xA1, 0x3A, 0x41, 0x34, 0x64, 0x02, 0x44, 0xB3,  // .:A4d.D.
                /* 1ED0 */  0x82, 0xD0, 0xEC, 0x60, 0x34, 0xFB, 0xF3, 0x45,  // ...`4..E
                /* 1ED8 */  0xC3, 0x20, 0x5F, 0x25, 0x1D, 0x18, 0xC8, 0xE3,  // . _%....
                /* 1EE0 */  0x31, 0x08, 0x51, 0xF4, 0x6D, 0x12, 0x88, 0x73,  // 1.Q.m..s
                /* 1EE8 */  0x3F, 0x80, 0x34, 0x50, 0xF2, 0x29, 0x0A, 0x42,  // ?.4P.).B
                /* 1EF0 */  0xB4, 0x81, 0x08, 0xCC, 0x39, 0x80, 0x68, 0x36,  // ....9.h6
                /* 1EF8 */  0x10, 0x9A, 0x15, 0x8C, 0x66, 0x55, 0x7D, 0xC4,  // ....fU}.
                /* 1F00 */  0xA0, 0x4F, 0x9F, 0x43, 0x63, 0x2F, 0x3D, 0x81,  // .O.Cc/=.
                /* 1F08 */  0x58, 0xC9, 0xCB, 0xE6, 0xD1, 0x82, 0xFD, 0xBC,  // X.......
                /* 1F10 */  0x82, 0xB0, 0x4F, 0x59, 0x60, 0xF6, 0x32, 0xD2,  // ..OY`.2.
                /* 1F18 */  0x31, 0x80, 0x80, 0x50, 0x3D, 0xCF, 0x33, 0x1D,  // 1..P=.3.
                /* 1F20 */  0x01, 0x08, 0x88, 0x8E, 0x00, 0x04, 0x84, 0x66,  // .......f
                /* 1F28 */  0x04, 0xA1, 0xD9, 0x41, 0xA8, 0xAE, 0xA7, 0xA3,  // ...A....
                /* 1F30 */  0x40, 0xAD, 0xED, 0xBF, 0x13, 0x84, 0x24, 0x03,  // @.....$.
                /* 1F38 */  0xA1, 0xAA, 0x7F, 0xF3, 0x41, 0x88, 0xE2, 0xB7,  // ....A...
                /* 1F40 */  0xA3, 0x86, 0x49, 0x9E, 0x6A, 0x0F, 0x01, 0xEC,  // ..I.j...
                /* 1F48 */  0xA5, 0x28, 0x70, 0xEB, 0x06, 0xA1, 0x39, 0x40,  // .(p...9@
                /* 1F50 */  0x34, 0x50, 0x02, 0x44, 0xB5, 0xFC, 0x2E, 0x35,  // 4P.D...5
                /* 1F58 */  0x50, 0x02, 0x22, 0x30, 0x67, 0x02, 0xA2, 0x39,  // P."0g..9
                /* 1F60 */  0x41, 0xA8, 0x0A, 0xFD, 0xC3, 0xA0, 0x20, 0x02,  // A..... .
                /* 1F68 */  0x72, 0x0A, 0x10, 0x9A, 0x0A, 0x8C, 0xEA, 0xF0,  // r.......
                /* 1F70 */  0x3F, 0x00, 0x0A, 0x42, 0xB5, 0x82, 0xE8, 0x70,  // ?..B...p
                /* 1F78 */  0x41, 0x12, 0x80, 0xB0, 0xA4, 0x20, 0x34, 0x45,  // A.... 4E
                /* 1F80 */  0x83, 0x83, 0x09, 0x8D, 0x00, 0x48, 0x2B, 0x1C,  // .....H+.
                /* 1F88 */  0x6E, 0x68, 0x08, 0x70, 0x16, 0x0A, 0x84, 0x06,  // nh.p....
                /* 1F90 */  0x05, 0xD1, 0xB1, 0xC5, 0xA9, 0x41, 0x04, 0x68,  // .....A.h
                /* 1F98 */  0x81, 0x25, 0x0E, 0x20, 0x14, 0x84, 0xFE, 0xFF,  // .%. ....
                /* 1FA0 */  0x03, 0x80, 0x08, 0xD0, 0x69, 0x40, 0x74, 0x44,  // ....i@tD
                /* 1FA8 */  0x20, 0x60, 0x54, 0x47, 0x8A, 0x21, 0x51, 0x10,  //  `TG.!Q.
                /* 1FB0 */  0x01, 0x5A, 0x28, 0x88, 0x8E, 0x3E, 0xA4, 0x05,  // .Z(..>..
                /* 1FB8 */  0x18, 0x13, 0x05, 0x42, 0xC5, 0x83, 0x50, 0xAD,  // ...B..P.
                /* 1FC0 */  0x31, 0x40, 0x99, 0x72, 0x10, 0x81, 0x3A, 0x39,  // 1@.r..:9
                /* 1FC8 */  0x88, 0x8E, 0x04, 0xA4, 0xC6, 0xA1, 0x82, 0x82,  // ........
                /* 1FD0 */  0x50, 0xD5, 0x20, 0x54, 0x4E, 0x0E, 0x10, 0x26,  // P. TN..&
                /* 1FD8 */  0x0D, 0x84, 0xCA, 0x05, 0xD1, 0x00, 0xAC, 0x1D,  // ........
                /* 1FE0 */  0x44, 0xC7, 0x26, 0x02, 0x46, 0xE3, 0x83, 0x50,  // D.&.F..P
                /* 1FE8 */  0x49, 0x3D, 0x00, 0x99, 0x3E, 0x10, 0x01, 0x3A,  // I=..>..:
                /* 1FF0 */  0x3D, 0x88, 0x0E, 0x03, 0x24, 0xC8, 0x41, 0x84,  // =...$.A.
                /* 1FF8 */  0x82, 0x50, 0x89, 0x45, 0x40, 0x99, 0x60, 0x10,  // .P.E@.`.
                /* 2000 */  0x1D, 0x7F, 0x08, 0x88, 0xC0, 0x2C, 0x23, 0x09,  // .....,#.
                /* 2008 */  0x08, 0x13, 0x07, 0x42, 0xC5, 0x82, 0x50, 0x21,  // ...B..P!
                /* 2010 */  0x51, 0x40, 0x59, 0x0C, 0x10, 0x1A, 0x24, 0x0B,  // Q@Y...$.
                /* 2018 */  0x18, 0x0B, 0x07, 0x42, 0xC3, 0x82, 0xE8, 0x78,  // ...B...x
                /* 2020 */  0x45, 0xBA, 0x00, 0x31, 0xC9, 0x20, 0x34, 0x02,  // E..1. 4.
                /* 2028 */  0x08, 0x0D, 0x0B, 0x22, 0x40, 0x12, 0x06, 0x90,  // ..."@...
                /* 2030 */  0x82, 0xD0, 0x08, 0x20, 0x34, 0x2B, 0x08, 0xD5,  // ... 4+..
                /* 2038 */  0x5E, 0x06, 0x94, 0x25, 0x06, 0xD1, 0x91, 0x81,  // ^..%....
                /* 2040 */  0xA4, 0x39, 0x9C, 0x50, 0x10, 0x81, 0x39, 0x0D,  // .9.P..9.
                /* 2048 */  0x10, 0x4D, 0x08, 0x42, 0x13, 0x83, 0x50, 0x79,  // .M.B..Py
                /* 2050 */  0x6D, 0x40, 0x58, 0x7A, 0x10, 0x1D, 0x1F, 0xC8,  // m@Xz....
                /* 2058 */  0x83, 0x51, 0xC7, 0x07, 0x02, 0x42, 0x53, 0x81,  // .Q...BS.
                /* 2060 */  0xE8, 0xC0, 0x43, 0xEA, 0x1C, 0x78, 0x28, 0x08,  // ..C..x(.
                /* 2068 */  0x55, 0x0F, 0xA2, 0xC3, 0x03, 0x29, 0x04, 0xC2,  // U....)..
                /* 2070 */  0x74, 0x26, 0x3A, 0xD6, 0xD0, 0x46, 0x07, 0x03,  // t&:..F..
                /* 2078 */  0xFA, 0x08, 0x16, 0xA8, 0xFF, 0xFF, 0x6A, 0x2A,  // ......j*
                /* 2080 */  0x81, 0x30, 0x75, 0x20, 0x54, 0x3F, 0x08, 0xCD,  // .0u T?..
                /* 2088 */  0x0A, 0x22, 0x50, 0xEB, 0xCB, 0x74, 0x10, 0xA0,  // ."P..t..
                /* 2090 */  0x20, 0x34, 0x03, 0x88, 0x06, 0x40, 0x80, 0xA8,  //  4...@..
                /* 2098 */  0x9A, 0x4E, 0x03, 0xA0, 0x20, 0x3A, 0xA4, 0x90,  // .N.. :..
                /* 20A0 */  0x54, 0xC7, 0x12, 0xDA, 0x0A, 0x84, 0xA5, 0x05,  // T.......
                /* 20A8 */  0xA1, 0xC2, 0x7A, 0x81, 0x32, 0x91, 0x20, 0x54,  // ..z.2. T
                /* 20B0 */  0x38, 0x88, 0x8E, 0x06, 0x4E, 0x01, 0xA2, 0xA3,  // 8...N...
                /* 20B8 */  0x0A, 0x01, 0xA3, 0xD9, 0x41, 0xA8, 0x9E, 0x60,  // ....A..`
                /* 20C0 */  0x80, 0x4C, 0x1C, 0x88, 0x00, 0x9D, 0x04, 0x44,  // .L.....D
                /* 20C8 */  0x83, 0x25, 0x20, 0x34, 0x29, 0x20, 0x8D, 0x0D,  // .% 4) ..
                /* 20D0 */  0x48, 0xA5, 0x16, 0x3B, 0x46, 0x51, 0x10, 0x1A,  // H..;FQ..
                /* 20D8 */  0x05, 0x44, 0x80, 0xCE, 0x05, 0xA2, 0xC3, 0x1C,  // .D......
                /* 20E0 */  0x49, 0x76, 0xCA, 0xA4, 0x20, 0x54, 0x2C, 0x88,  // Iv.. T,.
                /* 20E8 */  0x0E, 0x17, 0x04, 0x44, 0x80, 0x8E, 0x0A, 0x46,  // ...D...F
                /* 20F0 */  0x63, 0x83, 0x50, 0x29, 0xCD, 0x00, 0x99, 0x2E,  // c.P)....
                /* 20F8 */  0x10, 0x01, 0x3A, 0x35, 0x88, 0xC0, 0xAC, 0x21,  // ..:5...!
                /* 2100 */  0xDA, 0x21, 0x81, 0x82, 0xD0, 0x68, 0xD9, 0x40,  // .!...h.@
                /* 2108 */  0x59, 0x50, 0x10, 0x1D, 0xED, 0x48, 0x37, 0x30,  // YP...H70
                /* 2110 */  0x26, 0x1F, 0x84, 0x86, 0x02, 0xA1, 0x21, 0x41,  // &.....!A
                /* 2118 */  0x68, 0x80, 0x72, 0x87, 0x38, 0x0A, 0x42, 0xE5,  // h.r.8.B.
                /* 2120 */  0xD4, 0x03, 0x61, 0x61, 0x40, 0xA8, 0xD0, 0x7C,  // ..aa@..|
                /* 2128 */  0x47, 0x3B, 0xDA, 0x0F, 0x90, 0x06, 0x04, 0x61,  // G;.....a
                /* 2130 */  0xF1, 0x40, 0xE8, 0xFF, 0x1F                     // .@...
            })
            Name (BCTE, Package (0x47)
            {
                Package (0x02)
                {
                    "Name", 
                    Zero
                }, 

                Package (0x02)
                {
                    "Feature Byte", 
                    0x10
                }, 

                Package (0x02)
                {
                    "Build ID", 
                    0x11
                }, 

                Package (0x02)
                {
                    "Product Number", 
                    0x13
                }, 

                Package (0x02)
                {
                    "Serial Number", 
                    0x15
                }, 

                Package (0x02)
                {
                    "Product Name", 
                    0x16
                }, 

                Package (0x02)
                {
                    "UUID", 
                    0x17
                }, 

                Package (0x02)
                {
                    "System Board CT Number", 
                    0x19
                }, 

                Package (0x02)
                {
                    "Asset Tag", 
                    0x1A
                }, 

                Package (0x02)
                {
                    "MS Digital Marker", 
                    0x1B
                }, 

                Package (0x02)
                {
                    "System Board ID", 
                    0x1D
                }, 

                Package (0x02)
                {
                    "System Family", 
                    0x1E
                }, 

                Package (0x02)
                {
                    "Preinstall OS Version", 
                    0x1F
                }, 

                Package (0x02)
                {
                    "PIN Process Cycle", 
                    0x21
                }, 

                Package (0x02)
                {
                    "BIOS Revision", 
                    0x23
                }, 

                Package (0x02)
                {
                    "Batt_LTemp", 
                    0x26
                }, 

                Package (0x02)
                {
                    "Keyboard Layout", 
                    0x27
                }, 

                Package (0x02)
                {
                    "HW Platform Cycle", 
                    0x28
                }, 

                Package (0x02)
                {
                    "Network Boot TFTP Window Size", 
                    0x2A
                }, 

                Package (0x02)
                {
                    "Speaker ID", 
                    0x22
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x13
                }, 

                Package (0x02)
                {
                    "Manufacturing Programming Mode", 
                    0x42
                }, 

                Package (0x02)
                {
                    "Network Boot", 
                    0x40
                }, 

                Package (0x02)
                {
                    "Secure Boot", 
                    0x41
                }, 

                Package (0x02)
                {
                    "Network Boot Protocol", 
                    0x44
                }, 

                Package (0x02)
                {
                    "Fan Always On", 
                    0x46
                }, 

                Package (0x02)
                {
                    "Action Key Mode", 
                    0x47
                }, 

                Package (0x02)
                {
                    "Language", 
                    0x48
                }, 

                Package (0x02)
                {
                    "POST Hotkey Delay (sec)", 
                    0x49
                }, 

                Package (0x02)
                {
                    "TPM Version", 
                    0x4F
                }, 

                Package (0x02)
                {
                    "Clear TPM", 
                    0x51
                }, 

                Package (0x02)
                {
                    "Secure Boot Keys", 
                    0x54
                }, 

                Package (0x02)
                {
                    "TPM Reset to Factory Defaults", 
                    0x52
                }, 

                Package (0x02)
                {
                    "Restore Security Defaults", 
                    0x56
                }, 

                Package (0x02)
                {
                    "PIN Load Defaults", 
                    0x57
                }, 

                Package (0x02)
                {
                    "USB Boot", 
                    0x5D
                }, 

                Package (0x02)
                {
                    "Adaptive Battery Extender", 
                    0x5F
                }, 

                Package (0x02)
                {
                    "Adaptive Battery Extender Status", 
                    0x60
                }, 

                Package (0x02)
                {
                    "Keyboard Type", 
                    0x65
                }, 

                Package (0x02)
                {
                    "OOBE", 
                    0x58
                }, 

                Package (0x02)
                {
                    "Clear Event Log", 
                    0x59
                }, 

                Package (0x02)
                {
                    "Reflow Process", 
                    0x5B
                }, 

                Package (0x02)
                {
                    "Clear BOD", 
                    0x5C
                }, 

                Package (0x02)
                {
                    "Launch Hotkeys without Fn Keypress", 
                    0x6B
                }, 

                Package (0x02)
                {
                    "Battery Health Manager", 
                    0x6C
                }, 

                Package (0x02)
                {
                    "Ignore Auto Resume", 
                    0x68
                }, 

                Package (0x02)
                {
                    "TPM Solution", 
                    0x6D
                }, 

                Package (0x02)
                {
                    "Enable MS UEFI CA key", 
                    0x6E
                }, 

                Package (0x02)
                {
                    "MSFT Copilot Key", 
                    0x6F
                }, 

                Package (0x02)
                {
                    "Power on When Lid is opened", 
                    0x70
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x32
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x33
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x34
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x35
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x36
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x37
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x38
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x39
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x3A
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x3B
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x3C
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x3D
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x3E
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x3F
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x40
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x41
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x42
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x43
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x44
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x45
                }, 

                Package (0x02)
                {
                    "Name", 
                    0x46
                }
            })
            Name (RCDS, Package (0x5A)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                One, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                One, 
                Zero, 
                Zero, 
                One, 
                Zero, 
                Zero, 
                Zero, 
                One
            })
            Name (WCDS, Package (0x5A)
            {
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                0x04, 
                0x0C, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x08, 
                Zero, 
                Zero, 
                0x04, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                0x04, 
                0x04, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                0x02, 
                0x04, 
                Zero, 
                Zero, 
                0x04, 
                0x80, 
                0x04, 
                0x04, 
                0x04, 
                0x04, 
                0x80, 
                Zero, 
                Zero, 
                Zero, 
                0x80, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                0x80, 
                0x80, 
                0x04, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                0x04, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                0x04, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                0x04, 
                0x0400, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (RTCC, Zero)
            Method (GHWI, 2, NotSerialized)
            {
                HWCT = Arg0
                HWBC = Arg1
                WSTF = Zero
                Local0 = Zero
                If (CondRefOf (\SSMP)){}
                Else
                {
                }

                While ((WSTF != 0x5A))
                {
                    If ((Local0 == 0xFF))
                    {
                        HWRC = 0x22
                        Break
                    }

                    Local0++
                    Sleep (0x0A)
                }

                WSTF = Zero
                If ((HWRC != Zero))
                {
                    RTCC = HWRC /* \_SB_.WMID.HWRC */
                }

                Return (Zero)
            }

            Method (RDCF, 2, Serialized)
            {
                Switch (Arg0)
                {
                    Case (0x07)
                    {
                        RTCC = Zero
                        Return (GBTI (Arg1))
                    }
                    Case (0x10)
                    {
                        RTCC = Zero
                        Return (GWSD ())
                    }
                    Case (0x1D)
                    {
                        RTCC = Zero
                        Return (GDLC ())
                    }
                    Case (0x08)
                    {
                        RTCC = Zero
                        Return (GBBH ())
                    }
                    Case (0x09)
                    {
                        RTCC = Zero
                        Return (GKHS ())
                    }
                    Case (0x0A)
                    {
                        RTCC = Zero
                        Return (GKHF ())
                    }
                    Case (0x0C)
                    {
                        RTCC = Zero
                        Return (GKLB ())
                    }
                    Case (0x0D)
                    {
                        RTCC = Zero
                        Return (GFRT ())
                    }
                    Case (0x1E)
                    {
                        RTCC = Zero
                        Return (GBUS ())
                    }
                    Case (0x28)
                    {
                        RTCC = Zero
                        Return (GTDC (Arg1))
                    }
                    Case (0x29)
                    {
                        RTCC = Zero
                        Return (GFCC ())
                    }
                    Case (0x2A)
                    {
                        RTCC = Zero
                        Return (GPES ())
                    }
                    Case (0x2B)
                    {
                        RTCC = Zero
                        Return (GBCC ())
                    }
                    Case (0x35)
                    {
                        RTCC = Zero
                        Return (GJVS ())
                    }
                    Case (0x36)
                    {
                        RTCC = Zero
                        Return (GPST ())
                    }
                    Case (0x37)
                    {
                        RTCC = Zero
                        Return (GBCT ())
                    }
                    Case (0x38)
                    {
                        RTCC = Zero
                        Return (GBST ())
                    }
                    Case (0x3E)
                    {
                        RTCC = Zero
                        Return (GPPS ())
                    }
                    Case (0x44)
                    {
                        RTCC = Zero
                        Return (GBMF ())
                    }
                    Case (0x49)
                    {
                        RTCC = Zero
                        Return (GTML ())
                    }
                    Case (0x4B)
                    {
                        RTCC = Zero
                        Return (GBCI ())
                    }
                    Case (0x4C)
                    {
                        RTCC = Zero
                        Return (GTPS ())
                    }
                    Case (0x4D)
                    {
                        RTCC = Zero
                        Return (GPCS ())
                    }
                    Case (0x52)
                    {
                        RTCC = Zero
                        Return (GGPM ())
                    }
                    Case (0x53)
                    {
                        RTCC = Zero
                        Return (GEEP (Arg1))
                    }
                    Case (0x56)
                    {
                        RTCC = Zero
                        Return (GABO ())
                    }
                    Case (0x58)
                    {
                        RTCC = Zero
                        Return (GICS ())
                    }
                    Case (0x5A)
                    {
                        RTCC = Zero
                        Return (GDHD (Arg1))
                    }
                    Default
                    {
                        Local0 = Package (0x03)
                            {
                                Zero, 
                                0x04, 
                                Buffer (0x04)
                                {
                                     0x00, 0x00, 0x00, 0x00                           // ....
                                }
                            }
                        RTCC = 0x04
                        Return (Local0)
                    }

                }
            }

            Method (WRCF, 2, Serialized)
            {
                Switch (Arg0)
                {
                    Case (0x09)
                    {
                        RTCC = Zero
                        Return (SHKS (Arg1))
                    }
                    Case (0x0A)
                    {
                        RTCC = Zero
                        Return (SHKF (Arg1))
                    }
                    Case (0x10)
                    {
                        RTCC = Zero
                        Return (SWSD (Arg1))
                    }
                    Case (0x1D)
                    {
                        RTCC = Zero
                        Return (SDLC (Arg1))
                    }
                    Case (0x1E)
                    {
                        RTCC = Zero
                        Return (SBUS (Arg1))
                    }
                    Case (0x28)
                    {
                        RTCC = Zero
                        Return (STDC (Arg1))
                    }
                    Case (0x29)
                    {
                        RTCC = Zero
                        Return (SFCC (Arg1))
                    }
                    Case (0x2A)
                    {
                        RTCC = Zero
                        Return (SPES (Arg1))
                    }
                    Case (0x2B)
                    {
                        RTCC = Zero
                        Return (SBCC (Arg1))
                    }
                    Case (0x35)
                    {
                        RTCC = Zero
                        Return (SJVS (Arg1))
                    }
                    Case (0x36)
                    {
                        RTCC = Zero
                        Return (SPST (Arg1))
                    }
                    Case (0x37)
                    {
                        RTCC = Zero
                        Return (SBCT (Arg1))
                    }
                    Case (0x38)
                    {
                        RTCC = Zero
                        Return (SBST (Arg1))
                    }
                    Case (0x3E)
                    {
                        RTCC = Zero
                        Return (SPPS (Arg1))
                    }
                    Case (0x3F)
                    {
                        RTCC = Zero
                        Return (SPMB (Arg1))
                    }
                    Case (0x49)
                    {
                        RTCC = Zero
                        Return (STML (Arg1))
                    }
                    Case (0x4C)
                    {
                        RTCC = Zero
                        Return (STPS (Arg1))
                    }
                    Case (0x52)
                    {
                        RTCC = Zero
                        Return (SGPM (Arg1))
                    }
                    Case (0x53)
                    {
                        RTCC = Zero
                        Return (SEEP (Arg1))
                    }
                    Case (0x58)
                    {
                        RTCC = Zero
                        Return (SICS (Arg1))
                    }
                    Default
                    {
                        Local0 = Package (0x03)
                            {
                                Zero, 
                                0x04, 
                                Buffer (0x04)
                                {
                                     0x00, 0x00, 0x00, 0x00                           // ....
                                }
                            }
                        RTCC = 0x04
                        Return (Local0)
                    }

                }
            }

            Method (GBTI, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x10, BSEL)
                If ((BSEL != Zero))
                {
                    Local0 = Package (0x02)
                        {
                            0x06, 
                            Zero
                        }
                }
                ElseIf ((PBDE () == One))
                {
                    Local0 = Package (0x03)
                        {
                            Zero, 
                            0x80, 
                            Buffer (0x80){}
                        }
                    Local1 = BSDC ()
                    DerefOf (Local0 [0x02]) [Zero] = Local1
                    DerefOf (Local0 [0x02]) [One] = (Local1 >> 0x08
                        )
                    Local1 = BSFC ()
                    DerefOf (Local0 [0x02]) [0x02] = Local1
                    DerefOf (Local0 [0x02]) [0x03] = (Local1 >> 0x08
                        )
                    Local1 = BSRC ()
                    DerefOf (Local0 [0x02]) [0x04] = Local1
                    DerefOf (Local0 [0x02]) [0x05] = (Local1 >> 0x08
                        )
                    Local1 = BSME ()
                    DerefOf (Local0 [0x02]) [0x06] = Local1
                    DerefOf (Local0 [0x02]) [0x07] = (Local1 >> 0x08
                        )
                    Local1 = BSCY ()
                    DerefOf (Local0 [0x02]) [0x08] = Local1
                    DerefOf (Local0 [0x02]) [0x09] = (Local1 >> 0x08
                        )
                    Local1 = BSDV ()
                    DerefOf (Local0 [0x02]) [0x10] = Local1
                    DerefOf (Local0 [0x02]) [0x11] = (Local1 >> 0x08
                        )
                    Local1 = BSSN ()
                    CreateField (DerefOf (Local0 [0x02]), 0xE0, 0x80, BTSN)
                    BTSN = Local1
                    Local1 = BSMN ()
                    CreateField (DerefOf (Local0 [0x02]), 0x0160, 0x90, BTMN)
                    BTMN = Local1
                    Local1 = BSCT ()
                    CreateField (DerefOf (Local0 [0x02]), 0x01F0, 0x80, BTCT)
                    BTCT = Local1
                    Local1 = BSDN ()
                    CreateField (DerefOf (Local0 [0x02]), 0x0278, 0x38, BTDN)
                    BTDN = Local1
                    Local1 = BSCH ()
                    CreateField (DerefOf (Local0 [0x02]), 0x02B0, 0x20, BTCH)
                    BTCH = Local1
                    Local1 = BSMD ()
                    DerefOf (Local0 [0x02]) [0x5C] = Local1
                    DerefOf (Local0 [0x02]) [0x5D] = (Local1 >> 0x08
                        )
                }
                Else
                {
                    Local0 = Package (0x02)
                        {
                            0x34, 
                            Zero
                        }
                }

                Return (Local0)
            }

            Method (GBBH, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80)
                        {
                             0x00, 0x00                                       // ..
                        }
                    }
                Return (Local0)
            }

            Method (GKHS, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                Local1 = ((\_SB.IC10.RDEC (0x50) & 0x04) && 0x04)
                If (Local1)
                {
                    DerefOf (Local0 [0x02]) [Zero] = 0x6E
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [Zero] = Zero
                }

                Return (Local0)
            }

            Method (SHKS, 1, NotSerialized)
            {
                CreateDWordField (Arg0, 0x10, BUFS)
                If ((BUFS == 0x6E))
                {
                    \_SB.IC10.AOEC (0x50, 0xFB, 0x04)
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((BUFS == Zero))
                {
                    \_SB.IC10.AOEC (0x50, 0xFB, Zero)
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                Return (Package (0x02)
                {
                    0x06, 
                    Zero
                })
            }

            Method (GKHF, 0, Serialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                Local1 = Zero
                Switch (Local1)
                {
                    Case (0x01AE)
                    {
                    }
                    Case (0x01A9)
                    {
                    }
                    Case (0x01B6)
                    {
                    }
                    Case (0x01B7)
                    {
                    }
                    Default
                    {
                        DerefOf (Local0 [0x02]) [Zero] = Zero
                    }

                }

                Return (Local0)
            }

            Method (SHKF, 1, Serialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                CreateDWordField (Arg0, 0x10, BUFS)
                Switch (BUFS)
                {
                    Case (0x01AE)
                    {
                    }
                    Case (0x01A9)
                    {
                    }
                    Case (0x01B6)
                    {
                    }
                    Case (0x01B7)
                    {
                    }
                    Default
                    {
                        DerefOf (Local0 [0x02]) [Zero] = Zero
                    }

                }

                Return (Local0)
            }

            Method (GKLB, 0, Serialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                Local1 = Zero
                Switch (Local1)
                {
                    Case (0x21A4)
                    {
                    }
                    Case (0x21A9)
                    {
                    }
                    Case (0x2194)
                    {
                    }
                    Default
                    {
                        DerefOf (Local0 [0x02]) [Zero] = Zero
                    }

                }

                Return (Local0)
            }

            Method (GFRT, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                Name (FSB0, Buffer (One)
                {
                     0x00                                             // .
                })
                CreateBitField (FSB0, Zero, FS00)
                CreateBitField (FSB0, One, FS01)
                CreateBitField (FSB0, 0x02, FS02)
                CreateBitField (FSB0, 0x03, FS03)
                CreateBitField (FSB0, 0x04, FS04)
                CreateBitField (FSB0, 0x05, FS05)
                CreateBitField (FSB0, 0x06, FS06)
                CreateBitField (FSB0, 0x07, FS07)
                Name (FSB1, Buffer (One)
                {
                     0x00                                             // .
                })
                CreateBitField (FSB1, Zero, FS10)
                CreateBitField (FSB1, One, FS11)
                CreateBitField (FSB1, 0x02, FS12)
                CreateBitField (FSB1, 0x03, FS13)
                CreateBitField (FSB1, 0x04, FS14)
                CreateBitField (FSB1, 0x05, FS15)
                CreateBitField (FSB1, 0x06, FS16)
                CreateBitField (FSB1, 0x07, FS17)
                Name (FSB2, Buffer (One)
                {
                     0x00                                             // .
                })
                CreateBitField (FSB2, Zero, FS20)
                CreateBitField (FSB2, One, FS21)
                CreateBitField (FSB2, 0x02, FS22)
                CreateBitField (FSB2, 0x03, FS23)
                CreateBitField (FSB2, 0x04, FS24)
                CreateBitField (FSB2, 0x05, FS25)
                CreateBitField (FSB2, 0x06, FS26)
                CreateBitField (FSB2, 0x07, FS27)
                Name (FSB3, Buffer (One)
                {
                     0x00                                             // .
                })
                CreateBitField (FSB3, Zero, FS30)
                CreateBitField (FSB3, One, FS31)
                CreateBitField (FSB3, 0x02, FS32)
                CreateBitField (FSB3, 0x03, FS33)
                CreateBitField (FSB3, 0x04, FS34)
                CreateBitField (FSB3, 0x05, FS35)
                CreateBitField (FSB3, 0x06, FS36)
                CreateBitField (FSB3, 0x07, FS37)
                Name (FSB4, Buffer (One)
                {
                     0x00                                             // .
                })
                CreateBitField (FSB4, Zero, FS40)
                CreateBitField (FSB4, One, FS41)
                CreateBitField (FSB4, 0x02, FS42)
                CreateBitField (FSB4, 0x03, FS43)
                CreateBitField (FSB4, 0x04, FS44)
                CreateBitField (FSB4, 0x05, FS45)
                CreateBitField (FSB4, 0x06, FS46)
                CreateBitField (FSB4, 0x07, FS47)
                Name (FSB5, Buffer (One)
                {
                     0x00                                             // .
                })
                CreateBitField (FSB5, Zero, FS50)
                CreateBitField (FSB5, One, FS51)
                CreateBitField (FSB5, 0x02, FS52)
                CreateBitField (FSB5, 0x03, FS53)
                CreateBitField (FSB5, 0x04, FS54)
                CreateBitField (FSB5, 0x05, FS55)
                CreateBitField (FSB5, 0x06, FS56)
                CreateBitField (FSB5, 0x07, FS57)
                Name (FSB6, Buffer (One)
                {
                     0x00                                             // .
                })
                CreateBitField (FSB6, Zero, FS60)
                CreateBitField (FSB6, One, FS61)
                CreateBitField (FSB6, 0x02, FS62)
                CreateBitField (FSB6, 0x03, FS63)
                CreateBitField (FSB6, 0x04, FS64)
                CreateBitField (FSB6, 0x05, FS65)
                CreateBitField (FSB6, 0x06, FS66)
                CreateBitField (FSB6, 0x07, FS67)
                Name (FSB7, Buffer (One)
                {
                     0x00                                             // .
                })
                CreateBitField (FSB7, Zero, FS70)
                CreateBitField (FSB7, One, FS71)
                CreateBitField (FSB7, 0x02, FS72)
                CreateBitField (FSB7, 0x03, FS73)
                CreateBitField (FSB7, 0x04, FS74)
                CreateBitField (FSB7, 0x05, FS75)
                CreateBitField (FSB7, 0x06, FS76)
                CreateBitField (FSB7, 0x07, FS77)
                FS00 = Zero
                FS01 = One
                FS02 = Zero
                FS03 = Zero
                FS04 = One
                FS05 = One
                FS06 = Zero
                FS07 = Zero
                FS10 = Zero
                FS11 = Zero
                FS12 = Zero
                FS13 = Zero
                FS14 = One
                FS15 = Zero
                FS16 = Zero
                FS17 = Zero
                FS20 = Zero
                FS21 = Zero
                FS22 = HL00 /* \_SB_.WMID.HL00 */
                FS23 = HL01 /* \_SB_.WMID.HL01 */
                FS24 = Zero
                FS25 = Zero
                FS26 = Zero
                FS27 = Zero
                FS30 = HL01 /* \_SB_.WMID.HL01 */
                FS31 = Zero
                FS32 = HL02 /* \_SB_.WMID.HL02 */
                FS33 = Zero
                FS34 = Zero
                FS35 = Zero
                FS36 = Zero
                FS37 = Zero
                FS40 = Zero
                FS41 = Zero
                FS42 = Zero
                FS43 = Zero
                FS44 = Zero
                FS45 = Zero
                FS46 = Zero
                FS47 = Zero
                FS50 = Zero
                FS51 = Zero
                FS52 = Zero
                FS53 = Zero
                FS54 = Zero
                FS55 = Zero
                FS56 = Zero
                FS57 = Zero
                FS60 = HL03 /* \_SB_.WMID.HL03 */
                FS61 = Zero
                FS62 = Zero
                FS63 = Zero
                FS64 = Zero
                FS65 = Zero
                FS66 = Zero
                FS67 = Zero
                FS70 = Zero
                FS71 = Zero
                FS72 = Zero
                FS73 = Zero
                FS74 = Zero
                FS75 = Zero
                FS76 = Zero
                FS77 = Zero
                DerefOf (Local0 [0x02]) [Zero] = FSB0 /* \_SB_.WMID.GFRT.FSB0 */
                DerefOf (Local0 [0x02]) [One] = FSB1 /* \_SB_.WMID.GFRT.FSB1 */
                DerefOf (Local0 [0x02]) [0x02] = FSB2 /* \_SB_.WMID.GFRT.FSB2 */
                DerefOf (Local0 [0x02]) [0x03] = FSB3 /* \_SB_.WMID.GFRT.FSB3 */
                DerefOf (Local0 [0x02]) [0x04] = FSB4 /* \_SB_.WMID.GFRT.FSB4 */
                DerefOf (Local0 [0x02]) [0x05] = FSB5 /* \_SB_.WMID.GFRT.FSB5 */
                DerefOf (Local0 [0x02]) [0x06] = FSB6 /* \_SB_.WMID.GFRT.FSB6 */
                DerefOf (Local0 [0x02]) [0x07] = FSB7 /* \_SB_.WMID.GFRT.FSB7 */
                Return (Local0)
            }

            Method (GWSD, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x08, 
                        Buffer (0x08)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                        }
                    }
                If ((IWOA == One))
                {
                    \_SB.ECRC (0xB1)
                    Local1 = Buffer (0x0400){}
                    Local1 = EHWB /* \_SB_.WMID.EHWB */
                }
                Else
                {
                }

                CreateField (DerefOf (Local0 [0x02]), Zero, 0x40, BUFS)
                CreateQWordField (Local1, Zero, HWQ1)
                BUFS = HWQ1 /* \_SB_.WMID.GWSD.HWQ1 */
                Return (Local0)
            }

            Method (SWSD, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateQWordField (Local0, Zero, BUF0)
                CreateQWordField (Arg0, 0x10, BUF1)
                BUF0 = BUF1 /* \_SB_.WMID.SWSD.BUF1 */
                If ((IWOA == One))
                {
                    \_SB.ECWC (0xB1, 0x08, Local0)
                }
                Else
                {
                }

                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GDLC, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                If ((IWOA == One))
                {
                    \_SB.ECRC (0xB0)
                    Local1 = Buffer (0x0400){}
                    Local1 = EHWB /* \_SB_.WMID.EHWB */
                }
                Else
                {
                }

                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GDLC.HWD1 */
                Return (Local0)
            }

            Method (SDLC, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateDWordField (Local0, Zero, BUF0)
                CreateDWordField (Arg0, 0x10, BUF1)
                BUF0 = BUF1 /* \_SB_.WMID.SDLC.BUF1 */
                If ((IWOA == One))
                {
                    \_SB.ECRC (0xB0)
                    Local1 = Buffer (0x0400){}
                    Local1 = EHWB /* \_SB_.WMID.EHWB */
                    CreateByteField (Local1, One, DIGS)
                    CreateByteField (Local0, One, WDIS)
                    WDIS = DIGS /* \_SB_.WMID.SDLC.DIGS */
                    \_SB.ECWC (0xB0, 0x02, Local0)
                }
                Else
                {
                }

                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBUS, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80){}
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GBUS.HWD1 */
                Return (Local0)
            }

            Method (SBUS, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateDWordField (Local0, Zero, BUF0)
                CreateDWordField (Arg0, 0x10, BUF1)
                BUF0 = BUF1 /* \_SB_.WMID.SBUS.BUF1 */
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GTDC, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateDWordField (Local0, Zero, BUF0)
                CreateDWordField (Arg0, 0x10, BUF1)
                BUF0 = BUF1 /* \_SB_.WMID.GTDC.BUF1 */
                Local1 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                CreateField (DerefOf (Local1 [0x02]), Zero, 0x0400, BUF2)
                Local2 = Buffer (0x80){}
                BUF2 = Local2
                Return (Local1)
            }

            Method (STDC, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateField (Arg0, 0x80, 0x0400, BUFS)
                Local0 = BUFS /* \_SB_.WMID.STDC.BUFS */
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GFCC, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80){}
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GFCC.HWD1 */
                Return (Local0)
            }

            Method (SFCC, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateDWordField (Local0, Zero, BUF0)
                CreateDWordField (Arg0, 0x10, BUF1)
                BUF0 = BUF1 /* \_SB_.WMID.SFCC.BUF1 */
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GPES, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80){}
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GPES.HWD1 */
                Return (Local0)
            }

            Method (SPES, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateDWordField (Local0, Zero, BUF0)
                CreateDWordField (Arg0, 0x10, BUF1)
                BUF0 = BUF1 /* \_SB_.WMID.SPES.BUF1 */
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBCC, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (SBCC, 1, NotSerialized)
            {
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GJVS, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80){}
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GJVS.HWD1 */
                Return (Local0)
            }

            Method (SJVS, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateDWordField (Local0, Zero, BUF0)
                CreateDWordField (Arg0, 0x10, BUF1)
                BUF0 = BUF1 /* \_SB_.WMID.SJVS.BUF1 */
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GPST, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x0400, BUFS)
                Return (Local0)
            }

            Method (SPST, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateField (Arg0, 0x80, 0x0400, BUFS)
                Local0 = BUFS /* \_SB_.WMID.SPST.BUFS */
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBCT, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x0400, BUFS)
                Return (Local0)
            }

            Method (SBCT, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateField (Arg0, 0x80, 0x0400, BUFS)
                Local0 = BUFS /* \_SB_.WMID.SBCT.BUFS */
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBST, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80){}
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GBST.HWD1 */
                Return (Local0)
            }

            Method (SBST, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateDWordField (Local0, Zero, BUF0)
                CreateDWordField (Arg0, 0x10, BUF1)
                BUF0 = BUF1 /* \_SB_.WMID.SBST.BUF1 */
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GPPS, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80){}
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GPPS.HWD1 */
                Return (Local0)
            }

            Method (SPPS, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateDWordField (Local0, Zero, BUF0)
                CreateDWordField (Arg0, 0x10, BUF1)
                BUF0 = BUF1 /* \_SB_.WMID.SPPS.BUF1 */
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (SPMB, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateDWordField (Local0, Zero, BUF0)
                CreateDWordField (Arg0, 0x10, BUF1)
                BUF0 = BUF1 /* \_SB_.WMID.SPMB.BUF1 */
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBMF, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80){}
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GBMF.HWD1 */
                Return (Local0)
            }

            Method (GTML, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x08, BYT0)
                CreateField (DerefOf (Local0 [0x02]), 0x08, 0x08, BYT1)
                CreateField (DerefOf (Local0 [0x02]), 0x10, 0x10, BY23)
                Local2 = ((\_SB.IC10.RDEC (0x84) & 0x10) && 0x10)
                Local1 = ((\_SB.IC10.RDEC (0x84) & 0x20) && 0x20)
                Local1 &= One
                Local2 &= One
                BYT0 = (Local1 | (Local2 << One))
                Return (Local0)
            }

            Method (STML, 1, NotSerialized)
            {
                CreateDWordField (Arg0, 0x10, BUF0)
                Local0 = BUF0 /* \_SB_.WMID.STML.BUF0 */
                Local1 = (Local0 & 0xFF)
                Local2 = (Local0 >> 0x08)
                Local2 &= 0xFF
                If ((Local1 == 0x03))
                {
                    If ((Local2 & 0x02))
                    {
                        \_SB.IC10.AOEC (0x84, 0xEF, 0x10)
                    }
                    Else
                    {
                        \_SB.IC10.AOEC (0x84, 0xEF, Zero)
                    }

                    If ((Local2 & One))
                    {
                        \_SB.IC10.AOEC (0x84, 0xDF, 0x20)
                    }
                    Else
                    {
                        \_SB.IC10.AOEC (0x84, 0xDF, Zero)
                    }
                }

                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (CPST, 3, NotSerialized)
            {
                CreateField (Arg0, (0x08 * Arg1), (0x08 * Arg2), BUFF)
                Return (BUFF) /* \_SB_.WMID.CPST.BUFF */
            }

            Method (GBCI, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                Return (Local0)
            }

            Method (GTPS, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80){}
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GTPS.HWD1 */
                Return (Local0)
            }

            Method (STPS, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateDWordField (Local0, Zero, BUF0)
                CreateDWordField (Arg0, 0x10, BUF1)
                BUF0 = BUF1 /* \_SB_.WMID.STPS.BUF1 */
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GPCS, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80){}
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GPCS.HWD1 */
                Return (Local0)
            }

            Method (GGPM, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80){}
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GGPM.HWD1 */
                Return (Local0)
            }

            Method (SGPM, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateDWordField (Local0, Zero, BUF0)
                CreateDWordField (Arg0, 0x10, BUF1)
                BUF0 = BUF1 /* \_SB_.WMID.SGPM.BUF1 */
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GEEP, 1, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x0400, 
                        Buffer (0x0400){}
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x2000, BUFS)
                CreateByteField (DerefOf (Local0 [0x02]), Zero, BUF0)
                CreateByteField (Arg0, 0x10, BUF1)
                BUF0 = BUF1 /* \_SB_.WMID.GEEP.BUF1 */
                Return (Local0)
            }

            Method (SEEP, 1, NotSerialized)
            {
                Local0 = Buffer (0x0400){}
                CreateField (Arg0, 0x80, 0x2000, BUFS)
                Local0 = BUFS /* \_SB_.WMID.SEEP.BUFS */
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GABO, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x0400, BUFS)
                Return (Local0)
            }

            Method (GICS, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                Return (Local0)
            }

            Method (SICS, 1, NotSerialized)
            {
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GDHD, 1, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x08, BYT0)
                CreateField (DerefOf (Local0 [0x02]), 0x08, 0x08, BYT1)
                CreateField (DerefOf (Local0 [0x02]), 0x10, 0x10, BY23)
                BYT0 = Zero
                BYT1 = 0xFF
                BY23 = Zero
                Return (Local0)
            }

            Method (CPCF, 2, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                RTCC = 0x04
                Return (Local0)
            }

            Method (CSTA, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                IAOR = One
                If (CondRefOf (\SSMP)){}
                Else
                {
                }

                Local1 = Zero
                While ((IAOR == One))
                {
                    If ((Local1 == 0xFF))
                    {
                        Break
                    }

                    Local1++
                    Sleep (0x0A)
                }

                If ((IAOR == One))
                {
                    Local0 [Zero] = 0x1C
                }
                Else
                {
                    Local0 [Zero] = IAOR /* \_SB_.WMID.IAOR */
                    DerefOf (Local0 [0x02]) [Zero] = (CDAT & 0xFF
                        )
                }

                Return (Local0)
            }

            Method (CACT, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                CreateDWordField (Arg0, 0x10, BUFS)
                CDAT = BUFS /* \_SB_.WMID.CACT.BUFS */
                IAOR = 0x02
                If (CondRefOf (\SSMP)){}
                Else
                {
                }

                Local1 = Zero
                While ((IAOR == 0x02))
                {
                    If ((Local1 == 0xFF))
                    {
                        Break
                    }

                    Local1++
                    Sleep (0x0A)
                }

                If ((IAOR == 0x02))
                {
                    Local0 [Zero] = 0x1C
                }
                Else
                {
                    Local0 [Zero] = IAOR /* \_SB_.WMID.IAOR */
                }

                CDAT = Zero
                Return (Local0)
            }

            Method (CDAC, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                CreateDWordField (Arg0, 0x10, BUFS)
                CDAT = BUFS /* \_SB_.WMID.CDAC.BUFS */
                IAOR = 0x03
                If (CondRefOf (\SSMP)){}
                Else
                {
                }

                Local1 = Zero
                While ((IAOR == 0x03))
                {
                    If ((Local1 == 0xFF))
                    {
                        Break
                    }

                    Local1++
                    Sleep (0x0A)
                }

                If ((IAOR == 0x03))
                {
                    Local0 [Zero] = 0x1C
                }
                Else
                {
                    Local0 [Zero] = IAOR /* \_SB_.WMID.IAOR */
                }

                CDAT = Zero
                Return (Local0)
            }

            Method (CAIP, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                CreateDWordField (Arg0, 0x0C, DASI)
                CreateField (Arg0, 0x80, (DASI * 0x08), BUFS)
                Local1 = Buffer (0x0400){}
                Local1 = BUFS /* \_SB_.WMID.CAIP.BUFS */
                EHWB = Local1
                CreateDWordField (Arg0, 0x10, CMTK)
                CDAT = CMTK /* \_SB_.WMID.CAIP.CMTK */
                IAOR = 0x06
                If (CondRefOf (\SSMP)){}
                Else
                {
                }

                Local2 = Zero
                While ((IAOR == 0x06))
                {
                    If ((Local2 == 0xFF))
                    {
                        Break
                    }

                    Local2++
                    Sleep (0x0A)
                }

                If ((IAOR == 0x06))
                {
                    Local0 [Zero] = 0x1C
                }
                Else
                {
                    Local0 [Zero] = IAOR /* \_SB_.WMID.IAOR */
                }

                HWBF = Zero
                Return (Local0)
            }

            Method (GMCF, 2, Serialized)
            {
                Switch (Arg0)
                {
                    Case (One)
                    {
                        RTCC = Zero
                        Return (GC01 ())
                    }
                    Case (0x02)
                    {
                        RTCC = Zero
                        Return (GC02 ())
                    }
                    Case (0x03)
                    {
                        RTCC = Zero
                        Return (GC03 (Arg1))
                    }
                    Case (0x04)
                    {
                        RTCC = Zero
                        Return (GC04 (Arg1))
                    }
                    Case (0x05)
                    {
                        RTCC = Zero
                        Return (GC05 (Arg1))
                    }
                    Case (0x06)
                    {
                        RTCC = Zero
                        Return (GC06 ())
                    }
                    Case (0x07)
                    {
                        RTCC = Zero
                        Return (GC07 (Arg1))
                    }
                    Case (0x08)
                    {
                        RTCC = Zero
                        Return (GC08 ())
                    }
                    Case (0x09)
                    {
                        RTCC = Zero
                        Return (GC09 (Arg1))
                    }
                    Case (0x0A)
                    {
                        RTCC = Zero
                        Return (GC0A ())
                    }
                    Case (0x0B)
                    {
                        RTCC = Zero
                        Return (GC0B (Arg1))
                    }
                    Case (0x0C)
                    {
                        RTCC = Zero
                        Return (GC0C ())
                    }
                    Case (0x0D)
                    {
                        RTCC = Zero
                        Return (GC0D (Arg1))
                    }
                    Case (0x0E)
                    {
                        RTCC = Zero
                        Return (GC0E (Arg1))
                    }
                    Case (0x0F)
                    {
                        RTCC = Zero
                        Return (GC0F (Arg1))
                    }
                    Case (0x10)
                    {
                        RTCC = Zero
                        Return (GC10 ())
                    }
                    Case (0x11)
                    {
                        RTCC = Zero
                        Return (GC11 (Arg1))
                    }
                    Case (0x12)
                    {
                        RTCC = Zero
                        Return (GC12 (Arg1))
                    }
                    Case (0x13)
                    {
                        RTCC = Zero
                        Return (GC13 ())
                    }
                    Case (0x14)
                    {
                        RTCC = Zero
                        Return (GC14 (Arg1))
                    }
                    Case (0x15)
                    {
                        RTCC = Zero
                        Return (GC15 (Arg1))
                    }
                    Case (0x16)
                    {
                        RTCC = Zero
                        Return (GC16 (Arg1))
                    }
                    Case (0x17)
                    {
                        RTCC = Zero
                        Return (GC17 (Arg1))
                    }
                    Case (0x18)
                    {
                        RTCC = Zero
                        Return (GC18 ())
                    }
                    Case (0x19)
                    {
                        RTCC = Zero
                        Return (GC19 (Arg1))
                    }
                    Case (0x1A)
                    {
                        RTCC = Zero
                        Return (GC1A (Arg1))
                    }
                    Case (0x1B)
                    {
                        RTCC = Zero
                        Return (GC1B ())
                    }
                    Case (0x1C)
                    {
                        RTCC = Zero
                        Return (GC1C (Arg1))
                    }
                    Case (0x1D)
                    {
                        RTCC = Zero
                        Return (GC1D ())
                    }
                    Case (0x1E)
                    {
                        RTCC = Zero
                        Return (GC1E (Arg1))
                    }
                    Case (0x1F)
                    {
                        RTCC = Zero
                        Return (GC1F ())
                    }
                    Case (0x20)
                    {
                        RTCC = Zero
                        Return (GC20 (Arg1))
                    }
                    Case (0x21)
                    {
                        RTCC = Zero
                        Return (GC21 ())
                    }
                    Case (0x22)
                    {
                        RTCC = Zero
                        Return (GC22 (Arg1))
                    }
                    Case (0x23)
                    {
                        RTCC = Zero
                        Return (GC23 (Arg1))
                    }
                    Case (0x24)
                    {
                        RTCC = Zero
                        Return (GC24 ())
                    }
                    Case (0x25)
                    {
                        RTCC = Zero
                        Return (GC25 (Arg1))
                    }
                    Case (0x26)
                    {
                        RTCC = Zero
                        Return (GC26 ())
                    }
                    Case (0x27)
                    {
                        RTCC = Zero
                        Return (GC27 (Arg1))
                    }
                    Case (0x28)
                    {
                        RTCC = Zero
                        Return (GC28 ())
                    }
                    Case (0x29)
                    {
                        RTCC = Zero
                        Return (GC29 (Arg1))
                    }
                    Case (0x2A)
                    {
                        RTCC = Zero
                        Return (GC2A ())
                    }
                    Case (0x2B)
                    {
                        RTCC = Zero
                        Return (GC2B ())
                    }
                    Case (0x2C)
                    {
                        RTCC = Zero
                        Return (GC2C ())
                    }
                    Case (0x2D)
                    {
                        RTCC = Zero
                        Return (GC2D ())
                    }
                    Case (0x2E)
                    {
                        RTCC = Zero
                        Return (GC2E (Arg1))
                    }
                    Case (0x2F)
                    {
                        RTCC = Zero
                        Return (GC2F ())
                    }
                    Case (0x30)
                    {
                        RTCC = Zero
                        Return (GC30 ())
                    }
                    Case (0x31)
                    {
                        RTCC = Zero
                        Return (GC31 (Arg1))
                    }
                    Case (0x32)
                    {
                        RTCC = Zero
                        Return (GC32 (Arg1))
                    }
                    Case (0x33)
                    {
                        RTCC = Zero
                        Return (GC33 ())
                    }
                    Case (0x34)
                    {
                        RTCC = Zero
                        Return (GC34 (Arg1))
                    }
                    Case (0x35)
                    {
                        RTCC = Zero
                        Return (GC35 (Arg1))
                    }
                    Case (0x36)
                    {
                        RTCC = Zero
                        Return (GC36 (Arg1))
                    }
                    Case (0x37)
                    {
                        RTCC = Zero
                        Return (GC37 (Arg1))
                    }
                    Default
                    {
                        Local0 = Package (0x03)
                            {
                                Zero, 
                                0x04, 
                                Buffer (0x04)
                                {
                                     0x00, 0x00, 0x00, 0x00                           // ....
                                }
                            }
                        RTCC = 0x04
                        Return (Local0)
                    }

                }
            }

            Method (GC01, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC02, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC03, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC04, 1, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC05, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC06, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC07, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC08, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC09, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC0A, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC0B, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC0C, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x1000, 
                        Buffer (0x1000){}
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x8000, BUFS)
                WHWB = BUFS /* \_SB_.WMID.GC0C.BUFS */
                GHWI (0x0C, 0x00020008)
                BUFS = WHWB /* \_SB_.WMID.WHWB */
                Return (Local0)
            }

            Method (GC0D, 1, NotSerialized)
            {
                Local0 = Buffer (0x1000){}
                CreateField (Arg0, 0x80, 0x8000, BUFS)
                Local0 = BUFS /* \_SB_.WMID.GC0D.BUFS */
                WHWB = Local0
                GHWI (0x0D, 0x00020008)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GC0E, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC0F, 1, NotSerialized)
            {
                Local0 = Buffer (0x1000){}
                CreateField (Arg0, 0x80, 0x8000, BUFS)
                Local0 = BUFS /* \_SB_.WMID.GC0F.BUFS */
                WHWB = Local0
                GHWI (0x0F, 0x00020008)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GC10, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        One, 
                        Buffer (One){}
                    }
                Return (Local0)
            }

            Method (GC11, 1, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC12, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC13, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x1B, 
                        Buffer (0x1B){}
                    }
                Return (Local0)
            }

            Method (GC14, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC15, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC16, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC17, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC18, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC19, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC1A, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC1B, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC1C, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC1D, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC1E, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC1F, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC20, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC21, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC22, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC23, 1, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC24, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC25, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC26, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC27, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC28, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x40, 
                        Buffer (0x40){}
                    }
                Return (Local0)
            }

            Method (GC29, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC2A, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                Return (Local0)
            }

            Method (GC2B, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC2C, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                Return (Local0)
            }

            Method (GC2D, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                Return (Local0)
            }

            Method (GC2E, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC2F, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                Return (Local0)
            }

            Method (GC30, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC31, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC32, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC33, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GC34, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GC35, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateDWordField (Local0, Zero, BUF0)
                CreateDWordField (Arg0, 0x10, BUF1)
                BUF0 = BUF1 /* \_SB_.WMID.GC35.BUF1 */
                HWBF = Local0
                GHWI (0x35, 0x00020008)
                Local1 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                CreateField (DerefOf (Local1 [0x02]), Zero, 0x0400, BUFS)
                Local2 = Buffer (0x80){}
                Local2 = HWBF /* \_SB_.WMID.HWBF */
                BUFS = Local2
                Return (Local1)
            }

            Method (GC36, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateDWordField (Local0, Zero, BUF0)
                CreateDWordField (Arg0, 0x10, BUF1)
                BUF0 = BUF1 /* \_SB_.WMID.GC36.BUF1 */
                HWBF = Local0
                GHWI (0x36, 0x00020008)
                Local1 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                CreateField (DerefOf (Local1 [0x02]), Zero, 0x0400, BUFS)
                Local2 = Buffer (0x80){}
                Local2 = HWBF /* \_SB_.WMID.HWBF */
                BUFS = Local2
                Return (Local1)
            }

            Method (GC37, 1, NotSerialized)
            {
                Local0 = Buffer (0x80){}
                CreateField (Arg0, 0x80, 0x0400, BUFS)
                Local0 = BUFS /* \_SB_.WMID.GC37.BUFS */
                HWBF = Local0
                GHWI (0x37, 0x00020008)
                Local1 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                CreateWordField (DerefOf (Local1 [0x02]), Zero, TNID)
                Local2 = Buffer (0x80){}
                Local2 = HWBF /* \_SB_.WMID.HWBF */
                CreateWordField (Local2, Zero, HWD1)
                TNID = HWD1 /* \_SB_.WMID.GC37.HWD1 */
                DerefOf (Local1 [0x02]) [0x02] = Zero
                DerefOf (Local1 [0x02]) [0x03] = Zero
                Return (Local1)
            }

            Method (LDCF, 2, Serialized)
            {
                Switch (Arg0)
                {
                    Case (One)
                    {
                        RTCC = Zero
                        Return (LC01 ())
                    }
                    Case (0x02)
                    {
                        RTCC = Zero
                        Return (LC02 ())
                    }
                    Case (0x03)
                    {
                        RTCC = Zero
                        Return (LC03 (Arg1))
                    }
                    Case (0x04)
                    {
                        RTCC = Zero
                        Return (LC04 ())
                    }
                    Case (0x05)
                    {
                        RTCC = Zero
                        Return (LC05 (Arg1))
                    }
                    Case (0x06)
                    {
                        RTCC = Zero
                        Return (LC06 (Arg1))
                    }
                    Case (0x07)
                    {
                        RTCC = Zero
                        Return (LC07 (Arg1))
                    }
                    Case (0x08)
                    {
                        RTCC = Zero
                        Return (LC08 (Arg1))
                    }
                    Case (0x09)
                    {
                        RTCC = Zero
                        Return (LC09 (Arg1))
                    }
                    Case (0x0A)
                    {
                        RTCC = Zero
                        Return (LC0A (Arg1))
                    }
                    Default
                    {
                        Local0 = Package (0x03)
                            {
                                Zero, 
                                0x04, 
                                Buffer (0x04)
                                {
                                     0x00, 0x00, 0x00, 0x00                           // ....
                                }
                            }
                        RTCC = 0x04
                        Return (Local0)
                    }

                }
            }

            Method (LC01, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (LC02, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                Return (Local0)
            }

            Method (LC03, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (LC04, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (LC05, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (LC06, 1, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                Return (Local0)
            }

            Method (LC07, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (LC08, 1, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                Return (Local0)
            }

            Method (LC09, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (LC0A, 1, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        One, 
                        Buffer (One){}
                    }
                Return (Local0)
            }

            Name (ODSZ, Package (0x01)
            {
                0x1C
            })
            Method (WHCM, 2, Serialized)
            {
                CreateDWordField (Arg1, Zero, SNIN)
                CreateDWordField (Arg1, 0x04, COMD)
                CreateDWordField (Arg1, 0x08, CMTP)
                CreateDWordField (Arg1, 0x0C, DASI)
                Switch (Arg0)
                {
                    Case (One)
                    {
                        Local0 = Zero
                    }
                    Case (0x02)
                    {
                        Local0 = 0x04
                    }
                    Case (0x03)
                    {
                        Local0 = 0x80
                    }
                    Case (0x04)
                    {
                        Local0 = 0x0400
                    }
                    Case (0x05)
                    {
                        Local0 = 0x1000
                    }

                }

                Local1 = Buffer ((0x08 + Local0)){}
                CreateDWordField (Local1, Zero, SNOU)
                CreateDWordField (Local1, 0x04, RTCD)
                SNOU = 0x4C494146
                If ((DASI > 0x2000))
                {
                    RTCD = 0x05
                    Return (Local1)
                }

                RTCD = 0x02
                If ((SNIN == 0x55434553))
                {
                    RTCD = 0x03
                    RTCC = Zero
                    Switch (COMD)
                    {
                        Case (One)
                        {
                            If (((CMTP > Zero) && (CMTP <= 0x5A)))
                            {
                                If ((DASI < DerefOf (RCDS [(CMTP - One)])))
                                {
                                    RTCD = 0x05
                                }
                                Else
                                {
                                    Local2 = RDCF (CMTP, Arg1)
                                    RTCD = RTCC /* \_SB_.WMID.RTCC */
                                }
                            }
                        }
                        Case (0x02)
                        {
                            If (((CMTP > Zero) && (CMTP <= 0x5A)))
                            {
                                If ((DASI < DerefOf (WCDS [(CMTP - One)])))
                                {
                                    RTCD = 0x05
                                }
                                Else
                                {
                                    Local2 = WRCF (CMTP, Arg1)
                                    RTCD = RTCC /* \_SB_.WMID.RTCC */
                                }
                            }
                        }
                        Case (0x00020002)
                        {
                            Local2 = CPCF (CMTP, Arg1)
                            RTCD = RTCC /* \_SB_.WMID.RTCC */
                        }
                        Case (0x00020008)
                        {
                            Local2 = GMCF (CMTP, Arg1)
                            RTCD = RTCC /* \_SB_.WMID.RTCC */
                        }
                        Case (0x00020009)
                        {
                            Local2 = LDCF (CMTP, Arg1)
                            RTCD = RTCC /* \_SB_.WMID.RTCC */
                        }
                        Case (0x03)
                        {
                            If (((CMTP > Zero) && (CMTP <= 0x5A)))
                            {
                                If ((DASI < DerefOf (ODSZ [(CMTP - One)])))
                                {
                                    RTCD = 0x05
                                }
                                ElseIf ((CMTP == One))
                                {
                                    Local2 = HODW (Arg1)
                                    RTCD = Zero
                                }
                            }
                        }

                    }
                }

                If ((RTCD == Zero))
                {
                    RTCD = DerefOf (Local2 [Zero])
                    If ((RTCD == Zero))
                    {
                        If ((DerefOf (Local2 [One]) <= Local0))
                        {
                            Local0 = Zero
                            While ((Local0 < DerefOf (Local2 [One])))
                            {
                                Local1 [(Local0 + 0x08)] = DerefOf (DerefOf (
                                    Local2 [0x02]) [Local0])
                                Local0++
                            }

                            SNOU = 0x53534150
                        }
                        Else
                        {
                            RTCD = 0x05
                        }
                    }
                }

                Return (Local1)
            }

            Method (WMAA, 3, Serialized)
            {
                Acquire (MSMT, 0xFFFF)
                Local0 = WHCM (Arg1, Arg2)
                Release (MSMT)
                Return (Local0)
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
            {
                If ((Arg0 == 0xA0))
                {
                    Return (DerefOf (EVNT [0x02]))
                }
                Else
                {
                    Local0 = Buffer (0x08)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                        }
                    CreateDWordField (Local0, Zero, EVID)
                    CreateDWordField (Local0, 0x04, EVDA)
                    EVID = WEI1 /* \_SB_.WMID.WEI1 */
                    EVDA = WED1 /* \_SB_.WMID.WED1 */
                    If ((WEI2 != Zero))
                    {
                        WEI1 = WEI2 /* \_SB_.WMID.WEI2 */
                        WED1 = WED2 /* \_SB_.WMID.WED2 */
                        EVID = WEI1 /* \_SB_.WMID.WEI1 */
                        EVDA = WED1 /* \_SB_.WMID.WED1 */
                        WEI2 = Zero
                        WED2 = Zero
                        If ((WEVT == Zero))
                        {
                            WEVT = One
                            Notify (\_SB.WMID, 0x80) // Status Change
                        }
                    }
                    Else
                    {
                        WEI1 = Zero
                        WED1 = Zero
                    }

                    Return (Local0)
                }
            }

            Method (GWET, 2, NotSerialized)
            {
                If ((\_SB.WMID.WEI1 == Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }))
                {
                    \_SB.WMID.WEI1 = Arg0
                    \_SB.WMID.WED1 = Arg1
                }
                Else
                {
                    \_SB.WMID.WEI2 = Arg0
                    \_SB.WMID.WED2 = Arg1
                }

                Notify (\_SB.WMID, 0x80) // Status Change
            }

            Name (S001, Buffer (0x32){})
            Name (S002, Buffer (0x8C){})
            Name (S003, Buffer (0x8C){})
            Name (S014, Buffer (0x32){})
            Name (BF01, Buffer (0x32){})
            Name (BF02, Buffer (0x32){})
            Name (BF03, Buffer (0x96){})
            Name (TMP0, Buffer (0x32){})
            Name (TMP1, Buffer (0x1E){})
            Name (TMP2, Buffer (0x1E){})
            Name (S004, "serial port")
            Name (S010, "Parallel Port")
            Name (S015, "My asset tag")
            Name (S006, "Enable")
            Name (S007, "Disable")
            Name (S008, " Disable, *Enable")
            Name (S009, "*Disable,  Enable")
            Name (S020, Buffer (0x1F){})
            Name (S019, " 0, 5, 10, 15, 20, 25, 30, 35")
            Name (BF3C, "   ")
            Name (BF2S, "                                                                                             ")
            Name (BSTR, "                                                                                             ")
            Method (STCP, 3, NotSerialized)
            {
                Name (ST01, Buffer (0x80){})
                Name (ST02, Buffer (0x80){})
                ST01 = Arg0
                ST02 = Arg1
                Local0 = Arg2
                Local1 = Zero
                While ((Local1 < Local0))
                {
                    Local2 = DerefOf (ST01 [Local1])
                    Local3 = DerefOf (ST02 [Local1])
                    If ((Local2 != Local3))
                    {
                        Return (Zero)
                    }

                    Local1++
                }

                Return (One)
            }

            Method (GHMI, 2, NotSerialized)
            {
                HWCT = Arg0
                HWBC = Arg1
                WSTF = Zero
                Local0 = Zero
                If (CondRefOf (\SSMP)){}
                Else
                {
                }

                While ((WSTF != 0x5A))
                {
                    If ((Local0 == 0xFF))
                    {
                        HWRC = 0x22
                        Break
                    }

                    Local0++
                    Sleep (0x0A)
                }

                WSTF = Zero
                Return (Zero)
            }

            Method (WMBH, 1, NotSerialized)
            {
                Acquire (MSMT, 0xFFFF)
                Local0 = Zero
                Release (MSMT)
                Return (Local0)
            }

            Method (BPKG, 1, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (0x1B)
                    {
                        Local0 = Package (0x18)
                            {
                                "Manufacturing Programming Mode", 
                                "*Unlock,  Lock", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Unlock", 
                                0x0C, 
                                "Lock", 
                                "Unlock", 
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
                        Local0 = Package (0x18)
                            {
                                "Network Boot", 
                                " Enable, *Disable", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Disable", 
                                0x0C, 
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
                                " "
                            }
                    }
                    Case (0x1D)
                    {
                        Local0 = Package (0x18)
                            {
                                "Secure Boot", 
                                " Enable, *Disable", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Disable", 
                                0x0C, 
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
                                " "
                            }
                    }
                    Case (0x1E)
                    {
                        Local0 = Package (0x18)
                            {
                                "Network Boot Protocol", 
                                "IPv4 (UEFI)", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "IPv4 (UEFI)", 
                                0x0C, 
                                "IPv4 (UEFI)", 
                                "IPv6 (UEFI)", 
                                "IPv4+IPv6 (UEFI)", 
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
                    Case (0x1F)
                    {
                        Local0 = Package (0x18)
                            {
                                "Fan Always On", 
                                " Enable, *Disable", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Disable", 
                                0x0C, 
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
                                " "
                            }
                    }
                    Case (0x21)
                    {
                        Local0 = Package (0x18)
                            {
                                "Language", 
                                "English", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "English", 
                                0x0C, 
                                "English", 
                                "french", 
                                "Spanish", 
                                "Traditional Chinese", 
                                "Simplified  Chinese", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " "
                            }
                    }
                    Case (0x22)
                    {
                        Local0 = Package (0x18)
                            {
                                "POST Hotkey Delay (sec)", 
                                "0", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "0", 
                                0x0C, 
                                "0", 
                                "5", 
                                "10", 
                                "15", 
                                "20", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " ", 
                                " "
                            }
                    }
                    Case (0x23)
                    {
                        Local0 = Package (0x18)
                            {
                                "Secure Boot Keys", 
                                "Clear", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Clear", 
                                0x0C, 
                                "Clear", 
                                "HP", 
                                "Custom", 
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
                    Case (0x24)
                    {
                        Local0 = Package (0x18)
                            {
                                "TPM Device", 
                                "*Available, Hidden", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Available", 
                                0x0C, 
                                "Available", 
                                "Hidden", 
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
                    Case (0x25)
                    {
                        Local0 = Package (0x18)
                            {
                                "TPM Version", 
                                "d1.2, d2.0, *f2.0", 
                                "System Configuration", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "f2.0", 
                                0x0C, 
                                "d1.2", 
                                "d2.0", 
                                "f2.0", 
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
                    Case (0x26)
                    {
                        Local0 = Package (0x18)
                            {
                                "Clear TPM", 
                                "Yes, *No", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "No", 
                                0x0C, 
                                "Yes", 
                                "No", 
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
                    Case (0x27)
                    {
                        Local0 = Package (0x18)
                            {
                                "TPM State", 
                                "*Enable,  Disable", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Enable", 
                                0x0C, 
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
                                " "
                            }
                    }
                    Case (0x28)
                    {
                        Local0 = Package (0x18)
                            {
                                "TPM Reset to Factory Defaults", 
                                "Yes, *No", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "No", 
                                0x0C, 
                                "Yes", 
                                "No", 
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
                    Case (0x29)
                    {
                        Local0 = Package (0x18)
                            {
                                "Restore Security Defaults", 
                                "Yes, *No", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "No", 
                                0x0C, 
                                "Yes", 
                                "No", 
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
                    Case (0x2A)
                    {
                        Local0 = Package (0x18)
                            {
                                "PIN Load Defaults", 
                                "Yes, *No", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "No", 
                                0x0C, 
                                "Yes", 
                                "No", 
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
                    Case (0x2B)
                    {
                        Local0 = Package (0x18)
                            {
                                "USB Boot", 
                                " Enable, *Disable", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Disable", 
                                0x0C, 
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
                                " "
                            }
                    }
                    Case (0x2C)
                    {
                        Local0 = Package (0x18)
                            {
                                "Adaptive Battery Extender", 
                                " Enable, *Disable", 
                                "System Configuration", 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Disable", 
                                0x0C, 
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
                                " "
                            }
                    }
                    Case (0x2D)
                    {
                        Local0 = Package (0x18)
                            {
                                "Adaptive Battery Extender Status", 
                                "Activated, *Not Activated", 
                                "System Configuration", 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Not Activated", 
                                0x0C, 
                                "Activated", 
                                "Not Activated", 
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
                    Case (0x2E)
                    {
                        Local0 = Package (0x18)
                            {
                                "Keyboard Type", 
                                "*Non-Japanese, Japanese Keyboard, New EMEA UK KB (US2), New BRZL KB (UK2), New BRZL KB (US3), US4 (LA KB), US5 (Europe KB), US6 (Korea KB), US7 (Brazil KB)", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Non-Japanese", 
                                0x0C, 
                                "Non-Japanese", 
                                "Japanese Keyboard", 
                                "New EMEA UK KB (US2)", 
                                "New BRZL KB (UK2)", 
                                "New BRZL KB (US3)", 
                                "US4 (LA KB)", 
                                "US5 (Europe KB)", 
                                "US6 (Korea KB)", 
                                "US7 (Brazil KB)", 
                                " ", 
                                " ", 
                                " "
                            }
                    }
                    Case (0x2F)
                    {
                        Local0 = Package (0x18)
                            {
                                "AOS Deployment AddOn", 
                                " Enable, *Disable", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Disable", 
                                0x0C, 
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
                                " "
                            }
                    }
                    Case (0x30)
                    {
                        Local0 = Package (0x18)
                            {
                                "Battery Remaining Time", 
                                "*Enable,  Disable", 
                                "System Configuration", 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Enable", 
                                0x0C, 
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
                                " "
                            }
                    }
                    Case (0x31)
                    {
                        Local0 = Package (0x18)
                            {
                                "OOBE", 
                                "Yes, *No", 
                                "System Configuration", 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "No", 
                                0x0C, 
                                "Yes", 
                                "No", 
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
                    Case (0x32)
                    {
                        Local0 = Package (0x18)
                            {
                                "Clear Event Log", 
                                "Yes, *No", 
                                "System Configuration", 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "No", 
                                0x0C, 
                                "Yes", 
                                "No", 
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
                    Case (0x33)
                    {
                        Local0 = Package (0x18)
                            {
                                "Reflow Process", 
                                "Yes, *No", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "No", 
                                0x0C, 
                                "Yes", 
                                "No", 
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
                    Case (0x34)
                    {
                        Local0 = Package (0x18)
                            {
                                "Clear BOD", 
                                "Yes, *No", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "No", 
                                0x0C, 
                                "Yes", 
                                "No", 
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
                    Case (0x35)
                    {
                        Local0 = Package (0x18)
                            {
                                "Launch Hotkeys without Fn Keypress", 
                                "Disable, Enable, *Auto", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Auto", 
                                0x0C, 
                                "Enable", 
                                "Disable", 
                                "Auto", 
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
                    Case (0x37)
                    {
                        Local0 = Package (0x18)
                            {
                                "Ignore Auto Resume", 
                                "Yes, *No", 
                                "System Configuration", 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Yes", 
                                0x0C, 
                                "Yes", 
                                "No", 
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
                    Case (0x38)
                    {
                        Local0 = Package (0x18)
                            {
                                "TPM Solution", 
                                "*Pluton, SoC", 
                                "System Configuration", 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Pluton", 
                                0x0C, 
                                "Pluton", 
                                "SoC", 
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
                    Case (0x39)
                    {
                        Local0 = Package (0x18)
                            {
                                "SCPC capable", 
                                "*Yes, No", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Yes", 
                                0x0C, 
                                "Yes", 
                                "No", 
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
                    Case (0x3A)
                    {
                        Local0 = Package (0x18)
                            {
                                "Enable MS UEFI CA key", 
                                "*Yes, No", 
                                "System Configuration", 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Yes", 
                                0x0C, 
                                "Yes", 
                                "No", 
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
                    Case (0x3B)
                    {
                        Local0 = Package (0x18)
                            {
                                "MSFT Copilot Key", 
                                "*Yes, No", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Yes", 
                                0x0C, 
                                "Yes", 
                                "No", 
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
                    Case (0x3C)
                    {
                        Local0 = Package (0x18)
                            {
                                "Power on When Lid is opened", 
                                " Enable, *Disable", 
                                "System Configuration", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                "Disable", 
                                0x0C, 
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
                                " "
                            }
                    }
                    Default
                    {
                        Local0 = Package (0x18)
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
                                0x0C, 
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
                                " "
                            }
                    }

                }

                Return (Local0)
            }

            Method (FPKG, 1, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (0x04)
                    {
                        Local0 = Package (0x0C)
                            {
                                "Feature Byte", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x05)
                    {
                        Local0 = Package (0x0C)
                            {
                                "Build ID", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x06)
                    {
                        Local0 = Package (0x0C)
                            {
                                "Product Number", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x07)
                    {
                        Local0 = Package (0x0C)
                            {
                                "Serial Number", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x08)
                    {
                        Local0 = Package (0x0C)
                            {
                                "Product Name", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x09)
                    {
                        Local0 = Package (0x0C)
                            {
                                "UUID", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x0A)
                    {
                        Local0 = Package (0x0C)
                            {
                                "System Board CT Number", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x0B)
                    {
                        Local0 = Package (0x0C)
                            {
                                "MS Digital Marker", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x0C)
                    {
                        Local0 = Package (0x0C)
                            {
                                "Asset Tag", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x0D)
                    {
                        Local0 = Package (0x0C)
                            {
                                "System Board ID", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x0E)
                    {
                        Local0 = Package (0x0C)
                            {
                                "System Family", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x0F)
                    {
                        Local0 = Package (0x0C)
                            {
                                "Preinstall OS Version", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x10)
                    {
                        Local0 = Package (0x0C)
                            {
                                "PIN Process Cycle", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x11)
                    {
                        Local0 = Package (0x0C)
                            {
                                "BIOS Revision", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x12)
                    {
                        Local0 = Package (0x0C)
                            {
                                "Batt_LTemp", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x13)
                    {
                        Local0 = Package (0x0C)
                            {
                                "Keyboard Layout", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x14)
                    {
                        Local0 = Package (0x0C)
                            {
                                "HW Platform Cycle", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x15)
                    {
                        Local0 = Package (0x0C)
                            {
                                "Network Boot TFTP Window Size", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Case (0x16)
                    {
                        Local0 = Package (0x0C)
                            {
                                "Speaker ID", 
                                "", 
                                "Path", 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                0x0400
                            }
                    }
                    Default
                    {
                        Local0 = Package (0x0C)
                            {
                                "", 
                                "", 
                                "", 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                " ", 
                                Zero, 
                                Zero, 
                                Zero
                            }
                    }

                }

                Return (Local0)
            }

            Method (GECI, 1, NotSerialized)
            {
                Local0 = Arg0
                Local1 = Zero
                Local3 = 0xFFFF
                Local2 = 0x45
                While ((Local1 <= Local2))
                {
                    If ((Local0 == DerefOf (DerefOf (BCTE [Local1]) [Zero])))
                    {
                        Local3 = DerefOf (DerefOf (BCTE [Local1]) [One])
                        Break
                    }

                    Local1++
                }

                Return (Local3)
            }

            Method (PBOV, 1, NotSerialized)
            {
                Local0 = Arg0
                Local1 = 0xFF
                If (("OS Boot Manager" == Local0))
                {
                    Local1 = 0x02
                }

                If (("Internal CD/DVD ROM Drive" == Local0))
                {
                    Local1 = 0x03
                }

                If (("USB Diskette on Key/USB Hard Disk" == Local0))
                {
                    Local1 = 0x07
                }

                If (("USB CD/DVD ROM Drive" == Local0))
                {
                    Local1 = 0x08
                }

                If (("Network Adapter" == Local0))
                {
                    Local1 = 0x80
                }

                Return (Local1)
            }

            Method (PBOS, 2, NotSerialized)
            {
                Name (VPKG, Package (0x08)
                {
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " "
                })
                Local0 = Arg0
                Local1 = Arg1
                Local2 = Zero
                Local3 = Zero
                Local4 = Zero
                Local5 = Buffer (0x0400){}
                Local6 = Zero
                While ((Local3 != Local1))
                {
                    If ((DerefOf (Local0 [Local3]) == Zero))
                    {
                        VPKG [Local4] = ToString (CPST (Local0, Local6, Local2), Local2)
                        Local4 += One
                        Break
                    }

                    If ((DerefOf (Local0 [Local3]) == 0x2C))
                    {
                        Local0 [Local3] = Zero
                        VPKG [Local4] = ToString (CPST (Local0, Local6, Local2), Local2)
                        Local2 = Zero
                        Local4 += One
                        Local6 = (One + Local3)
                    }

                    If ((Local4 == 0x08))
                    {
                        Break
                    }

                    Local2 += One
                    Local3 += One
                }

                CreateByteField (Local5, Zero, BOR0)
                CreateByteField (Local5, One, BOR1)
                CreateByteField (Local5, 0x02, BOR2)
                CreateByteField (Local5, 0x03, BOR3)
                CreateByteField (Local5, 0x04, BOR4)
                CreateByteField (Local5, 0x05, BOR5)
                CreateByteField (Local5, 0x06, BOR6)
                CreateByteField (Local5, 0x07, BOR7)
                If ((Local4 > Zero))
                {
                    BOR0 = PBOV (DerefOf (VPKG [Zero]))
                }

                If ((Local4 > One))
                {
                    BOR1 = PBOV (DerefOf (VPKG [One]))
                }

                If ((Local4 > 0x02))
                {
                    BOR2 = PBOV (DerefOf (VPKG [0x02]))
                }

                If ((Local4 > 0x03))
                {
                    BOR3 = PBOV (DerefOf (VPKG [0x03]))
                }

                If ((Local4 > 0x04))
                {
                    BOR4 = PBOV (DerefOf (VPKG [0x04]))
                }

                If ((Local4 > 0x05))
                {
                    BOR5 = PBOV (DerefOf (VPKG [0x05]))
                }

                If ((Local4 > 0x06))
                {
                    BOR6 = PBOV (DerefOf (VPKG [0x06]))
                }

                If ((Local4 > 0x07))
                {
                    BOR7 = PBOV (DerefOf (VPKG [0x07]))
                }

                Return (Local5)
            }

            Method (SECV, 4, NotSerialized)
            {
                Local0 = Arg0
                Local1 = Arg1
                Local2 = Arg2
                Local3 = Arg3
                Name (NSTR, "")
                Name (VSTR, "")
                Name (VSIZ, Zero)
                Name (PSTR, "")
                CreateField (Local0, Zero, (0x08 * Local1), NBUF)
                CreateField (Local0, (0x08 * Local1), (0x08 * Local2), VBUF)
                Local4 = (Local1 + Local2)
                CreateField (Local0, (0x08 * Local4), (0x08 * Local3), PBUF)
                Local7 = Buffer (0x0400){}
                CreateByteField (Local7, Zero, BVAL)
                CreateWordField (Local7, Zero, WVAL)
                CreateDWordField (Local7, Zero, DWVL)
                CreateQWordField (Local7, Zero, QWVL)
                If ((Local1 != Zero))
                {
                    CopyObject (ToString (NBUF, Local1), NSTR) /* \_SB_.WMID.SECV.NSTR */
                }

                If ((Local2 != Zero))
                {
                    CopyObject (ToString (VBUF, Local2), VSTR) /* \_SB_.WMID.SECV.VSTR */
                    VSIZ = (Local2 - One)
                    CreateField (Local7, Zero, (0x08 * VSIZ), TVBF)
                    CreateField (Local0, (0x08 * Local1), (0x08 * VSIZ), VDAT)
                    TVBF = VDAT /* \_SB_.WMID.SECV.VDAT */
                }

                If ((Local3 != Zero))
                {
                    CopyObject (ToString (PBUF, Local3), PSTR) /* \_SB_.WMID.SECV.PSTR */
                }

                HWRC = One
                If ((NSTR == "Manufacturing Programming Mode"))
                {
                    If ((ToInteger (MPMM) == Zero))
                    {
                        Local6 = GECI (NSTR)
                        If ((VSTR == "Lock"))
                        {
                            BVAL = One
                            \_SB.ECWC (Local6, One, Local7)
                        }

                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }

                        If ((VSTR == "Unlock"))
                        {
                            HWRC = One
                        }
                    }
                    Else
                    {
                        HWRC = 0x06
                    }
                }
                ElseIf ((NSTR == "Network Boot"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "Disable"))
                    {
                        BVAL = Zero
                        \_SB.WMID.HF01 &= 0xFFFFFFFE
                    }

                    If ((VSTR == "Enable"))
                    {
                        BVAL = One
                        \_SB.WMID.HF01 |= One
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "Secure Boot"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "Disable"))
                    {
                        BVAL = Zero
                    }

                    If ((VSTR == "Enable"))
                    {
                        BVAL = One
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "Network Boot Protocol"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "IPv4 (UEFI)"))
                    {
                        BVAL = Zero
                    }

                    If ((VSTR == "IPv6 (UEFI)"))
                    {
                        BVAL = One
                    }

                    If ((VSTR == "IPv4+IPv6 (UEFI)"))
                    {
                        BVAL = 0x02
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "Fan Always On"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "Disable"))
                    {
                        BVAL = Zero
                    }

                    If ((VSTR == "Enable"))
                    {
                        BVAL = One
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "Language"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "English"))
                    {
                        BVAL = Zero
                    }

                    If ((VSTR == "french"))
                    {
                        BVAL = One
                    }

                    If ((VSTR == "Spanish"))
                    {
                        BVAL = 0x02
                    }

                    If ((VSTR == "Traditional Chinese"))
                    {
                        BVAL = 0x03
                    }

                    If ((VSTR == "Simplified  Chinese"))
                    {
                        BVAL = 0x04
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "POST Hotkey Delay (sec)"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "0"))
                    {
                        BVAL = Zero
                    }

                    If ((VSTR == "5"))
                    {
                        BVAL = 0x05
                    }

                    If ((VSTR == "10"))
                    {
                        BVAL = 0x0A
                    }

                    If ((VSTR == "15"))
                    {
                        BVAL = 0x0F
                    }

                    If ((VSTR == "20"))
                    {
                        BVAL = 0x14
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "Secure Boot Keys"))
                {
                    If ((ToInteger (MPMM) == Zero))
                    {
                        Local6 = GECI (NSTR)
                        If ((VSTR == "Clear"))
                        {
                            BVAL = Zero
                        }

                        If ((VSTR == "HP"))
                        {
                            BVAL = One
                        }

                        If ((VSTR == "MSFT"))
                        {
                            BVAL = 0x02
                        }

                        If ((VSTR == "Custom"))
                        {
                            BVAL = 0x03
                        }

                        \_SB.ECWC (Local6, One, Local7)
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    Else
                    {
                        HWRC = 0x06
                    }
                }
                ElseIf ((NSTR == "TPM Device"))
                {
                    HWRC = One
                }
                ElseIf ((NSTR == "TPM State"))
                {
                    HWRC = One
                }
                ElseIf ((NSTR == "Clear TPM"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "No"))
                    {
                        BVAL = Zero
                    }

                    If ((VSTR == "Yes"))
                    {
                        BVAL = One
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "TPM Reset to Factory Defaults"))
                {
                    If ((ToInteger (MPMM) == Zero))
                    {
                        Local6 = GECI (NSTR)
                        If ((VSTR == "No"))
                        {
                            BVAL = Zero
                        }

                        If ((VSTR == "Yes"))
                        {
                            BVAL = One
                        }

                        \_SB.ECWC (Local6, One, Local7)
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    Else
                    {
                        HWRC = 0x06
                    }
                }
                ElseIf ((NSTR == "Restore Security Defaults"))
                {
                    If ((ToInteger (MPMM) == Zero))
                    {
                        Local6 = GECI (NSTR)
                        If ((VSTR == "No"))
                        {
                            BVAL = Zero
                        }

                        If ((VSTR == "Yes"))
                        {
                            BVAL = One
                        }

                        \_SB.ECWC (Local6, One, Local7)
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    Else
                    {
                        HWRC = 0x06
                    }
                }
                ElseIf ((NSTR == "PIN Load Defaults"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "No"))
                    {
                        BVAL = Zero
                    }

                    If ((VSTR == "Yes"))
                    {
                        BVAL = One
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "USB Boot"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "Enable"))
                    {
                        BVAL = Zero
                    }

                    If ((VSTR == "Disable"))
                    {
                        BVAL = One
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "Power on When Lid is opened"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "Enable"))
                    {
                        BVAL = One
                    }

                    If ((VSTR == "Disable"))
                    {
                        BVAL = Zero
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "Adaptive Battery Extender"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "Enable"))
                    {
                        BVAL = One
                    }

                    If ((VSTR == "Disable"))
                    {
                        BVAL = Zero
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "Adaptive Battery Extender Status"))
                {
                    HWRC = One
                }
                ElseIf ((NSTR == "Keyboard Type"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "Non-Japanese"))
                    {
                        BVAL = Zero
                    }

                    If ((VSTR == "Japanese Keyboard"))
                    {
                        BVAL = One
                    }

                    If ((VSTR == "New EMEA UK KB (US2)"))
                    {
                        BVAL = 0x02
                    }

                    If ((VSTR == "New BRZL KB (UK2)"))
                    {
                        BVAL = 0x03
                    }

                    If ((VSTR == "New BRZL KB (US3)"))
                    {
                        BVAL = 0x04
                    }

                    If ((VSTR == "US4 (LA KB)"))
                    {
                        BVAL = 0x05
                    }

                    If ((VSTR == "US5 (Europe KB)"))
                    {
                        BVAL = 0x06
                    }

                    If ((VSTR == "US6 (Korea KB)"))
                    {
                        BVAL = 0x07
                    }

                    If ((VSTR == "US7 (Brazil KB)"))
                    {
                        BVAL = 0x08
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "AOS Deployment AddOn"))
                {
                    HWRC = One
                }
                ElseIf ((NSTR == "Battery Remaining Time"))
                {
                    HWRC = One
                }
                ElseIf ((NSTR == "OOBE"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "No"))
                    {
                        BVAL = Zero
                    }

                    If ((VSTR == "Yes"))
                    {
                        BVAL = One
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "Clear Event Log"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "No"))
                    {
                        BVAL = Zero
                    }

                    If ((VSTR == "Yes"))
                    {
                        BVAL = One
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "Reflow Process"))
                {
                    If ((ToInteger (MPMM) == Zero))
                    {
                        Local6 = GECI (NSTR)
                        If ((VSTR == "No"))
                        {
                            BVAL = Zero
                        }

                        If ((VSTR == "Yes"))
                        {
                            BVAL = One
                        }

                        \_SB.ECWC (Local6, One, Local7)
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    Else
                    {
                        HWRC = 0x06
                    }
                }
                ElseIf ((NSTR == "Clear BOD"))
                {
                    If ((ToInteger (MPMM) == Zero))
                    {
                        Local6 = GECI (NSTR)
                        If ((VSTR == "No"))
                        {
                            BVAL = Zero
                        }

                        If ((VSTR == "Yes"))
                        {
                            BVAL = One
                        }

                        \_SB.ECWC (Local6, One, Local7)
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    Else
                    {
                        HWRC = 0x06
                    }
                }
                ElseIf ((NSTR == "Launch Hotkeys without Fn Keypress"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "Disable"))
                    {
                        BVAL = Zero
                    }

                    If ((VSTR == "Enable"))
                    {
                        BVAL = One
                    }

                    If ((VSTR == "Auto"))
                    {
                        BVAL = 0x02
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "Enable MS UEFI CA key"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "No"))
                    {
                        BVAL = Zero
                    }

                    If ((VSTR == "Yes"))
                    {
                        BVAL = One
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "MSFT Copilot Key"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "No"))
                    {
                        BVAL = Zero
                    }

                    If ((VSTR == "Yes"))
                    {
                        BVAL = One
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "Feature Byte"))
                {
                    If ((ToInteger (MPMM) == Zero))
                    {
                        Local6 = GECI (NSTR)
                        \_SB.ECWC (Local6, VSIZ, Local7)
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    Else
                    {
                        HWRC = 0x06
                    }
                }
                ElseIf ((NSTR == "Build ID"))
                {
                    If ((ToInteger (MPMM) == Zero))
                    {
                        Local6 = GECI (NSTR)
                        \_SB.ECWC (Local6, VSIZ, Local7)
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    Else
                    {
                        HWRC = 0x06
                    }
                }
                ElseIf ((NSTR == "Product Number"))
                {
                    If ((ToInteger (MPMM) == Zero))
                    {
                        Local6 = GECI (NSTR)
                        \_SB.ECWC (Local6, VSIZ, Local7)
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    Else
                    {
                        HWRC = 0x06
                    }
                }
                ElseIf ((NSTR == "Serial Number"))
                {
                    If ((ToInteger (MPMM) == Zero))
                    {
                        Local6 = GECI (NSTR)
                        \_SB.ECWC (Local6, VSIZ, Local7)
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    Else
                    {
                        HWRC = 0x06
                    }
                }
                ElseIf ((NSTR == "Product Name"))
                {
                    If ((ToInteger (MPMM) == Zero))
                    {
                        Local6 = GECI (NSTR)
                        \_SB.ECWC (Local6, VSIZ, Local7)
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    Else
                    {
                        HWRC = 0x06
                    }
                }
                ElseIf ((NSTR == "UUID"))
                {
                    If ((ToInteger (MPMM) == Zero))
                    {
                        Local6 = GECI (NSTR)
                        \_SB.ECWC (Local6, VSIZ, Local7)
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    Else
                    {
                        HWRC = 0x06
                    }
                }
                ElseIf ((NSTR == "System Board CT Number"))
                {
                    If ((ToInteger (MPMM) == Zero))
                    {
                        Local6 = GECI (NSTR)
                        \_SB.ECWC (Local6, VSIZ, Local7)
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    Else
                    {
                        HWRC = 0x06
                    }
                }
                ElseIf ((NSTR == "MS Digital Marker"))
                {
                    If ((VSIZ > 0x62))
                    {
                        HWRC = 0x06
                    }
                    Else
                    {
                        Local6 = GECI (NSTR)
                        \_SB.ECWC (Local6, VSIZ, Local7)
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                }
                ElseIf ((NSTR == "Asset Tag"))
                {
                    Local6 = GECI (NSTR)
                    \_SB.ECWC (Local6, VSIZ, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "System Board ID"))
                {
                    HWRC = One
                }
                ElseIf ((NSTR == "System Family"))
                {
                    If ((ToInteger (MPMM) == Zero))
                    {
                        If ((VSIZ > 0x18))
                        {
                            HWRC = 0x06
                        }
                        Else
                        {
                            Local6 = GECI (NSTR)
                            \_SB.ECWC (Local6, VSIZ, Local7)
                            If ((Zero == \_SB.EPST))
                            {
                                HWRC = Zero
                            }
                        }
                    }
                    Else
                    {
                        HWRC = 0x06
                    }
                }
                ElseIf ((NSTR == "Preinstall OS Version"))
                {
                    If ((ToInteger (MPMM) == Zero))
                    {
                        Local6 = GECI (NSTR)
                        \_SB.ECWC (Local6, VSIZ, Local7)
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    Else
                    {
                        HWRC = 0x06
                    }
                }
                ElseIf ((NSTR == "PIN Process Cycle"))
                {
                    If ((ToInteger (MPMM) == Zero))
                    {
                        Local6 = GECI (NSTR)
                        \_SB.ECWC (Local6, VSIZ, Local7)
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    Else
                    {
                        HWRC = 0x06
                    }
                }
                ElseIf ((NSTR == "BIOS Revision"))
                {
                    HWRC = One
                }
                ElseIf ((NSTR == "Batt_LTemp"))
                {
                    HWRC = One
                }
                ElseIf ((NSTR == "Keyboard Layout"))
                {
                    HWRC = One
                }
                ElseIf ((NSTR == "HW Platform Cycle"))
                {
                    HWRC = One
                }
                ElseIf ((NSTR == "Network Boot TFTP Window Size"))
                {
                    Local6 = GECI (NSTR)
                    \_SB.ECWC (Local6, VSIZ, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "UEFI Boot Order"))
                {
                    Local7 = PBOS (VBUF, Local2)
                    \_SB.ECWC (Zero, 0x05, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "Ignore Auto Resume"))
                {
                    If ((VSTR == "Yes"))
                    {
                        BVAL = One
                    }

                    If ((VSTR == "No"))
                    {
                        BVAL = Zero
                    }

                    HWRC = Zero
                }
                ElseIf ((NSTR == "TPM Solution"))
                {
                    Local6 = GECI (NSTR)
                    If ((VSTR == "Pluton"))
                    {
                        BVAL = One
                    }

                    If ((VSTR == "SoC"))
                    {
                        BVAL = Zero
                    }

                    \_SB.ECWC (Local6, One, Local7)
                    If ((Zero == \_SB.EPST))
                    {
                        HWRC = Zero
                    }
                }
                ElseIf ((NSTR == "SCPC capable"))
                {
                    HWRC = One
                }
                ElseIf ((NSTR == "Speaker ID"))
                {
                    HWRC = One
                }
            }

            Method (WMBA, 3, NotSerialized)
            {
                Acquire (MSMT, 0xFFFF)
                Name (DBUF, Buffer (0x0400){})
                If ((Arg1 == One))
                {
                    Name (CSTL, Zero)
                    Name (VSTL, Zero)
                    Name (PSTL, Zero)
                    Local0 = Arg2
                    Local1 = SizeOf (Local0)
                    Local4 = DerefOf (Local0 [Zero])
                    Local2 = 0x02
                    Local3 = Zero
                    Local5 = Zero
                    While ((Local3 != Local4))
                    {
                        DBUF [Local5] = DerefOf (Local0 [Local2])
                        Local2 += 0x02
                        Local3 += 0x02
                        Local5++
                        CSTL++
                    }

                    DBUF [Local5] = Zero
                    If ((CSTL > Zero))
                    {
                        CSTL++
                    }

                    Local3 = Zero
                    CreateWordField (Local0, Local2, VASI)
                    Local4 = VASI /* \_SB_.WMID.WMBA.VASI */
                    Local2 += 0x02
                    Local5++
                    While ((Local3 != Local4))
                    {
                        DBUF [Local5] = DerefOf (Local0 [Local2])
                        Local2 += 0x02
                        Local3 += 0x02
                        Local5++
                        VSTL++
                    }

                    DBUF [Local5] = Zero
                    If ((VSTL > Zero))
                    {
                        VSTL++
                    }

                    Local3 = Zero
                    Local4 = DerefOf (Local0 [Local2])
                    PSTL = Local4
                    Local2 += 0x02
                    Local5++
                    While ((Local3 != Local4))
                    {
                        If ((Local5 >= 0x0400))
                        {
                            Release (MSMT)
                            Return (0x02)
                        }

                        DBUF [Local5] = DerefOf (Local0 [Local2])
                        Local2 += 0x02
                        Local3 += 0x02
                        Local5++
                        PSTL++
                    }

                    DBUF [Local5] = Zero
                    EHWB = DBUF /* \_SB_.WMID.WMBA.DBUF */
                    If ((PSTL > Zero))
                    {
                        PSTL++
                    }

                    HWRC = 0x02
                    If ((IWOA == One))
                    {
                        SECV (DBUF, CSTL, VSTL, PSTL)
                    }
                    Else
                    {
                    }

                    Release (MSMT)
                    Return (HWRC) /* \_SB_.WMID.HWRC */
                }
                ElseIf ((Arg1 == 0x02))
                {
                    Local0 = Arg2
                    Local4 = DerefOf (Local0 [Zero])
                    Local2 = 0x02
                    Local3 = Zero
                    Local5 = Zero
                    While ((Local3 != Local4))
                    {
                        If ((Local5 >= 0x0400))
                        {
                            Release (MSMT)
                            Return (0x02)
                        }

                        DBUF [Local5] = DerefOf (Local0 [Local2])
                        Local2 += 0x02
                        Local3 += 0x02
                        Local5++
                    }

                    DBUF [Local5] = Zero
                    EHWB = DBUF /* \_SB_.WMID.WMBA.DBUF */
                    HWRC = 0x02
                    If ((IWOA == One))
                    {
                        Local7 = Buffer (0x0400){}
                        CreateByteField (Local7, Zero, SDFT)
                        SDFT = One
                        \_SB.ECWC (0xA0, One, Local7)
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    Else
                    {
                    }

                    Release (MSMT)
                    Return (HWRC) /* \_SB_.WMID.HWRC */
                }

                Release (MSMT)
                Return (One)
            }

            Method (WQBC, 1, NotSerialized)
            {
                Acquire (MSMT, 0xFFFF)
                Local0 = Arg0
                EHWB = Local0
                HWRC = 0x02
                If ((IWOA == One))
                {
                    Local1 = BPKG (Local0)
                    Local2 = DerefOf (Local1 [Zero])
                    If ((Local2 == "Name"))
                    {
                        Local1 [0x06] = Arg0
                        Release (MSMT)
                        Return (Local1)
                    }

                    Local7 = Buffer (0x0400){}
                    CreateByteField (Local7, Zero, BVAL)
                    CreateWordField (Local7, Zero, WVAL)
                    CreateDWordField (Local7, Zero, DWVL)
                    CreateQWordField (Local7, Zero, QWVL)
                    If ((Local2 == "Manufacturing Programming Mode"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "*Unlock,  Lock"
                                Local1 [0x0A] = "Unlock"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = " Unlock, *Lock"
                                Local1 [0x0A] = "Lock"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Network Boot"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = " Enable, *Disable"
                                Local1 [0x0A] = "Disable"
                                \_SB.WMID.HF01 &= 0xFFFFFFFE
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Enable,  Disable"
                                Local1 [0x0A] = "Enable"
                                \_SB.WMID.HF01 |= One
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Secure Boot"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = " Enable, *Disable"
                                Local1 [0x0A] = "Disable"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Enable,  Disable"
                                Local1 [0x0A] = "Enable"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Network Boot Protocol"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "IPv4 (UEFI)"
                                Local1 [0x0A] = "IPv4 (UEFI)"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "IPv6 (UEFI)"
                                Local1 [0x0A] = "IPv6 (UEFI)"
                            }

                            If ((ToInteger (BVAL) == 0x02))
                            {
                                Local1 [One] = "IPv4+IPv6 (UEFI)"
                                Local1 [0x0A] = "IPv4+IPv6 (UEFI)"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Fan Always On"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = " Enable, *Disable"
                                Local1 [0x0A] = "Disable"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Enable,  Disable"
                                Local1 [0x0A] = "Enable"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Language"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "English"
                                Local1 [0x0A] = "English"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "french"
                                Local1 [0x0A] = "french"
                            }

                            If ((ToInteger (BVAL) == 0x02))
                            {
                                Local1 [One] = "Spanish"
                                Local1 [0x0A] = "Spanish"
                            }

                            If ((ToInteger (BVAL) == 0x03))
                            {
                                Local1 [One] = "Traditional Chinese"
                                Local1 [0x0A] = "Traditional Chinese"
                            }

                            If ((ToInteger (BVAL) == 0x04))
                            {
                                Local1 [One] = "Simplified  Chinese"
                                Local1 [0x0A] = "Simplified  Chinese"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "POST Hotkey Delay (sec)"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "0"
                                Local1 [0x0A] = "0"
                            }

                            If ((ToInteger (BVAL) == 0x05))
                            {
                                Local1 [One] = "5"
                                Local1 [0x0A] = "5"
                            }

                            If ((ToInteger (BVAL) == 0x0A))
                            {
                                Local1 [One] = "10"
                                Local1 [0x0A] = "10"
                            }

                            If ((ToInteger (BVAL) == 0x0F))
                            {
                                Local1 [One] = "15"
                                Local1 [0x0A] = "15"
                            }

                            If ((ToInteger (BVAL) == 0x14))
                            {
                                Local1 [One] = "20"
                                Local1 [0x0A] = "20"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "TPM Version"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == 0x82))
                            {
                                Local1 [One] = "d1.2, d2.0, *f2.0"
                                Local1 [0x0A] = "f2.0"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*d1.2, d2.0, f2.0"
                                Local1 [0x0A] = "d1.2"
                            }

                            If ((ToInteger (BVAL) == 0x02))
                            {
                                Local1 [One] = "d1.2, *d2.0, f2.0"
                                Local1 [0x0A] = "d2.0"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Secure Boot Keys"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "Clear"
                                Local1 [0x0A] = "Clear"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "HP"
                                Local1 [0x0A] = "HP"
                            }

                            If ((ToInteger (BVAL) == 0x02))
                            {
                                Local1 [One] = "MSFT"
                                Local1 [0x0A] = "MSFT"
                            }

                            If ((ToInteger (BVAL) == 0x03))
                            {
                                Local1 [One] = "Custom"
                                Local1 [0x0A] = "Custom"
                            }
                        }

                        HWRC = Zero
                        If ((ToInteger (MPMM) == One))
                        {
                            HWRC = One
                        }
                    }
                    ElseIf ((Local2 == "TPM Device"))
                    {
                        Local1 [One] = "*Available, Hidden"
                        Local1 [0x0A] = "Available"
                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "TPM State"))
                    {
                        Local1 [One] = "*Enable,  Disable"
                        Local1 [0x0A] = "Enable"
                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Clear TPM"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "Yes, *No"
                                Local1 [0x0A] = "No"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Yes, No"
                                Local1 [0x0A] = "Yes"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "TPM Reset to Factory Defaults"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "Yes, *No"
                                Local1 [0x0A] = "No"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Yes, No"
                                Local1 [0x0A] = "Yes"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Restore Security Defaults"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "Yes, *No"
                                Local1 [0x0A] = "No"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Yes, No"
                                Local1 [0x0A] = "Yes"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "PIN Load Defaults"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "Yes, *No"
                                Local1 [0x0A] = "No"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Yes, No"
                                Local1 [0x0A] = "Yes"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "USB Boot"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "*Enable,  Disable"
                                Local1 [0x0A] = "Enable"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = " Enable, *Disable"
                                Local1 [0x0A] = "Disable"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Power on When Lid is opened"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = " Enable, *Disable"
                                Local1 [0x0A] = "Disable"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Enable,  Disable"
                                Local1 [0x0A] = "Enable"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Adaptive Battery Extender"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Enable,  Disable"
                                Local1 [0x0A] = "Enable"
                            }

                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = " Enable, *Disable"
                                Local1 [0x0A] = "Disable"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Adaptive Battery Extender Status"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Activated, Not Activated"
                                Local1 [0x0A] = "Activated"
                            }

                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "Activated, *Not Activated"
                                Local1 [0x0A] = "Not Activated"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Keyboard Type"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "*Non-Japanese, Japanese Keyboard, New EMEA UK KB (US2), New BRZL KB (UK2), New BRZL KB (US3), US4 (LA KB), US5 (Europe KB), US6 (Korea KB), US7 (Brazil KB)"
                                Local1 [0x0A] = "Non-Japanese"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "Non-Japanese, *Japanese Keyboard, New EMEA UK KB (US2), New BRZL KB (UK2), New BRZL KB (US3), US4 (LA KB), US5 (Europe KB), US6 (Korea KB), US7 (Brazil KB)"
                                Local1 [0x0A] = "Japanese Keyboard"
                            }

                            If ((ToInteger (BVAL) == 0x02))
                            {
                                Local1 [One] = "Non-Japanese, Japanese Keyboard, *New EMEA UK KB (US2), New BRZL KB (UK2), New BRZL KB (US3), US4 (LA KB), US5 (Europe KB), US6 (Korea KB), US7 (Brazil KB)"
                                Local1 [0x0A] = "New EMEA UK KB (US2)"
                            }

                            If ((ToInteger (BVAL) == 0x03))
                            {
                                Local1 [One] = "Non-Japanese, Japanese Keyboard, New EMEA UK KB (US2), *New BRZL KB (UK2), New BRZL KB (US3), US4 (LA KB), US5 (Europe KB), US6 (Korea KB), US7 (Brazil KB)"
                                Local1 [0x0A] = "New BRZL KB (UK2)"
                            }

                            If ((ToInteger (BVAL) == 0x04))
                            {
                                Local1 [One] = "Non-Japanese, Japanese Keyboard, New EMEA UK KB (US2), New BRZL KB (UK2), *New BRZL KB (US3), US4 (LA KB), US5 (Europe KB), US6 (Korea KB), US7 (Brazil KB)"
                                Local1 [0x0A] = "New BRZL KB (US3)"
                            }

                            If ((ToInteger (BVAL) == 0x05))
                            {
                                Local1 [One] = "Non-Japanese, Japanese Keyboard, New EMEA UK KB (US2), New BRZL KB (UK2), New BRZL KB (US3), *US4 (LA KB), US5 (Europe KB), US6 (Korea KB), US7 (Brazil KB)"
                                Local1 [0x0A] = "US4 (LA KB)"
                            }

                            If ((ToInteger (BVAL) == 0x06))
                            {
                                Local1 [One] = "Non-Japanese, Japanese Keyboard, New EMEA UK KB (US2), New BRZL KB (UK2), New BRZL KB (US3), US4 (LA KB), *US5 (Europe KB), US6 (Korea KB), US7 (Brazil KB)"
                                Local1 [0x0A] = "US5 (Europe KB)"
                            }

                            If ((ToInteger (BVAL) == 0x07))
                            {
                                Local1 [One] = "Non-Japanese, Japanese Keyboard, New EMEA UK KB (US2), New BRZL KB (UK2), New BRZL KB (US3), US4 (LA KB), US5 (Europe KB), *US6 (Korea KB), US7 (Brazil KB)"
                                Local1 [0x0A] = "US6 (Korea KB)"
                            }

                            If ((ToInteger (BVAL) == 0x08))
                            {
                                Local1 [One] = "Non-Japanese, Japanese Keyboard, New EMEA UK KB (US2), New BRZL KB (UK2), New BRZL KB (US3), US4 (LA KB), US5 (Europe KB), US6 (Korea KB), *US7 (Brazil KB)"
                                Local1 [0x0A] = "US7 (Brazil KB)"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "AOS Deployment AddOn"))
                    {
                        Local1 [One] = " Enable, *Disable"
                        Local1 [0x0A] = "Disable"
                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Battery Remaining Time"))
                    {
                        Local1 [One] = "*Enable,  Disable"
                        Local1 [0x0A] = "Enable"
                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "OOBE"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "Yes, *No"
                                Local1 [0x0A] = "No"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Yes, No"
                                Local1 [0x0A] = "Yes"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Clear Event Log"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "Yes, *No"
                                Local1 [0x0A] = "No"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Yes, No"
                                Local1 [0x0A] = "Yes"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Reflow Process"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "Yes, *No"
                                Local1 [0x0A] = "No"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Yes, No"
                                Local1 [0x0A] = "Yes"
                            }
                        }

                        HWRC = Zero
                        If ((ToInteger (MPMM) == One))
                        {
                            HWRC = One
                        }
                    }
                    ElseIf ((Local2 == "Clear BOD"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "Yes, *No"
                                Local1 [0x0A] = "No"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Yes, No"
                                Local1 [0x0A] = "Yes"
                            }
                        }

                        HWRC = Zero
                        If ((ToInteger (MPMM) == One))
                        {
                            HWRC = One
                        }
                    }
                    ElseIf ((Local2 == "Launch Hotkeys without Fn Keypress"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "*Disable, Enable, Auto"
                                Local1 [0x0A] = "Disable"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "Disable, *Enable, Auto"
                                Local1 [0x0A] = "Enable"
                            }

                            If ((ToInteger (BVAL) == 0x02))
                            {
                                Local1 [One] = "Disable, Enable, *Auto"
                                Local1 [0x0A] = "Auto"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Ignore Auto Resume"))
                    {
                        Local1 [One] = "Yes, *No"
                        Local1 [0x0A] = "No"
                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "TPM Solution"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Pluton, SoC"
                                Local1 [0x0A] = "Pluton"
                            }

                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "Pluton, *SoC"
                                Local1 [0x0A] = "SoC"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "SCPC capable"))
                    {
                        Local1 [One] = "*Yes, No"
                        Local1 [0x0A] = "Yes"
                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "Enable MS UEFI CA key"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "Yes, *No"
                                Local1 [0x0A] = "No"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Yes, No"
                                Local1 [0x0A] = "Yes"
                            }
                        }

                        HWRC = Zero
                    }
                    ElseIf ((Local2 == "MSFT Copilot Key"))
                    {
                        Local6 = GECI (Local2)
                        Local7 = Buffer (0x0400){}
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local7 = EHWB /* \_SB_.WMID.EHWB */
                            If ((ToInteger (BVAL) == Zero))
                            {
                                Local1 [One] = "Yes, *No"
                                Local1 [0x0A] = "No"
                            }

                            If ((ToInteger (BVAL) == One))
                            {
                                Local1 [One] = "*Yes, No"
                                Local1 [0x0A] = "Yes"
                            }
                        }

                        HWRC = Zero
                    }

                    If ((Zero != HWRC))
                    {
                        CopyObject (BPKG (0xFFFF), Local1)
                        HWRC = Zero
                    }

                    Local1 [0x06] = Arg0
                    Release (MSMT)
                    Return (Local1)
                }
                ElseIf ((Zero == HWRC))
                {
                    Local1 = Buffer (0x0400){}
                    Local1 = EHWB /* \_SB_.WMID.EHWB */
                    CreateWordField (Local1, Zero, NSTL)
                    CreateField (Local1, 0x10, (0x08 * NSTL), NSTR)
                    Local0 = (0x02 + NSTL) /* \_SB_.WMID.WQBC.NSTL */
                    CreateWordField (Local1, Local0, IROV)
                    Local0 += 0x04
                    CreateWordField (Local1, Local0, VSTL)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * VSTL), VSTR)
                    Local0 += VSTL /* \_SB_.WMID.WQBC.VSTL */
                    CreateWordField (Local1, Local0, CSTL)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * CSTL), CSTR)
                    Local0 += CSTL /* \_SB_.WMID.WQBC.CSTL */
                    CreateWordField (Local1, Local0, NOPV)
                    Local0 += 0x02
                    CreateWordField (Local1, Local0, PBL1)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL1), PBV1)
                    Local0 += PBL1
                    CreateWordField (Local1, Local0, PBL2)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL2), PBV2)
                    Local0 += PBL2
                    CreateWordField (Local1, Local0, PBL3)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL3), PBV3)
                    Local0 += PBL3
                    CreateWordField (Local1, Local0, PBL4)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL4), PBV4)
                    Local0 += PBL4
                    CreateWordField (Local1, Local0, PBL5)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL5), PBV5)
                    Local0 += PBL5
                    CreateWordField (Local1, Local0, PBL6)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL6), PBV6)
                    Local0 += PBL6
                    CreateWordField (Local1, Local0, PBL7)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL7), PBV7)
                    Local0 += PBL7
                    CreateWordField (Local1, Local0, PBL8)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL8), PBV8)
                    Local0 += PBL8
                    CreateWordField (Local1, Local0, PBL9)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL9), PBV9)
                    Local0 += PBL9
                    CreateWordField (Local1, Local0, PL10)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PL10), PV10)
                    Local0 += PL10
                    CreateWordField (Local1, Local0, PL11)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PL11), PV11)
                    Local0 += PL11
                    Name (BERP, Package (0x18)
                    {
                        "Name", 
                        "Value", 
                        "System Configuration", 
                        Zero, 
                        One, 
                        Zero, 
                        Zero, 
                        One, 
                        " ", 
                        Zero, 
                        "Enable", 
                        0x0C, 
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
                        " "
                    })
                    Name (BF2S, Buffer (0x9B){})
                    Name (STRB, "                                                                                                                                                            ")
                    BF2S = NSTR /* \_SB_.WMID.WQBC.NSTR */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [Zero] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BERP [0x03] = IROV /* \_SB_.WMID.WQBC.IROV */
                    If (STCP (BF2S, "OOBE", 0x04))
                    {
                        BERP [0x04] = Zero
                    }

                    If (STCP (BF2S, "Clear Event Log", 0x0F))
                    {
                        BERP [0x04] = Zero
                    }

                    BF2S = VSTR /* \_SB_.WMID.WQBC.VSTR */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [One] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = CSTR /* \_SB_.WMID.WQBC.CSTR */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x0A] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV1 /* \_SB_.WMID.WQBC.PBV1 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x0C] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV2 /* \_SB_.WMID.WQBC.PBV2 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x0D] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV3 /* \_SB_.WMID.WQBC.PBV3 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x0E] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV4 /* \_SB_.WMID.WQBC.PBV4 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x0F] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV5 /* \_SB_.WMID.WQBC.PBV5 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x10] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV6 /* \_SB_.WMID.WQBC.PBV6 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x11] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV7 /* \_SB_.WMID.WQBC.PBV7 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x12] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV8 /* \_SB_.WMID.WQBC.PBV8 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x13] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV9 /* \_SB_.WMID.WQBC.PBV9 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x14] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PV10 /* \_SB_.WMID.WQBC.PV10 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x15] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PV11 /* \_SB_.WMID.WQBC.PV11 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x16] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BERP [0x06] = Arg0
                    Release (MSMT)
                    Return (BERP) /* \_SB_.WMID.WQBC.BERP */
                }

                Release (MSMT)
                Return (Package (0x18)
                {
                    "", 
                    "", 
                    "", 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    One, 
                    " ", 
                    Zero, 
                    " ", 
                    0x0C, 
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
                })
            }

            Method (ED2S, 0, NotSerialized)
            {
                Local1 = EHWB /* \_SB_.WMID.EHWB */
                If ((Zero != \_SB.ERDL))
                {
                    Name (TDLN, Zero)
                    TDLN = (One + \_SB.ERDL)
                    Name (TSBF, Buffer (TDLN){})
                    CreateField (Local1, Zero, (0x08 * \_SB.ERDL), TVBF)
                    CreateField (TSBF, Zero, (0x08 * \_SB.ERDL), TVB2)
                    TVB2 = TVBF /* \_SB_.WMID.ED2S.TVBF */
                    Local2 = ToString (TSBF, TDLN)
                    Return (Local2)
                }

                Local2 = ""
                Return (Local2)
            }

            Method (WQBD, 1, NotSerialized)
            {
                Acquire (MSMT, 0xFFFF)
                Local0 = Arg0
                EHWB = Local0
                HWRC = 0x02
                If ((IWOA == One))
                {
                    Local1 = FPKG (Local0)
                    Local2 = DerefOf (Local1 [Zero])
                    If ((SizeOf (Local2) == Zero))
                    {
                        Local1 [0x06] = Arg0
                        Release (MSMT)
                        Return (Local1)
                    }

                    If ((Local2 == "Feature Byte"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        Local1 [One] = ED2S ()
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "Build ID"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        Local1 [One] = ED2S ()
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "Product Number"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local1 [One] = ED2S ()
                        }

                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "Serial Number"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        Local1 [One] = ED2S ()
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "Product Name"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local1 [One] = ED2S ()
                        }

                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "UUID"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        Local1 [One] = ED2S ()
                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "System Board CT Number"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local1 [One] = ED2S ()
                        }

                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "MS Digital Marker"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        If ((ToInteger (FBAQ) == One))
                        {
                            Local1 [One] = ED2S ()
                        }
                        Else
                        {
                            Local1 [One] = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                            HWRC = Zero
                        }

                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "Asset Tag"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local1 [One] = ED2S ()
                        }

                        If (((\_SB.WMID.HF01 & 0x02) == 0x02))
                        {
                            Local1 [0x04] = One
                        }
                        Else
                        {
                            Local1 [0x04] = Zero
                        }

                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "System Board ID"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local1 [One] = ED2S ()
                        }
                        Else
                        {
                            Local1 [One] = "8CBE"
                        }

                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "System Family"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local1 [One] = ED2S ()
                        }

                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "Preinstall OS Version"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local1 [One] = ED2S ()
                        }

                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "PIN Process Cycle"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local1 [One] = ED2S ()
                        }

                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "BIOS Revision"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local1 [One] = ED2S ()
                        }
                        Else
                        {
                            Local1 [One] = "F.09"
                        }

                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "Batt_LTemp"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local1 [One] = ED2S ()
                        }
                        Else
                        {
                            Local1 [One] = "01 00"
                        }

                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "Keyboard Layout"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local1 [One] = ED2S ()
                        }

                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "HW Platform Cycle"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local1 [One] = ED2S ()
                        }
                        Else
                        {
                            Local1 [One] = "24C2"
                        }

                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "Network Boot TFTP Window Size"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local1 [One] = ED2S ()
                        }

                        If (((\_SB.WMID.HF01 & One) == One))
                        {
                            Local1 [0x04] = One
                        }
                        Else
                        {
                            Local1 [0x04] = Zero
                        }

                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }
                    ElseIf ((Local2 == "Speaker ID"))
                    {
                        Local6 = GECI (Local2)
                        \_SB.ECRC (Local6)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local1 [One] = ED2S ()
                        }
                        Else
                        {
                            Local1 [One] = ""
                        }

                        If ((Zero == \_SB.EPST))
                        {
                            HWRC = Zero
                        }
                    }

                    Local1 [0x06] = Arg0
                    Release (MSMT)
                    Return (Local1)
                }
                ElseIf ((Zero == HWRC))
                {
                    Local1 = Buffer (0x0400){}
                    Local1 = EHWB /* \_SB_.WMID.EHWB */
                    CreateWordField (Local1, Zero, NSTL)
                    CreateField (Local1, 0x10, (0x08 * NSTL), NSTR)
                    Local0 = (0x02 + NSTL) /* \_SB_.WMID.WQBD.NSTL */
                    CreateWordField (Local1, Local0, IROV)
                    Local0 += 0x04
                    CreateWordField (Local1, Local0, VSTL)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * VSTL), VSTR)
                    Name (BERP, Package (0x0C)
                    {
                        "", 
                        "", 
                        "Path", 
                        Zero, 
                        One, 
                        Zero, 
                        Zero, 
                        One, 
                        " ", 
                        Zero, 
                        Zero, 
                        0x0400
                    })
                    If ((NSTL != Zero))
                    {
                        BERP [Zero] = ToString (NSTR, NSTL)
                    }

                    BERP [0x03] = IROV /* \_SB_.WMID.WQBD.IROV */
                    If ((VSTL != Zero))
                    {
                        Name (CONL, Zero)
                        Local3 = Zero
                        Local4 = Zero
                        Local6 = Zero
                        Divide (VSTL, 0xC8, Local7, Local6)
                        While ((Local4 <= Local6))
                        {
                            If ((Local4 == Local6))
                            {
                                If ((Local7 == Zero))
                                {
                                    Break
                                }
                                Else
                                {
                                    CONL = Local7
                                }
                            }
                            Else
                            {
                                CONL = 0xC8
                            }

                            CopyObject (CPST (VSTR, Local3, CONL), Local0)
                            Concatenate (DerefOf (BERP [One]), ToString (Local0, CONL), BERP [
                                One])
                            Local4++
                            Local3 = (Local4 * 0xC8)
                        }
                    }

                    BERP [0x06] = Arg0
                    Release (MSMT)
                    Return (BERP) /* \_SB_.WMID.WQBD.BERP */
                }
                Else
                {
                    Release (MSMT)
                    Return (Package (0x0C)
                    {
                        "", 
                        "", 
                        "", 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        " ", 
                        Zero, 
                        Zero, 
                        Zero
                    })
                }
            }

            Method (CBOS, 1, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (0x02)
                    {
                        Local0 = "OS Boot Manager"
                    }
                    Case (0x03)
                    {
                        Local0 = "Internal CD/DVD ROM Drive"
                    }
                    Case (0x07)
                    {
                        Local0 = "USB Diskette on Key/USB Hard Disk"
                    }
                    Case (0x08)
                    {
                        Local0 = "USB CD/DVD ROM Drive"
                    }
                    Case (0x80)
                    {
                        Local0 = "Network Adapter"
                    }
                    Default
                    {
                        Local0 = ""
                    }

                }

                Return (Local0)
            }

            Method (WQBE, 1, NotSerialized)
            {
                Acquire (MSMT, 0xFFFF)
                EHWB = Zero
                Local0 = Arg0
                EHWB = Local0
                HWRC = 0x02
                If ((IWOA == One))
                {
                    If ((Zero == Local0))
                    {
                        Name (UODR, Package (0x13)
                        {
                            "UEFI Boot Order", 
                            "", 
                            "Path", 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            One, 
                            " ", 
                            Zero, 
                            0x08, 
                            " ", 
                            " ", 
                            " ", 
                            " ", 
                            " ", 
                            " ", 
                            " ", 
                            " "
                        })
                        \_SB.ECRC (Zero)
                        If ((Zero != \_SB.ERDL))
                        {
                            Local2 = EHWB /* \_SB_.WMID.EHWB */
                            CreateByteField (Local2, Zero, UBO1)
                            CreateByteField (Local2, One, UBO2)
                            CreateByteField (Local2, 0x02, UBO3)
                            CreateByteField (Local2, 0x03, UBO4)
                            CreateByteField (Local2, 0x04, UBO5)
                            UODR [0x0B] = CBOS (ToInteger (UBO1))
                            UODR [0x0C] = CBOS (ToInteger (UBO2))
                            UODR [0x0D] = CBOS (ToInteger (UBO3))
                            UODR [0x0E] = CBOS (ToInteger (UBO4))
                            UODR [0x0F] = CBOS (ToInteger (UBO5))
                            Concatenate (DerefOf (UODR [One]), DerefOf (UODR [0x0B]), 
                                UODR [One])
                            Concatenate (DerefOf (UODR [One]), ",", UODR [One])
                            Concatenate (DerefOf (UODR [One]), DerefOf (UODR [0x0C]), 
                                UODR [One])
                            Concatenate (DerefOf (UODR [One]), ",", UODR [One])
                            Concatenate (DerefOf (UODR [One]), DerefOf (UODR [0x0D]), 
                                UODR [One])
                            Concatenate (DerefOf (UODR [One]), ",", UODR [One])
                            Concatenate (DerefOf (UODR [One]), DerefOf (UODR [0x0E]), 
                                UODR [One])
                            Concatenate (DerefOf (UODR [One]), ",", UODR [One])
                            Concatenate (DerefOf (UODR [One]), DerefOf (UODR [0x0F]), 
                                UODR [One])
                            HWRC = Zero
                            UODR [0x06] = Arg0
                        }

                        If ((Zero != \_SB.EPST))
                        {
                            HWRC = 0x02
                        }

                        Release (MSMT)
                        Return (UODR) /* \_SB_.WMID.WQBE.UODR */
                    }
                }
                ElseIf ((Zero == HWRC))
                {
                    Name (BPTR, Zero)
                    Name (BF2S, Buffer (0x01F4){})
                    Name (STB1, "                                                                                                                                                                                                                                                                                                                                                                                                                ")
                    Name (STB2, "                                                                                                                                                                                                                                                                                                                                                                                                                ")
                    Concatenate (STB1, STB2, STB1) /* \_SB_.WMID.WQBE.STB1 */
                    Local1 = Buffer (0x0400){}
                    Local1 = EHWB /* \_SB_.WMID.EHWB */
                    CreateByteField (Local1, BPTR, CNSL)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * CNSL), CNST)
                    BPTR += CNSL /* \_SB_.WMID.WQBE.CNSL */
                    CreateWordField (Local1, BPTR, CVSL)
                    BPTR++
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * CVSL), CVST)
                    BPTR += CVSL /* \_SB_.WMID.WQBE.CVSL */
                    CreateByteField (Local1, BPTR, TSL1)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL1), TSR1)
                    BPTR += TSL1 /* \_SB_.WMID.WQBE.TSL1 */
                    CreateByteField (Local1, BPTR, TSL2)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL2), TSR2)
                    BPTR += TSL2 /* \_SB_.WMID.WQBE.TSL2 */
                    CreateByteField (Local1, BPTR, TSL3)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL3), TSR3)
                    BPTR += TSL3 /* \_SB_.WMID.WQBE.TSL3 */
                    CreateByteField (Local1, BPTR, TSL4)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL4), TSR4)
                    BPTR += TSL4 /* \_SB_.WMID.WQBE.TSL4 */
                    CreateByteField (Local1, BPTR, TSL5)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL5), TSR5)
                    BPTR += TSL5 /* \_SB_.WMID.WQBE.TSL5 */
                    CreateByteField (Local1, BPTR, TSL6)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL6), TSR6)
                    BPTR += TSL6 /* \_SB_.WMID.WQBE.TSL6 */
                    CreateByteField (Local1, BPTR, TSL7)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL7), TSR7)
                    BPTR += TSL7 /* \_SB_.WMID.WQBE.TSL7 */
                    CreateByteField (Local1, BPTR, TSL8)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL8), TSR8)
                    BPTR += TSL8 /* \_SB_.WMID.WQBE.TSL8 */
                    Name (OLRP, Package (0x13)
                    {
                        "Name", 
                        "Value", 
                        "Path", 
                        Zero, 
                        One, 
                        Zero, 
                        Zero, 
                        One, 
                        " ", 
                        Zero, 
                        0x08, 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " "
                    })
                    BF2S = CNST /* \_SB_.WMID.WQBE.CNST */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [Zero] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = CVST /* \_SB_.WMID.WQBE.CVST */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [One] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR1 /* \_SB_.WMID.WQBE.TSR1 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0B] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR2 /* \_SB_.WMID.WQBE.TSR2 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0C] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR3 /* \_SB_.WMID.WQBE.TSR3 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0D] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR4 /* \_SB_.WMID.WQBE.TSR4 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0E] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR5 /* \_SB_.WMID.WQBE.TSR5 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0F] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR6 /* \_SB_.WMID.WQBE.TSR6 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x10] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR7 /* \_SB_.WMID.WQBE.TSR7 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x11] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR8 /* \_SB_.WMID.WQBE.TSR8 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x12] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    OLRP [0x06] = Arg0
                    Release (MSMT)
                    Return (OLRP) /* \_SB_.WMID.WQBE.OLRP */
                }

                Release (MSMT)
                Return (HWRC) /* \_SB_.WMID.HWRC */
            }

            Method (WQBF, 1, NotSerialized)
            {
                Acquire (MSMT, 0xFFFF)
                Local0 = Arg0
                If ((Local0 == Zero))
                {
                    HWBF = Local0
                    HWRC = 0x02
                    HWRC = Zero
                    If ((Zero == HWRC))
                    {
                        Local0 = Buffer (0x80){}
                        Local0 = HWBF /* \_SB_.WMID.HWBF */
                        CreateDWordField (Local0, Zero, PSET)
                        Name (PWDP, Package (0x10)
                        {
                            "Setup Password", 
                            " ", 
                            "Path", 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            One, 
                            " ", 
                            Zero, 
                            One, 
                            0x10, 
                            "utf-16", 
                            "", 
                            Zero, 
                            One
                        })
                        Name (BF2S, Buffer (0x46){})
                        Name (STRB, "                                                                      ")
                        PWDP [0x0E] = PSET /* \_SB_.WMID.WQBF.PSET */
                        PWDP [0x06] = Arg0
                        Release (MSMT)
                        Return (PWDP) /* \_SB_.WMID.WQBF.PWDP */
                    }
                    Else
                    {
                        Release (MSMT)
                        Return (Package (0x10)
                        {
                            "Setup Password", 
                            " ", 
                            "Path", 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            One, 
                            " ", 
                            Zero, 
                            One, 
                            0x10, 
                            "utf-16", 
                            "", 
                            One, 
                            One
                        })
                    }
                }

                Release (MSMT)
                Return (Package (0x10)
                {
                    "", 
                    "", 
                    "", 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    One, 
                    "0", 
                    Zero, 
                    Zero, 
                    Zero, 
                    "", 
                    "", 
                    Zero, 
                    Zero
                })
            }

            Method (WQBG, 0, NotSerialized)
            {
                Acquire (MSMT, 0xFFFF)
                Release (MSMT)
            }

            Method (WQBH, 0, NotSerialized)
            {
                Acquire (MSMT, 0xFFFF)
                Release (MSMT)
            }

            Method (WQBI, 0, NotSerialized)
            {
                Acquire (MSMT, 0xFFFF)
                Release (MSMT)
            }
        }
    }
}

