/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190215 (32-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT.bin, Thu Mar 14 08:51:19 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000505 (1285)
 *     Revision         0x02
 *     Checksum         0xEC
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "CB-01   ", 0x00000001)
{
    External (_SB_.GIO0, UnknownObj)
    External (_SB_.I2C2, UnknownObj)
    External (_SB_.I2C2.ECUR, MethodObj)    // 0 Arguments
    External (_SB_.I2C2.ECUW, MethodObj)    // 1 Arguments
    External (_SB_.PSUB, StrObj)

    Scope (\_SB)
    {
        Mutex (MUT0, 0x00)
        Device (UBTC)
        {
            Name (_HID, EisaId ("USBC000"))  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_CID, EisaId ("PNP0CA0"))  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DDN, "USB Type-C")  // _DDN: DOS Device Name
            Name (_ADR, Zero)  // _ADR: Address
            Name (UBCB, 0xFF5D2000)
            Name (UBCL, 0x00001000)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C2, 
                \_SB.GIO0
            })
            Name (BUFW, Buffer (0x0A)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x00, 0x00                                       // ..
            })
            Name (BUFR, Buffer (0x16)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00               // ......
            })
            Name (CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y00)
            })
            Device (CR01)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    ToPLD (
                        PLD_Revision           = 0x2,
                        PLD_IgnoreColor        = 0x1,
                        PLD_Red                = 0x0,
                        PLD_Green              = 0x0,
                        PLD_Blue               = 0x0,
                        PLD_Width              = 0x8,
                        PLD_Height             = 0x3,
                        PLD_UserVisible        = 0x1,
                        PLD_Dock               = 0x0,
                        PLD_Lid                = 0x0,
                        PLD_Panel              = "RIGHT",
                        PLD_VerticalPosition   = "CENTER",
                        PLD_HorizontalPosition = "CENTER",
                        PLD_Shape              = "HORIZONTALRECTANGLE",
                        PLD_GroupOrientation   = 0x0,
                        PLD_GroupToken         = 0x0,
                        PLD_GroupPosition      = 0x1,
                        PLD_Bay                = 0x0,
                        PLD_Ejectable          = 0x1,
                        PLD_EjectRequired      = 0x1,
                        PLD_CabinetNumber      = 0x0,
                        PLD_CardCageNumber     = 0x0,
                        PLD_Reference          = 0x0,
                        PLD_Rotation           = 0x0,
                        PLD_Order              = 0x0,
                        PLD_VerticalOffset     = 0xFFFF,
                        PLD_HorizontalOffset   = 0xFFFF)

                })
            }

            Device (CR02)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    ToPLD (
                        PLD_Revision           = 0x2,
                        PLD_IgnoreColor        = 0x1,
                        PLD_Red                = 0x0,
                        PLD_Green              = 0x0,
                        PLD_Blue               = 0x0,
                        PLD_Width              = 0x8,
                        PLD_Height             = 0x3,
                        PLD_UserVisible        = 0x1,
                        PLD_Dock               = 0x0,
                        PLD_Lid                = 0x0,
                        PLD_Panel              = "LEFT",
                        PLD_VerticalPosition   = "CENTER",
                        PLD_HorizontalPosition = "CENTER",
                        PLD_Shape              = "HORIZONTALRECTANGLE",
                        PLD_GroupOrientation   = 0x0,
                        PLD_GroupToken         = 0x0,
                        PLD_GroupPosition      = 0x2,
                        PLD_Bay                = 0x0,
                        PLD_Ejectable          = 0x1,
                        PLD_EjectRequired      = 0x1,
                        PLD_CabinetNumber      = 0x0,
                        PLD_CardCageNumber     = 0x0,
                        PLD_Reference          = 0x0,
                        PLD_Rotation           = 0x0,
                        PLD_Order              = 0x0,
                        PLD_VerticalOffset     = 0xFFFF,
                        PLD_HorizontalOffset   = 0xFFFF)

                })
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRS, \_SB.UBTC._Y00._BAS, CBAS)  // _BAS: Base Address
                CBAS = UBCB /* \_SB_.UBTC.UBCB */
                Return (CRS) /* \_SB_.UBTC.CRS_ */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            OperationRegion (USBC, SystemMemory, UBCB, 0x30)
            Field (USBC, ByteAcc, Lock, Preserve)
            {
                VER1,   8, 
                VER2,   8, 
                RSV1,   8, 
                RSV2,   8, 
                CCI0,   8, 
                CCI1,   8, 
                CCI2,   8, 
                CCI3,   8, 
                CTL0,   8, 
                CTL1,   8, 
                CTL2,   8, 
                CTL3,   8, 
                CTL4,   8, 
                CTL5,   8, 
                CTL6,   8, 
                CTL7,   8, 
                MGI0,   8, 
                MGI1,   8, 
                MGI2,   8, 
                MGI3,   8, 
                MGI4,   8, 
                MGI5,   8, 
                MGI6,   8, 
                MGI7,   8, 
                MGI8,   8, 
                MGI9,   8, 
                MGIA,   8, 
                MGIB,   8, 
                MGIC,   8, 
                MGID,   8, 
                MGIE,   8, 
                MGIF,   8, 
                MGO0,   8, 
                MGO1,   8, 
                MGO2,   8, 
                MGO3,   8, 
                MGO4,   8, 
                MGO5,   8, 
                MGO6,   8, 
                MGO7,   8, 
                MGO8,   8, 
                MGO9,   8, 
                MGOA,   8, 
                MGOB,   8, 
                MGOC,   8, 
                MGOD,   8, 
                MGOE,   8, 
                MGOF,   8
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("6f8398c2-7ca4-11e4-ad36-631042b5008f")))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x0F                                             // .
                            })
                        }
                        Case (One)
                        {
                            Acquire (\_SB.MUT0, 0xFFFF)
                            Debug = "OPM write to EC Start"
                            BUFW [Zero] = CTL0 /* \_SB_.UBTC.CTL0 */
                            BUFW [One] = CTL1 /* \_SB_.UBTC.CTL1 */
                            BUFW [0x02] = CTL2 /* \_SB_.UBTC.CTL2 */
                            BUFW [0x03] = CTL3 /* \_SB_.UBTC.CTL3 */
                            BUFW [0x04] = CTL4 /* \_SB_.UBTC.CTL4 */
                            BUFW [0x05] = CTL5 /* \_SB_.UBTC.CTL5 */
                            BUFW [0x06] = CTL6 /* \_SB_.UBTC.CTL6 */
                            BUFW [0x07] = CTL7 /* \_SB_.UBTC.CTL7 */
                            \_SB.I2C2.ECUW (BUFW)
                            Release (\_SB.MUT0)
                        }
                        Case (0x02)
                        {
                            Acquire (\_SB.MUT0, 0xFFFF)
                            Debug = "OPM read from EC Start"
                            BUFR = \_SB.I2C2.ECUR ()
                            If ((DerefOf (BUFR [Zero]) == Zero))
                            {
                                CCI0 = DerefOf (BUFR [0x02])
                                CCI1 = DerefOf (BUFR [0x03])
                                CCI2 = DerefOf (BUFR [0x04])
                                CCI3 = DerefOf (BUFR [0x05])
                                MGI0 = DerefOf (BUFR [0x06])
                                MGI1 = DerefOf (BUFR [0x07])
                                MGI2 = DerefOf (BUFR [0x08])
                                MGI3 = DerefOf (BUFR [0x09])
                                MGI4 = DerefOf (BUFR [0x0A])
                                MGI5 = DerefOf (BUFR [0x0B])
                                MGI6 = DerefOf (BUFR [0x0C])
                                MGI7 = DerefOf (BUFR [0x0D])
                                MGI8 = DerefOf (BUFR [0x0E])
                                MGI9 = DerefOf (BUFR [0x0F])
                                MGIA = DerefOf (BUFR [0x10])
                                MGIB = DerefOf (BUFR [0x11])
                                MGIC = DerefOf (BUFR [0x12])
                                MGID = DerefOf (BUFR [0x13])
                                MGIE = DerefOf (BUFR [0x14])
                                MGIF = DerefOf (BUFR [0x15])
                            }

                            Release (\_SB.MUT0)
                        }
                        Case (0x03)
                        {
                            Return (Zero)
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

