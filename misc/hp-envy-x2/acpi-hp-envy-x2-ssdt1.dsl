/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180105 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt1.dat, Tue Feb  5 19:29:16 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001C7F (7295)
 *     Revision         0x02
 *     Checksum         0xB9
 *     OEM ID           "HP    "
 *     OEM Table ID     "84E1"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 2, "HP    ", "84E1", 0x00000001)
{
    /*
     * iASL Warning: There was 1 external control method found during
     * disassembly, but only 0 were resolved (1 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.GIO0, DeviceObj)
    External (_SB_.I2C6, DeviceObj)
    External (_SB_.I2C7, DeviceObj)
    External (_SB_.PSUB, UnknownObj)
    External (_SB_.TZ50, UnknownObj)
    External (_SB_.UBTC, UnknownObj)
    External (_SB_.UBTC.CCI0, UnknownObj)
    External (_SB_.UBTC.CCI1, UnknownObj)
    External (_SB_.UBTC.CCI2, UnknownObj)
    External (_SB_.UBTC.CCI3, UnknownObj)
    External (_SB_.UBTC.MGI0, UnknownObj)
    External (_SB_.UBTC.MGI1, UnknownObj)
    External (_SB_.UBTC.MGI2, UnknownObj)
    External (_SB_.UBTC.MGI3, UnknownObj)
    External (_SB_.UBTC.MGI4, UnknownObj)
    External (_SB_.UBTC.MGI5, UnknownObj)
    External (_SB_.UBTC.MGI6, UnknownObj)
    External (_SB_.UBTC.MGI7, UnknownObj)
    External (_SB_.UBTC.MGI8, UnknownObj)
    External (_SB_.UBTC.MGI9, UnknownObj)
    External (_SB_.UBTC.MGIA, UnknownObj)
    External (_SB_.UBTC.MGIB, UnknownObj)
    External (_SB_.UBTC.MGIC, UnknownObj)
    External (_SB_.UBTC.MGID, UnknownObj)
    External (_SB_.UBTC.MGIE, UnknownObj)
    External (_SB_.UBTC.MGIF, UnknownObj)
    External (_SB_.WMID.BCSE, UnknownObj)
    External (_SB_.WMID.GWEV, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (_SB_.WMID.MFLG, UnknownObj)

    Scope (\_SB)
    {
        OperationRegion (OGNV, SystemMemory, 0x9D77D018, 0x0100)
        Field (OGNV, ByteAcc, NoLock, Preserve)
        {
            BVER,   8, 
            PNID,   8, 
            DOCS,   1, 
            THMD,   1, 
            RSVD,   6, 
            QCAS,   8
        }
    }

    Scope (\_SB.I2C6)
    {
        Device (ECKB)
        {
            Name (_HID, "QTEC0001")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C7, 
                \_SB.GIO0
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x003A, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2C6",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0079
                        }
                })
                Return (RBUF) /* \_SB_.I2C6.ECKB._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = 0x02
                Acquire (\_SB.MUT0, 0xFFFF)
                If ((\_SB.ECOK == One))
                {
                    Sleep (0x0D)
                    \_SB.I2C7.BSTA = Zero
                    \_SB.I2C7.BLEN = One
                    \_SB.I2C7.DAT1 = 0xF6
                    \_SB.I2C7.APIR = \_SB.I2C7.BUF1
                    \_SB.I2C7.BUFF = \_SB.I2C7.RB01
                    If ((\_SB.I2C7.BYAT == Zero))
                    {
                        Local0 = (\_SB.I2C7.DATA & 0x02)
                    }
                }

                Release (\_SB.MUT0)
                If ((Local0 == 0x02))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                Package (0x02)
                {
                    "\\_SB.GIO0", 
                    0x79
                }, 

                0x03
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "Method _DSM Function Query"
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
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

                    If ((Arg2 == One))
                    {
                        Debug = "Method _DSM Function HID"
                        Return (One)
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
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
        Name (ECOK, Zero)
        Mutex (MUT0, 0x00)
        Device (LID0)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.I2C7
            })
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                Local0 = \_SB.I2C7.LIDS ()
                Return (Local0)
            }
        }

        Device (CONV)
        {
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return ("ID9001")
            }

            Name (_CID, "PNP0C60" /* Display Sensor Device */)  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, Exclusive, PullUp, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0080
                        }
                })
                Return (RBUF) /* \_SB_.CONV._CRS.RBUF */
            }
        }

        Device (MLED)
        {
            Name (_HID, "HPIC0005")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (\_SB.I2C7)
    {
        Name (ECI2, ResourceTemplate ()
        {
            I2cSerialBusV2 (0x0076, ControllerInitiated, 0x00061A80,
                AddressingMode7Bit, "\\_SB_.I2C7",
                0x00, ResourceConsumer, , Exclusive,
                )
        })
        OperationRegion (ECFD, GenericSerialBus, Zero, 0x0100)
        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x03), 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CM03,   8, 
            Offset (0x05), 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CM05,   8, 
            AccessAs (BufferAcc, AttribBytes (0x05)), 
            CM06,   8, 
            AccessAs (BufferAcc, AttribBytes (0x0C)), 
            CM07,   8, 
            AccessAs (BufferAcc, AttribBytes (0x0B)), 
            CM08,   8, 
            Offset (0x15), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            CM15,   8, 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            CM16,   8, 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CM17,   8, 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CM18,   8, 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CM19,   8, 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CM1A,   8, 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CM1B,   8, 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            APIR,   8, 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            APIW,   8, 
            Offset (0x30), 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CM30,   8, 
            AccessAs (BufferAcc, AttribBytes (0x21)), 
            CM31,   8, 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CM32,   8, 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CM33,   8, 
            Offset (0x3F), 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CM3F,   8, 
            Offset (0x90), 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CM90,   8, 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            CM91,   8, 
            Offset (0xC0), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            RBYT,   8, 
            AccessAs (BufferAcc, AttribBytes (0x03)), 
            WBYT,   8, 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            RWOD,   8, 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            RBLK,   8, 
            Offset (0xCF), 
            AccessAs (BufferAcc, AttribBytes (0x20)), 
            BBLK,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x30), 
            AccessAs (BufferAcc, AttribBytes (0x20)), 
            CR30,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x90), 
            AccessAs (BufferAcc, AttribBytes (0x30)), 
            CR90,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x91), 
            AccessAs (BufferAcc, AttribBytes (0x31)), 
            CR91,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            RB01,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            RB02,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x03)), 
            RB03,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x04)), 
            RB04,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x05)), 
            RB05,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x06)), 
            RB06,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x07)), 
            RB07,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x08)), 
            RB08,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x09)), 
            RB09,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x0A)), 
            RB10,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x0B)), 
            RB11,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x0C)), 
            RB12,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x0D)), 
            RB13,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x0E)), 
            RB14,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x0F)), 
            RB15,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x10)), 
            RB16,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x11)), 
            RB17,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x12)), 
            RB18,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x13)), 
            RB19,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x14)), 
            RB20,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x15)), 
            RB21,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x16)), 
            RB22,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x17)), 
            RB23,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x18)), 
            RB24,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x19)), 
            RB25,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x1A)), 
            RB26,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x1B)), 
            RB27,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x1C)), 
            RB28,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x1D)), 
            RB29,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x1E)), 
            RB30,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x1F)), 
            RB31,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x20)), 
            RB32,   8
        }

        Name (BUFF, Buffer (0x03)
        {
             0x00, 0x01, 0x00                                 // ...
        })
        CreateByteField (BUFF, Zero, BYAT)
        CreateByteField (BUFF, 0x02, DATA)
        Name (BUF1, Buffer (0x06)
        {
             0x00, 0x00, 0x00, 0x00, 0x00, 0x00               // ......
        })
        CreateByteField (BUF1, Zero, BSTA)
        CreateByteField (BUF1, One, BLEN)
        CreateByteField (BUF1, 0x02, DAT1)
        CreateByteField (BUF1, 0x03, DAT2)
        Name (BUF2, Buffer (0x04)
        {
             0x00, 0x00, 0x00, 0x00                           // ....
        })
        CreateByteField (BUF2, Zero, BSTS)
        CreateByteField (BUF2, One, SLEN)
        CreateWordField (BUF2, 0x02, WRD1)
        Name (BUF3, Buffer (0x22){})
        CreateByteField (BUF3, Zero, STAT)
        CreateByteField (BUF3, One, SIZE)
        CreateByteField (BUF3, 0x02, BDAT)
        CreateField (BUF3, 0x10, 0x0100, BLCK)
        Name (BUF4, Buffer (0x10)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
        })
        Name (BUF5, Buffer (0x23)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0020 */  0x00, 0x00, 0x00                                 // ...
        })
        Name (BUFS, Buffer (0x32)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0030 */  0x00, 0x00                                       // ..
        })
        Name (INBU, Buffer (0x08)
        {
             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
        })
        CreateByteField (INBU, Zero, INST)
        CreateByteField (INBU, One, INLN)
        CreateByteField (INBU, 0x02, INT0)
        CreateByteField (INBU, 0x03, INT1)
        CreateByteField (INBU, 0x04, INT2)
        CreateByteField (INBU, 0x05, INT3)
        CreateByteField (INBU, 0x06, INT4)
        CreateByteField (INBU, 0x07, INT5)
        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {
            If ((Arg1 == One))
            {
                \_SB.ECOK = One
            }
            Else
            {
                \_SB.ECOK = Zero
            }
        }

        Method (LIDS, 0, NotSerialized)
        {
            Acquire (\_SB.MUT0, 0xFFFF)
            Local0 = Zero
            If ((\_SB.ECOK == One))
            {
                Sleep (0x0D)
                BSTA = Zero
                BLEN = One
                DAT1 = 0xF6
                \_SB.I2C7.APIR = BUF1 /* \_SB_.I2C7.BUF1 */
                BUFF = \_SB.I2C7.RB01
                If ((BYAT == Zero))
                {
                    Local0 = (DATA & One)
                }
            }

            Release (\_SB.MUT0)
            If ((Local0 == One))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (DCKS, 0, NotSerialized)
        {
            Acquire (\_SB.MUT0, 0xFFFF)
            Local0 = Zero
            If ((\_SB.ECOK == One))
            {
                Sleep (0x0D)
                BSTA = Zero
                BLEN = One
                DAT1 = 0xAE
                \_SB.I2C7.APIR = BUF1 /* \_SB_.I2C7.BUF1 */
                BUFF = \_SB.I2C7.RB01
                If ((BYAT == Zero))
                {
                    Local0 = (DATA & One)
                }
            }

            Release (\_SB.MUT0)
            Return (Local0)
        }

        Method (SWDT, 0, NotSerialized)
        {
            Acquire (\_SB.MUT0, 0xFFFF)
            Local0 = Zero
            If ((\_SB.ECOK == One))
            {
                Sleep (0x0D)
                BSTA = Zero
                BLEN = One
                DAT1 = 0xA8
                \_SB.I2C7.APIR = BUF1 /* \_SB_.I2C7.BUF1 */
                BUFF = \_SB.I2C7.RB01
                If ((BYAT == Zero))
                {
                    Local0 = (DATA | 0x02)
                }

                Sleep (0x0D)
                BSTA = Zero
                BLEN = One
                DAT1 = 0xA8
                DAT2 = Local0
                \_SB.I2C7.APIW = BUF1 /* \_SB_.I2C7.BUF1 */
            }

            Release (\_SB.MUT0)
        }

        Method (GEVT, 0, NotSerialized)
        {
            Acquire (\_SB.MUT0, 0xFFFF)
            Local0 = 0xFF
            If ((\_SB.ECOK == One))
            {
                Sleep (0x0D)
                BUFF = \_SB.I2C7.CM05
                If ((BYAT != One))
                {
                    Local0 = DATA /* \_SB_.I2C7.DATA */
                }
            }

            Release (\_SB.MUT0)
            Return (Local0)
        }

        Method (INTC, 0, Serialized)
        {
            Local0 = GEVT ()
            Switch (Local0)
            {
                Case (0x09)
                {
                    Local1 = LIDS ()
                    If ((Local1 == One))
                    {
                        Sleep (One)
                        Notify (\_SB.LID0, 0x80) // Status Change
                    }
                    Else
                    {
                        Notify (\_SB.LID0, 0x80) // Status Change
                    }
                }
                Case (0x0A)
                {
                    Notify (\_SB.ADP1, 0x80) // Status Change
                    Notify (\_SB.I2C7.BATC, 0x81) // Information Change
                    Notify (\_SB.I2C7.BATC, 0x80) // Status Change
                }
                Case (0x0B)
                {
                    Notify (\_SB.I2C7.BATC, 0x80) // Status Change
                }
                Case (0x0C)
                {
                    Notify (\_SB.I2C7.BATC, 0x80) // Status Change
                    Notify (\_SB.I2C7.BATC, 0x81) // Information Change
                }
                Case (0x11)
                {
                    Notify (\_SB.I2C7.BATC, 0x80) // Status Change
                }
                Case (0x0D)
                {
                    Notify (\_SB.I2C6.ECKB, One) // Device Check
                    \_SB.DOCS = Zero
                    Notify (\_SB.TZ50, 0x81) // Information Change
                }
                Case (0x0E)
                {
                    If ((\_SB.ECOK == One))
                    {
                        Sleep (0x02BC)
                        Notify (\_SB.I2C6, Zero) // Bus Check
                    }

                    \_SB.DOCS = One
                    Notify (\_SB.TZ50, 0x81) // Information Change
                }
                Case (0x10)
                {
                    Notify (\_SB.I2C7.BATC, One) // Device Check
                    Notify (\_SB.I2C6, Zero) // Bus Check
                }
                Case (0x34)
                {
                    SWDT ()
                }
                Case (0x4D)
                {
                    \_SB.WMID.GWEV (0x00020001, Zero)
                }
                Case (0x90)
                {
                    If ((\_SB.ECOK == One))
                    {
                        Acquire (\_SB.MUT0, 0xFFFF)
                        BSTA = Zero
                        BLEN = One
                        DAT1 = Zero
                        \_SB.I2C7.CM90 = BUF1 /* \_SB_.I2C7.BUF1 */
                        BUFS = \_SB.I2C7.CR90
                        Local2 = Zero
                        Local2 |= DerefOf (BUFS [0x06])
                        Local2 |= DerefOf (BUFS [0x07])
                        Local2 |= DerefOf (BUFS [0x08])
                        Local2 |= DerefOf (BUFS [0x09])
                        If ((Local2 == Zero))
                        {
                            Return (One)
                        }

                        If ((DerefOf (BUFS [Zero]) == Zero))
                        {
                            \_SB.UBTC.MGI0 = DerefOf (BUFS [0x12])
                            \_SB.UBTC.MGI1 = DerefOf (BUFS [0x13])
                            \_SB.UBTC.MGI2 = DerefOf (BUFS [0x14])
                            \_SB.UBTC.MGI3 = DerefOf (BUFS [0x15])
                            \_SB.UBTC.MGI4 = DerefOf (BUFS [0x16])
                            \_SB.UBTC.MGI5 = DerefOf (BUFS [0x17])
                            \_SB.UBTC.MGI6 = DerefOf (BUF5 [0x18])
                            \_SB.UBTC.MGI7 = DerefOf (BUFS [0x19])
                            \_SB.UBTC.MGI8 = DerefOf (BUFS [0x1A])
                            \_SB.UBTC.MGI9 = DerefOf (BUFS [0x1B])
                            \_SB.UBTC.MGIA = DerefOf (BUFS [0x1C])
                            \_SB.UBTC.MGIB = DerefOf (BUFS [0x1D])
                            \_SB.UBTC.MGIC = DerefOf (BUFS [0x1E])
                            \_SB.UBTC.MGID = DerefOf (BUFS [0x1F])
                            \_SB.UBTC.MGIE = DerefOf (BUFS [0x20])
                            \_SB.UBTC.MGIF = DerefOf (BUFS [0x21])
                            \_SB.UBTC.CCI0 = DerefOf (BUFS [0x06])
                            \_SB.UBTC.CCI1 = DerefOf (BUFS [0x07])
                            \_SB.UBTC.CCI2 = DerefOf (BUFS [0x08])
                            \_SB.UBTC.CCI3 = DerefOf (BUFS [0x09])
                        }

                        BSTA = Zero
                        BLEN = One
                        DAT1 = 0x04
                        DAT2 = Zero
                        \_SB.I2C7.CM91 = BUF1 /* \_SB_.I2C7.BUF1 */
                        BSTA = Zero
                        BLEN = One
                        DAT1 = 0x07
                        DAT2 = Zero
                        \_SB.I2C7.CM91 = BUF1 /* \_SB_.I2C7.BUF1 */
                        Release (\_SB.MUT0)
                        Notify (\_SB.UBTC, 0x80) // Status Change
                    }
                }
                Case (0x91)
                {
                }
                Case (0x92)
                {
                }
                Default
                {
                }

            }

            Return (One)
        }

        Device (ECDG)
        {
            Name (_HID, "QTEC0005")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_CID, "QTEC0005")  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.I2C7
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.WMID.MFLG == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0076, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2C7",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2C7.ECDG._CRS.RBUF */
            }
        }

        Method (REPR, 1, NotSerialized)
        {
            Local1 = Buffer (0x0100){}
            Acquire (\_SB.MUT0, 0xFFFF)
            If ((\_SB.ECOK == One))
            {
                Sleep (0x0D)
                BSTA = Zero
                BLEN = One
                DAT1 = (Arg0 + 0xB0)
                \_SB.I2C7.CM32 = BUF1 /* \_SB_.I2C7.BUF1 */
                Local0 = Zero
                While ((Local0 < 0x0100))
                {
                    Sleep (0x0D)
                    BSTA = Zero
                    BLEN = One
                    DAT1 = Local0
                    \_SB.I2C7.CM30 = BUF1 /* \_SB_.I2C7.BUF1 */
                    BUF5 = \_SB.I2C7.CR30
                    If ((DerefOf (BUF5 [Zero]) == Zero))
                    {
                        Local2 = Zero
                        While ((Local2 < 0x20))
                        {
                            Local1 [(Local0 + Local2)] = DerefOf (BUF5 [(
                                Local2 + 0x02)])
                            Local2++
                        }
                    }

                    Local0 += 0x20
                }
            }

            Release (\_SB.MUT0)
            Return (Local1)
        }

        Method (WEPR, 2, NotSerialized)
        {
            Local1 = Arg1
            Acquire (\_SB.MUT0, 0xFFFF)
            If ((\_SB.ECOK == One))
            {
                Sleep (0x0D)
                BSTA = Zero
                BLEN = One
                DAT1 = (Arg0 + 0xE0)
                \_SB.I2C7.CM33 = BUF1 /* \_SB_.I2C7.BUF1 */
                Sleep (0x64)
                Sleep (0x0D)
                BSTA = Zero
                BLEN = One
                DAT1 = (Arg0 + 0xB0)
                \_SB.I2C7.CM32 = BUF1 /* \_SB_.I2C7.BUF1 */
                Local0 = Zero
                While ((Local0 < 0x0100))
                {
                    Sleep (0x0D)
                    BUF5 [Zero] = Zero
                    BUF5 [One] = One
                    BUF5 [0x02] = Local0
                    Local2 = Zero
                    While ((Local2 < 0x20))
                    {
                        BUF5 [(Local2 + 0x03)] = DerefOf (Local1 [(
                            Local0 + Local2)])
                        Local2++
                    }

                    \_SB.I2C7.CM31 = BUF5 /* \_SB_.I2C7.BUF5 */
                    Local0 += 0x20
                }

                Sleep (0x0D)
                BSTA = Zero
                BLEN = One
                DAT1 = 0xFF
                \_SB.I2C7.CM3F = BUF1 /* \_SB_.I2C7.BUF1 */
                Sleep (0x64)
            }

            Release (\_SB.MUT0)
            Return (Local1)
        }

        Method (GECR, 1, NotSerialized)
        {
            Acquire (\_SB.MUT0, 0xFFFF)
            Local0 = Zero
            If ((\_SB.ECOK == One))
            {
                Sleep (0x0D)
                BSTA = Zero
                BLEN = One
                DAT1 = (Arg0 & 0xFF)
                \_SB.I2C7.APIR = BUF1 /* \_SB_.I2C7.BUF1 */
                BUFF = \_SB.I2C7.RB01
                If ((BYAT == Zero))
                {
                    Local0 = DATA /* \_SB_.I2C7.DATA */
                }
            }

            Release (\_SB.MUT0)
            Return (Local0)
        }

        Method (SECR, 2, NotSerialized)
        {
            Acquire (\_SB.MUT0, 0xFFFF)
            If ((\_SB.ECOK == One))
            {
                Sleep (0x0D)
                BSTA = Zero
                BLEN = One
                DAT1 = (Arg0 & 0xFF)
                DAT2 = (Arg1 & 0xFF)
                \_SB.I2C7.APIW = BUF1 /* \_SB_.I2C7.BUF1 */
            }

            Release (\_SB.MUT0)
        }

        Method (WSYS, 1, NotSerialized)
        {
            Acquire (\_SB.MUT0, 0xFFFF)
            If ((\_SB.ECOK == One))
            {
                Sleep (0x0D)
                BYAT = Zero
                DATA = (Arg0 & 0xFF)
                \_SB.I2C7.CM03 = BUFF /* \_SB_.I2C7.BUFF */
            }

            Release (\_SB.MUT0)
        }
    }

    Scope (\_SB.GIO0)
    {
        Name (_DEP, Package (0x01)  // _DEP: Dependencies
        {
            \_SB.I2C7
        })
        Method (_L7A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Sleep (0x64)
            \_SB.I2C7.INTC ()
        }
    }

    Scope (\_SB.I2C7)
    {
        Device (BATC)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
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
            Name (BCLP, 0x155E)
            Name (DSCP, 0x159A)
            Name (DSVO, 0x0EA6)
            Name (BTPC, Zero)
            Name (AVCU, Zero)
            Name (DCPS, Zero)
            Name (CTMP, 0x1E)
            Name (MPPP, 0xFF)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C7, 
                \_SB.GIO0
            })
            Name (BIXP, Package (0x14)
            {
                Zero, 
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                0x0A, 
                0x04, 
                Zero, 
                0x00017318, 
                0x61A8, 
                0x3A98, 
                0x88B8, 
                0x61A8, 
                One, 
                One, 
                "SR Real Battery", 
                "123456789", 
                "LION", 
                "HP"
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
                Acquire (\_SB.MUT0, 0xFFFF)
                If ((\_SB.ECOK == One))
                {
                    Sleep (0x0D)
                    \_SB.I2C7.BUF4 = \_SB.I2C7.CM08
                    If ((DerefOf (\_SB.I2C7.BUF4 [Zero]) == Zero))
                    {
                        Local1 = Zero
                        Local1 = MEGD (DerefOf (\_SB.I2C7.BUF4 [0x08]), DerefOf (\_SB.I2C7.BUF4 [0x07]
                            ))
                        BIXP [0x03] = Local1
                        Local1 = Zero
                        Local1 = MEGD (DerefOf (\_SB.I2C7.BUF4 [0x04]), DerefOf (\_SB.I2C7.BUF4 [0x03]
                            ))
                        DSCP = Local1
                        Local1 = Zero
                        Local1 = MEGD (DerefOf (\_SB.I2C7.BUF4 [0x06]), DerefOf (\_SB.I2C7.BUF4 [0x05]
                            ))
                        DSVO = Local1
                    }
                }

                BIXP [0x02] = DSCP /* \_SB_.I2C7.BATC.DSCP */
                BIXP [0x05] = DSVO /* \_SB_.I2C7.BATC.DSVO */
                Local1 = ((DSCP * 0x08) / 0x64)
                BIXP [0x06] = Local1
                Local1 = ((DSCP * 0x03) / 0x64)
                BIXP [0x07] = Local1
                Release (\_SB.MUT0)
                Return (BIXP) /* \_SB_.I2C7.BATC.BIXP */
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Acquire (\_SB.MUT0, 0xFFFF)
                If ((\_SB.ECOK == One))
                {
                    Sleep (0x0D)
                    \_SB.I2C7.BUF4 = \_SB.I2C7.CM07
                    If ((DerefOf (\_SB.I2C7.BUF4 [Zero]) == Zero))
                    {
                        Local0 = (DerefOf (\_SB.I2C7.BUF4 [0x03]) & 0x03)
                        BSTP [Zero] = Local0
                        Local1 = Zero
                        If ((DerefOf (\_SB.WMID.BCSE [0x25]) == One))
                        {
                            Local1 = MEGD (DerefOf (\_SB.I2C7.BUF4 [0x0A]), DerefOf (\_SB.I2C7.BUF4 [0x09]
                                ))
                            If ((Local1 & 0x8000))
                            {
                                If ((Local1 == 0xFFFF))
                                {
                                    BSTP [One] = 0xFFFFFFFF
                                }
                                Else
                                {
                                    Local2 = ~Local1
                                    Local2++
                                    Local3 = (Local2 & 0xFFFF)
                                    BSTP [One] = Local3
                                }
                            }
                            Else
                            {
                                BSTP [One] = Local1
                            }
                        }
                        Else
                        {
                            BSTP [One] = 0xFFFFFFFF
                        }

                        Local1 = Zero
                        Local1 = MEGD (DerefOf (\_SB.I2C7.BUF4 [0x06]), DerefOf (\_SB.I2C7.BUF4 [0x05]
                            ))
                        BSTP [0x02] = Local1
                        Local1 = Zero
                        Local1 = MEGD (DerefOf (\_SB.I2C7.BUF4 [0x08]), DerefOf (\_SB.I2C7.BUF4 [0x07]
                            ))
                        BSTP [0x03] = Local1
                    }
                }

                Release (\_SB.MUT0)
                Return (BSTP) /* \_SB_.I2C7.BATC.BSTP */
            }

            Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
            {
                If (Arg0)
                {
                    Local1 = Arg0
                    Divide (Local1, 0x0A, Local0, Local1)
                    Local2 = (Local1 & 0xFF)
                    \_SB.I2C7.SECR (0x2F, Local2)
                    Local2 = ((Local1 >> 0x08) & 0xFF)
                    \_SB.I2C7.SECR (0x2E, Local2)
                }
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
                Acquire (\_SB.MUT0, 0xFFFF)
                Local0 = One
                If ((\_SB.ECOK == One))
                {
                    Sleep (0x0D)
                    \_SB.I2C7.BSTA = Zero
                    \_SB.I2C7.BLEN = One
                    \_SB.I2C7.DAT1 = 0x78
                    \_SB.I2C7.APIR = \_SB.I2C7.BUF1
                    \_SB.I2C7.BUFF = \_SB.I2C7.RB01
                    If ((\_SB.I2C7.BYAT == Zero))
                    {
                        Local0 = (\_SB.I2C7.DATA & One)
                    }
                }

                Release (\_SB.MUT0)
                If ((Local0 == One))
                {
                    Return (0x1F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (\_SB)
            }

            Method (PSRC, 0, NotSerialized)
            {
                Acquire (\_SB.MUT0, 0xFFFF)
                If ((\_SB.ECOK == One))
                {
                    Sleep (0x0D)
                    \_SB.I2C7.BSTA = Zero
                    \_SB.I2C7.BLEN = One
                    \_SB.I2C7.DAT1 = 0x81
                    \_SB.I2C7.APIR = \_SB.I2C7.BUF1
                    \_SB.I2C7.BUFF = \_SB.I2C7.RB01
                    If ((\_SB.I2C7.BYAT == Zero))
                    {
                        Local0 = (\_SB.I2C7.DATA >> 0x07)
                        Release (\_SB.MUT0)
                        Return (Local0)
                    }
                }

                Release (\_SB.MUT0)
                Return (One)
            }
        }
    }

    Scope (\_SB)
    {
        Device (ADP1)
        {
            Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C7, 
                \_SB.GIO0
            })
            Alias (\_SB.PSUB, _SUB)
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                If (CondRefOf (\_SB.I2C7.BATC, Local1))
                {
                    Local0 = \_SB.I2C7.BATC.PSRC ()
                    If ((Local0 == Zero))
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

        Method (MEGD, 2, Serialized)
        {
            Local1 = Zero
            Local1 = Arg0
            Local1 <<= 0x08
            Local1 |= Arg1
            Return (Local1)
        }
    }
}

