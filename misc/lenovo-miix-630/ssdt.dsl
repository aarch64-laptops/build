/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181031 (32-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt.dat, Thu Nov 01 16:14:00 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000005F4 (1524)
 *     Revision         0x02
 *     Checksum         0xF8
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "CB-01   ", 0x00000001)
{
    External (_SB_.GIO0, UnknownObj)
    External (_SB_.I2C7, UnknownObj)
    External (_SB_.I2C7.CMA0, UnknownObj)
    External (_SB_.I2C7.RBA0, IntObj)
    External (_SB_.I2C7.RBA1, UnknownObj)
    External (_SB_.MUT0, UnknownObj)
    External (_SB_.PSUB, UnknownObj)

    Scope (\_SB)
    {
        Device (UBTC)
        {
            Name (_HID, EisaId ("USBC000"))  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_CID, EisaId ("PNP0CA0"))  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DDN, "USB Type-C")  // _DDN: DOS Device Name
            Name (_ADR, Zero)  // _ADR: Address
            Name (UBCB, 0x9DF87000)
            Name (UBCL, 0x00001000)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C7, 
                \_SB.GIO0
            })
            Name (BUFT, Buffer (0x06)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00               // ......
            })
            CreateByteField (BUFT, Zero, BUST)
            CreateByteField (BUFT, One, BULN)
            CreateByteField (BUFT, 0x02, BUD1)
            CreateByteField (BUFT, 0x03, BUD2)
            Name (BUFU, Buffer (0x33)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0030 */  0x00, 0x00, 0x00                                 // ...
            })
            Name (CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y03)
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
                        PLD_Width              = 0x0,
                        PLD_Height             = 0x0,
                        PLD_UserVisible        = 0x1,
                        PLD_Dock               = 0x0,
                        PLD_Lid                = 0x0,
                        PLD_Panel              = "BACK",
                        PLD_VerticalPosition   = "CENTER",
                        PLD_HorizontalPosition = "LEFT",
                        PLD_Shape              = "VERTICALRECTANGLE",
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

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRS, \_SB.UBTC._Y03._BAS, CBAS)  // _BAS: Base Address
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
                            BUFU [Zero] = Zero
                            BUFU [One] = One
                            BUFU [0x02] = Zero
                            BUFU [0x23] = MGO0 /* \_SB_.UBTC.MGO0 */
                            BUFU [0x24] = MGO1 /* \_SB_.UBTC.MGO1 */
                            BUFU [0x25] = MGO2 /* \_SB_.UBTC.MGO2 */
                            BUFU [0x26] = MGO3 /* \_SB_.UBTC.MGO3 */
                            BUFU [0x27] = MGO4 /* \_SB_.UBTC.MGO4 */
                            BUFU [0x28] = MGO5 /* \_SB_.UBTC.MGO5 */
                            BUFU [0x29] = MGO6 /* \_SB_.UBTC.MGO6 */
                            BUFU [0x2A] = MGO7 /* \_SB_.UBTC.MGO7 */
                            BUFU [0x2B] = MGO8 /* \_SB_.UBTC.MGO8 */
                            BUFU [0x2C] = MGO9 /* \_SB_.UBTC.MGO9 */
                            BUFU [0x2D] = MGOA /* \_SB_.UBTC.MGOA */
                            BUFU [0x2E] = MGOB /* \_SB_.UBTC.MGOB */
                            BUFU [0x2F] = MGOC /* \_SB_.UBTC.MGOC */
                            BUFU [0x30] = MGOD /* \_SB_.UBTC.MGOD */
                            BUFU [0x31] = MGOE /* \_SB_.UBTC.MGOE */
                            BUFU [0x32] = MGOF /* \_SB_.UBTC.MGOF */
                            BUFU [0x0B] = CTL0 /* \_SB_.UBTC.CTL0 */
                            BUFU [0x0C] = CTL1 /* \_SB_.UBTC.CTL1 */
                            BUFU [0x0D] = CTL2 /* \_SB_.UBTC.CTL2 */
                            BUFU [0x0E] = CTL3 /* \_SB_.UBTC.CTL3 */
                            BUFU [0x0F] = CTL4 /* \_SB_.UBTC.CTL4 */
                            BUFU [0x10] = CTL5 /* \_SB_.UBTC.CTL5 */
                            BUFU [0x11] = CTL6 /* \_SB_.UBTC.CTL6 */
                            BUFU [0x12] = CTL7 /* \_SB_.UBTC.CTL7 */
                            \_SB.I2C7.RBA1 = BUFU /* \_SB_.UBTC.BUFU */
                            Release (\_SB.MUT0)
                        }
                        Case (0x02)
                        {
                            Acquire (\_SB.MUT0, 0xFFFF)
                            BUST = Zero
                            BULN = One
                            BUD1 = Zero
                            \_SB.I2C7.CMA0 = BUFT /* \_SB_.UBTC.BUFT */
                            BUFU = \_SB.I2C7.RBA0 /* External reference */
                            If ((DerefOf (BUFU [Zero]) == Zero))
                            {
                                MGI0 = DerefOf (BUFU [0x12])
                                MGI1 = DerefOf (BUFU [0x13])
                                MGI2 = DerefOf (BUFU [0x14])
                                MGI3 = DerefOf (BUFU [0x15])
                                MGI4 = DerefOf (BUFU [0x16])
                                MGI5 = DerefOf (BUFU [0x17])
                                MGI6 = DerefOf (BUFU [0x18])
                                MGI7 = DerefOf (BUFU [0x19])
                                MGI8 = DerefOf (BUFU [0x1A])
                                MGI9 = DerefOf (BUFU [0x1B])
                                MGIA = DerefOf (BUFU [0x1C])
                                MGIB = DerefOf (BUFU [0x1D])
                                MGIC = DerefOf (BUFU [0x1E])
                                MGID = DerefOf (BUFU [0x1F])
                                MGIE = DerefOf (BUFU [0x20])
                                MGIF = DerefOf (BUFU [0x21])
                                CCI0 = DerefOf (BUFU [0x06])
                                CCI1 = DerefOf (BUFU [0x07])
                                CCI2 = DerefOf (BUFU [0x08])
                                CCI3 = DerefOf (BUFU [0x09])
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

