/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181031 (32-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt1.dat, Thu Nov 01 16:14:00 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000061A6 (24998)
 *     Revision         0x01
 *     Checksum         0x77
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "CB-01   ", 0x00000001)
{
    External (_SB_.I2C7, DeviceObj)

    Scope (\_SB.I2C7)
    {
        Name (EEI2, ResourceTemplate ()
        {
            I2cSerialBusV2 (0x0076, ControllerInitiated, 0x00061A80,
                AddressingMode7Bit, "\\_SB_.I2C7",
                0x00, ResourceConsumer, , Exclusive,
                )
        })
        OperationRegion (EEFD, GenericSerialBus, Zero, 0x0100)
        Field (EEFD, BufferAcc, NoLock, Preserve)
        {
            Connection (EEI2), 
            Offset (0x09), 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CM09,   8, 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CM20,   8, 
            Offset (0xC6), 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CMC6,   8, 
            Offset (0xC8), 
            AccessAs (BufferAcc, AttribBytes (0x0D)), 
            CMC8,   8, 
            AccessAs (BufferAcc, AttribBytes (0x05)), 
            CMC9,   8, 
            AccessAs (BufferAcc, AttribBytes (0x05)), 
            CMCA,   8, 
            AccessAs (BufferAcc, AttribBytes (0x25)), 
            CMCB,   8, 
            Offset (0xD0), 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CMD0,   8, 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CMD1,   8
        }

        Field (EEFD, BufferAcc, NoLock, Preserve)
        {
            Connection (EEI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            CR20,   8, 
            Offset (0xCB), 
            AccessAs (BufferAcc, AttribBytes (0x20)), 
            CRCB,   8
        }

        Name (BUEF, Buffer (0x03)
        {
             0x00, 0x01, 0x00                                 // ...
        })
        CreateByteField (BUEF, Zero, BUES)
        CreateByteField (BUEF, 0x02, BUED)
        Name (BUE1, Buffer (0x07)
        {
             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00         // .......
        })
        CreateByteField (BUE1, Zero, BE1S)
        CreateByteField (BUE1, One, BE1L)
        CreateByteField (BUE1, 0x02, BED1)
        CreateByteField (BUE1, 0x03, BED2)
        CreateByteField (BUE1, 0x04, BED3)
        CreateByteField (BUE1, 0x05, BED4)
        CreateByteField (BUE1, 0x06, BED5)
        Name (BUE4, Buffer (0x10)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
        })
        Name (BUE5, Buffer (0x23)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0020 */  0x00, 0x00, 0x00                                 // ...
        })
        Mutex (MUT3, 0x07)
        Method (REPR, 1, NotSerialized)
        {
            Local1 = Buffer (0x0100){}
            Local0 = Zero
            While ((Local0 < 0x0100))
            {
                Sleep (0x0D)
                BE1S = Zero
                BE1L = 0x05
                BED1 = Zero
                BED2 = 0xC0
                BED3 = 0x06
                BED4 = (Arg0 * 0x10)
                BED5 = Local0
                \_SB.I2C7.CMCA = BUE1 /* \_SB_.I2C7.BUE1 */
                Sleep (0x0D)
                \_SB.I2C7.CMCB = BUEF /* \_SB_.I2C7.BUEF */
                BUE5 = \_SB.I2C7.CRCB
                If ((DerefOf (BUE5 [Zero]) == Zero))
                {
                    Local2 = Zero
                    While ((Local2 < 0x20))
                    {
                        Local1 [(Local0 + Local2)] = DerefOf (BUE5 [(
                            Local2 + 0x02)])
                        Local2++
                    }
                }

                Local0 += 0x20
            }

            Return (Local1)
        }

        Method (WEPR, 2, NotSerialized)
        {
            Local1 = Arg1
            Acquire (MUT3, 0xFFFF)
            Sleep (0x0D)
            BE1S = Zero
            BE1L = One
            BED1 = 0x20
            BED2 = 0xC0
            BED3 = 0x06
            BED4 = (Arg0 * 0x10)
            BED5 = Zero
            \_SB.I2C7.CMC9 = BUE1 /* \_SB_.I2C7.BUE1 */
            Sleep (0x64)
            Local0 = Zero
            While ((Local0 < 0x0100))
            {
                Sleep (0x0D)
                BUE4 [Zero] = Zero
                BUE4 [One] = One
                BUE4 [0x02] = Zero
                BUE4 [0x03] = 0xC0
                BUE4 [0x04] = 0x06
                BUE4 [0x05] = (Arg0 * 0x10)
                BUE4 [0x06] = Local0
                Local2 = Zero
                While ((Local2 < 0x08))
                {
                    BUE4 [(Local2 + 0x07)] = DerefOf (Local1 [(
                        Local0 + Local2)])
                    Local2++
                }

                \_SB.I2C7.CMC8 = BUE4 /* \_SB_.I2C7.BUE4 */
                \_SB.I2C7.CMC8 = BUE4 /* \_SB_.I2C7.BUE4 */
                Local0 += 0x08
            }

            Release (MUT3)
        }

        Method (SHMD, 1, NotSerialized)
        {
            Acquire (MUT3, 0xFFFF)
            Sleep (0x0D)
            BUES = Zero
            BUED = Zero
            \_SB.I2C7.CMC6 = BUEF /* \_SB_.I2C7.BUEF */
            Sleep (0x64)
            Release (MUT3)
        }

        Method (BACF, 1, NotSerialized)
        {
            Acquire (MUT3, 0xFFFF)
            Sleep (0x0D)
            BUES = Zero
            BUED = Zero
            \_SB.I2C7.CMD0 = BUEF /* \_SB_.I2C7.BUEF */
            Sleep (0x64)
            Release (MUT3)
        }

        Method (BACO, 1, NotSerialized)
        {
            Acquire (MUT3, 0xFFFF)
            Sleep (0x0D)
            BUES = Zero
            BUED = Zero
            \_SB.I2C7.CMD1 = BUEF /* \_SB_.I2C7.BUEF */
            Sleep (0x64)
            Release (MUT3)
        }

        Method (BACP, 1, NotSerialized)
        {
            Acquire (MUT3, 0xFFFF)
            Sleep (0x0D)
            BUES = Zero
            BUED = Zero
            \_SB.I2C7.CM09 = BUEF /* \_SB_.I2C7.BUEF */
            BUEF = \_SB.I2C7.CM09
            If ((BUES == Zero))
            {
                Local1 = BUED /* \_SB_.I2C7.BUED */
            }

            Sleep (0x64)
            Release (MUT3)
            Return (Local1)
        }

        Method (FOLI, 1, NotSerialized)
        {
            Acquire (MUT3, 0xFFFF)
            Sleep (0x0D)
            BE1S = Zero
            BE1L = One
            BED1 = 0xD0
            \_SB.I2C7.CM20 = BUE1 /* \_SB_.I2C7.BUE1 */
            BUE1 = \_SB.I2C7.CR20
            If ((BE1S == Zero))
            {
                Local1 = Buffer (0x02)
                    {
                         0x00, 0x00                                       // ..
                    }
                Local1 [Zero] = BED2 /* \_SB_.I2C7.BED2 */
                Local1 [One] = BED1 /* \_SB_.I2C7.BED1 */
            }

            Release (MUT3)
            Return (Local1)
        }

        Method (BDID, 1, NotSerialized)
        {
            Acquire (MUT3, 0xFFFF)
            Sleep (0x0D)
            BE1S = Zero
            BE1L = One
            BED1 = 0xF8
            \_SB.I2C7.CM20 = BUE1 /* \_SB_.I2C7.BUE1 */
            BUE1 = \_SB.I2C7.CR20
            If ((BE1S == Zero))
            {
                Local1 = BED1 /* \_SB_.I2C7.BED1 */
            }

            Sleep (0x64)
            Release (MUT3)
            Return (Local1)
        }
    }

    Scope (\_SB)
    {
        Device (WMI1)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (CMD, Zero)
            Name (ERR, Zero)
            Name (PAR0, Zero)
            Name (PAR1, Zero)
            Name (PAR2, Zero)
            Name (PAR3, Zero)
            Name (WITM, Zero)
            Name (WSEL, Zero)
            Name (WENC, Zero)
            Name (WKBD, Zero)
            Name (WPTY, Zero)
            Name (OPTY, Zero)
            Name (UMTY, Zero)
            Name (WPAS, Buffer (0x10){})
            Name (WPNW, Buffer (0x10){})
            Name (WPAP, Buffer (0x10){})
            Name (BTST, Buffer (0x0408){})
            Name (UMOP, Buffer (0x10){})
            Name (UMNP, Buffer (0x10){})
            Name (WSPM, Zero)
            Name (WSPS, Zero)
            Name (WSMN, Zero)
            Name (WSMX, Zero)
            Name (WSEN, Zero)
            Name (WSKB, Zero)
            Name (HDP0, Zero)
            Name (HDP1, Zero)
            Name (HDP2, Zero)
            Name (HDP3, Zero)
            Name (HDP4, Zero)
            Name (HDP5, Zero)
            Name (HDP6, Zero)
            Name (HDP7, Zero)
            Name (HDP8, Zero)
            Name (HDP9, Zero)
            Name (HD10, Zero)
            Name (HD11, Zero)
            Name (HD12, Zero)
            Name (HD13, Zero)
            Name (HD14, Zero)
            Name (HD15, Zero)
            Name (BSTL, Buffer (0x0408){})
            Name (BID, Zero)
            Name (RTC0, Zero)
            Name (RTC1, Zero)
            Name (RTC2, Zero)
            Name (RTC3, Zero)
            Name (RTC4, Zero)
            Name (RTC5, Zero)
            Name (RTC6, Zero)
            Name (RTC7, Zero)
            Name (RTC8, Zero)
            Name (TMCG, Zero)
            Name (DTCG, Zero)
            Name (UMCG, Zero)
            Name (BATN, Zero)
            Name (RE64, Buffer (0x08){})
            Name (E000, Buffer (0x10){})
            Name (E00B, Zero)
            Name (DUMY, Zero)
            Name (E001, Buffer (0x0100){})
            Name (E002, Buffer (0x0100){})
            Name (E003, Buffer (0x0100){})
            Name (E007, Zero)
            Name (BUF, Buffer (0x80){})
            Name (EBD0, Buffer (0x0100)
            {
                /* 0000 */  0x01, 0x43, 0x53, 0x00, 0x00, 0x00, 0x01, 0x01,  // .CS.....
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0010 */  0x33, 0x38, 0x36, 0x33, 0x38, 0x35, 0x30, 0x30,  // 38638500
                /* 0018 */  0x30, 0x36, 0x37, 0x34, 0x38, 0x00, 0x00, 0x00,  // 06748...
                /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0030 */  0x41, 0x43, 0x50, 0x49, 0x5F, 0x56, 0x30, 0x33,  // ACPI_V03
                /* 0038 */  0x38, 0x5F, 0x30, 0x30, 0x30, 0x36, 0x00, 0x08,  // 8_0006..
                /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0098 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
            })
            Name (EBD1, Buffer (0x0100)
            {
                /* 0000 */  0x38, 0x31, 0x46, 0x31, 0x30, 0x30, 0x30, 0x31,  // 81F10001
                /* 0008 */  0x55, 0x53, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // US......
                /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0020 */  0x4C, 0x65, 0x6E, 0x6F, 0x76, 0x6F, 0x20, 0x4D,  // Lenovo M
                /* 0028 */  0x69, 0x69, 0x78, 0x20, 0x36, 0x33, 0x30, 0x2D,  // iix 630-
                /* 0030 */  0x31, 0x32, 0x51, 0x33, 0x35, 0x00, 0x00, 0x00,  // 12Q35...
                /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0040 */  0x48, 0x41, 0x30, 0x57, 0x56, 0x48, 0x32, 0x37,  // HA0WVH27
                /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0060 */  0xC7, 0x3D, 0x27, 0x19, 0x4C, 0xA3, 0x49, 0x26,  // .='.L.I&
                /* 0068 */  0xB1, 0x7D, 0x84, 0x10, 0x4A, 0x20, 0xC3, 0xD4,  // .}..J ..
                /* 0070 */  0x4D, 0x69, 0x69, 0x78, 0x20, 0x36, 0x33, 0x30,  // Miix 630
                /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0080 */  0x4E, 0x6F, 0x20, 0x41, 0x73, 0x73, 0x65, 0x74,  // No Asset
                /* 0088 */  0x20, 0x54, 0x61, 0x67, 0x00, 0x00, 0x00, 0x00,  //  Tag....
                /* 0090 */  0x53, 0x44, 0x4B, 0x30, 0x51, 0x38, 0x34, 0x34,  // SDK0Q844
                /* 0098 */  0x33, 0x37, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // 37......
                /* 00A0 */  0x57, 0x49, 0x4E, 0x00, 0x00, 0x00, 0x00, 0x00,  // WIN.....
                /* 00A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00C0 */  0x4C, 0x4E, 0x56, 0x4E, 0x42, 0x31, 0x36, 0x31,  // LNVNB161
                /* 00C8 */  0x32, 0x31, 0x36, 0x00, 0x00, 0x00, 0x00, 0x00,  // 216.....
                /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
            })
            Name (EBD2, Buffer (0x0100)
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
                /* 0050 */  0x01, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0098 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
            })
            Method (E00C, 1, NotSerialized)
            {
                Local0 = (Arg0 & 0x0F)
                If ((Local0 <= 0x09))
                {
                    Return ((Local0 + 0x30))
                }
                Else
                {
                    Return (((Local0 - 0x0A) + 0x41))
                }
            }

            Method (E00D, 1, NotSerialized)
            {
                Local0 = (Arg0 & 0xFF)
                Local1 = Buffer (0x02)
                    {
                         0x00, 0x00                                       // ..
                    }
                Local1 [Zero] = E00C ((Local0 >> 0x04))
                Local1 [One] = E00C ((Local0 & 0x0F))
                Return (Local1)
            }

            Method (E00E, 1, NotSerialized)
            {
                Local0 = Arg0
                If (((Local0 >= 0x30) && (Local0 <= 0x39)))
                {
                    Return ((Local0 - 0x30))
                }
                ElseIf (((Local0 >= 0x41) && (Local0 <= 0x46)))
                {
                    Return (((Local0 - 0x41) + 0x0A))
                }
                ElseIf (((Local0 >= 0x61) && (Local0 <= 0x66)))
                {
                    Return (((Local0 - 0x61) + 0x0A))
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (E00F, 2, NotSerialized)
            {
                Local0 = E00E (Arg0)
                Local1 = E00E (Arg1)
                Return (((Local0 << 0x04) + Local1))
            }

            Method (E008, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    E001 = EBD0 /* \_SB_.WMI1.EBD0 */
                }
                ElseIf ((Arg0 == One))
                {
                    E002 = EBD1 /* \_SB_.WMI1.EBD1 */
                }
                ElseIf ((Arg0 == 0x02))
                {
                    E003 = EBD2 /* \_SB_.WMI1.EBD2 */
                }
                Else
                {
                }
            }

            Method (E009, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    If (CondRefOf (\_SB.I2C7.WEPR))
                    {
                        \_SB.I2C7.WEPR (Zero, E001)
                    }
                }
                ElseIf ((Arg0 == One))
                {
                    If (CondRefOf (\_SB.I2C7.WEPR))
                    {
                        \_SB.I2C7.WEPR (One, E002)
                    }
                }
                ElseIf ((Arg0 == 0x02))
                {
                    If (CondRefOf (\_SB.I2C7.WEPR))
                    {
                        \_SB.I2C7.WEPR (0x02, E003)
                    }
                }
                Else
                {
                }
            }

            Method (E00A, 0, NotSerialized)
            {
                If ((E007 != One))
                {
                    E008 (Zero)
                    E008 (One)
                    E008 (0x02)
                    E007 = One
                }
            }

            Method (WMIS, 2, NotSerialized)
            {
                Local0 = Zero
                E00A ()
                If ((Arg0 == Zero))
                {
                    WITM = Arg1
                    If ((WITM == Zero))
                    {
                        BSTL = Zero
                        Local2 = DerefOf (E001 [Zero])
                        Local3 = E00D (Local2)
                        BSTL [Zero] = DerefOf (Local3 [Zero])
                        BSTL [One] = DerefOf (Local3 [One])
                        Local0 = Zero
                    }
                    ElseIf ((WITM == One))
                    {
                        BSTL = Zero
                        BSTL [Zero] = DerefOf (E001 [One])
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x02))
                    {
                        BSTL = Zero
                        BSTL [Zero] = DerefOf (E001 [0x02])
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x03))
                    {
                        BSTL = Zero
                        Local2 = DerefOf (E001 [0x03])
                        Local3 = E00D (Local2)
                        BSTL [Zero] = DerefOf (Local3 [Zero])
                        BSTL [One] = DerefOf (Local3 [One])
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x04))
                    {
                        BSTL = Zero
                        Local2 = DerefOf (E001 [0x04])
                        Local3 = E00D (Local2)
                        BSTL [Zero] = DerefOf (Local3 [Zero])
                        BSTL [One] = DerefOf (Local3 [One])
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x05))
                    {
                        BSTL = Zero
                        Local2 = DerefOf (E001 [0x05])
                        Local3 = E00D (Local2)
                        BSTL [Zero] = DerefOf (Local3 [Zero])
                        BSTL [One] = DerefOf (Local3 [One])
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x06))
                    {
                        BSTL = Zero
                        Local2 = Zero
                        Local3 = 0x08
                        While ((Local2 < 0x08))
                        {
                            Local6 = (Local2 << One)
                            Local4 = DerefOf (E001 [Local3])
                            Local5 = E00D (Local4)
                            BSTL [Local6] = DerefOf (Local5 [Zero])
                            Local6++
                            BSTL [Local6] = DerefOf (Local5 [One])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x07))
                    {
                        BSTL = Zero
                        Local2 = Zero
                        Local3 = 0x10
                        While ((Local2 < 0x20))
                        {
                            BSTL [Local2] = DerefOf (E001 [Local3])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x08))
                    {
                        BSTL = Zero
                        Local2 = Zero
                        Local3 = Zero
                        While ((Local2 < 0x20))
                        {
                            BSTL [Local2] = DerefOf (E002 [Local3])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x09))
                    {
                        BSTL = Zero
                        Local2 = Zero
                        Local3 = 0x20
                        While ((Local2 < 0x20))
                        {
                            BSTL [Local2] = DerefOf (E002 [Local3])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x0A))
                    {
                        BSTL = Zero
                        Local2 = Zero
                        Local3 = 0x40
                        While ((Local2 < 0x20))
                        {
                            BSTL [Local2] = DerefOf (E002 [Local3])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x0B))
                    {
                        BSTL = Zero
                        Local2 = Zero
                        Local3 = 0x60
                        While ((Local2 < 0x10))
                        {
                            Local6 = (Local2 << One)
                            Local4 = DerefOf (E002 [Local3])
                            Local5 = E00D (Local4)
                            BSTL [Local6] = DerefOf (Local5 [Zero])
                            Local6++
                            BSTL [Local6] = DerefOf (Local5 [One])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x0C))
                    {
                        BSTL = Zero
                        Local2 = Zero
                        Local3 = 0x70
                        While ((Local2 < 0x10))
                        {
                            BSTL [Local2] = DerefOf (E002 [Local3])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x0D))
                    {
                        BSTL = Zero
                        Local2 = Zero
                        Local3 = 0x80
                        While ((Local2 < 0x10))
                        {
                            BSTL [Local2] = DerefOf (E002 [Local3])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x0E))
                    {
                        BSTL = Zero
                        Local2 = Zero
                        Local3 = 0x90
                        While ((Local2 < 0x10))
                        {
                            BSTL [Local2] = DerefOf (E002 [Local3])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x0F))
                    {
                        BSTL = Zero
                        Local2 = Zero
                        Local3 = 0xA0
                        While ((Local2 < 0x20))
                        {
                            BSTL [Local2] = DerefOf (E002 [Local3])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x10))
                    {
                        BSTL = Zero
                        Local2 = Zero
                        Local3 = 0xC0
                        While ((Local2 < 0x20))
                        {
                            BSTL [Local2] = DerefOf (E002 [Local3])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x11))
                    {
                        WSEL = DerefOf (E003 [Zero])
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x12))
                    {
                        WSEL = DerefOf (E003 [0x02])
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x13))
                    {
                        WSEL = DerefOf (E003 [0x50])
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x14))
                    {
                        WSEL = DerefOf (E003 [0x51])
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x15))
                    {
                        WSEL = DerefOf (E003 [0x53])
                        Local0 = Zero
                    }
                    Else
                    {
                        Local0 = One
                    }
                }
                ElseIf ((Arg0 == One))
                {
                    If ((WITM == Zero))
                    {
                        Local1 = DerefOf (BSTL [Zero])
                        If (((Local1 == 0x30) || (Local1 == 0x31)))
                        {
                            E001 [Zero] = E00E (Local1)
                        }
                        Else
                        {
                            Local0 = 0x02
                            Return (Local0)
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == One))
                    {
                        Local1 = DerefOf (BSTL [Zero])
                        If (((Local1 >= 0x41) && (Local1 <= 0x5A)))
                        {
                            E001 [One] = Local1
                        }
                        Else
                        {
                            Local0 = 0x02
                            Return (Local0)
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x02))
                    {
                        Local1 = DerefOf (BSTL [Zero])
                        If (((Local1 >= 0x41) && (Local1 <= 0x5A)))
                        {
                            E001 [0x02] = Local1
                        }
                        Else
                        {
                            Local0 = 0x02
                            Return (Local0)
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x03))
                    {
                        Local1 = DerefOf (BSTL [Zero])
                        Local2 = DerefOf (BSTL [One])
                        E001 [0x03] = E00F (Local1, Local2)
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x04))
                    {
                        Local1 = DerefOf (BSTL [Zero])
                        Local2 = DerefOf (BSTL [One])
                        E001 [0x04] = E00F (Local1, Local2)
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x05))
                    {
                        Local1 = DerefOf (BSTL [Zero])
                        Local2 = DerefOf (BSTL [One])
                        E001 [0x05] = E00F (Local1, Local2)
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x06))
                    {
                        Local2 = Zero
                        Local3 = 0x08
                        While ((Local2 < 0x08))
                        {
                            Local4 = (Local2 << One)
                            Local5 = DerefOf (BSTL [Local4])
                            Local4++
                            Local6 = DerefOf (BSTL [Local4])
                            Local7 = E00F (Local5, Local6)
                            If ((Local7 != Zero))
                            {
                                E001 [Local3] = Local7
                            }

                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x07))
                    {
                        Local2 = Zero
                        Local3 = 0x10
                        While ((Local2 < 0x20))
                        {
                            E001 [Local3] = DerefOf (BSTL [Local2])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x08))
                    {
                        Local2 = Zero
                        Local3 = Zero
                        While ((Local2 < 0x20))
                        {
                            E002 [Local3] = DerefOf (BSTL [Local2])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x09))
                    {
                        Local2 = Zero
                        Local3 = 0x20
                        While ((Local2 < 0x20))
                        {
                            E002 [Local3] = DerefOf (BSTL [Local2])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x0A))
                    {
                        Local2 = Zero
                        Local3 = 0x40
                        While ((Local2 < 0x20))
                        {
                            E002 [Local3] = DerefOf (BSTL [Local2])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x0B))
                    {
                        Local2 = Zero
                        Local3 = 0x60
                        While ((Local2 < 0x10))
                        {
                            Local4 = (Local2 << One)
                            Local5 = DerefOf (BSTL [Local4])
                            Local4++
                            Local6 = DerefOf (BSTL [Local4])
                            Local7 = E00F (Local5, Local6)
                            If ((Local7 != Zero))
                            {
                                E002 [Local3] = Local7
                            }

                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x0C))
                    {
                        Local2 = Zero
                        Local3 = 0x70
                        While ((Local2 < 0x10))
                        {
                            E002 [Local3] = DerefOf (BSTL [Local2])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x0D))
                    {
                        Local2 = Zero
                        Local3 = 0x80
                        While ((Local2 < 0x10))
                        {
                            E002 [Local3] = DerefOf (BSTL [Local2])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x0E))
                    {
                        Local2 = Zero
                        Local3 = 0x90
                        While ((Local2 < 0x10))
                        {
                            E002 [Local3] = DerefOf (BSTL [Local2])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x0F))
                    {
                        Local2 = Zero
                        Local3 = 0xA0
                        While ((Local2 < 0x20))
                        {
                            E002 [Local3] = DerefOf (BSTL [Local2])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x10))
                    {
                        Local2 = Zero
                        Local3 = 0xC0
                        While ((Local2 < 0x20))
                        {
                            E002 [Local3] = DerefOf (BSTL [Local2])
                            Local2++
                            Local3++
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x11))
                    {
                        E003 [Zero] = WSEL /* \_SB_.WMI1.WSEL */
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x12))
                    {
                        E003 [0x02] = WSEL /* \_SB_.WMI1.WSEL */
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x13))
                    {
                        E003 [0x50] = WSEL /* \_SB_.WMI1.WSEL */
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x14))
                    {
                        E003 [0x51] = WSEL /* \_SB_.WMI1.WSEL */
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x15))
                    {
                        E003 [0x53] = WSEL /* \_SB_.WMI1.WSEL */
                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x16))
                    {
                        If (CondRefOf (\_SB.I2C7.SHMD))
                        {
                            \_SB.I2C7.SHMD (Zero)
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x17))
                    {
                        If (CondRefOf (\_SB.I2C7.BACF))
                        {
                            \_SB.I2C7.BACF (Zero)
                        }

                        Local0 = Zero
                    }
                    ElseIf ((WITM == 0x18))
                    {
                        If (CondRefOf (\_SB.I2C7.BACO))
                        {
                            \_SB.I2C7.BACO (Zero)
                        }

                        Local0 = Zero
                    }
                    Else
                    {
                        Local0 = One
                    }
                }
                ElseIf ((Arg0 == 0x02))
                {
                    If ((DUMY == Zero))
                    {
                        DUMY = One
                    }
                    Else
                    {
                        DUMY = Zero
                        E009 (Zero)
                        E009 (One)
                        E009 (0x02)
                    }

                    Local0 = Zero
                }
                ElseIf ((Arg0 == 0x03))
                {
                    E003 = Zero
                    E007 = Zero
                }
                ElseIf ((Arg0 == 0x04))
                {
                    E003 [0x52] = One
                    E009 (0x02)
                    Local0 = Zero
                }
                ElseIf ((Arg0 == 0x05))
                {
                    Local2 = Zero
                    Local3 = 0x10
                    While ((Local2 < 0x10))
                    {
                        E000 [Local2] = DerefOf (E003 [Local3])
                        Local2++
                        Local3++
                    }

                    Local1 = DerefOf (E000 [Zero])
                    If ((Local1 != Zero))
                    {
                        WSPS = One
                    }
                    Else
                    {
                        WSPS = Zero
                    }

                    WSPM = Zero
                    WSEN = One
                    WSKB = One
                    WSMN = One
                    WSMX = 0x10
                }
                ElseIf ((Arg0 == 0x06))
                {
                    If ((WPTY != Zero))
                    {
                        Local0 = One
                        Return (Local0)
                    }

                    If ((WKBD != Zero))
                    {
                        Local0 = One
                        Return (Local0)
                    }

                    Local2 = Zero
                    Local3 = 0x10
                    While ((Local2 < 0x10))
                    {
                        E000 [Local2] = DerefOf (E003 [Local3])
                        Local2++
                        Local3++
                    }

                    Local1 = DerefOf (E000 [Zero])
                    If ((Local1 != Zero))
                    {
                        Local2 = Zero
                        While ((Local2 < 0x10))
                        {
                            Local3 = DerefOf (WPAS [Local2])
                            Local5 = DerefOf (E000 [Local2])
                            If ((Local3 != Local5))
                            {
                                Local0 = 0x02
                                Return (Local0)
                            }

                            Local2++
                        }
                    }

                    Local2 = Zero
                    Local3 = 0x10
                    While ((Local2 < 0x10))
                    {
                        E003 [Local3] = DerefOf (WPNW [Local2])
                        Local2++
                        Local3++
                    }

                    E009 (0x02)
                    Local0 = Zero
                }
                ElseIf ((Arg0 == 0x07))
                {
                    WITM = Arg1
                    BATN = One
                    If ((BATN == One))
                    {
                        If ((WITM == Zero))
                        {
                            BTST = "Li-on Battery"
                            Local0 = Zero
                        }
                        ElseIf ((WITM == One))
                        {
                            BTST = "L15L3PB1"
                            Local0 = Zero
                        }
                        ElseIf ((WITM == 0x02))
                        {
                            BTST = "2017/01/13"
                            Local0 = Zero
                        }
                        Else
                        {
                            Local0 = One
                        }
                    }
                    Else
                    {
                        Local0 = One
                    }
                }
                ElseIf ((Arg0 == 0x08))
                {
                    Local2 = Zero
                    Local3 = 0x54
                    While ((Local2 < 0x08))
                    {
                        RE64 [Local2] = DerefOf (E003 [Local3])
                        Local2++
                        Local3++
                    }

                    Local0 = Zero
                }
                ElseIf ((Arg0 == 0x09))
                {
                    RE64 = Arg1
                    Local2 = Zero
                    Local3 = 0x54
                    While ((Local2 < 0x08))
                    {
                        E003 [Local3] = DerefOf (RE64 [Local2])
                        Local2++
                        Local3++
                    }

                    E009 (0x02)
                    Local0 = Zero
                }
                ElseIf ((Arg0 == 0xCD))
                {
                    If ((WPTY != Zero))
                    {
                        Local0 = One
                        Return (Local0)
                    }

                    If ((WKBD != Zero))
                    {
                        Local0 = One
                        Return (Local0)
                    }

                    Local2 = Zero
                    Local3 = 0x10
                    While ((Local2 < 0x10))
                    {
                        E000 [Local2] = DerefOf (E003 [Local3])
                        Local2++
                        Local3++
                    }

                    Local1 = DerefOf (E000 [Zero])
                    If ((Local1 != Zero))
                    {
                        Local2 = Zero
                        While ((Local2 < 0x10))
                        {
                            Local3 = DerefOf (WPAS [Local2])
                            Local5 = DerefOf (E000 [Local2])
                            If ((Local3 != Local5))
                            {
                                Local0 = 0x02
                                Return (Local0)
                            }

                            Local2++
                        }
                    }

                    Local2 = Zero
                    Local3 = 0x10
                    While ((Local2 < 0x10))
                    {
                        E003 [Local3] = DerefOf (WPNW [Local2])
                        Local2++
                        Local3++
                    }

                    E009 (0x02)
                    Local0 = Zero
                }
                Else
                {
                    Local0 = One
                }

                Return (Local0)
            }

            Name (_WDG, Buffer (0xF0)
            {
                /* 0000 */  0x0E, 0x23, 0xF5, 0x51, 0x77, 0x96, 0xCD, 0x46,  // .#.Qw..F
                /* 0008 */  0xA1, 0xCF, 0xC0, 0xB2, 0x3E, 0xE3, 0x4D, 0xB7,  // ....>.M.
                /* 0010 */  0x41, 0x30, 0xFF, 0x05, 0x76, 0x37, 0xA0, 0xC3,  // A0..v7..
                /* 0018 */  0xAC, 0x51, 0xAA, 0x49, 0xAD, 0x0F, 0xF2, 0xF7,  // .Q.I....
                /* 0020 */  0xD6, 0x2C, 0x3F, 0x3C, 0x41, 0x44, 0x06, 0x05,  // .,?<AD..
                /* 0028 */  0x64, 0x9A, 0x47, 0x98, 0xF5, 0x33, 0x33, 0x4E,  // d.G..33N
                /* 0030 */  0xA7, 0x07, 0x8E, 0x25, 0x1E, 0xBB, 0xC3, 0xA1,  // ...%....
                /* 0038 */  0x41, 0x31, 0x01, 0x06, 0xEF, 0x54, 0x4B, 0x6A,  // A1...TKj
                /* 0040 */  0xED, 0xA5, 0x33, 0x4D, 0x94, 0x55, 0xB0, 0xD9,  // ..3M.U..
                /* 0048 */  0xB4, 0x8D, 0xF4, 0xB3, 0x41, 0x32, 0x01, 0x06,  // ....A2..
                /* 0050 */  0xB6, 0xEB, 0xF1, 0x74, 0x7A, 0x92, 0x7D, 0x4C,  // ...tz.}L
                /* 0058 */  0x95, 0xDF, 0x69, 0x8E, 0x21, 0xE8, 0x0E, 0xB5,  // ..i.!...
                /* 0060 */  0x41, 0x33, 0x01, 0x06, 0xFF, 0x04, 0xEF, 0x7E,  // A3.....~
                /* 0068 */  0x28, 0x43, 0x7C, 0x44, 0xB5, 0xBB, 0xD4, 0x49,  // (C|D...I
                /* 0070 */  0x92, 0x5D, 0x53, 0x8D, 0x41, 0x34, 0x01, 0x06,  // .]S.A4..
                /* 0078 */  0x9E, 0x15, 0xDB, 0x8A, 0x32, 0x1E, 0x5C, 0x45,  // ....2.\E
                /* 0080 */  0xBC, 0x93, 0x30, 0x8A, 0x7E, 0xD9, 0x82, 0x46,  // ..0.~..F
                /* 0088 */  0x41, 0x35, 0x01, 0x01, 0xFD, 0xD9, 0x51, 0x26,  // A5....Q&
                /* 0090 */  0x1C, 0x91, 0x69, 0x4B, 0xB9, 0x4E, 0xD0, 0xDE,  // ..iK.N..
                /* 0098 */  0xD5, 0x96, 0x3B, 0xD7, 0x41, 0x36, 0x01, 0x06,  // ..;.A6..
                /* 00A0 */  0x2C, 0xEF, 0xDD, 0xDF, 0xD4, 0x57, 0xCE, 0x48,  // ,....W.H
                /* 00A8 */  0xB1, 0x96, 0x0F, 0xB7, 0x87, 0xD9, 0x08, 0x36,  // .......6
                /* 00B0 */  0x41, 0x37, 0x01, 0x06, 0xF8, 0x44, 0xAE, 0x7B,  // A7...D.{
                /* 00B8 */  0x53, 0x38, 0x2B, 0x4D, 0xB9, 0x8B, 0xF8, 0x40,  // S8+M...@
                /* 00C0 */  0xD7, 0xAC, 0x26, 0xB6, 0x43, 0x30, 0x01, 0x01,  // ..&.C0..
                /* 00C8 */  0xF8, 0x44, 0xAE, 0x8B, 0x53, 0x38, 0x2B, 0x4D,  // .D..S8+M
                /* 00D0 */  0xB9, 0x8B, 0xF8, 0x40, 0xD7, 0xAC, 0x26, 0xB6,  // ...@..&.
                /* 00D8 */  0x43, 0x31, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  // C1..!...
                /* 00E0 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                /* 00E8 */  0xC9, 0x06, 0x29, 0x10, 0x43, 0x41, 0x01, 0x00   // ..).CA..
            })
            Name (RETN, Package (0x0B)
            {
                "Success", 
                "Not Supported", 
                "Invalid Parameter", 
                "Access Denied", 
                "System Busy", 
                "Item is show only, inaccessible.", 
                "Allocate Pool Failed", 
                "MFGDone Set but Password not input or error", 
                "Invalid Parameter", 
                "Boot Sequence Total Number Changed", 
                "Invalid Parameter"
            })
            Name (ITEM, Package (0x19)
            {
                Package (0x03)
                {
                    0x6E, 
                    "MfgDone", 
                    Zero
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "BrandType", 
                    One
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "KeyboardID", 
                    0x02
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "EPAID", 
                    0x03
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "Functionflag", 
                    0x04
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "Customer", 
                    0x05
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "Configuration", 
                    0x06
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "OA3KeyID", 
                    0x07
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "MTMnumber", 
                    0x08
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "ProductName", 
                    0x09
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "LenovoSN", 
                    0x0A
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "UUID", 
                    0x0B
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "FamilyName", 
                    0x0C
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "AssetTag", 
                    0x0D
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "OSPN", 
                    0x0E
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "OSdescriptor", 
                    0x0F
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "ProjectName", 
                    0x10
                }, 

                Package (0x03)
                {
                    0x08, 
                    "Always On USB", 
                    0x11
                }, 

                Package (0x03)
                {
                    0x08, 
                    "BIOS Back Flash", 
                    0x12
                }, 

                Package (0x03)
                {
                    0x08, 
                    "USB Boot", 
                    0x13
                }, 

                Package (0x03)
                {
                    0x08, 
                    "Fast Boot", 
                    0x14
                }, 

                Package (0x03)
                {
                    Zero, 
                    "Secure Boot Support", 
                    0x15
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "ShipMode", 
                    0x16
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "BatChargeOff", 
                    0x17
                }, 

                Package (0x03)
                {
                    0x6E, 
                    "BatChargeOn", 
                    0x18
                }
            })
            Name (BTIF, Package (0x06)
            {
                Package (0x03)
                {
                    Zero, 
                    "BAT0 BatMaker", 
                    Zero
                }, 

                Package (0x03)
                {
                    Zero, 
                    "BAT0 HwId", 
                    One
                }, 

                Package (0x03)
                {
                    Zero, 
                    "BAT0 MfgDate", 
                    0x02
                }, 

                Package (0x03)
                {
                    Zero, 
                    "BAT1 BatMaker", 
                    0x03
                }, 

                Package (0x03)
                {
                    Zero, 
                    "BAT1 HwId", 
                    0x04
                }, 

                Package (0x03)
                {
                    Zero, 
                    "BAT1 MfgDate", 
                    0x05
                }
            })
            Name (VSEL, Package (0x25)
            {
                Package (0x02)
                {
                    "Disabled", 
                    "Enabled"
                }, 

                Package (0x02)
                {
                    "Enabled", 
                    "Disabled"
                }, 

                Package (0x03)
                {
                    "", 
                    "Enabled", 
                    "Disabled"
                }, 

                Package (0x03)
                {
                    "Enabled", 
                    "Disabled", 
                    "Auto"
                }, 

                Package (0x04)
                {
                    "Disabled", 
                    "Enabled", 
                    "", 
                    "Auto"
                }, 

                Package (0x03)
                {
                    "Disabled", 
                    "Enabled", 
                    "Registered"
                }, 

                Package (0x02)
                {
                    "No", 
                    "Yes"
                }, 

                Package (0x06)
                {
                    "No", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "Yes"
                }, 

                Package (0x02)
                {
                    "Off", 
                    "On"
                }, 

                Package (0x03)
                {
                    "Disabled", 
                    "Active", 
                    "Inactive"
                }, 

                Package (0x02)
                {
                    "Normal", 
                    "Legacy"
                }, 

                Package (0x1F)
                {
                    "Disabled", 
                    "", 
                    "", 
                    "3 Seconds", 
                    "", 
                    "", 
                    "6 Seconds", 
                    "", 
                    "", 
                    "9 Seconds", 
                    "", 
                    "", 
                    "12 Seconds", 
                    "", 
                    "", 
                    "15 Seconds", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "21 Seconds", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "30 Seconds"
                }, 

                Package (0x05)
                {
                    "Single Event", 
                    "Daily Event", 
                    "Weekly Event", 
                    "Disabled", 
                    "User Defined"
                }, 

                Package (0x02)
                {
                    "Primary", 
                    "Automatic"
                }, 

                Package (0x07)
                {
                    "Sunday", 
                    "Monday", 
                    "Tuesday", 
                    "Wednesday", 
                    "Thursday", 
                    "Friday", 
                    "Saturday"
                }, 

                Package (0x04)
                {
                    "Legacy Style", 
                    "MTM&SN-1", 
                    "MTM&SN-2", 
                    "1S-MTM-SN"
                }, 

                Package (0x03)
                {
                    "Primary", 
                    "Automatic", 
                    "Disabled"
                }, 

                Package (0x04)
                {
                    "Auto", 
                    "", 
                    "UEFI Only", 
                    "Legacy Only"
                }, 

                Package (0x03)
                {
                    "IDE", 
                    "AHCI", 
                    "RAID"
                }, 

                Package (0x07)
                {
                    "", 
                    "3F8/IRQ4", 
                    "2F8/IRQ3", 
                    "3E8/IRQ4", 
                    "2E8/IRQ3", 
                    "", 
                    "Disabled"
                }, 

                Package (0x04)
                {
                    "IGD", 
                    "PEG", 
                    "PCI", 
                    "Auto"
                }, 

                Package (0x09)
                {
                    "", 
                    "32MB", 
                    "64MB", 
                    "", 
                    "128MB", 
                    "", 
                    "", 
                    "", 
                    ""
                }, 

                Package (0x04)
                {
                    "", 
                    "128MB", 
                    "256MB", 
                    "Maximum"
                }, 

                Package (0x03)
                {
                    "Disabled", 
                    "PXE", 
                    "SMC"
                }, 

                Package (0x03)
                {
                    "C1", 
                    "C1C3", 
                    "C1C3C6"
                }, 

                Package (0x07)
                {
                    "VT100", 
                    "VT100,8bit", 
                    "PC-ANSI,7bit", 
                    "PC-ANSI", 
                    "VT100+", 
                    "VT-UTF8", 
                    "ASCII"
                }, 

                Package (0x03)
                {
                    "Power Off", 
                    "Power On", 
                    "Last State"
                }, 

                Package (0x02)
                {
                    "Better Acoustic Performance", 
                    "Better Thermal Performance"
                }, 

                Package (0x04)
                {
                    "Legacy Style", 
                    "MTM&SN-1", 
                    "MTM&SN-2", 
                    "1S-MTM-SN"
                }, 

                Package (0x07)
                {
                    "", 
                    "3F8/IRQ4", 
                    "2F8/IRQ3", 
                    "3E8/IRQ4", 
                    "2E8/IRQ3", 
                    "", 
                    "Disabled"
                }, 

                Package (0x07)
                {
                    "378", 
                    "278", 
                    "3BC", 
                    "", 
                    "", 
                    "", 
                    "Disabled"
                }, 

                Package (0x04)
                {
                    "", 
                    "EPP", 
                    "ECP", 
                    "ECP+EPP"
                }, 

                Package (0x02)
                {
                    "1.9", 
                    "1.7"
                }, 

                Package (0x02)
                {
                    "DMA1", 
                    "DMA3"
                }, 

                Package (0x02)
                {
                    "IRQ5", 
                    "IRQ7"
                }, 

                Package (0x09)
                {
                    "Immediately", 
                    "1 minute", 
                    "2 minutes", 
                    "5 minutes", 
                    "10 minutes", 
                    "15 minutes", 
                    "30 minutes", 
                    "1 hour", 
                    "2 hours"
                }, 

                Package (0x02)
                {
                    "UEFI", 
                    "Legacy"
                }
            })
            Name (VSML, Package (0x25)
            {
                Package (0x02)
                {
                    "Disabled", 
                    "Enabled"
                }, 

                Package (0x02)
                {
                    "Enabled", 
                    "Disabled"
                }, 

                Package (0x03)
                {
                    "", 
                    "Enabled", 
                    "Disabled"
                }, 

                Package (0x03)
                {
                    "Enabled", 
                    "Disabled", 
                    "Auto"
                }, 

                Package (0x04)
                {
                    "Disabled", 
                    "Enabled", 
                    "", 
                    "Auto"
                }, 

                Package (0x03)
                {
                    "Disabled", 
                    "Enabled", 
                    "Registered"
                }, 

                Package (0x02)
                {
                    "No", 
                    "Yes"
                }, 

                Package (0x06)
                {
                    "No", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "Yes"
                }, 

                Package (0x02)
                {
                    "Off", 
                    "On"
                }, 

                Package (0x03)
                {
                    "Disabled", 
                    "Active", 
                    "Inactive"
                }, 

                Package (0x02)
                {
                    "Normal", 
                    "Legacy"
                }, 

                Package (0x1F)
                {
                    "Disabled", 
                    "", 
                    "", 
                    "3 Seconds", 
                    "", 
                    "", 
                    "6 Seconds", 
                    "", 
                    "", 
                    "9 Seconds", 
                    "", 
                    "", 
                    "12 Seconds", 
                    "", 
                    "", 
                    "15 Seconds", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "21 Seconds", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "30 Seconds"
                }, 

                Package (0x05)
                {
                    "Single Event", 
                    "Daily Event", 
                    "Weekly Event", 
                    "Disabled", 
                    "User Defined"
                }, 

                Package (0x02)
                {
                    "Primary", 
                    "Automatic"
                }, 

                Package (0x07)
                {
                    "Sunday", 
                    "Monday", 
                    "Tuesday", 
                    "Wednesday", 
                    "Thursday", 
                    "Friday", 
                    "Saturday"
                }, 

                Package (0x04)
                {
                    "Legacy Style", 
                    "MTM&SN-1", 
                    "MTM&SN-2", 
                    "1S-MTM-SN"
                }, 

                Package (0x03)
                {
                    "Primary", 
                    "Automatic", 
                    "Disabled"
                }, 

                Package (0x04)
                {
                    "Auto", 
                    "", 
                    "UEFI Only", 
                    "Legacy Only"
                }, 

                Package (0x02)
                {
                    "IDE", 
                    "AHCI"
                }, 

                Package (0x07)
                {
                    "", 
                    "3F8/IRQ4", 
                    "2F8/IRQ3", 
                    "3E8/IRQ4", 
                    "2E8/IRQ3", 
                    "", 
                    "Disabled"
                }, 

                Package (0x04)
                {
                    "IGD", 
                    "PEG", 
                    "PCI", 
                    "Auto"
                }, 

                Package (0x09)
                {
                    "", 
                    "32MB", 
                    "64MB", 
                    "", 
                    "128MB", 
                    "", 
                    "", 
                    "", 
                    ""
                }, 

                Package (0x04)
                {
                    "", 
                    "128MB", 
                    "256MB", 
                    "Maximum"
                }, 

                Package (0x03)
                {
                    "Disabled", 
                    "PXE", 
                    "SMC"
                }, 

                Package (0x03)
                {
                    "C1", 
                    "C1C3", 
                    "C1C3C6"
                }, 

                Package (0x07)
                {
                    "VT100", 
                    "VT100,8bit", 
                    "PC-ANSI,7bit", 
                    "PC-ANSI", 
                    "VT100+", 
                    "VT-UTF8", 
                    "ASCII"
                }, 

                Package (0x03)
                {
                    "Power Off", 
                    "Power On", 
                    "Last State"
                }, 

                Package (0x02)
                {
                    "Better Acoustic Performance", 
                    "Better Thermal Performance"
                }, 

                Package (0x04)
                {
                    "Legacy Style", 
                    "MTM&SN-1", 
                    "MTM&SN-2", 
                    "1S-MTM-SN"
                }, 

                Package (0x07)
                {
                    "", 
                    "3F8/IRQ4", 
                    "2F8/IRQ3", 
                    "3E8/IRQ4", 
                    "2E8/IRQ3", 
                    "", 
                    "Disabled"
                }, 

                Package (0x07)
                {
                    "378", 
                    "278", 
                    "3BC", 
                    "", 
                    "", 
                    "", 
                    "Disabled"
                }, 

                Package (0x04)
                {
                    "", 
                    "EPP", 
                    "ECP", 
                    "ECP+EPP"
                }, 

                Package (0x02)
                {
                    "1.9", 
                    "1.7"
                }, 

                Package (0x02)
                {
                    "DMA1", 
                    "DMA3"
                }, 

                Package (0x02)
                {
                    "IRQ5", 
                    "IRQ7"
                }, 

                Package (0x09)
                {
                    "Immediately", 
                    "1 minute", 
                    "2 minutes", 
                    "5 minutes", 
                    "10 minutes", 
                    "15 minutes", 
                    "30 minutes", 
                    "1 hour", 
                    "2 hours"
                }, 

                Package (0x02)
                {
                    "UEFI", 
                    "Legacy"
                }
            })
            Name (VSLF, Package (0x25)
            {
                Package (0x02)
                {
                    "Disabled", 
                    "Enabled"
                }, 

                Package (0x02)
                {
                    "Enabled", 
                    "Disabled"
                }, 

                Package (0x03)
                {
                    "", 
                    "Enabled", 
                    "Disabled"
                }, 

                Package (0x03)
                {
                    "Enabled", 
                    "Disabled", 
                    "Auto"
                }, 

                Package (0x04)
                {
                    "Disabled", 
                    "Enabled", 
                    "", 
                    "Auto"
                }, 

                Package (0x03)
                {
                    "Disabled", 
                    "Enabled", 
                    "Registered"
                }, 

                Package (0x02)
                {
                    "No", 
                    "Yes"
                }, 

                Package (0x06)
                {
                    "No", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "Yes"
                }, 

                Package (0x02)
                {
                    "Off", 
                    "On"
                }, 

                Package (0x03)
                {
                    "Disabled", 
                    "Active", 
                    "Inactive"
                }, 

                Package (0x02)
                {
                    "Normal", 
                    "Legacy"
                }, 

                Package (0x1F)
                {
                    "Disabled", 
                    "", 
                    "", 
                    "3 Seconds", 
                    "", 
                    "", 
                    "6 Seconds", 
                    "", 
                    "", 
                    "9 Seconds", 
                    "", 
                    "", 
                    "12 Seconds", 
                    "", 
                    "", 
                    "15 Seconds", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "21 Seconds", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "30 Seconds"
                }, 

                Package (0x05)
                {
                    "Single Event", 
                    "Daily Event", 
                    "Weekly Event", 
                    "Disabled", 
                    "User Defined"
                }, 

                Package (0x02)
                {
                    "Primary", 
                    "Automatic"
                }, 

                Package (0x07)
                {
                    "Sunday", 
                    "Monday", 
                    "Tuesday", 
                    "Wednesday", 
                    "Thursday", 
                    "Friday", 
                    "Saturday"
                }, 

                Package (0x04)
                {
                    "Legacy Style", 
                    "MTM&SN-1", 
                    "MTM&SN-2", 
                    "1S-MTM-SN"
                }, 

                Package (0x03)
                {
                    "Primary", 
                    "Automatic", 
                    "Disabled"
                }, 

                Package (0x04)
                {
                    "Auto", 
                    "", 
                    "UEFI Only", 
                    "Legacy Only"
                }, 

                Package (0x02)
                {
                    "IDE", 
                    "AHCI"
                }, 

                Package (0x07)
                {
                    "", 
                    "3F8/IRQ4", 
                    "2F8/IRQ3", 
                    "3E8/IRQ4", 
                    "2E8/IRQ3", 
                    "", 
                    "Disabled"
                }, 

                Package (0x04)
                {
                    "IGD", 
                    "", 
                    "", 
                    "Auto"
                }, 

                Package (0x09)
                {
                    "", 
                    "32MB", 
                    "64MB", 
                    "", 
                    "128MB", 
                    "", 
                    "", 
                    "", 
                    ""
                }, 

                Package (0x04)
                {
                    "", 
                    "128MB", 
                    "256MB", 
                    "Maximum"
                }, 

                Package (0x03)
                {
                    "Disabled", 
                    "PXE", 
                    "SMC"
                }, 

                Package (0x03)
                {
                    "C1", 
                    "C1C3", 
                    "C1C3C6"
                }, 

                Package (0x07)
                {
                    "VT100", 
                    "VT100,8bit", 
                    "PC-ANSI,7bit", 
                    "PC-ANSI", 
                    "VT100+", 
                    "VT-UTF8", 
                    "ASCII"
                }, 

                Package (0x03)
                {
                    "Power Off", 
                    "Power On", 
                    "Last State"
                }, 

                Package (0x02)
                {
                    "Better Acoustic Performance", 
                    "Better Thermal Performance"
                }, 

                Package (0x04)
                {
                    "Legacy Style", 
                    "MTM&SN-1", 
                    "MTM&SN-2", 
                    "1S-MTM-SN"
                }, 

                Package (0x07)
                {
                    "", 
                    "3F8/IRQ4", 
                    "2F8/IRQ3", 
                    "3E8/IRQ4", 
                    "2E8/IRQ3", 
                    "", 
                    "Disabled"
                }, 

                Package (0x07)
                {
                    "378", 
                    "278", 
                    "3BC", 
                    "", 
                    "", 
                    "", 
                    "Disabled"
                }, 

                Package (0x04)
                {
                    "", 
                    "EPP", 
                    "ECP", 
                    "ECP+EPP"
                }, 

                Package (0x02)
                {
                    "1.9", 
                    "1.7"
                }, 

                Package (0x02)
                {
                    "DMA1", 
                    "DMA3"
                }, 

                Package (0x02)
                {
                    "IRQ5", 
                    "IRQ7"
                }, 

                Package (0x09)
                {
                    "Immediately", 
                    "1 minute", 
                    "2 minutes", 
                    "5 minutes", 
                    "10 minutes", 
                    "15 minutes", 
                    "30 minutes", 
                    "1 hour", 
                    "2 hours"
                }, 

                Package (0x02)
                {
                    "UEFI", 
                    "Legacy"
                }
            })
            Name (VLST, Package (0x60)
            {
                "Excluded from boot order", 
                "DISKETTE", 
                "HDD", 
                "CDROM", 
                "PCMCIA", 
                "USB", 
                "NETWORK", 
                "HDD LOCKED", 
                "USB FLOPPY", 
                "Other Device", 
                "LEGACY BOOT", 
                "OTHERS", 
                "VLST Type 0C", 
                "VLST Type 0D", 
                "VLST Type 0E", 
                "VLST Type 0F", 
                "USB KEY", 
                "USB FDD", 
                "USB HDD", 
                "USB CDROM", 
                "VLST Type 14", 
                "VLST Type 15", 
                "VLST Type 16", 
                "VLST Type 17", 
                "VLST Type 18", 
                "VLST Type 19", 
                "VLST Type 1A", 
                "VLST Type 1B", 
                "VLST Type 1C", 
                "VLST Type 1D", 
                "VLST Type 1E", 
                "VLST Type 1F", 
                "Network 1", 
                "Network 2", 
                "Network 3", 
                "Network 4", 
                "Network 5", 
                "Network 6", 
                "Network 7", 
                "Network 8", 
                "Network 9", 
                "Network 10", 
                "Network 11", 
                "Network 12", 
                "Network 13", 
                "Network 14", 
                "Network 15", 
                "Network 16", 
                "SATA 0", 
                "SATA 1", 
                "SATA 2", 
                "SATA 3", 
                "SATA 4", 
                "SATA 5", 
                "SATA 6", 
                "SATA 7", 
                "SATA 8", 
                "SATA 9", 
                "SATA 10", 
                "SATA 11", 
                "SATA 12", 
                "SATA 13", 
                "SATA 14", 
                "SATA 15", 
                "PCIE SLOT 0", 
                "PCIE SLOT 1", 
                "PCIE SLOT 2", 
                "PCIE SLOT 3", 
                "PCIE SLOT 4", 
                "PCIE SLOT 5", 
                "PCIE SLOT 6", 
                "PCIE SLOT 7", 
                "PCIE SLOT 8", 
                "PCIE SLOT 9", 
                "PCIE SLOT 10", 
                "PCIE SLOT 11", 
                "PCIE SLOT 12", 
                "PCIE SLOT 13", 
                "PCIE SLOT 14", 
                "PCIE SLOT 15", 
                "VMD 1", 
                "VMD 2", 
                "VMD 3", 
                "VMD 4", 
                "VMD 5", 
                "VMD 6", 
                "VMD 7", 
                "VMD 8", 
                "VMD 9", 
                "VMD 10", 
                "VMD 11", 
                "VMD 12", 
                "VMD 13", 
                "VMD 14", 
                "VMD 15", 
                "VMD 16"
            })
            Name (VR01, Package (0x5F)
            {
                "2005", 
                "2006", 
                "2007", 
                "2008", 
                "2009", 
                "2010", 
                "2011", 
                "2012", 
                "2013", 
                "2014", 
                "2015", 
                "2016", 
                "2017", 
                "2018", 
                "2019", 
                "2020", 
                "2021", 
                "2022", 
                "2023", 
                "2024", 
                "2025", 
                "2026", 
                "2027", 
                "2028", 
                "2029", 
                "2030", 
                "2031", 
                "2032", 
                "2033", 
                "2034", 
                "2035", 
                "2036", 
                "2037", 
                "2038", 
                "2039", 
                "2040", 
                "2041", 
                "2042", 
                "2043", 
                "2044", 
                "2045", 
                "2046", 
                "2047", 
                "2048", 
                "2049", 
                "2050", 
                "2051", 
                "2052", 
                "2053", 
                "2054", 
                "2055", 
                "2056", 
                "2057", 
                "2058", 
                "2059", 
                "2060", 
                "2061", 
                "2062", 
                "2063", 
                "2064", 
                "2065", 
                "2066", 
                "2067", 
                "2068", 
                "2069", 
                "2070", 
                "2071", 
                "2072", 
                "2073", 
                "2074", 
                "2075", 
                "2076", 
                "2077", 
                "2078", 
                "2079", 
                "2080", 
                "2081", 
                "2082", 
                "2083", 
                "2084", 
                "2085", 
                "2086", 
                "2087", 
                "2088", 
                "2089", 
                "2090", 
                "2091", 
                "2092", 
                "2093", 
                "2094", 
                "2095", 
                "2096", 
                "2097", 
                "2098", 
                "2099"
            })
            Name (VR02, Package (0x0D)
            {
                "00", 
                "01", 
                "02", 
                "03", 
                "04", 
                "05", 
                "06", 
                "07", 
                "08", 
                "09", 
                "10", 
                "11", 
                "12"
            })
            Name (VR03, Package (0x20)
            {
                "00", 
                "01", 
                "02", 
                "03", 
                "04", 
                "05", 
                "06", 
                "07", 
                "08", 
                "09", 
                "10", 
                "11", 
                "12", 
                "13", 
                "14", 
                "15", 
                "16", 
                "17", 
                "18", 
                "19", 
                "20", 
                "21", 
                "22", 
                "23", 
                "24", 
                "25", 
                "26", 
                "27", 
                "28", 
                "29", 
                "30", 
                "31"
            })
            Name (VR04, Package (0x18)
            {
                "00", 
                "01", 
                "02", 
                "03", 
                "04", 
                "05", 
                "06", 
                "07", 
                "08", 
                "09", 
                "10", 
                "11", 
                "12", 
                "13", 
                "14", 
                "15", 
                "16", 
                "17", 
                "18", 
                "19", 
                "20", 
                "21", 
                "22", 
                "23"
            })
            Name (VR05, Package (0x3C)
            {
                "00", 
                "01", 
                "02", 
                "03", 
                "04", 
                "05", 
                "06", 
                "07", 
                "08", 
                "09", 
                "10", 
                "11", 
                "12", 
                "13", 
                "14", 
                "15", 
                "16", 
                "17", 
                "18", 
                "19", 
                "20", 
                "21", 
                "22", 
                "23", 
                "24", 
                "25", 
                "26", 
                "27", 
                "28", 
                "29", 
                "30", 
                "31", 
                "32", 
                "33", 
                "34", 
                "35", 
                "36", 
                "37", 
                "38", 
                "39", 
                "40", 
                "41", 
                "42", 
                "43", 
                "44", 
                "45", 
                "46", 
                "47", 
                "48", 
                "49", 
                "50", 
                "51", 
                "52", 
                "53", 
                "54", 
                "55", 
                "56", 
                "57", 
                "58", 
                "59"
            })
            Name (PENC, Package (0x01)
            {
                "ascii"
            })
            Name (PKBD, Package (0x03)
            {
                "us", 
                "fr", 
                "gr"
            })
            Name (PTYP, Package (0x3E)
            {
                "pap", 
                "pop", 
                "uhdp0", 
                "mhdp0", 
                "uhdp1", 
                "mhdp1", 
                "uhdp2", 
                "mhdp2", 
                "uhdp3", 
                "mhdp3", 
                "uhdp4", 
                "mhdp4", 
                "uhdp5", 
                "mhdp5", 
                "uhdp6", 
                "mhdp6", 
                "uhdp7", 
                "mhdp7", 
                "uhdp8", 
                "mhdp8", 
                "uhdp9", 
                "mhdp9", 
                "uhdp10", 
                "mhdp10", 
                "uhdp11", 
                "mhdp11", 
                "uhdp12", 
                "mhdp12", 
                "uhdp13", 
                "mhdp13", 
                "uhdp14", 
                "mhdp14", 
                "uhdp15", 
                "mhdp15", 
                "uhdp16", 
                "mhdp16", 
                "uhdp17", 
                "mhdp17", 
                "uhdp18", 
                "mhdp18", 
                "uhdp19", 
                "mhdp19", 
                "unvp0", 
                "mnvp0", 
                "unvp1", 
                "mnvp1", 
                "unvp2", 
                "mnvp2", 
                "unvp3", 
                "mnvp3", 
                "unvp4", 
                "mnvp4", 
                "unvp5", 
                "mnvp5", 
                "unvp6", 
                "mnvp6", 
                "unvp7", 
                "mnvp7", 
                "unvp8", 
                "mnvp8", 
                "unvp9", 
                "mnvp9"
            })
            Name (OPCD, Package (0x0C)
            {
                "WmiOpcodePasswordType", 
                "WmiOpcodePasswordCurrent01", 
                "WmiOpcodePasswordCurrent02", 
                "WmiOpcodePasswordCurrent03", 
                "WmiOpcodePasswordCurrent04", 
                "WmiOpcodePasswordNew01", 
                "WmiOpcodePasswordNew02", 
                "WmiOpcodePasswordNew03", 
                "WmiOpcodePasswordNew04", 
                "WmiOpcodePasswordEncode", 
                "WmiOpcodePasswordSetUpdate", 
                "WmiOpcodePasswordAdmin"
            })
            Name (UMTP, Package (0x1E)
            {
                "muhdp0", 
                "muhdp1", 
                "muhdp2", 
                "muhdp3", 
                "muhdp4", 
                "muhdp5", 
                "muhdp6", 
                "muhdp7", 
                "muhdp8", 
                "muhdp9", 
                "muhdp10", 
                "muhdp11", 
                "muhdp12", 
                "muhdp13", 
                "muhdp14", 
                "muhdp15", 
                "muhdp16", 
                "muhdp17", 
                "muhdp18", 
                "muhdp19", 
                "munvp0", 
                "munvp1", 
                "munvp2", 
                "munvp3", 
                "munvp4", 
                "munvp5", 
                "munvp6", 
                "munvp7", 
                "munvp8", 
                "munvp9"
            })
            Mutex (MWMI, 0x07)
            Name (PCFG, Buffer (0x30){})
            Name (IBUF, Buffer (0x0200){})
            Name (ILEN, Zero)
            Name (PSTR, Buffer (0x10){})
            Method (WQA0, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Name (STR2, Buffer (0x32){})
                BSTL = Zero
                Local4 = WMIS (Zero, Arg0)
                If ((Local4 != 0x05))
                {
                    If ((Local4 != Zero))
                    {
                        Release (MWMI)
                        Return ("")
                    }
                }

                Local0 = DerefOf (ITEM [WITM])
                Local1 = DerefOf (Local0 [Zero])
                Local2 = DerefOf (Local0 [One])
                If ((Local1 < 0x64))
                {
                    Concatenate (Local2, ",", Local6)
                    If ((BID == 0x0F))
                    {
                        Local3 = DerefOf (VSLF [Local1])
                    }
                    ElseIf ((BID == 0x03))
                    {
                        Local3 = DerefOf (VSML [Local1])
                    }
                    ElseIf ((BID == 0x04))
                    {
                        Local3 = DerefOf (VSML [Local1])
                    }
                    Else
                    {
                        Local3 = DerefOf (VSEL [Local1])
                    }

                    Concatenate (Local6, DerefOf (Local3 [WSEL]), Local7)
                    Concatenate (Local7, ";[Optional:", Local6)
                    Local7 = Zero
                    Local0 = Zero
                    Local5 = SizeOf (Local3)
                    While ((Local7 < Local5))
                    {
                        STR2 = DerefOf (Local3 [Local7])
                        Local2 = DerefOf (STR2 [Zero])
                        If ((Local2 != Zero))
                        {
                            If ((Local0 != Zero))
                            {
                                Concatenate (Local6, ",", Local1)
                                Local6 = Local1
                            }

                            Concatenate (Local6, DerefOf (Local3 [Local7]), Local1)
                            Local6 = Local1
                            Local0++
                        }

                        Local7++
                    }

                    Concatenate (Local6, "]", Local7)
                    If ((Local4 == 0x05))
                    {
                        Concatenate (Local7, "[Status:ShowOnly]", Local6)
                        Local7 = Local6
                    }
                }
                ElseIf ((Local1 == 0x64))
                {
                    Local4 = Zero
                    Name (STR1, Buffer (0x81)
                    {
                         0x00                                             // .
                    })
                    STR1 = BSTL /* \_SB_.WMI1.BSTL */
                    BSTL = Zero
                    While ((Local4 < 0x81))
                    {
                        Local5 = DerefOf (STR1 [Local4])
                        If ((Local5 == Zero)){}
                        ElseIf ((Local5 == 0xFB))
                        {
                            Concatenate (Local2, ":", Local7)
                            Local2 = Local7
                        }
                        ElseIf ((Local5 == 0xFC))
                        {
                            Concatenate (Local2, ",", Local7)
                            Local2 = Local7
                        }
                        ElseIf ((Local5 == 0xFD))
                        {
                            Concatenate (Local2, ";", Local7)
                            Local2 = Local7
                        }
                        ElseIf ((Local5 == 0xFE))
                        {
                            Concatenate (Local2, "[Excluded from boot order:", Local7)
                            Local2 = Local7
                        }
                        ElseIf ((Local5 == 0xFF))
                        {
                            Concatenate (Local2, "]", Local7)
                            Local2 = Local7
                        }
                        ElseIf ((Local5 < SizeOf (VLST)))
                        {
                            Concatenate (Local2, DerefOf (VLST [Local5]), Local7)
                            Local2 = Local7
                        }

                        Local4++
                    }

                    Local7 = Local2
                }
                ElseIf ((Local1 == 0x65))
                {
                    Local2 = Zero
                    Local2 = DerefOf (Local0 [One])
                    Concatenate (Local2, ",", Local6)
                    Concatenate (Local6, "[", Local7)
                    Concatenate (Local7, DerefOf (VR04 [RTC3]), Local6)
                    Concatenate (Local6, ":", Local7)
                    Concatenate (Local7, DerefOf (VR05 [RTC4]), Local6)
                    Concatenate (Local6, ":", Local7)
                    Concatenate (Local7, DerefOf (VR05 [RTC5]), Local6)
                    Concatenate (Local6, "]", Local7)
                    If ((Local4 == 0x05))
                    {
                        Concatenate (Local7, "[Status:ShowOnly]", Local6)
                        Local7 = Local6
                    }
                }
                ElseIf ((Local1 == 0x66))
                {
                    Local2 = Zero
                    Local2 = DerefOf (Local0 [One])
                    Concatenate (Local2, ",", Local6)
                    Concatenate (Local6, "[", Local7)
                    Concatenate (Local7, DerefOf (VR02 [RTC1]), Local6)
                    Concatenate (Local6, "/", Local7)
                    Concatenate (Local7, DerefOf (VR03 [RTC2]), Local6)
                    Concatenate (Local6, "/", Local7)
                    Concatenate (Local7, DerefOf (VR01 [RTC0]), Local6)
                    Concatenate (Local6, "]", Local7)
                    If ((Local4 == 0x05))
                    {
                        Concatenate (Local7, "[Status:ShowOnly]", Local6)
                        Local7 = Local6
                    }
                }
                ElseIf ((Local1 == 0x67))
                {
                    Local2 = Zero
                    Local2 = DerefOf (Local0 [One])
                    Concatenate (Local2, ",", Local6)
                    Concatenate (Local6, "[", Local7)
                    Concatenate (Local7, DerefOf (VR04 [RTC6]), Local6)
                    Concatenate (Local6, ":", Local7)
                    Concatenate (Local7, DerefOf (VR05 [RTC7]), Local6)
                    Concatenate (Local6, ":", Local7)
                    Concatenate (Local7, DerefOf (VR05 [RTC8]), Local6)
                    Concatenate (Local6, "]", Local7)
                    If ((Local4 == 0x05))
                    {
                        Concatenate (Local7, "[Status:ShowOnly]", Local6)
                        Local7 = Local6
                    }
                }
                ElseIf ((Local1 == 0x6E))
                {
                    Concatenate (Local2, ":", Local6)
                    Local7 = Zero
                    Concatenate (Local6, ToString (BSTL, Ones), Local7)
                }

                Release (MWMI)
                Return (Local7)
            }

            Method (WQAD, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                BTST = Zero
                Local4 = WMIS (0x07, Arg0)
                If ((Local4 != Zero))
                {
                    Release (MWMI)
                    Return (DerefOf (RETN [Local4]))
                }

                Local0 = DerefOf (BTIF [WITM])
                Local2 = DerefOf (Local0 [One])
                Concatenate (Local2, ": ", Local6)
                Concatenate (Local6, ToString (BTST, Ones), Local7)
                Release (MWMI)
                Return (Local7)
            }

            Method (WMA1, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = WSET (Arg2)
                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WMA2, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = CARG (Arg2)
                If ((Local0 == Zero))
                {
                    If ((ILEN != Zero))
                    {
                        Local0 = CPAS (IBUF, Zero)
                    }

                    If ((Local0 == Zero))
                    {
                        Local0 = WMIS (0x02, Zero)
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WMA3, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = 0x02
                If ((SizeOf (Arg2) <= 0x0200))
                {
                    IBUF = Arg2
                    Local0 = CPAS (IBUF, Zero)
                }

                Local0 = WMIS (0x03, Zero)
                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WMA4, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = WMIS (0x04, Zero)
                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WQA5, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = WMIS (0x05, Zero)
                PCFG [Zero] = WSPM /* \_SB_.WMI1.WSPM */
                PCFG [0x04] = WSPS /* \_SB_.WMI1.WSPS */
                PCFG [0x08] = WSMN /* \_SB_.WMI1.WSMN */
                PCFG [0x0C] = WSMX /* \_SB_.WMI1.WSMX */
                PCFG [0x10] = WSEN /* \_SB_.WMI1.WSEN */
                PCFG [0x14] = WSKB /* \_SB_.WMI1.WSKB */
                PCFG [0x18] = HDP0 /* \_SB_.WMI1.HDP0 */
                PCFG [0x1C] = HDP1 /* \_SB_.WMI1.HDP1 */
                PCFG [0x20] = HDP2 /* \_SB_.WMI1.HDP2 */
                PCFG [0x24] = HDP3 /* \_SB_.WMI1.HDP3 */
                PCFG [0x28] = HDP4 /* \_SB_.WMI1.HDP4 */
                PCFG [0x2C] = HDP5 /* \_SB_.WMI1.HDP5 */
                Release (MWMI)
                Return (PCFG) /* \_SB_.WMI1.PCFG */
            }

            Method (WMA6, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If ((SizeOf (Arg2) == Zero))
                {
                    Local0 = 0x02
                }
                Else
                {
                    Local0 = CARG (Arg2)
                    If ((Local0 == Zero))
                    {
                        If ((ILEN != Zero))
                        {
                            Local0 = SPAS (IBUF)
                        }

                        If ((Local0 == Zero))
                        {
                            If ((E00B == Zero))
                            {
                                E00B = One
                                Local0 = Zero
                            }
                            Else
                            {
                                E00B = Zero
                                Local0 = WMIS (0x06, Zero)
                            }
                        }
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WMA7, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                OPTY = 0xFF
                Local0 = 0x02
                Local5 = SizeOf (Arg2)
                Local5--
                Local7 = Ones
                If ((SizeOf (Arg2) != Zero))
                {
                    IBUF = Arg2
                    Local6 = GSEL (OPCD, IBUF, Zero)
                    If ((Local6 != Ones))
                    {
                        Local4 = DerefOf (OPCD [Local6])
                        Local2 = SizeOf (Local4)
                        Local3 = DerefOf (IBUF [Local2])
                        If (((Local3 == 0x2C) || (Local3 == 0x3A)))
                        {
                            Local2++
                        }

                        If ((Local6 == Zero))
                        {
                            Local7 = GSEL (PTYP, IBUF, Local2)
                            If ((Local7 != Ones))
                            {
                                WPTY = Local7
                                Local0 = Zero
                            }
                            Else
                            {
                                Local7 = GSEL (UMTP, IBUF, Local2)
                                If ((Local7 != Ones))
                                {
                                    WPTY = 0xFE
                                    UMTY = Local7
                                    Local0 = Zero
                                }
                            }
                        }
                        ElseIf ((Local6 == One))
                        {
                            Local1 = Zero
                            PSTR = Zero
                            While ((Local2 < Local5))
                            {
                                PSTR [Local1] = DerefOf (IBUF [Local2])
                                Local2++
                                Local1++
                            }

                            WPAS = PSTR /* \_SB_.WMI1.PSTR */
                            Local0 = Zero
                            Local1 = DerefOf (WPAS [Zero])
                            Local1 = DerefOf (WPAS [One])
                        }
                        ElseIf ((Local6 == 0x02))
                        {
                            Local1 = Zero
                            PSTR = Zero
                            While ((Local2 < Local5))
                            {
                                PSTR [Local1] = DerefOf (IBUF [Local2])
                                Local2++
                                Local1++
                            }

                            UMOP = PSTR /* \_SB_.WMI1.PSTR */
                            Local0 = Zero
                        }
                        ElseIf ((Local6 == 0x03)){}
                        ElseIf ((Local6 == 0x04)){}
                        ElseIf ((Local6 == 0x05))
                        {
                            Local1 = Zero
                            PSTR = Zero
                            While ((Local2 < Local5))
                            {
                                PSTR [Local1] = DerefOf (IBUF [Local2])
                                Local2++
                                Local1++
                            }

                            WPNW = PSTR /* \_SB_.WMI1.PSTR */
                            Local0 = Zero
                        }
                        ElseIf ((Local6 == 0x06))
                        {
                            Local1 = Zero
                            PSTR = Zero
                            While ((Local2 < Local5))
                            {
                                PSTR [Local1] = DerefOf (IBUF [Local2])
                                Local2++
                                Local1++
                            }

                            UMNP = PSTR /* \_SB_.WMI1.PSTR */
                            Local0 = Zero
                        }
                        ElseIf ((Local6 == 0x07)){}
                        ElseIf ((Local6 == 0x08)){}
                        ElseIf ((Local6 == 0x09))
                        {
                            Local7 = GSEL (PENC, IBUF, Local2)
                            If ((Local7 != Ones))
                            {
                                WENC = Local7
                                Local4 = DerefOf (PENC [Local7])
                                Local2 += SizeOf (Local4)
                                Local3 = DerefOf (IBUF [Local2])
                                If ((Local3 == 0x2C))
                                {
                                    Local2++
                                }

                                Local7 = GSEL (PKBD, IBUF, Local2)
                                If ((Local7 != Ones))
                                {
                                    WKBD = Local7
                                    Local0 = Zero
                                }
                            }
                        }
                        ElseIf ((Local6 == 0x0A))
                        {
                            If ((E00B == Zero))
                            {
                                E00B = One
                                Local0 = Zero
                            }
                            Else
                            {
                                E00B = Zero
                                OPTY = Local6
                                Local0 = WMIS (0xCD, Zero)
                            }
                        }
                        ElseIf ((Local6 == 0x0B))
                        {
                            Local1 = Zero
                            PSTR = Zero
                            While ((Local2 < Local5))
                            {
                                PSTR [Local1] = DerefOf (IBUF [Local2])
                                Local2++
                                Local1++
                            }

                            WPAP = PSTR /* \_SB_.WMI1.PSTR */
                            Local0 = Zero
                        }
                        Else
                        {
                            Local0 = One
                        }
                    }

                    IBUF = Zero
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WQC0, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                WMIS (0x08, Zero)
                Release (MWMI)
                Return (RE64) /* \_SB_.WMI1.RE64 */
            }

            Method (WMC1, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                WMIS (0x09, Arg2)
                Release (MWMI)
                Return (Arg2)
            }

            Method (CARG, 1, NotSerialized)
            {
                Local0 = SizeOf (Arg0)
                If ((Local0 == Zero))
                {
                    IBUF = Zero
                    ILEN = Zero
                    Return (Zero)
                }

                If ((ObjectType (Arg0) != 0x02))
                {
                    Return (0x02)
                }

                If ((Local0 >= 0x0200))
                {
                    Return (0x02)
                }

                IBUF = Arg0
                Local0--
                Local1 = DerefOf (IBUF [Local0])
                If (((Local1 == 0x3B) || (Local1 == 0x2A)))
                {
                    IBUF [Local0] = Zero
                    ILEN = Local0
                }
                Else
                {
                    ILEN = SizeOf (Arg0)
                }

                Return (Zero)
            }

            Method (SCMP, 3, NotSerialized)
            {
                Local0 = SizeOf (Arg0)
                If ((Local0 == Zero))
                {
                    Return (Zero)
                }

                Local0++
                Name (STR1, Buffer (Local0){})
                STR1 = Arg0
                Local0--
                Local1 = Zero
                Local2 = Arg2
                While ((Local1 < Local0))
                {
                    Local3 = DerefOf (STR1 [Local1])
                    If ((Local3 >= 0x41))
                    {
                        If ((Local3 <= 0x5A))
                        {
                            Local3 += 0x20
                        }
                    }

                    Local4 = DerefOf (Arg1 [Local2])
                    If ((Local4 >= 0x41))
                    {
                        If ((Local4 <= 0x5A))
                        {
                            Local4 += 0x20
                        }
                    }

                    If ((Local3 != Local4))
                    {
                        Return (Zero)
                    }

                    Local1++
                    Local2++
                }

                Local4 = DerefOf (Arg1 [Local2])
                If ((Local4 == Zero))
                {
                    Return (One)
                }

                If (((Local4 == 0x2C) || ((Local4 == 0x3A) || ((Local4 == 
                    0x2F) || (Local4 == 0x3B)))))
                {
                    Return (One)
                }

                If (((Local4 == 0x5B) || ((Local4 == 0x5D) || ((Local4 == 
                    0x2F) || (Local4 == 0x3B)))))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (GITM, 1, NotSerialized)
            {
                Local0 = Zero
                Local1 = SizeOf (ITEM)
                While ((Local0 < Local1))
                {
                    Local3 = DerefOf (DerefOf (ITEM [Local0]) [One])
                    If (SCMP (Local3, Arg0, Zero))
                    {
                        Return (Local0)
                    }

                    Local0++
                }

                Return (Ones)
            }

            Method (GSEL, 3, NotSerialized)
            {
                Local0 = Zero
                Local1 = SizeOf (Arg0)
                While ((Local0 < Local1))
                {
                    Local2 = DerefOf (Arg0 [Local0])
                    If (SCMP (Local2, Arg1, Arg2))
                    {
                        Return (Local0)
                    }

                    Local0++
                }

                Return (Ones)
            }

            Method (SLEN, 2, NotSerialized)
            {
                Local0 = DerefOf (Arg0 [Arg1])
                Return (SizeOf (Local0))
            }

            Method (CLRP, 0, NotSerialized)
            {
                WPAS = Zero
                WPNW = Zero
                WPAP = Zero
                UMOP = Zero
                UMNP = Zero
            }

            Method (GPAS, 2, NotSerialized)
            {
                Local0 = Arg1
                Local1 = Zero
                While ((Local1 <= 0x80))
                {
                    Local2 = DerefOf (Arg0 [Local0])
                    If (((Local2 == 0x2C) || (Local2 == Zero)))
                    {
                        PSTR [Local1] = Zero
                        Return (Local1)
                    }

                    PSTR [Local1] = Local2
                    Local0++
                    Local1++
                }

                PSTR [Local1] = Zero
                Return (Ones)
            }

            Method (CPAS, 2, NotSerialized)
            {
                Local0 = Arg1
                Local1 = GPAS (Arg0, Local0)
                If ((Local1 == Ones))
                {
                    Return (0x02)
                }

                If ((Local1 == Zero))
                {
                    Return (0x02)
                }

                WPAS = PSTR /* \_SB_.WMI1.PSTR */
                Local0 += Local1
                Local0++
                Local6 = GSEL (PENC, Arg0, Local0)
                If ((Local6 == Ones))
                {
                    Return (0x02)
                }

                WENC = Local6
                If ((Local6 == Zero))
                {
                    Local0 += SLEN (PENC, Zero)
                    If ((DerefOf (Arg0 [Local0]) != 0x2C))
                    {
                        Return (0x02)
                    }

                    Local0++
                    Local6 = GSEL (PKBD, Arg0, Local0)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    WKBD = Local6
                }

                Return (Zero)
            }

            Method (SPAS, 1, NotSerialized)
            {
                Local7 = Ones
                Local6 = GSEL (PTYP, Arg0, Zero)
                If ((Local6 == Ones))
                {
                    WPTY = 0xFE
                    Local7 = GSEL (UMTP, Arg0, Zero)
                    UMTY = Local7
                    If ((Local7 == Ones))
                    {
                        Return (0x02)
                    }
                }

                If ((Local6 != Ones))
                {
                    WPTY = Local6
                    Local0 = SLEN (PTYP, Local6)
                }

                If ((Local7 != Ones))
                {
                    Local0 = SLEN (UMTP, Local7)
                }

                If ((DerefOf (Arg0 [Local0]) != 0x2C))
                {
                    Return (0x02)
                }

                Local0++
                Local1 = GPAS (Arg0, Local0)
                If ((Local1 == Ones))
                {
                    Return (0x02)
                }

                If ((Local1 == Zero))
                {
                    PSTR = Zero
                }

                WPAS = PSTR /* \_SB_.WMI1.PSTR */
                Local0 += Local1
                If ((DerefOf (Arg0 [Local0]) != 0x2C))
                {
                    Return (0x02)
                }

                If ((Local7 != Ones))
                {
                    Local0++
                    Local1 = GPAS (Arg0, Local0)
                    If ((Local1 == Ones))
                    {
                        Return (0x02)
                    }

                    If ((Local1 == Zero))
                    {
                        PSTR = Zero
                    }

                    UMOP = PSTR /* \_SB_.WMI1.PSTR */
                    Local0 += Local1
                    If ((DerefOf (Arg0 [Local0]) != 0x2C))
                    {
                        Return (0x02)
                    }
                }

                Local0++
                Local1 = GPAS (Arg0, Local0)
                If ((Local1 == Ones))
                {
                    Return (0x02)
                }

                If ((Local1 == Zero))
                {
                    PSTR = Zero
                }

                WPNW = PSTR /* \_SB_.WMI1.PSTR */
                If ((Local7 != Ones))
                {
                    Local0 += Local1
                    If ((DerefOf (Arg0 [Local0]) != 0x2C))
                    {
                        Return (0x02)
                    }

                    Local0++
                    Local1 = GPAS (Arg0, Local0)
                    If ((Local1 == Ones))
                    {
                        Return (0x02)
                    }

                    If ((Local1 == Zero))
                    {
                        PSTR = Zero
                    }

                    UMNP = PSTR /* \_SB_.WMI1.PSTR */
                }

                Local0 += Local1
                Local0++
                Local6 = GSEL (PENC, Arg0, Local0)
                If ((Local6 == Ones))
                {
                    Return (0x02)
                }

                WENC = Local6
                If ((Local6 == Zero))
                {
                    Local0 += SLEN (PENC, Zero)
                    If ((DerefOf (Arg0 [Local0]) != 0x2C))
                    {
                        Return (0x02)
                    }

                    Local0++
                    Local6 = GSEL (PKBD, Arg0, Local0)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    WKBD = Local6
                }

                Local0 += SLEN (PKBD, Zero)
                If ((DerefOf (Arg0 [Local0]) != 0x2C))
                {
                    PSTR = Zero
                    WPAP = PSTR /* \_SB_.WMI1.PSTR */
                    Return (Zero)
                }

                Local0++
                Local1 = GPAS (Arg0, Local0)
                If ((Local1 == Ones))
                {
                    Return (0x02)
                }

                If ((Local1 == Zero))
                {
                    PSTR = Zero
                }

                WPAP = PSTR /* \_SB_.WMI1.PSTR */
                Return (Zero)
            }

            Method (WSET, 1, NotSerialized)
            {
                Local0 = SizeOf (Arg0)
                If (((Local0 == Zero) || (Local0 > 0x0200)))
                {
                    Return (0x02)
                }

                Local0++
                IBUF = Arg0
                Local1 = GITM (IBUF)
                If ((Local1 == Ones))
                {
                    Return (0x02)
                }

                WITM = Local1
                Local3 = DerefOf (ITEM [Local1])
                Local4 = DerefOf (Local3 [One])
                Local2 = SizeOf (Local4)
                Local2++
                Local4 = DerefOf (Local3 [Zero])
                If ((Local4 < 0x64))
                {
                    If ((BID == 0x0F))
                    {
                        Local5 = DerefOf (VSLF [Local4])
                    }
                    ElseIf ((BID == 0x03))
                    {
                        Local3 = DerefOf (VSML [Local1])
                    }
                    ElseIf ((BID == 0x04))
                    {
                        Local3 = DerefOf (VSML [Local1])
                    }
                    Else
                    {
                        Local5 = DerefOf (VSEL [Local4])
                    }

                    Local6 = GSEL (Local5, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    WSEL = Local6
                    Local2 += SLEN (Local5, Local6)
                    Local2++
                    Local4 = DerefOf (IBUF [Local2])
                }
                ElseIf ((Local4 == 0x64))
                {
                    Name (STR1, Buffer (0x81)
                    {
                         0x00                                             // .
                    })
                    Local7 = Zero
                    BSTL = Zero
                    While ((Local2 < Local0))
                    {
                        Local4 = DerefOf (IBUF [Local2])
                        If (((Local4 == 0x5B) || ((Local4 == 0x5D) || ((Local4 == 
                            0x3A) || (Local4 == 0x3B)))))
                        {
                            Local2++
                        }
                        ElseIf ((Local4 == 0x2C))
                        {
                            Break
                        }
                        Else
                        {
                            Local6 = GSEL (VLST, IBUF, Local2)
                            If ((Local6 == Ones))
                            {
                                STR1 [Local7] = DerefOf (IBUF [Local2])
                                Break
                            }
                            Else
                            {
                                If ((Local6 == Zero))
                                {
                                    STR1 [Local7] = 0xFE
                                }
                                Else
                                {
                                    STR1 [Local7] = Local6
                                }

                                Local7++
                                Local2 += SLEN (VLST, Local6)
                            }
                        }
                    }

                    BSTL = STR1 /* \_SB_.WMI1.WSET.STR1 */
                }
                ElseIf ((Local4 == 0x65))
                {
                    RTC3 = Zero
                    RTC4 = Zero
                    RTC5 = Zero
                    TMCG = Zero
                    While ((Local2 < Local0))
                    {
                        Local4 = DerefOf (IBUF [Local2])
                        If ((Local4 == 0x5B))
                        {
                            Local2++
                            Break
                        }
                        Else
                        {
                            Local2++
                        }
                    }

                    Local6 = GSEL (VR04, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    If (((Local6 < Zero) || (Local6 >= 0x18)))
                    {
                        Return (0x02)
                    }

                    RTC3 = Local6
                    Local2 += SLEN (VR04, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VR05, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        If (((Local6 < Zero) || (Local6 >= 0x3C)))
                        {
                            Return (0x02)
                        }

                        RTC4 = Local6
                        Local2 += SLEN (VR05, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VR05, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        If (((Local6 < Zero) || (Local6 >= 0x3C)))
                        {
                            Return (0x02)
                        }

                        RTC5 = Local6
                        Local2 += SLEN (VR05, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    TMCG = One
                }
                ElseIf ((Local4 == 0x66))
                {
                    RTC0 = Zero
                    RTC1 = Zero
                    RTC2 = Zero
                    DTCG = Zero
                    While ((Local2 < Local0))
                    {
                        Local4 = DerefOf (IBUF [Local2])
                        If ((Local4 == 0x5B))
                        {
                            Local2++
                            Break
                        }
                        Else
                        {
                            Local2++
                        }
                    }

                    Local6 = GSEL (VR02, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    If (((Local6 < One) || (Local6 > 0x0C)))
                    {
                        Return (0x02)
                    }

                    RTC1 = Local6
                    Local2 += SLEN (VR02, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                    If (((Local2 < Local0) && (Local4 == 0x2F)))
                    {
                        Local2++
                        Local6 = GSEL (VR03, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        If ((Local6 < One))
                        {
                            Return (0x02)
                        }

                        If (((RTC1 == One) || ((RTC1 == 0x03) || ((RTC1 == 
                            0x05) || ((RTC1 == 0x07) || ((RTC1 == 0x08) || ((RTC1 == 0x0A) || 
                            (RTC1 == 0x0C))))))))
                        {
                            If ((Local6 > 0x1F))
                            {
                                Return (0x02)
                            }
                        }

                        If (((RTC1 == 0x04) || ((RTC1 == 0x06) || ((RTC1 == 
                            0x09) || (RTC1 == 0x0B)))))
                        {
                            If ((Local6 > 0x1E))
                            {
                                Return (0x02)
                            }
                        }

                        RTC2 = Local6
                        Local2 += SLEN (VR03, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x2F)))
                    {
                        Local2++
                        Local6 = GSEL (VR01, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        RTC0 = Local6
                        If (((Local6 < Zero) || (Local6 >= 0x65)))
                        {
                            Return (0x02)
                        }

                        Local2 += SLEN (VR01, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    Local6 = Zero
                    Local6 = (0x07D5 + RTC0) /* \_SB_.WMI1.RTC0 */
                    If ((RTC1 == 0x02))
                    {
                        If ((((Local6 % 0x04) == Zero) || (((Local6 % 
                            0x64) == Zero) || ((Local6 % 0x0190) == Zero))))
                        {
                            If ((RTC2 > 0x1D))
                            {
                                Return (0x02)
                            }
                        }
                        ElseIf ((RTC2 > 0x1C))
                        {
                            Return (0x02)
                        }
                    }

                    DTCG = One
                }
                ElseIf ((Local4 == 0x67))
                {
                    RTC6 = Zero
                    RTC7 = Zero
                    RTC8 = Zero
                    UMCG = Zero
                    While ((Local2 < Local0))
                    {
                        Local4 = DerefOf (IBUF [Local2])
                        If ((Local4 == 0x5B))
                        {
                            Local2++
                            Break
                        }
                        Else
                        {
                            Local2++
                        }
                    }

                    Local6 = GSEL (VR04, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    If (((Local6 < Zero) || (Local6 >= 0x18)))
                    {
                        Return (0x02)
                    }

                    RTC6 = Local6
                    Local2 += SLEN (VR04, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VR05, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        If (((Local6 < Zero) || (Local6 >= 0x3C)))
                        {
                            Return (0x02)
                        }

                        RTC7 = Local6
                        Local2 += SLEN (VR05, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VR05, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        If (((Local6 < Zero) || (Local6 >= 0x3C)))
                        {
                            Return (0x02)
                        }

                        RTC8 = Local6
                        Local2 += SLEN (VR05, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    UMCG = One
                }
                ElseIf ((Local4 == 0x6E))
                {
                    BSTL = Zero
                    Local5 = Zero
                    Local0--
                    Local0--
                    While ((Local2 < Local0))
                    {
                        BSTL [Local5] = DerefOf (IBUF [Local2])
                        Local6 = DerefOf (IBUF [Local2])
                        Local5++
                        Local2++
                    }
                }

                If (((Local4 == 0x2C) && (Local2 < Local0)))
                {
                    Local2++
                    Local0 = CPAS (IBUF, Local2)
                    If ((Local0 != Zero))
                    {
                        Return (Local0)
                    }
                }

                Local0 = WMIS (One, Zero)
                Return (Local0)
            }

            Name (WQCA, Buffer (0x0B77)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0x67, 0x0B, 0x00, 0x00, 0x90, 0x4B, 0x00, 0x00,  // g....K..
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x28, 0xCB, 0xA4, 0x00, 0x01, 0x06, 0x18, 0x42,  // (......B
                /* 0020 */  0x10, 0x19, 0x10, 0x0A, 0x0C, 0x21, 0x02, 0x0B,  // .....!..
                /* 0028 */  0x83, 0x50, 0x44, 0x18, 0x14, 0xA0, 0x45, 0x41,  // .PD...EA
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,  // .....!..
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,  // ..p.@...
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,  // (r."....
                /* 0048 */  0x31, 0x0A, 0x88, 0x14, 0x40, 0x48, 0x26, 0x84,  // 1...@H&.
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,  // D.S!p.._
                /* 0058 */  0x01, 0x08, 0x1D, 0xA2, 0xC9, 0xA0, 0x00, 0xA7,  // ........
                /* 0060 */  0x08, 0x82, 0xB4, 0x65, 0x01, 0xBA, 0x05, 0xF8,  // ...e....
                /* 0068 */  0x16, 0xA0, 0x1D, 0x42, 0x68, 0x15, 0x0A, 0xD8,  // ...Bh...
                /* 0070 */  0x53, 0x9F, 0x60, 0xB2, 0x28, 0x40, 0x36, 0x98,  // S.`.(@6.
                /* 0078 */  0x6C, 0xC3, 0x91, 0x61, 0x30, 0x81, 0x63, 0x40,  // l..a0.c@
                /* 0080 */  0x89, 0x19, 0x03, 0x4A, 0xE7, 0x14, 0x64, 0x13,  // ...J..d.
                /* 0088 */  0x58, 0xD0, 0x85, 0xA2, 0x68, 0x1A, 0x51, 0x12,  // X...h.Q.
                /* 0090 */  0x1C, 0xD4, 0x31, 0x44, 0x08, 0x5E, 0xAE, 0x00,  // ..1D.^..
                /* 0098 */  0xEF, 0x23, 0x90, 0x69, 0x68, 0x02, 0xCF, 0x63,  // .#.ih..c
                /* 00A0 */  0x48, 0x00, 0xA1, 0x8B, 0x94, 0x70, 0x18, 0x94,  // H....p..
                /* 00A8 */  0x07, 0x10, 0xC9, 0x19, 0x28, 0x0A, 0xD8, 0x5E,  // ....(..^
                /* 00B0 */  0xA7, 0xA1, 0x7D, 0x6B, 0x94, 0x44, 0x12, 0x1C,  // ..}k.D..
                /* 00B8 */  0x6A, 0x8C, 0x96, 0x28, 0xC0, 0xFC, 0xB8, 0x34,  // j..(...4
                /* 00C0 */  0xDC, 0x03, 0xF1, 0x78, 0x43, 0x32, 0x69, 0x43,  // ...xC2iC
                /* 00C8 */  0x41, 0x0D, 0xDC, 0x93, 0x3A, 0x25, 0x4F, 0x33,  // A...:%O3
                /* 00D0 */  0x62, 0xC9, 0x53, 0x14, 0x4C, 0x02, 0x8F, 0x82,  // b.S.L...
                /* 00D8 */  0xA1, 0x71, 0x82, 0xB2, 0x20, 0xE4, 0x60, 0x98,  // .q.. .`.
                /* 00E0 */  0x28, 0xC0, 0x93, 0xF0, 0x0C, 0x8B, 0x9F, 0xD7,  // (.......
                /* 00E8 */  0xF9, 0x92, 0x83, 0x40, 0x8C, 0x04, 0x3E, 0x10,  // ...@..>.
                /* 00F0 */  0x78, 0x34, 0x47, 0x8C, 0x05, 0x0A, 0x17, 0xF0,  // x4G.....
                /* 00F8 */  0x7C, 0x8E, 0x21, 0x72, 0xDC, 0x83, 0x8D, 0x71,  // |.!r...q
                /* 0100 */  0x14, 0x91, 0x13, 0xBC, 0x01, 0x44, 0x31, 0x5A,  // .....D1Z
                /* 0108 */  0x41, 0xB3, 0x16, 0x62, 0xB0, 0x68, 0x06, 0xEB,  // A..b.h..
                /* 0110 */  0x19, 0x9C, 0x1C, 0x03, 0x8E, 0x00, 0xF3, 0xFF,  // ........
                /* 0118 */  0x3F, 0x2C, 0xD8, 0xA3, 0x00, 0xAB, 0x83, 0xD2,  // ?,......
                /* 0120 */  0x34, 0x4C, 0xD0, 0xBD, 0x00, 0x6B, 0x02, 0x8C,  // 4L...k..
                /* 0128 */  0x09, 0xD0, 0x88, 0x21, 0x65, 0x02, 0x9C, 0xDD,  // ...!e...
                /* 0130 */  0x16, 0x34, 0xA3, 0xB6, 0x04, 0x98, 0x13, 0xA0,  // .4......
                /* 0138 */  0x4D, 0x80, 0x37, 0x04, 0xA1, 0x9C, 0x67, 0x94,  // M.7...g.
                /* 0140 */  0x63, 0x39, 0xC5, 0x28, 0x8F, 0x02, 0x31, 0x5F,  // c9.(..1_
                /* 0148 */  0x05, 0x82, 0x46, 0x89, 0x11, 0xF3, 0x5C, 0xE2,  // ..F...\.
                /* 0150 */  0x1A, 0x36, 0x42, 0x8C, 0x90, 0xA7, 0x10, 0x28,  // .6B....(
                /* 0158 */  0x6E, 0xFB, 0x83, 0x20, 0x83, 0xC6, 0x8D, 0xDE,  // n.. ....
                /* 0160 */  0x67, 0x85, 0xB3, 0x3A, 0x81, 0xA3, 0x7F, 0x4E,  // g..:...N
                /* 0168 */  0x30, 0x81, 0xA7, 0x7C, 0x60, 0x4F, 0x06, 0x27,  // 0..|`O.'
                /* 0170 */  0x70, 0xAC, 0x51, 0x63, 0x9C, 0x4A, 0x02, 0x47,  // p.Qc.J.G
                /* 0178 */  0x7E, 0x3E, 0x48, 0x03, 0x88, 0x22, 0xC1, 0xA3,  // ~>H.."..
                /* 0180 */  0xCE, 0x0A, 0x3E, 0x17, 0x78, 0x68, 0x07, 0xED,  // ..>.xh..
                /* 0188 */  0x39, 0x9E, 0x40, 0x90, 0x43, 0x38, 0x82, 0xE7,  // 9.@.C8..
                /* 0190 */  0x85, 0x07, 0x02, 0x8F, 0x81, 0xDD, 0x1C, 0x7C,  // .......|
                /* 0198 */  0x04, 0xF0, 0x09, 0x01, 0xEF, 0x1A, 0x50, 0x57,  // ......PW
                /* 01A0 */  0x83, 0x07, 0x03, 0x36, 0xE8, 0x70, 0x98, 0xF1,  // ...6.p..
                /* 01A8 */  0x7A, 0xF8, 0xE1, 0x4E, 0xE0, 0x24, 0x1F, 0x2F,  // z..N.$./
                /* 01B0 */  0xF8, 0x51, 0xC3, 0x83, 0xC3, 0xCD, 0xF3, 0x64,  // .Q.....d
                /* 01B8 */  0x8E, 0xAC, 0x54, 0x01, 0x66, 0x0F, 0x07, 0x3A,  // ..T.f..:
                /* 01C0 */  0x46, 0xF8, 0xAC, 0xC1, 0xCE, 0x00, 0x18, 0xF9,  // F.......
                /* 01C8 */  0x83, 0x40, 0x8D, 0xCC, 0xD0, 0x1E, 0xF7, 0x2B,  // .@.....+
                /* 01D0 */  0x87, 0x21, 0x9F, 0x13, 0x0E, 0x8B, 0x89, 0x3D,  // .!.....=
                /* 01D8 */  0x73, 0xD0, 0xF1, 0x80, 0xFF, 0x2A, 0xF2, 0x94,  // s....*..
                /* 01E0 */  0xE1, 0xE9, 0x7B, 0xBE, 0x26, 0x18, 0x76, 0xE0,  // ..{.&.v.
                /* 01E8 */  0xE8, 0x81, 0x18, 0xBA, 0xF5, 0x61, 0x68, 0x1A,  // .....ah.
                /* 01F0 */  0xBE, 0x7D, 0xF8, 0xBC, 0x00, 0xE3, 0x14, 0xE0,  // .}......
                /* 01F8 */  0x91, 0xFB, 0x88, 0x62, 0x10, 0xFF, 0xFF, 0x8F,  // ...b....
                /* 0200 */  0x16, 0xFC, 0x34, 0xC1, 0xAE, 0x07, 0xA7, 0xF1,  // ..4.....
                /* 0208 */  0x1C, 0xE0, 0xE1, 0x9C, 0x95, 0x0F, 0x13, 0x60,  // .......`
                /* 0210 */  0xBB, 0x9D, 0xB0, 0x11, 0xBD, 0x5B, 0x78, 0x34,  // .....[x4
                /* 0218 */  0xD8, 0x53, 0x00, 0xF8, 0x4E, 0x2F, 0xE0, 0xBC,  // .S..N/..
                /* 0220 */  0x6B, 0xB0, 0xC1, 0xC2, 0x38, 0xBD, 0x80, 0xFF,  // k...8...
                /* 0228 */  0x7C, 0xE0, 0x01, 0xF0, 0x63, 0x84, 0x07, 0xC0,  // |...c...
                /* 0230 */  0xC1, 0x9F, 0x3E, 0xCE, 0xCF, 0x4A, 0x67, 0x85,  // ..>..Jg.
                /* 0238 */  0x1C, 0x16, 0xBC, 0x33, 0x0E, 0x8C, 0x51, 0xF0,  // ...3..Q.
                /* 0240 */  0x60, 0x07, 0x1A, 0x1A, 0xE6, 0x2D, 0xA0, 0x28,  // `....-.(
                /* 0248 */  0x30, 0xA8, 0x33, 0x0D, 0xF0, 0xFC, 0xFF, 0x9F,  // 0.3.....
                /* 0250 */  0x69, 0xC0, 0x8D, 0xFD, 0xDC, 0x00, 0x9E, 0x5B,  // i......[
                /* 0258 */  0x84, 0x11, 0x8E, 0xC6, 0x33, 0x7B, 0x71, 0x78,  // ....3{qx
                /* 0260 */  0x42, 0xB1, 0x66, 0x38, 0xE1, 0x1C, 0x47, 0x34,  // B.f8..G4
                /* 0268 */  0x83, 0xF2, 0x63, 0x0D, 0xEC, 0xA3, 0xC0, 0x73,  // ..c....s
                /* 0270 */  0xCC, 0xA3, 0xC0, 0x33, 0x44, 0x8C, 0x67, 0x1A,  // ...3D.g.
                /* 0278 */  0x1F, 0x69, 0x5E, 0x67, 0x5E, 0x6D, 0x7C, 0x3E,  // .i^g^m|>
                /* 0280 */  0xF0, 0xB1, 0xC6, 0xD7, 0x97, 0x28, 0x11, 0x1E,  // .....(..
                /* 0288 */  0x6B, 0x0C, 0x1C, 0xF2, 0xB1, 0xC6, 0x10, 0x4F,  // k......O
                /* 0290 */  0x35, 0x21, 0xA2, 0x06, 0x0A, 0x1B, 0x25, 0xBE,  // 5!....%.
                /* 0298 */  0x71, 0x42, 0x04, 0x79, 0xAC, 0x01, 0x73, 0xFC,  // qB.y..s.
                /* 02A0 */  0x63, 0x0D, 0xA0, 0xF4, 0xFF, 0x7F, 0xAC, 0x01,  // c.......
                /* 02A8 */  0x4E, 0x91, 0x8F, 0x35, 0xA0, 0x0C, 0x76, 0xAC,  // N..5..v.
                /* 02B0 */  0x01, 0xDD, 0x79, 0x02, 0xF8, 0x1C, 0x04, 0xC0,  // ..y.....
                /* 02B8 */  0x77, 0x6C, 0xC1, 0x9D, 0x6C, 0xC0, 0x33, 0x25,  // wl..l.3%
                /* 02C0 */  0xDC, 0x90, 0xE0, 0x1D, 0x6E, 0x80, 0xEF, 0xFF,  // ....n...
                /* 02C8 */  0xFF, 0x70, 0x03, 0xBE, 0x2C, 0x0F, 0x0E, 0x13,  // .p..,...
                /* 02D0 */  0x28, 0xC8, 0x8B, 0x40, 0x81, 0x9E, 0x06, 0x14,  // (..@....
                /* 02D8 */  0xC6, 0x87, 0x1B, 0xC0, 0xD1, 0x31, 0x0A, 0x77,  // .....1.w
                /* 02E0 */  0x7A, 0x80, 0x7B, 0xAF, 0x60, 0x67, 0x87, 0x27,  // z.{.`g.'
                /* 02E8 */  0x40, 0xB8, 0xA2, 0xCF, 0x36, 0x50, 0xEF, 0x2E,  // @...6P..
                /* 02F0 */  0xC5, 0x8D, 0x51, 0xD7, 0x99, 0xA7, 0x1A, 0x9F,  // ..Q.....
                /* 02F8 */  0x67, 0xA2, 0x3C, 0xD3, 0x3C, 0xCE, 0xBC, 0xCF,  // g.<.<...
                /* 0300 */  0xF8, 0x70, 0xF3, 0x6A, 0xE3, 0x29, 0xC4, 0xF1,  // .p.j.)..
                /* 0308 */  0xD5, 0xC6, 0x88, 0x6F, 0x13, 0x6F, 0x81, 0xC6,  // ...o.o..
                /* 0310 */  0x3D, 0xB8, 0x17, 0x9B, 0x77, 0x1C, 0x83, 0x1C,  // =...w...
                /* 0318 */  0x4D, 0x84, 0x57, 0x1D, 0x86, 0xF3, 0x68, 0x03,  // M.W...h.
                /* 0320 */  0x5E, 0x21, 0xAF, 0x14, 0x59, 0x38, 0xDA, 0x80,  // ^!..Y8..
                /* 0328 */  0xE6, 0xFF, 0x7F, 0xB4, 0x01, 0xDC, 0x9F, 0x60,  // .......`
                /* 0330 */  0x70, 0x27, 0x14, 0xB0, 0x1C, 0x19, 0xD8, 0x5D,  // p'.....]
                /* 0338 */  0x0E, 0xDE, 0xF9, 0x04, 0xF0, 0x92, 0x78, 0xFD,  // ......x.
                /* 0340 */  0x3A, 0x70, 0x38, 0x2D, 0x88, 0x6C, 0xBC, 0x00,  // :p8-.l..
                /* 0348 */  0x7C, 0x06, 0xA0, 0x6A, 0x80, 0xF4, 0xFF, 0x9F,  // |..j....
                /* 0350 */  0x24, 0x6C, 0x82, 0xE9, 0xC9, 0x05, 0xEF, 0x03,  // $l......
                /* 0358 */  0x81, 0x73, 0x93, 0x28, 0xF9, 0xB0, 0x28, 0x9C,  // .s.(..(.
                /* 0360 */  0xB3, 0x1E, 0x43, 0x28, 0x88, 0x01, 0x1D, 0xE4,  // ..C(....
                /* 0368 */  0x30, 0x81, 0x3E, 0xA1, 0xF8, 0x18, 0xF2, 0x2C,  // 0.>....,
                /* 0370 */  0xF0, 0xDC, 0xEC, 0x41, 0xF9, 0xBC, 0xC3, 0xCE,  // ...A....
                /* 0378 */  0x1F, 0xEC, 0x28, 0xE1, 0x91, 0xFB, 0x90, 0xC0,  // ..(.....
                /* 0380 */  0x7F, 0x31, 0x9E, 0x8D, 0xD1, 0xAD, 0xE6, 0x94,  // .1......
                /* 0388 */  0x82, 0x02, 0xF3, 0x31, 0x84, 0x13, 0xD4, 0x75,  // ...1...u
                /* 0390 */  0x8F, 0x00, 0x99, 0xBE, 0x83, 0x02, 0x28, 0x80,  // ......(.
                /* 0398 */  0x7C, 0x2B, 0xF0, 0x39, 0xE0, 0xC9, 0x80, 0x8D,  // |+.9....
                /* 03A0 */  0xE1, 0x51, 0xC0, 0x68, 0x46, 0xE7, 0xE1, 0x27,  // .Q.hF..'
                /* 03A8 */  0x8B, 0x8A, 0x3B, 0x59, 0x0A, 0xE2, 0xC9, 0xFA,  // ..;Y....
                /* 03B0 */  0xA6, 0xED, 0xC9, 0xE2, 0x66, 0xE2, 0x5B, 0x85,  // ....f.[.
                /* 03B8 */  0x67, 0xF4, 0xAE, 0xE5, 0x39, 0x7A, 0xC2, 0xBE,  // g...9z..
                /* 03C0 */  0x85, 0xC0, 0x3A, 0x0C, 0x84, 0x7C, 0x30, 0xF0,  // ..:..|0.
                /* 03C8 */  0x34, 0x0C, 0xE7, 0xC9, 0x72, 0x38, 0x4F, 0x96,  // 4...r8O.
                /* 03D0 */  0x8F, 0xC5, 0x97, 0x10, 0xF0, 0xDD, 0x28, 0x70,  // ......(p
                /* 03D8 */  0xB3, 0x05, 0xC3, 0xFF, 0x7F, 0xB6, 0x78, 0x78,  // ......xx
                /* 03E0 */  0x4C, 0xAC, 0x51, 0xD1, 0x8B, 0x90, 0x87, 0xC7,  // L.Q.....
                /* 03E8 */  0x2F, 0x07, 0x9E, 0xCF, 0x33, 0xC2, 0x51, 0x3E,  // /...3.Q>
                /* 03F0 */  0x49, 0xE0, 0x30, 0x9E, 0x48, 0x3C, 0x44, 0xDF,  // I.0.H<D.
                /* 03F8 */  0x89, 0x60, 0x4D, 0xE4, 0xA4, 0x7D, 0x5B, 0x38,  // .`M..}[8
                /* 0400 */  0xD9, 0xA0, 0x2F, 0x68, 0x98, 0x3B, 0x11, 0x18,  // ../h.;..
                /* 0408 */  0x2F, 0xB2, 0x30, 0xF3, 0xDC, 0xAA, 0x50, 0x91,  // /.0...P.
                /* 0410 */  0x6E, 0x55, 0x80, 0xD8, 0x61, 0xBD, 0xF4, 0xF8,  // nU..a...
                /* 0418 */  0x58, 0x05, 0xF7, 0x56, 0x05, 0xF7, 0x4A, 0xF5,  // X..V..J.
                /* 0420 */  0xAC, 0x70, 0x8C, 0xE1, 0x1F, 0xA5, 0x62, 0x9C,  // .p....b.
                /* 0428 */  0xD2, 0x8B, 0xA7, 0x81, 0xC2, 0xFC, 0xFF, 0xA3,  // ........
                /* 0430 */  0xC4, 0x7B, 0xAB, 0xF2, 0x18, 0xDF, 0xAA, 0xD8,  // .{......
                /* 0438 */  0x05, 0x2A, 0x4C, 0xAC, 0x57, 0x2B, 0xA3, 0xBE,  // .*L.W+..
                /* 0440 */  0x4E, 0x84, 0x0B, 0x14, 0x24, 0xD2, 0x8B, 0x55,  // N...$..U
                /* 0448 */  0x94, 0xC8, 0xF1, 0x0D, 0xF9, 0x56, 0x05, 0x5E,  // .....V.^
                /* 0450 */  0x29, 0xB7, 0x2A, 0x80, 0x26, 0x68, 0x6F, 0x55,  // ).*.&hoU
                /* 0458 */  0x60, 0xBC, 0x36, 0xB0, 0x1B, 0x12, 0x2C, 0xA0,  // `.6...,.
                /* 0460 */  0xD7, 0x2A, 0xB8, 0xFF, 0xFF, 0x6B, 0x15, 0xB0,  // .*...k..
                /* 0468 */  0xCF, 0x7C, 0xAD, 0xA2, 0x79, 0xAF, 0x55, 0xA8,  // .|..y.U.
                /* 0470 */  0x53, 0x89, 0xF5, 0x5C, 0xAB, 0xC8, 0x2C, 0xE1,  // S..\..,.
                /* 0478 */  0xDF, 0xAB, 0x00, 0x0E, 0xFD, 0xFF, 0xEF, 0x55,  // .......U
                /* 0480 */  0x00, 0x83, 0x6E, 0x45, 0x98, 0x83, 0x15, 0xBC,  // ..nE....
                /* 0488 */  0x84, 0xF7, 0x2A, 0x1A, 0x67, 0x19, 0x0A, 0xB7,  // ..*.g...
                /* 0490 */  0x20, 0x0A, 0xE3, 0x7B, 0x15, 0xE0, 0xE0, 0xFF,  //  ..{....
                /* 0498 */  0x7F, 0xAF, 0x82, 0x7F, 0x5D, 0xC1, 0x0D, 0x19,  // ....]...
                /* 04A0 */  0x2E, 0x58, 0x94, 0x60, 0x3E, 0x84, 0x78, 0x3A,  // .X.`>.x:
                /* 04A8 */  0x47, 0xFC, 0x90, 0xF0, 0x12, 0xF0, 0x90, 0xE3,  // G.......
                /* 04B0 */  0x01, 0x3F, 0x10, 0xF8, 0x6A, 0x05, 0xB6, 0x53,  // .?..j..S
                /* 04B8 */  0xEF, 0x59, 0xBE, 0x4B, 0xBD, 0xF3, 0xF2, 0xE3,  // .Y.K....
                /* 04C0 */  0xD5, 0x5B, 0x95, 0x0F, 0xBE, 0xB1, 0xDE, 0x19,  // .[......
                /* 04C8 */  0x5E, 0xAD, 0x3C, 0x92, 0x28, 0x27, 0x11, 0xCA,  // ^.<.('..
                /* 04D0 */  0x37, 0xAB, 0xB7, 0x2A, 0xA3, 0x44, 0x7C, 0x19,  // 7..*.D|.
                /* 04D8 */  0xF6, 0x09, 0xD8, 0xD0, 0x46, 0x79, 0xAA, 0x88,  // ....Fy..
                /* 04E0 */  0x6E, 0xBC, 0x57, 0x2B, 0xF0, 0xCA, 0xB9, 0x5A,  // n.W+...Z
                /* 04E8 */  0x01, 0xAA, 0xFF, 0xFF, 0x57, 0x2B, 0x70, 0x0F,  // ....W+p.
                /* 04F0 */  0xFF, 0xD5, 0x0A, 0x7C, 0x37, 0x07, 0xEC, 0x35,  // ...|7..5
                /* 04F8 */  0x09, 0xEE, 0xE5, 0x0A, 0xF0, 0x92, 0xFD, 0x72,  // .......r
                /* 0500 */  0x45, 0x73, 0x5F, 0xAE, 0x50, 0xA2, 0x20, 0xA4,  // Es_.P. .
                /* 0508 */  0x08, 0x48, 0xF3, 0x04, 0xCF, 0xED, 0x0A, 0x70,  // .H.....p
                /* 0510 */  0xF1, 0xFF, 0xBF, 0x5D, 0x01, 0x6C, 0x0B, 0x77,  // ...].l.w
                /* 0518 */  0xBB, 0x02, 0x7A, 0x77, 0x23, 0x30, 0xFE, 0xFF,  // ..zw#0..
                /* 0520 */  0xEF, 0x46, 0x0C, 0xE5, 0xDD, 0x08, 0x7B, 0xC1,  // .F....{.
                /* 0528 */  0xC2, 0xE7, 0xBB, 0x60, 0xD1, 0x30, 0x2B, 0x51,  // ...`.0+Q
                /* 0530 */  0xB4, 0x35, 0x51, 0x18, 0x5F, 0xB0, 0x00, 0x47,  // .5Q._..G
                /* 0538 */  0x87, 0x50, 0xDC, 0xA8, 0xE1, 0x5E, 0x9B, 0x7C,  // .P...^.|
                /* 0540 */  0xE7, 0xF1, 0x7C, 0x23, 0x5A, 0x33, 0x8C, 0xCE,  // ..|#Z3..
                /* 0548 */  0x10, 0x2F, 0x05, 0xAF, 0xD3, 0xBE, 0xF5, 0xC3,  // ./......
                /* 0550 */  0xB8, 0x5F, 0xC1, 0x1E, 0xD2, 0x83, 0xB0, 0x4F,  // ._.....O
                /* 0558 */  0x12, 0x6F, 0x58, 0x3E, 0x58, 0x19, 0xE4, 0xED,  // .oX>X...
                /* 0560 */  0xF7, 0xB9, 0xEA, 0xB1, 0x2A, 0x8A, 0x11, 0x02,  // ....*...
                /* 0568 */  0x1E, 0xCF, 0x7B, 0xB0, 0x0F, 0x56, 0xEF, 0x59,  // ..{..V.Y
                /* 0570 */  0x46, 0x89, 0x1D, 0xCB, 0xD7, 0xA9, 0x27, 0x2D,  // F.....'-
                /* 0578 */  0x5F, 0xB2, 0x0C, 0x11, 0xF7, 0x61, 0xD8, 0xF7,  // _....a..
                /* 0580 */  0x2B, 0x60, 0xF9, 0xFF, 0xBF, 0x5F, 0x01, 0x5C,  // +`..._.\
                /* 0588 */  0xB9, 0x38, 0xF0, 0x83, 0x03, 0xF6, 0x7E, 0x05,  // .8....~.
                /* 0590 */  0xD8, 0xFB, 0xFF, 0xDF, 0xAF, 0x30, 0xF3, 0x04,  // .....0..
                /* 0598 */  0xCF, 0xFD, 0x0A, 0x60, 0xF3, 0xFF, 0xFF, 0x7E,  // ...`...~
                /* 05A0 */  0x05, 0x38, 0xBC, 0x5B, 0x61, 0xEF, 0x58, 0x58,  // .8.[a.XX
                /* 05A8 */  0x02, 0xC7, 0xFC, 0xBB, 0x98, 0x40, 0xA1, 0x56,  // .....@.V
                /* 05B0 */  0xA2, 0x60, 0x30, 0xA8, 0xFB, 0x15, 0xE0, 0x68,  // .`0....h
                /* 05B8 */  0xDC, 0x1E, 0x35, 0x38, 0xCE, 0x06, 0x4F, 0x12,  // ..58..O.
                /* 05C0 */  0x98, 0x33, 0x35, 0x6E, 0x36, 0x07, 0x17, 0x38,  // .35n6..8
                /* 05C8 */  0xC2, 0x73, 0x4C, 0xD0, 0x73, 0x67, 0x97, 0x14,  // .sL.sg..
                /* 05D0 */  0xEC, 0xFF, 0xFF, 0x92, 0xE2, 0x3B, 0x16, 0xDC,  // .....;..
                /* 05D8 */  0x2B, 0xD5, 0x43, 0x43, 0x94, 0x83, 0x78, 0x0D,  // +.CC..x.
                /* 05E0 */  0x7E, 0xAC, 0x7A, 0x90, 0x3A, 0xB2, 0x87, 0xAB,  // ~.z.:...
                /* 05E8 */  0x27, 0x61, 0x1F, 0xB2, 0x7C, 0xC7, 0x32, 0x54,  // 'a..|.2T
                /* 05F0 */  0x84, 0x77, 0x2C, 0x76, 0x86, 0x88, 0x17, 0x2B,  // .w,v...+
                /* 05F8 */  0x4A, 0x88, 0xF7, 0x8A, 0xD0, 0xBE, 0x71, 0x19,  // J.....q.
                /* 0600 */  0xFC, 0xB1, 0xD8, 0xA8, 0x41, 0x5F, 0x8C, 0xDF,  // ....A_..
                /* 0608 */  0xB1, 0xC0, 0x2B, 0xE2, 0x41, 0x20, 0x23, 0x77,  // ..+.A #w
                /* 0610 */  0x2C, 0x80, 0x22, 0xC1, 0x20, 0xE4, 0x64, 0xE0,  // ,.". .d.
                /* 0618 */  0xE8, 0xF3, 0x02, 0x7E, 0x00, 0x0F, 0x23, 0x1E,  // ...~..#.
                /* 0620 */  0x12, 0x0B, 0x30, 0x70, 0xFA, 0xFF, 0xBF, 0x2F,  // ..0p.../
                /* 0628 */  0xF9, 0x4C, 0xC1, 0x0F, 0x18, 0x3E, 0x53, 0xB0,  // .L...>S.
                /* 0630 */  0xEB, 0x41, 0xF4, 0xC7, 0x00, 0x9F, 0x4B, 0x30,  // .A....K0
                /* 0638 */  0x83, 0x03, 0xFF, 0xB5, 0xE2, 0xD0, 0x3D, 0x8A,  // ......=.
                /* 0640 */  0xD7, 0x07, 0x13, 0x78, 0x70, 0xE0, 0xB8, 0x33,  // ...xp..3
                /* 0648 */  0x1C, 0x91, 0xEF, 0x30, 0x1E, 0x1C, 0xD8, 0x0E,  // ...0....
                /* 0650 */  0x02, 0xC0, 0x61, 0x70, 0xF8, 0x50, 0x83, 0x43,  // ..ap.P.C
                /* 0658 */  0x8F, 0xC7, 0xC0, 0x21, 0x7D, 0x1E, 0x63, 0x17,  // ...!}.c.
                /* 0660 */  0x86, 0x87, 0x1C, 0x0F, 0x0D, 0x6C, 0x80, 0x1E,  // .....l..
                /* 0668 */  0x1A, 0xB0, 0x9C, 0xC4, 0x53, 0xC8, 0xA1, 0xC1,  // ....S...
                /* 0670 */  0xFA, 0xFF, 0x0F, 0x0D, 0x1C, 0x12, 0x86, 0x06,  // ........
                /* 0678 */  0x94, 0xE2, 0x0D, 0x0D, 0x3D, 0x24, 0x1F, 0x16,  // ....=$..
                /* 0680 */  0x62, 0x3E, 0xE5, 0x44, 0x78, 0x5F, 0xF0, 0x09,  // b>.Dx_..
                /* 0688 */  0x8A, 0xA1, 0xBF, 0xA6, 0xF8, 0x76, 0xE1, 0x7B,  // .....v.{
                /* 0690 */  0x20, 0x6E, 0x7C, 0xE0, 0xBA, 0x72, 0x7A, 0x7C,  //  n|..rz|
                /* 0698 */  0xC0, 0xE7, 0xC8, 0xE5, 0xF1, 0xE1, 0x8E, 0x4E,  // .......N
                /* 06A0 */  0x1E, 0x1F, 0x0C, 0x97, 0x57, 0x19, 0x72, 0x34,  // ....W.r4
                /* 06A8 */  0xF1, 0xD1, 0x8A, 0x0D, 0x0F, 0x6C, 0x37, 0x3D,  // .....l7=
                /* 06B0 */  0x0F, 0x0F, 0xF8, 0xC4, 0x1C, 0x1E, 0xFA, 0x5C,  // .......\
                /* 06B8 */  0x94, 0xE0, 0xFF, 0x1F, 0xF5, 0xE4, 0xD8, 0x18,  // ........
                /* 06C0 */  0x8A, 0x1C, 0x1A, 0xBD, 0x87, 0xB1, 0xA3, 0xCF,  // ........
                /* 06C8 */  0x3B, 0x09, 0xDC, 0x31, 0x82, 0xED, 0x28, 0xE6,  // ;..1..(.
                /* 06D0 */  0x31, 0x02, 0xD7, 0x8B, 0xD5, 0x31, 0x02, 0xB3,  // 1....1..
                /* 06D8 */  0x91, 0x79, 0x8C, 0xC0, 0x15, 0xF1, 0x18, 0x81,  // .y......
                /* 06E0 */  0x99, 0x09, 0x08, 0xFD, 0xFF, 0xC7, 0x08, 0x5C,  // .......\
                /* 06E8 */  0x21, 0x8F, 0x11, 0x98, 0xA9, 0x18, 0x23, 0xD0,  // !.....#.
                /* 06F0 */  0xBD, 0xD8, 0x1D, 0x23, 0x30, 0x1B, 0xA1, 0xC7,  // ...#0...
                /* 06F8 */  0x08, 0x3C, 0xFF, 0xFF, 0x63, 0xF4, 0x09, 0xF1,  // .<..c...
                /* 0700 */  0x18, 0x81, 0xD9, 0xF8, 0x3C, 0x46, 0xE0, 0x73,  // ....<F.s
                /* 0708 */  0x3D, 0x07, 0xE3, 0xA5, 0x9B, 0x0F, 0x13, 0xC6,  // =.......
                /* 0710 */  0x99, 0x13, 0x7F, 0x3D, 0x07, 0xBC, 0x8C, 0x82,  // ...=....
                /* 0718 */  0xEB, 0x7C, 0x36, 0xF9, 0x1A, 0xEE, 0x57, 0xA1,  // .|6...W.
                /* 0720 */  0x22, 0xBD, 0x07, 0x28, 0x8C, 0xCF, 0xB8, 0xE0,  // "..(....
                /* 0728 */  0xFD, 0xFF, 0x9F, 0x71, 0x81, 0xEB, 0x58, 0x9F,  // ...q..X.
                /* 0730 */  0x71, 0xC1, 0x72, 0x2B, 0x60, 0x37, 0x5C, 0xB8,  // q.r+`7\.
                /* 0738 */  0xA7, 0x5B, 0xD8, 0x37, 0x87, 0x87, 0xD9, 0xA7,  // .[.7....
                /* 0740 */  0x8C, 0x37, 0xA6, 0x07, 0x5A, 0x6B, 0xC4, 0xD0,  // .7..Zk..
                /* 0748 */  0xAD, 0x36, 0x48, 0x9C, 0x08, 0xAF, 0x03, 0x4F,  // .6H....O
                /* 0750 */  0xB7, 0xBE, 0x94, 0xC5, 0x0B, 0xF4, 0x74, 0x6B,  // ......tk
                /* 0758 */  0x8C, 0x38, 0x2F, 0xB9, 0x46, 0x7C, 0xA1, 0x08,  // .8/.F|..
                /* 0760 */  0xF1, 0x70, 0xEB, 0x93, 0xAE, 0xF1, 0x1E, 0x25,  // .p.....%
                /* 0768 */  0xC2, 0x85, 0x79, 0xC1, 0x7D, 0xBA, 0x05, 0xAF,  // ..y.}...
                /* 0770 */  0x94, 0x07, 0xA5, 0x8E, 0x73, 0x3E, 0xDD, 0x02,  // ....s>..
                /* 0778 */  0x8E, 0xFE, 0xFF, 0xA7, 0x5B, 0xE0, 0x8E, 0xF6,  // ....[...
                /* 0780 */  0x88, 0x02, 0xBE, 0x6B, 0x03, 0xBB, 0xA3, 0xC0,  // ...k....
                /* 0788 */  0x3B, 0xEB, 0xE3, 0x0F, 0x28, 0x80, 0x8B, 0x2C,  // ;...(..,
                /* 0790 */  0x0F, 0x00, 0x9D, 0x38, 0x9C, 0x03, 0x44, 0x36,  // ...8..D6
                /* 0798 */  0x9E, 0x00, 0x3E, 0x04, 0x50, 0x35, 0x40, 0x9A,  // ..>.P5@.
                /* 07A0 */  0x25, 0xFC, 0xF4, 0xE4, 0x82, 0xF7, 0x89, 0xC0,  // %.......
                /* 07A8 */  0xB9, 0x49, 0x94, 0x7C, 0x58, 0x74, 0x04, 0xCE,  // .I.|Xt..
                /* 07B0 */  0x7A, 0x0E, 0xA1, 0x20, 0x06, 0x74, 0x90, 0xD3,  // z.. .t..
                /* 07B8 */  0x04, 0xFA, 0x88, 0xC2, 0xEE, 0x49, 0x3E, 0x4A,  // .....I>J
                /* 07C0 */  0xB0, 0x13, 0x92, 0xAF, 0x28, 0x3E, 0x80, 0xF8,  // ....(>..
                /* 07C8 */  0x2C, 0xE1, 0xFF, 0xFF, 0xC8, 0x7D, 0x4A, 0xE0,  // ,....}J.
                /* 07D0 */  0xDF, 0x18, 0x5F, 0x1B, 0x8C, 0x6E, 0x35, 0xC7,  // .._..n5.
                /* 07D8 */  0x14, 0x14, 0x98, 0xCF, 0x21, 0x9C, 0xA0, 0xAE,  // ....!...
                /* 07E0 */  0x8B, 0x04, 0xC8, 0xF4, 0x9D, 0x14, 0x40, 0x01,  // ......@.
                /* 07E8 */  0xE4, 0x5B, 0x81, 0xCF, 0x01, 0x4F, 0x06, 0x6C,  // .[...O.l
                /* 07F0 */  0x0C, 0x8F, 0x02, 0x46, 0x33, 0x3A, 0x0F, 0x3F,  // ...F3:.?
                /* 07F8 */  0x59, 0x54, 0xDC, 0xC9, 0x52, 0x10, 0x4F, 0xD6,  // YT..R.O.
                /* 0800 */  0x51, 0x26, 0x8B, 0x9E, 0x89, 0xEF, 0xFC, 0x38,  // Q&.....8
                /* 0808 */  0x02, 0xDF, 0x63, 0x5E, 0x43, 0x60, 0x5D, 0x04,  // ..c^C`].
                /* 0810 */  0x42, 0x3E, 0x18, 0x78, 0x1A, 0x86, 0xF3, 0x64,  // B>.x...d
                /* 0818 */  0x39, 0x9C, 0x27, 0xCB, 0xC7, 0xE2, 0x5B, 0x08,  // 9.'...[.
                /* 0820 */  0xF8, 0x6E, 0x14, 0xB8, 0xD9, 0x82, 0x11, 0x1E,  // .n......
                /* 0828 */  0x23, 0x78, 0xA4, 0xF4, 0x26, 0x04, 0x0B, 0xFB,  // #x..&...
                /* 0830 */  0x4C, 0x7D, 0x45, 0x78, 0xF0, 0xF5, 0xD5, 0x1C,  // L}Ex....
                /* 0838 */  0x03, 0xEB, 0x91, 0x72, 0x58, 0x83, 0x86, 0x3D,  // ...rX..=
                /* 0840 */  0xE0, 0x87, 0x0A, 0xDC, 0xBD, 0xD6, 0xA3, 0x65,  // .......e
                /* 0848 */  0x8A, 0x35, 0xFC, 0xFF, 0x41, 0x59, 0x18, 0x72,  // .5..AY.r
                /* 0850 */  0x05, 0x5B, 0x08, 0x85, 0xF1, 0x1D, 0x0A, 0x70,  // .[.....p
                /* 0858 */  0x74, 0x7F, 0xC1, 0xDD, 0xA1, 0xE0, 0x8E, 0x80,  // t.......
                /* 0860 */  0x9D, 0x45, 0x5E, 0xA1, 0x62, 0x3D, 0x43, 0x33,  // .E^.b=C3
                /* 0868 */  0xD0, 0x38, 0x8F, 0x44, 0x3E, 0x73, 0x30, 0xCD,  // .8.D>s0.
                /* 0870 */  0xC3, 0xD3, 0x95, 0xC8, 0x04, 0xBE, 0x45, 0xC1,  // ......E.
                /* 0878 */  0xC5, 0x78, 0x86, 0xF2, 0xD1, 0xC9, 0x20, 0x2F,  // .x.... /
                /* 0880 */  0x52, 0xCF, 0x50, 0xBE, 0x3B, 0x3D, 0x39, 0x05,  // R.P.;=9.
                /* 0888 */  0x3A, 0xD4, 0xB7, 0x28, 0x1F, 0x02, 0x8F, 0xC0,  // :..(....
                /* 0890 */  0xB7, 0x28, 0x1F, 0xA5, 0x9E, 0xA0, 0x8C, 0xF2,  // .(......
                /* 0898 */  0xF4, 0x10, 0x34, 0x4E, 0xC4, 0x68, 0x31, 0x0D,  // ..4N.h1.
                /* 08A0 */  0x15, 0x28, 0xCA, 0x6B, 0x54, 0xB4, 0xB7, 0x28,  // .(.kT..(
                /* 08A8 */  0xF0, 0x8A, 0xB9, 0x45, 0x01, 0xA9, 0xFF, 0xFF,  // ...E....
                /* 08B0 */  0x2D, 0x0A, 0x30, 0x7A, 0x41, 0xC2, 0xDD, 0xA2,  // -.0zA...
                /* 08B8 */  0xC0, 0x72, 0x71, 0x60, 0x07, 0x07, 0xDC, 0xBD,  // .rq`....
                /* 08C0 */  0x01, 0xCE, 0x35, 0x0A, 0xF0, 0x92, 0xE7, 0x1A,  // ..5.....
                /* 08C8 */  0x45, 0x2F, 0x52, 0xBE, 0x46, 0xF1, 0x6B, 0xA9,  // E/R.F.k.
                /* 08D0 */  0x15, 0x01, 0x69, 0x9A, 0x60, 0xF8, 0xFF, 0x9F,  // ..i.`...
                /* 08D8 */  0x09, 0xD8, 0x45, 0x0A, 0x60, 0xFE, 0xFF, 0xFF,  // ..E.`...
                /* 08E0 */  0x22, 0x05, 0xFC, 0xE2, 0x49, 0x00, 0x65, 0x81,  // "...I.e.
                /* 08E8 */  0xC8, 0x15, 0x08, 0x06, 0x75, 0x91, 0x02, 0x1C,  // ....u...
                /* 08F0 */  0xDD, 0x8C, 0xC0, 0x79, 0x53, 0xC1, 0xDD, 0xAA,  // ...yS...
                /* 08F8 */  0xE0, 0xDE, 0x53, 0x70, 0x07, 0x5D, 0xDF, 0x76,  // ..Sp.].v
                /* 0900 */  0x3C, 0x8C, 0x30, 0xAF, 0x3B, 0x06, 0x8A, 0xF7,  // <.0.;...
                /* 0908 */  0x8C, 0xE3, 0xAB, 0xC2, 0xF3, 0x43, 0x90, 0x18,  // .....C..
                /* 0910 */  0xE7, 0x62, 0xB8, 0xD7, 0x2A, 0x2C, 0x9C, 0x87,  // .b..*,..
                /* 0918 */  0x6A, 0x02, 0xBB, 0xBF, 0x48, 0xE9, 0xE0, 0xF2,  // j...H...
                /* 0920 */  0xA4, 0x70, 0x86, 0x87, 0x14, 0xE1, 0x6D, 0xEA,  // .p....m.
                /* 0928 */  0x51, 0xEA, 0x7D, 0xEA, 0x55, 0x2A, 0xC6, 0x83,  // Q.}.U*..
                /* 0930 */  0x55, 0x8C, 0xE7, 0x2A, 0x63, 0x3E, 0x5C, 0xBD,  // U..*c>\.
                /* 0938 */  0xF9, 0xBC, 0xEC, 0x32, 0xAC, 0x18, 0x51, 0x42,  // ...2..QB
                /* 0940 */  0x7A, 0x74, 0x9E, 0xD7, 0xFF, 0x3F, 0xFA, 0xD3,  // zt...?..
                /* 0948 */  0x8D, 0x2F, 0xBF, 0x06, 0x0B, 0xD1, 0xFE, 0x42,  // ./.....B
                /* 0950 */  0xD8, 0xC2, 0x75, 0x29, 0xF1, 0x55, 0x0A, 0xE0,  // ..u).U..
                /* 0958 */  0xC3, 0xC4, 0x5F, 0xA5, 0xB0, 0xB1, 0x21, 0x64,  // .._...!d
                /* 0960 */  0x65, 0x3C, 0xA8, 0x81, 0x18, 0xFA, 0xA9, 0xC5,  // e<......
                /* 0968 */  0xD3, 0xF0, 0x91, 0xC3, 0x07, 0x79, 0x2C, 0x81,  // .....y,.
                /* 0970 */  0xC3, 0x9D, 0xFF, 0x41, 0x75, 0xA2, 0xF0, 0x21,  // ...Au..!
                /* 0978 */  0x02, 0x3C, 0x87, 0x1A, 0xDC, 0x01, 0x02, 0xC6,  // .<......
                /* 0980 */  0xFD, 0xC9, 0x78, 0x6F, 0x0B, 0xC7, 0x17, 0xC8,  // ..xo....
                /* 0988 */  0x04, 0x1E, 0x2B, 0xFF, 0xFF, 0x8F, 0x15, 0xDE,  // ..+.....
                /* 0990 */  0x3D, 0xC2, 0x13, 0xF4, 0xA9, 0xE1, 0x8D, 0xC3,  // =.......
                /* 0998 */  0x67, 0x63, 0x70, 0x9E, 0x32, 0xB0, 0x97, 0x0C,  // gcp.2...
                /* 09A0 */  0x18, 0x97, 0x30, 0xC0, 0xCC, 0x50, 0x11, 0xF7,  // ..0..P..
                /* 09A8 */  0x4E, 0x7A, 0xB8, 0x71, 0xB8, 0xB7, 0x01, 0x3D,  // Nz.q...=
                /* 09B0 */  0xDF, 0x00, 0x3E, 0xFF, 0xFF, 0xE7, 0x1B, 0xC0,  // ..>.....
                /* 09B8 */  0xC0, 0xA5, 0xC6, 0xE7, 0x1B, 0x60, 0x72, 0xF3,  // .....`r.
                /* 09C0 */  0x04, 0x78, 0x71, 0xBE, 0xC1, 0x9F, 0x15, 0xF8,  // .xq.....
                /* 09C8 */  0xFF, 0xFF, 0x90, 0x02, 0xA6, 0x33, 0x0E, 0xBB,  // .....3..
                /* 09D0 */  0xA5, 0xC0, 0x3F, 0xA5, 0x00, 0x5E, 0x24, 0xDE,  // ..?..^$.
                /* 09D8 */  0x3C, 0xA9, 0xBC, 0x9B, 0x27, 0xEA, 0xE4, 0x61,  // <...'..a
                /* 09E0 */  0x71, 0x54, 0x1A, 0x2A, 0x38, 0x25, 0x5C, 0x3E,  // qT.*8%\>
                /* 09E8 */  0x29, 0x84, 0xCF, 0x8F, 0x8E, 0x7E, 0x80, 0x44,  // )....~.D
                /* 09F0 */  0x85, 0x05, 0xA3, 0x20, 0xBE, 0x7C, 0xF2, 0xA3,  // ... .|..
                /* 09F8 */  0x13, 0xEE, 0x80, 0xE0, 0xB1, 0x3C, 0x93, 0x78,  // .....<.x
                /* 0A00 */  0x10, 0xC7, 0xE0, 0xF3, 0x23, 0xBC, 0xAB, 0x27,  // ....#..'
                /* 0A08 */  0x3B, 0x3F, 0xC2, 0x3E, 0x23, 0x81, 0xF3, 0x64,  // ;?.>#..d
                /* 0A10 */  0x80, 0xFB, 0xFF, 0x9F, 0x1F, 0xC1, 0x1D, 0x1C,  // ........
                /* 0A18 */  0x42, 0x67, 0x11, 0x9F, 0x1F, 0xC1, 0x8D, 0xF6,  // Bg......
                /* 0A20 */  0xFC, 0x08, 0xF3, 0xB4, 0x01, 0x1F, 0x10, 0x7F,  // ........
                /* 0A28 */  0x83, 0x78, 0x0F, 0xF1, 0x04, 0x0C, 0xC8, 0x06,  // .x......
                /* 0A30 */  0xF8, 0x90, 0x03, 0x96, 0xCB, 0x02, 0xBB, 0x7D,  // .......}
                /* 0A38 */  0x81, 0x41, 0xA1, 0x4D, 0x9F, 0x1A, 0x8D, 0x5A,  // .A.M...Z
                /* 0A40 */  0x35, 0x28, 0x53, 0xA3, 0x4C, 0x83, 0x5A, 0x7D,  // 5(S.L.Z}
                /* 0A48 */  0x2A, 0x35, 0x66, 0x4C, 0xE5, 0x20, 0x7D, 0x64,  // *5fL. }d
                /* 0A50 */  0xA0, 0x42, 0x16, 0xAC, 0x11, 0x3B, 0x06, 0x08,  // .B...;..
                /* 0A58 */  0x95, 0x7C, 0xD6, 0x14, 0x88, 0xC3, 0x2D, 0x5C,  // .|....-\
                /* 0A60 */  0x80, 0x0E, 0xF5, 0x7A, 0x12, 0x90, 0x25, 0x2D,  // ...z..%-
                /* 0A68 */  0x4A, 0x20, 0x16, 0x61, 0x02, 0x84, 0x89, 0x56,  // J .a...V
                /* 0A70 */  0x01, 0xC8, 0x84, 0x2E, 0x50, 0x40, 0x8E, 0x09,  // ....P@..
                /* 0A78 */  0x42, 0xA3, 0xE8, 0x80, 0x68, 0x04, 0x44, 0xB9,  // B...h.D.
                /* 0A80 */  0x40, 0x04, 0xE4, 0x0C, 0x3E, 0x80, 0x58, 0x22,  // @...>.X"
                /* 0A88 */  0x10, 0x01, 0x39, 0xFF, 0xF3, 0x40, 0xE0, 0xCE,  // ..9..@..
                /* 0A90 */  0xAC, 0x04, 0x88, 0x29, 0x76, 0x02, 0xC2, 0x94,  // ...)v...
                /* 0A98 */  0x3D, 0x25, 0x04, 0x6A, 0x99, 0x20, 0x1A, 0x0C,  // =%.j. ..
                /* 0AA0 */  0xD1, 0x02, 0xC4, 0x04, 0x82, 0x08, 0xC8, 0x71,  // .......q
                /* 0AA8 */  0xBC, 0x80, 0xB3, 0x20, 0x66, 0x80, 0xD8, 0xFF,  // ... f...
                /* 0AB0 */  0x5F, 0xC6, 0x8F, 0x58, 0x20, 0x0E, 0xED, 0x06,  // _..X ...
                /* 0AB8 */  0x94, 0x29, 0x78, 0x4A, 0x08, 0xC8, 0x69, 0x41,  // .)xJ..iA
                /* 0AC0 */  0x04, 0xE4, 0xEC, 0x40, 0x54, 0xAF, 0x1E, 0x70,  // ...@T..p
                /* 0AC8 */  0xA6, 0xF3, 0x35, 0x20, 0x20, 0xA7, 0x04, 0xA1,  // ..5  ...
                /* 0AD0 */  0x99, 0x14, 0x81, 0xB2, 0x80, 0x20, 0x02, 0x72,  // ..... .r
                /* 0AD8 */  0x18, 0x47, 0x40, 0x2C, 0x1A, 0x88, 0x4E, 0x19,  // .G@,..N.
                /* 0AE0 */  0xC4, 0x12, 0x38, 0x93, 0xE3, 0x09, 0x90, 0x82,  // ..8.....
                /* 0AE8 */  0x50, 0x91, 0x0F, 0x3E, 0x81, 0x38, 0x3C, 0x08,  // P..>.8<.
                /* 0AF0 */  0x0D, 0x64, 0x0A, 0x8C, 0xAA, 0x02, 0x61, 0x12,  // .d....a.
                /* 0AF8 */  0x5C, 0x81, 0xB0, 0x78, 0x20, 0x34, 0xC4, 0xF3,  // \..x 4..
                /* 0B00 */  0x41, 0x20, 0x96, 0xFA, 0x60, 0x0A, 0x42, 0x04,  // A ..`.B.
                /* 0B08 */  0xBD, 0x9C, 0x05, 0xE2, 0xD8, 0x20, 0x34, 0x9C,  // ..... 4.
                /* 0B10 */  0x2F, 0x10, 0x16, 0xE1, 0xCD, 0xA1, 0x41, 0x12,  // /.....A.
                /* 0B18 */  0x63, 0xC3, 0x61, 0x41, 0x7F, 0x50, 0x81, 0x88,  // c.aA.P..
                /* 0B20 */  0xCC, 0xEF, 0x86, 0xEE, 0xD4, 0xE4, 0xC5, 0x71,  // .......q
                /* 0B28 */  0x60, 0x44, 0x19, 0x88, 0x80, 0xAC, 0xE2, 0x05,  // `D......
                /* 0B30 */  0x15, 0x88, 0x68, 0x02, 0x11, 0x90, 0xB5, 0xBD,  // ..h.....
                /* 0B38 */  0xA3, 0x82, 0x13, 0x4D, 0xEA, 0x80, 0x58, 0x22,  // ...M..X"
                /* 0B40 */  0x10, 0xAA, 0x5E, 0x1E, 0x28, 0x8B, 0x02, 0x22,  // ..^.(.."
                /* 0B48 */  0x20, 0xCB, 0xB6, 0x07, 0xC4, 0x42, 0x80, 0x68,  //  ....B.h
                /* 0B50 */  0x98, 0xE4, 0x47, 0xAD, 0x63, 0x00, 0x79, 0x87,  // ..G.c.y.
                /* 0B58 */  0xE8, 0x18, 0x40, 0x7E, 0x1F, 0x07, 0xCA, 0x40,  // ..@~...@
                /* 0B60 */  0xA8, 0xD4, 0x77, 0x48, 0x40, 0x22, 0xF3, 0x51,  // ..wH@".Q
                /* 0B68 */  0x22, 0x20, 0x87, 0x04, 0xA1, 0xA1, 0x3C, 0x0E,  // " ....<.
                /* 0B70 */  0x81, 0x45, 0x04, 0x11, 0x90, 0xFF, 0xFF         // .E.....
            })
        }

        Device (WMI2)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (BTST, Buffer (0x0408){})
            Name (_WDG, Buffer (0x78)
            {
                /* 0000 */  0xE5, 0x30, 0x97, 0x28, 0x57, 0x7B, 0x65, 0x46,  // .0.(W{eF
                /* 0008 */  0xBF, 0x59, 0xD3, 0xEB, 0x72, 0x78, 0xAF, 0x71,  // .Y..rx.q
                /* 0010 */  0x45, 0x31, 0x01, 0x05, 0x9F, 0xEC, 0x37, 0xAE,  // E1....7.
                /* 0018 */  0x37, 0x86, 0x75, 0x46, 0xA5, 0xC2, 0x4F, 0xF9,  // 7.uF..O.
                /* 0020 */  0x05, 0xDF, 0xCB, 0x84, 0x45, 0x32, 0x02, 0x05,  // ....E2..
                /* 0028 */  0x88, 0xCC, 0xC0, 0xEC, 0xFC, 0xCF, 0x6C, 0x41,  // ......lA
                /* 0030 */  0xBA, 0xDA, 0x74, 0xAA, 0x20, 0x7E, 0x25, 0xDB,  // ..t. ~%.
                /* 0038 */  0x45, 0x33, 0x01, 0x05, 0xF7, 0x41, 0xAA, 0xD8,  // E3...A..
                /* 0040 */  0x1C, 0x12, 0x8E, 0x42, 0x84, 0x3A, 0x14, 0x15,  // ...B.:..
                /* 0048 */  0x68, 0x68, 0x94, 0x03, 0x45, 0x34, 0x01, 0x05,  // hh..E4..
                /* 0050 */  0x8F, 0x56, 0xCC, 0x69, 0x69, 0xD4, 0x27, 0x46,  // .V.ii.'F
                /* 0058 */  0xBC, 0x9E, 0x23, 0xCD, 0xCC, 0x87, 0xBC, 0x65,  // ..#....e
                /* 0060 */  0x45, 0x35, 0x01, 0x05, 0x21, 0x12, 0x90, 0x05,  // E5..!...
                /* 0068 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                /* 0070 */  0xC9, 0x06, 0x29, 0x10, 0x43, 0x41, 0x01, 0x00   // ..).CA..
            })
            Name (BTIF, Package (0x04)
            {
                Package (0x03)
                {
                    Zero, 
                    "BAT0 BatMaker", 
                    Zero
                }, 

                Package (0x03)
                {
                    Zero, 
                    "BAT0 HwId", 
                    One
                }, 

                Package (0x03)
                {
                    Zero, 
                    "BAT0 MfgDate", 
                    0x02
                }, 

                Package (0x03)
                {
                    Zero, 
                    "BAT0 Capacity", 
                    0x03
                }
            })
            Name (PSTA, Package (0x02)
            {
                Package (0x03)
                {
                    Zero, 
                    "eFuse Secure Boot", 
                    Zero
                }, 

                Package (0x03)
                {
                    Zero, 
                    "RPMB Provision", 
                    One
                }
            })
            Name (FOLN, Package (0x01)
            {
                Package (0x03)
                {
                    Zero, 
                    "Foliocase Version", 
                    Zero
                }
            })
            Name (BOAN, Package (0x01)
            {
                Package (0x03)
                {
                    Zero, 
                    "Board ID", 
                    Zero
                }
            })
            Name (APVS, Package (0x01)
            {
                Package (0x03)
                {
                    Zero, 
                    "ACPI Version", 
                    Zero
                }
            })
            Mutex (MWMI, 0x07)
            Method (WQE1, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                BTST = Zero
                Local0 = DerefOf (BTIF [0x03])
                Local2 = DerefOf (Local0 [One])
                Concatenate (Local2, ": ", Local6)
                If (CondRefOf (\_SB.I2C7.BACF))
                {
                    Local2 = \_SB.I2C7.BACP (Zero)
                    ToDecimalString (Local2, BTST) /* \_SB_.WMI2.BTST */
                }

                Concatenate (Local6, ToString (BTST, Ones), Local7)
                Concatenate (Local7, "%", Local7)
                Release (MWMI)
                Return (Local7)
            }

            Method (WQE2, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                BTST = Zero
                Local0 = DerefOf (PSTA [Arg0])
                Local2 = DerefOf (Local0 [One])
                Concatenate (Local2, ": ", Local6)
                If ((Arg0 == Zero))
                {
                    Local1 = DerefOf (\_SB.WMI1.EBD0 [0x06])
                    If ((Local1 == Zero))
                    {
                        BTST = "0"
                    }
                    Else
                    {
                        BTST = "1"
                    }
                }
                ElseIf ((Arg0 == One))
                {
                    Local1 = DerefOf (\_SB.WMI1.EBD0 [0x07])
                    If ((Local1 == Zero))
                    {
                        BTST = "0"
                    }
                    Else
                    {
                        BTST = "1"
                    }
                }

                Concatenate (Local6, ToString (BTST, Ones), Local7)
                Release (MWMI)
                Return (Local7)
            }

            Method (WQE3, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                BTST = Zero
                Local0 = DerefOf (FOLN [Zero])
                Local2 = DerefOf (Local0 [One])
                Concatenate (Local2, ": ", Local6)
                Local1 = \_SB.I2C7.FOLI (Zero)
                Local3 = \_SB.WMI1.E00D (DerefOf (Local1 [Zero]))
                BTST [Zero] = DerefOf (Local3 [Zero])
                BTST [One] = DerefOf (Local3 [One])
                Local3 = \_SB.WMI1.E00D (DerefOf (Local1 [One]))
                BTST [0x02] = DerefOf (Local3 [Zero])
                BTST [0x03] = DerefOf (Local3 [One])
                Concatenate (Local6, ToString (BTST, Ones), Local7)
                Release (MWMI)
                Return (Local7)
            }

            Method (WQE4, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                BTST = Zero
                Local0 = DerefOf (BOAN [Zero])
                Local2 = DerefOf (Local0 [One])
                Concatenate (Local2, ": HW_", Local6)
                Local1 = \_SB.I2C7.BDID (Zero)
                Local1 += 0x0C
                ToBCD (Local1, Local1)
                Local3 = \_SB.WMI1.E00D (Local1)
                BTST [Zero] = DerefOf (Local3 [Zero])
                BTST [One] = DerefOf (Local3 [One])
                Concatenate (Local6, ToString (BTST, Ones), Local7)
                Release (MWMI)
                Return (Local7)
            }

            Method (WQE5, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                BTST = Zero
                Local5 = Zero
                Local0 = DerefOf (APVS [Zero])
                Local2 = DerefOf (Local0 [One])
                Concatenate (Local2, ": ", Local6)
                Local3 = 0x30
                While ((Local5 < 0x10))
                {
                    BTST [Local5] = DerefOf (\_SB.WMI1.EBD0 [Local3])
                    Local5++
                    Local3++
                }

                Concatenate (Local6, ToString (BTST, Ones), Local7)
                Release (MWMI)
                Return (Local7)
            }

            Name (WQCA, Buffer (0x0492)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0x82, 0x04, 0x00, 0x00, 0x88, 0x18, 0x00, 0x00,  // ........
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x18, 0xD5, 0x8B, 0x00, 0x01, 0x06, 0x18, 0x42,  // .......B
                /* 0020 */  0x10, 0x0D, 0x10, 0x0A, 0x0C, 0x21, 0x02, 0x0B,  // .....!..
                /* 0028 */  0x83, 0x50, 0x44, 0x18, 0x14, 0xA0, 0x45, 0x41,  // .PD...EA
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,  // .....!..
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,  // ..p.@...
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,  // (r."....
                /* 0048 */  0x31, 0x0A, 0x88, 0x14, 0x40, 0x48, 0x26, 0x84,  // 1...@H&.
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,  // D.S!p.._
                /* 0058 */  0x01, 0x08, 0x1D, 0xA2, 0xC9, 0xA0, 0x00, 0xA7,  // ........
                /* 0060 */  0x08, 0x82, 0xB4, 0x65, 0x01, 0xBA, 0x05, 0xF8,  // ...e....
                /* 0068 */  0x16, 0xA0, 0x1D, 0x42, 0x68, 0x15, 0x0A, 0x30,  // ...Bh..0
                /* 0070 */  0x29, 0xC0, 0x27, 0x98, 0x2C, 0x0A, 0x90, 0x0D,  // ).'.,...
                /* 0078 */  0x26, 0xDB, 0x70, 0x64, 0x18, 0x4C, 0xE0, 0x18,  // &.pd.L..
                /* 0080 */  0x50, 0x62, 0xC6, 0x80, 0xD2, 0x39, 0x05, 0xD9,  // Pb...9..
                /* 0088 */  0x04, 0x16, 0x74, 0xA1, 0x28, 0x9A, 0x46, 0x94,  // ..t.(.F.
                /* 0090 */  0x04, 0x07, 0x75, 0x0C, 0x11, 0x82, 0x97, 0x2B,  // ..u....+
                /* 0098 */  0xC0, 0xFB, 0x08, 0x64, 0x1A, 0x9A, 0xC0, 0xF3,  // ...d....
                /* 00A0 */  0x48, 0x12, 0x40, 0x58, 0x94, 0x45, 0x2A, 0x04,  // H.@X.E*.
                /* 00A8 */  0x0C, 0xCA, 0x03, 0x88, 0xE4, 0x0C, 0x14, 0x05,  // ........
                /* 00B0 */  0x6C, 0xAF, 0xD3, 0xD0, 0xA0, 0x8E, 0x92, 0x49,  // l......I
                /* 00B8 */  0x82, 0x43, 0x8D, 0xD1, 0x12, 0x05, 0x98, 0x1F,  // .C......
                /* 00C0 */  0x97, 0x86, 0x7B, 0x20, 0x1E, 0x6F, 0x48, 0x26,  // ..{ .oH&
                /* 00C8 */  0x6D, 0x28, 0xA8, 0x81, 0x7B, 0x52, 0xA7, 0xE4,  // m(..{R..
                /* 00D0 */  0x69, 0x46, 0x2C, 0x79, 0x8A, 0x82, 0x49, 0xE0,  // iF,y..I.
                /* 00D8 */  0x51, 0x30, 0x34, 0x4E, 0x50, 0x16, 0x84, 0x1C,  // Q04NP...
                /* 00E0 */  0x0C, 0x13, 0x05, 0x78, 0x12, 0x9E, 0x61, 0xF1,  // ...x..a.
                /* 00E8 */  0x02, 0x84, 0xCF, 0x97, 0x1C, 0x04, 0x62, 0x24,  // ......b$
                /* 00F0 */  0xF0, 0x81, 0xC0, 0x87, 0x00, 0x1C, 0xAC, 0x47,  // .......G
                /* 00F8 */  0x14, 0x2E, 0xE0, 0xF9, 0x1C, 0x43, 0xE4, 0xB8,  // .....C..
                /* 0100 */  0x07, 0x1B, 0xE3, 0x28, 0x22, 0x27, 0x78, 0x03,  // ...("'x.
                /* 0108 */  0x38, 0xAC, 0x38, 0x11, 0x8E, 0xC6, 0x33, 0x2B,  // 8.8...3+
                /* 0110 */  0x68, 0xD6, 0x02, 0x0A, 0xF8, 0x64, 0x60, 0xC4,  // h....d`.
                /* 0118 */  0x58, 0x91, 0x12, 0xF8, 0x20, 0x90, 0xE0, 0xFF,  // X... ...
                /* 0120 */  0x7F, 0x0C, 0x5C, 0x06, 0x84, 0x3C, 0x0A, 0xB0,  // ..\..<..
                /* 0128 */  0x3A, 0x2C, 0x4D, 0x22, 0x81, 0xDD, 0x0B, 0x50,  // :,M"...P
                /* 0130 */  0x26, 0x40, 0x9C, 0x00, 0x73, 0x02, 0xBC, 0x09,  // &@..s...
                /* 0138 */  0x70, 0x76, 0x5E, 0xD0, 0x98, 0x5A, 0x13, 0x60,  // pv^..Z.`
                /* 0140 */  0x0B, 0x46, 0xB3, 0x08, 0x12, 0x23, 0xCA, 0x99,  // .F...#..
                /* 0148 */  0xD6, 0x86, 0x20, 0x28, 0x23, 0xD5, 0x08, 0x22,  // .. (#.."
                /* 0150 */  0xD0, 0x28, 0xC1, 0xA3, 0x06, 0x0D, 0x14, 0x30,  // .(.....0
                /* 0158 */  0x7A, 0x88, 0xF0, 0xAF, 0x04, 0xD1, 0x82, 0x34,  // z......4
                /* 0160 */  0x26, 0xC0, 0xFE, 0x20, 0xC8, 0xB0, 0x71, 0xE3,  // &.. ..q.
                /* 0168 */  0xF7, 0x10, 0x0F, 0xED, 0x98, 0x0E, 0xEA, 0x49,  // .......I
                /* 0170 */  0xC1, 0x04, 0x9E, 0xF4, 0xFB, 0xC1, 0xB3, 0xC1,  // ........
                /* 0178 */  0xA9, 0x1C, 0x6D, 0xD4, 0x18, 0x07, 0x91, 0xC0,  // ..m.....
                /* 0180 */  0xD1, 0x1F, 0x10, 0x3A, 0x54, 0x38, 0x12, 0x3C,  // ...:T8.<
                /* 0188 */  0xEA, 0xB4, 0xE0, 0x93, 0x81, 0x87, 0x76, 0xD8,  // ......v.
                /* 0190 */  0x9E, 0xE2, 0x09, 0x04, 0x39, 0x84, 0x23, 0x78,  // ....9.#x
                /* 0198 */  0x62, 0x78, 0x24, 0xF0, 0x18, 0xD8, 0xDD, 0xC1,  // bx$.....
                /* 01A0 */  0x87, 0x00, 0x9F, 0x11, 0xF0, 0xAE, 0x01, 0x35,  // .......5
                /* 01A8 */  0x5D, 0x1F, 0x0D, 0x3C, 0xE9, 0x70, 0x98, 0xF1,  // ]..<.p..
                /* 01B0 */  0x7A, 0xE6, 0xE1, 0x4E, 0xE0, 0xC9, 0xE0, 0x01,  // z..N....
                /* 01B8 */  0x83, 0x1F, 0x36, 0x3C, 0x38, 0xDC, 0x01, 0xE0,  // ..6<8...
                /* 01C0 */  0x64, 0x8E, 0xAC, 0x54, 0x01, 0x66, 0x8F, 0x07,  // d..T.f..
                /* 01C8 */  0x3A, 0x48, 0xF8, 0xB4, 0xC1, 0xCE, 0x00, 0xE7,  // :H......
                /* 01D0 */  0xD3, 0x33, 0x24, 0x91, 0x3F, 0x08, 0xD4, 0xC8,  // .3$.?...
                /* 01D8 */  0x0C, 0xED, 0x09, 0xBF, 0x74, 0x18, 0xF2, 0x49,  // ....t..I
                /* 01E0 */  0xE1, 0xB0, 0x98, 0xD8, 0x53, 0x07, 0x1D, 0x0F,  // ....S...
                /* 01E8 */  0xF8, 0x2F, 0x23, 0xCF, 0x19, 0x9E, 0xBE, 0xE7,  // ./#.....
                /* 01F0 */  0xEB, 0xC3, 0x09, 0x1B, 0x38, 0x6E, 0x20, 0x86,  // ....8n .
                /* 01F8 */  0x6E, 0x7D, 0x18, 0x9A, 0x86, 0xEF, 0x1F, 0x3E,  // n}.....>
                /* 0200 */  0x07, 0x04, 0x79, 0x67, 0xF0, 0xE0, 0x30, 0xB1,  // ..yg..0.
                /* 0208 */  0x46, 0x4E, 0xFF, 0xFF, 0x87, 0x14, 0x9F, 0x27,  // FN.....'
                /* 0210 */  0xF8, 0xE1, 0xC2, 0xE7, 0x09, 0x76, 0x46, 0x78,  // .....vFx
                /* 0218 */  0x7F, 0x30, 0xC4, 0xE1, 0x9C, 0x95, 0x8F, 0x13,  // .0......
                /* 0220 */  0xC0, 0xE7, 0x1C, 0x00, 0x3E, 0xB4, 0x27, 0x18,  // ....>.'.
                /* 0228 */  0x30, 0xCE, 0x08, 0x37, 0x22, 0x38, 0x67, 0x18,  // 0..7"8g.
                /* 0230 */  0xF0, 0x9F, 0x11, 0x3C, 0x00, 0x7E, 0x94, 0xF0,  // ...<.~..
                /* 0238 */  0x00, 0x38, 0xF8, 0x13, 0xC8, 0x19, 0x5A, 0xE9,  // .8....Z.
                /* 0240 */  0xBC, 0x90, 0x03, 0x83, 0x31, 0x78, 0x0F, 0xF5,  // ....1x..
                /* 0248 */  0x49, 0x07, 0xC6, 0x28, 0x78, 0x98, 0x63, 0x0D,  // I..(x.c.
                /* 0250 */  0x0D, 0xF2, 0x1E, 0x90, 0x7C, 0x18, 0xD4, 0xC9,  // ....|...
                /* 0258 */  0x06, 0xF8, 0xFC, 0xFF, 0x4F, 0x36, 0xC0, 0x49,  // ....O6.I
                /* 0260 */  0xE4, 0xD9, 0x01, 0x34, 0xF3, 0x38, 0xDF, 0x47,  // ...4.8.G
                /* 0268 */  0x03, 0x6B, 0x06, 0x12, 0xDC, 0x41, 0xBC, 0x3B,  // .k...A.;
                /* 0270 */  0x1C, 0xFB, 0xDB, 0x84, 0x21, 0x9E, 0x2F, 0x02,  // ....!./.
                /* 0278 */  0x3F, 0xD8, 0xC0, 0x3F, 0x07, 0x9C, 0xCF, 0xCB,  // ?..?....
                /* 0280 */  0xCC, 0x8B, 0x4C, 0x8C, 0x57, 0x81, 0x87, 0x97,  // ..L.W...
                /* 0288 */  0x67, 0x99, 0x17, 0x9A, 0xA7, 0x99, 0xA7, 0x9A,  // g.......
                /* 0290 */  0x48, 0x3E, 0xD8, 0x30, 0x90, 0x07, 0x1B, 0x63,  // H>.0...c
                /* 0298 */  0xC6, 0x08, 0xF8, 0x52, 0x13, 0xCA, 0x90, 0x11,  // ...R....
                /* 02A0 */  0xA2, 0xBE, 0x4F, 0x44, 0x3A, 0x82, 0x28, 0xB1,  // ..OD:.(.
                /* 02A8 */  0xDE, 0x08, 0x22, 0xC7, 0x7A, 0xB0, 0x01, 0x73,  // ..".z..s
                /* 02B0 */  0xEC, 0x83, 0x0D, 0xA0, 0xF0, 0xFF, 0x7F, 0xB0,  // ........
                /* 02B8 */  0x01, 0x8E, 0x71, 0x0F, 0x36, 0xA0, 0x0C, 0x75,  // ..q.6..u
                /* 02C0 */  0xB0, 0x01, 0xDD, 0x69, 0x02, 0x78, 0x1C, 0x03,  // ...i.x..
                /* 02C8 */  0xC0, 0x87, 0xF5, 0x5C, 0x03, 0xBE, 0x09, 0xE1,  // ...\....
                /* 02D0 */  0x07, 0x84, 0x3D, 0xD6, 0x00, 0xDF, 0xFF, 0xFF,  // ..=.....
                /* 02D8 */  0xB1, 0x06, 0x7C, 0xE7, 0x3F, 0xC0, 0xF1, 0xB9,  // ..|.?...
                /* 02E0 */  0xE5, 0xFD, 0xC2, 0x38, 0xBE, 0xB0, 0x78, 0x02,  // ...8..x.
                /* 02E8 */  0xBE, 0x39, 0xD4, 0x3A, 0x21, 0x02, 0x13, 0x92,  // .9.:!...
                /* 02F0 */  0x9F, 0x6B, 0x60, 0x9F, 0x6A, 0x8C, 0xF0, 0x0C,  // .k`.j...
                /* 02F8 */  0x11, 0xC3, 0x27, 0x99, 0x08, 0xEF, 0x33, 0x41,  // ..'...3A
                /* 0300 */  0xDE, 0x67, 0x8C, 0xF1, 0x48, 0xE3, 0x53, 0xDF,  // .g..H.S.
                /* 0308 */  0x7B, 0x4D, 0x14, 0xDF, 0x05, 0x1E, 0x09, 0x22,  // {M....."
                /* 0310 */  0x87, 0x78, 0x0D, 0x34, 0x56, 0x90, 0x08, 0x8F,  // .x.4V...
                /* 0318 */  0x36, 0xA1, 0x5F, 0x72, 0x0C, 0xF2, 0x64, 0x63,  // 6._r..dc
                /* 0320 */  0xC0, 0xE7, 0x3F, 0x60, 0xF8, 0xFF, 0x3F, 0xFF,  // ..?`..?.
                /* 0328 */  0x01, 0x5C, 0x3C, 0x4E, 0x80, 0xE3, 0xFC, 0x07,  // .\<N....
                /* 0330 */  0x7C, 0xFE, 0xFF, 0x07, 0x1B, 0x18, 0x33, 0x82,  // |.....3.
                /* 0338 */  0x31, 0x22, 0xFC, 0xC9, 0x06, 0xF0, 0x23, 0xFD,  // 1"....#.
                /* 0340 */  0x58, 0x43, 0x23, 0xBC, 0x07, 0x24, 0x16, 0x06,  // XC#..$..
                /* 0348 */  0x75, 0xB2, 0x01, 0x1C, 0xC9, 0x3B, 0x8A, 0x82,  // u....;..
                /* 0350 */  0x08, 0xE4, 0xB4, 0x62, 0x9D, 0xCD, 0x93, 0xC3,  // ...b....
                /* 0358 */  0xE3, 0x0C, 0x3F, 0xD5, 0xC0, 0x06, 0x79, 0x2A,  // ..?...y*
                /* 0360 */  0x36, 0xC2, 0x03, 0x8D, 0xAF, 0xC5, 0xBE, 0xCD,  // 6.......
                /* 0368 */  0x04, 0x79, 0x94, 0xF9, 0xFF, 0x87, 0x78, 0xAA,  // .y....x.
                /* 0370 */  0x61, 0x77, 0x65, 0x4F, 0xEA, 0x09, 0xD0, 0x30,  // aweO...0
                /* 0378 */  0x4F, 0x80, 0x4F, 0x35, 0x46, 0x8B, 0xEA, 0x23,  // O.O5F..#
                /* 0380 */  0xCD, 0xB3, 0xCD, 0x63, 0xA0, 0xCF, 0xCC, 0xBE,  // ...c....
                /* 0388 */  0xC7, 0x18, 0xEE, 0xA9, 0x06, 0xCC, 0x51, 0x4F,  // ......QO
                /* 0390 */  0x35, 0x00, 0x4D, 0x82, 0x9E, 0x6A, 0x40, 0x19,  // 5.M..j@.
                /* 0398 */  0xE7, 0x54, 0x03, 0xBA, 0xA3, 0x04, 0xFF, 0xFF,  // .T......
                /* 03A0 */  0x1F, 0x25, 0xC0, 0x79, 0x06, 0x00, 0x1F, 0xB6,  // .%.y....
                /* 03A8 */  0x0F, 0xC8, 0xE0, 0x9B, 0x0D, 0x1F, 0x0D, 0x3F,  // .......?
                /* 03B0 */  0xCD, 0x00, 0x7E, 0x62, 0x1C, 0x65, 0x68, 0x8C,  // ..~b.eh.
                /* 03B8 */  0x77, 0x80, 0x84, 0xC3, 0xA0, 0x4E, 0x33, 0x80,  // w....N3.
                /* 03C0 */  0x9F, 0xFF, 0xFF, 0x99, 0xC1, 0x07, 0x03, 0xDC,  // ........
                /* 03C8 */  0x99, 0x01, 0xEE, 0x41, 0xC0, 0x13, 0x39, 0x93,  // ...A..9.
                /* 03D0 */  0xB7, 0x2A, 0x18, 0xE7, 0x19, 0xF8, 0x07, 0x98,  // .*......
                /* 03D8 */  0x17, 0x96, 0x67, 0x3E, 0xDF, 0x61, 0xD8, 0xD9,  // ..g>.a..
                /* 03E0 */  0xD8, 0x68, 0x4F, 0xC6, 0xC6, 0x7A, 0x36, 0x66,  // .hO..z6f
                /* 03E8 */  0xF7, 0x99, 0x87, 0x1A, 0xDF, 0x04, 0x5E, 0x91,  // ......^.
                /* 03F0 */  0x7D, 0xA3, 0x31, 0xD0, 0xA3, 0x4C, 0x98, 0x90,  // }.1..L..
                /* 03F8 */  0x0F, 0x80, 0x0C, 0x2E, 0x9A, 0x31, 0xE3, 0x3F,  // .....1.?
                /* 0400 */  0xCF, 0x80, 0x39, 0xF2, 0x79, 0x06, 0xA0, 0xC5,  // ..9.y...
                /* 0408 */  0xFF, 0xFF, 0x3C, 0x83, 0x0F, 0x7B, 0x9E, 0x01,  // ..<..{..
                /* 0410 */  0xE5, 0x29, 0xC0, 0xE7, 0x19, 0x70, 0x1D, 0x26,  // .)...p.&
                /* 0418 */  0x80, 0xC3, 0x29, 0x00, 0x7C, 0x27, 0x42, 0xDC,  // ..).|'B.
                /* 0420 */  0x89, 0x06, 0x2C, 0xF3, 0xE1, 0xE3, 0x81, 0x71,  // ..,....q
                /* 0428 */  0xA6, 0x01, 0xFC, 0x28, 0xB4, 0xE9, 0x53, 0xA3,  // ...(..S.
                /* 0430 */  0x51, 0xAB, 0x06, 0x65, 0x6A, 0x94, 0x69, 0x50,  // Q..ej.iP
                /* 0438 */  0xAB, 0x4F, 0xA5, 0xC6, 0x8C, 0x9D, 0x09, 0x2C,  // .O.....,
                /* 0440 */  0xEB, 0x39, 0xA0, 0xF3, 0x80, 0xC5, 0x3C, 0x0C,  // .9....<.
                /* 0448 */  0x74, 0x32, 0x70, 0x14, 0x10, 0xFA, 0xFF, 0x3F,  // t2p....?
                /* 0450 */  0xFB, 0x19, 0xC4, 0x41, 0x2D, 0x00, 0xB2, 0x70,  // ...A-..p
                /* 0458 */  0x8F, 0x1B, 0x01, 0x59, 0xDA, 0x1A, 0x04, 0x62,  // ...Y...b
                /* 0460 */  0x21, 0x26, 0x40, 0x98, 0x68, 0x15, 0x80, 0x4C,  // !&@.h..L
                /* 0468 */  0xEA, 0x4B, 0x42, 0xC0, 0x04, 0x84, 0x06, 0xB3,  // .KB.....
                /* 0470 */  0x01, 0xC2, 0x64, 0xF8, 0x00, 0x64, 0xA1, 0xDF,  // ..d..d..
                /* 0478 */  0x01, 0x02, 0xB2, 0x64, 0x23, 0x43, 0xA0, 0x4A,  // ...d#C.J
                /* 0480 */  0x40, 0x58, 0x00, 0x27, 0x80, 0x4C, 0xB2, 0x15,  // @X.'.L..
                /* 0488 */  0x20, 0x16, 0x18, 0x84, 0x86, 0xD3, 0x02, 0xC2,  //  .......
                /* 0490 */  0xFE, 0xFF                                       // ..
            })
        }
    }
}

