/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180105 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt3.dat, Tue Feb  5 19:29:16 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000C0B7 (49335)
 *     Revision         0x01
 *     Checksum         0xFB
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "84E1"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "84E1", 0x00000001)
{
    /*
     * iASL Warning: There were 3 external control methods found during
     * disassembly, but only 0 were resolved (3 unresolved). Additional
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
    External (_SB_.ECOK, UnknownObj)
    External (_SB_.I2C7.APIR, UnknownObj)
    External (_SB_.I2C7.BLCK, IntObj)
    External (_SB_.I2C7.BLEN, UnknownObj)
    External (_SB_.I2C7.BSTA, UnknownObj)
    External (_SB_.I2C7.BUF1, IntObj)
    External (_SB_.I2C7.BUF3, UnknownObj)
    External (_SB_.I2C7.BUF4, IntObj)
    External (_SB_.I2C7.BUFF, UnknownObj)
    External (_SB_.I2C7.BYAT, UnknownObj)
    External (_SB_.I2C7.DAT1, IntObj)
    External (_SB_.I2C7.DAT2, IntObj)
    External (_SB_.I2C7.DATA, UnknownObj)
    External (_SB_.I2C7.GECR, IntObj)
    External (_SB_.I2C7.RB01, IntObj)
    External (_SB_.I2C7.RB02, IntObj)
    External (_SB_.I2C7.RB16, IntObj)
    External (_SB_.I2C7.SECR, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.I2C7.STAT, UnknownObj)
    External (_SB_.I2C7.WEPR, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (_SB_.I2C7.WSYS, MethodObj)    // Warning: Unknown method, guessing 4 arguments
    External (_SB_.MUT0, UnknownObj)
    External (MEGD, IntObj)

    Scope (\_SB)
    {
        Device (WMID)
        {
            Name (N00E, Buffer (One){})
            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (WMIF, Zero)
            Name (WEI0, Zero)
            Name (WED0, Zero)
            Name (WEI1, Zero)
            Name (WED1, Zero)
            Name (WEVI, Zero)
            Name (WEVD, Zero)
            Name (BUFF, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            CreateByteField (BUFF, Zero, OB0)
            CreateByteField (BUFF, One, OB1)
            CreateByteField (BUFF, 0x02, OB2)
            CreateByteField (BUFF, 0x03, OB3)
            Name (WMBF, Buffer (0x80)
            {
                 0x00                                             // .
            })
            CreateByteField (WMBF, Zero, HWB0)
            CreateByteField (WMBF, One, HWB1)
            CreateByteField (WMBF, 0x02, HWB2)
            CreateByteField (WMBF, 0x03, HWB3)
            Name (_WDG, Buffer (0x0118)
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
                /* 0070 */  0x09, 0xE7, 0x51, 0x33, 0x42, 0x43, 0x27, 0x00,  // ..Q3BC'.
                /* 0078 */  0xE3, 0x08, 0x8D, 0x98, 0xF4, 0x68, 0x35, 0x4C,  // .....h5L
                /* 0080 */  0xAF, 0x3E, 0x6A, 0x1B, 0x81, 0x06, 0xF8, 0x3C,  // .>j....<
                /* 0088 */  0x42, 0x44, 0x11, 0x00, 0x46, 0x97, 0xEA, 0x14,  // BD..F...
                /* 0090 */  0x1F, 0xCE, 0x98, 0x40, 0xA0, 0xE0, 0x70, 0x45,  // ...@..pE
                /* 0098 */  0xCB, 0x4D, 0xA7, 0x45, 0x42, 0x45, 0x02, 0x00,  // .M.EBE..
                /* 00A0 */  0x28, 0x20, 0x2F, 0x32, 0x84, 0x0F, 0x01, 0x49,  // ( /2...I
                /* 00A8 */  0x98, 0x8E, 0x01, 0x51, 0x76, 0x04, 0x9E, 0x2D,  // ...Qv..-
                /* 00B0 */  0x42, 0x46, 0x01, 0x00, 0x3D, 0xDE, 0x32, 0x82,  // BF..=.2.
                /* 00B8 */  0x3D, 0x66, 0x27, 0x43, 0xA8, 0xF4, 0xE2, 0x93,  // =f'C....
                /* 00C0 */  0xAD, 0xB9, 0xBF, 0x05, 0x42, 0x47, 0x01, 0x00,  // ....BG..
                /* 00C8 */  0x36, 0x64, 0x1F, 0x8F, 0x42, 0x9F, 0xC8, 0x42,  // 6d..B..B
                /* 00D0 */  0xBA, 0xDC, 0x0E, 0x94, 0x24, 0xF2, 0x0C, 0x9A,  // ....$...
                /* 00D8 */  0x42, 0x48, 0x00, 0x00, 0x35, 0x64, 0x1F, 0x8F,  // BH..5d..
                /* 00E0 */  0x42, 0x9F, 0xC8, 0x42, 0xBA, 0xDC, 0x0E, 0x94,  // B..B....
                /* 00E8 */  0x24, 0xF2, 0x0C, 0x9A, 0x42, 0x49, 0x00, 0x00,  // $...BI..
                /* 00F0 */  0x61, 0xA6, 0x91, 0x73, 0x3A, 0x22, 0xDB, 0x47,  // a..s:".G
                /* 00F8 */  0xA7, 0x7A, 0x7B, 0xE8, 0x4C, 0x60, 0x82, 0x2D,  // .z{.L`.-
                /* 0100 */  0x41, 0x43, 0x00, 0x02, 0xB6, 0x63, 0x4E, 0xDF,  // AC...cN.
                /* 0108 */  0xBC, 0x3B, 0x58, 0x48, 0x97, 0x37, 0xC7, 0x4F,  // .;XH.7.O
                /* 0110 */  0x82, 0xF8, 0x21, 0xF3, 0x42, 0x4A, 0x00, 0x00   // ..!.BJ..
            })
            Name (EVNT, Package (0x03)
            {
                Package (0x05)
                {
                    "BIOS Configuration Change", 
                    "BIOS Settings", 
                    0x04, 
                    0x05, 
                    0x02
                }, 

                Package (0x05)
                {
                    "BIOS Configuration Security", 
                    "An attempt has been made to Access BIOS features unsuccessfully", 
                    0x04, 
                    0x0A, 
                    0x06
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
            Name (N00F, One)
            Method (M000, 0, Serialized)
            {
                If (N00F)
                {
                    Local7 = DerefOf (N00A [Zero])
                    Local3 = SizeOf (Local7)
                    Local0 = Zero
                    While ((Local0 < 0x27))
                    {
                        Local6 = DerefOf (DerefOf (N00A [Local0]) [Zero])
                        Local2 = DerefOf (DerefOf (N00A [Local0]) [0x0D])
                        If ((Local2 == Zero))
                        {
                            DerefOf (N00A [Local0]) [Zero] = " "
                        }

                        Local2 += 0x0E
                        While ((Local2 < Local3))
                        {
                            DerefOf (N00A [Local0]) [Local2] = ""
                            Local2++
                        }

                        Local0++
                    }

                    N00F = Zero
                }
            }

            Method (WMAA, 3, Serialized)
            {
                Return (HWMC (Arg1, Arg2))
            }

            Method (GDST, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x1 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                Return (Local0)
            }

            Method (SDST, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0x1 (BIOS Write)"
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GDKS, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x04 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        One, 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }
                    }
                Return (Local0)
            }

            Method (GBIF, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0x7 (BIOS Read)"
                If ((\_SB.ECOK != One))
                {
                    Local0 = Package (0x02)
                        {
                            0x0D, 
                            Zero
                        }
                    Sleep (0x96)
                    Return (Local0)
                }

                If (Arg0)
                {
                    Local0 = Package (0x02)
                        {
                            0x06, 
                            Zero
                        }
                    Sleep (0x96)
                    Return (Local0)
                }

                Acquire (\_SB.MUT0, 0xFFFF)
                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = One
                \_SB.I2C7.DAT1 = 0x78
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUFF = \_SB.I2C7.RB01 /* External reference */
                If ((\_SB.I2C7.BYAT == Zero))
                {
                    If (((\_SB.I2C7.DATA & One) == Zero))
                    {
                        Local0 = Package (0x02)
                            {
                                0x34, 
                                Zero
                            }
                        Sleep (0x96)
                        Release (\_SB.MUT0)
                        Return (Local0)
                    }
                }

                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x08
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [One] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [Zero] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [One] = Zero
                    DerefOf (Local0 [0x02]) [Zero] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x12
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x03] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x02] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x03] = Zero
                    DerefOf (Local0 [0x02]) [0x02] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x10
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x05] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x04] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x05] = Zero
                    DerefOf (Local0 [0x02]) [0x04] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x1A
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x07] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x06] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x07] = Zero
                    DerefOf (Local0 [0x02]) [0x06] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x16
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x09] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x08] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x09] = Zero
                    DerefOf (Local0 [0x02]) [0x08] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x02
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    \_SB.I2C7.DAT1 = MEGD /* External reference */
                    \_SB.I2C7.DAT2
                    Local1
                    Local1 -= 0x0AAA
                    Divide (Local1, 0x0A, Local2, Local1)
                    Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x0B])
                    DerefOf (Local0 [0x02]) [0x0A] = Local2
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x0B] = Zero
                    DerefOf (Local0 [0x02]) [0x0A] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x04
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x0D] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x0C] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x0D] = Zero
                    DerefOf (Local0 [0x02]) [0x0C] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x06
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x0F] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x0E] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x0F] = Zero
                    DerefOf (Local0 [0x02]) [0x0E] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x0A
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x11] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x10] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x11] = Zero
                    DerefOf (Local0 [0x02]) [0x10] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = Zero
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x13] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x12] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x13] = Zero
                    DerefOf (Local0 [0x02]) [0x12] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x1E
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x15] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x14] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x15] = Zero
                    DerefOf (Local0 [0x02]) [0x14] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x20
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x17] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x16] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x17] = Zero
                    DerefOf (Local0 [0x02]) [0x16] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x22
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x19] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x18] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x19] = Zero
                    DerefOf (Local0 [0x02]) [0x18] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x24
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x1B] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x1A] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x1B] = Zero
                    DerefOf (Local0 [0x02]) [0x1A] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x18
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    \_SB.I2C7.DAT1 = MEGD /* External reference */
                    \_SB.I2C7.DAT2
                    Local1
                }
                Else
                {
                    Local1 = Zero
                }

                Local3 = ITOS (ToBCD (Local1))
                Local2 = 0x1C
                Local4 = Zero
                Local1 = SizeOf (Local3)
                While (Local1)
                {
                    GBFE (Local3, Local4, RefOf (Local5))
                    PBFE (DerefOf (Local0 [0x02]), Local2, Local5)
                    Local1--
                    Local2++
                    Local4++
                }

                DerefOf (Local0 [0x02]) [Local2] = 0x20
                Local2++
                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x26
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    \_SB.I2C7.DAT1 = MEGD /* External reference */
                    \_SB.I2C7.DAT2
                    Local1
                }
                Else
                {
                    Local1 = Zero
                }

                Local7 = (Local1 & 0x1F)
                Local6 = ITOS (ToBCD (Local7))
                Local7 = (Local1 & 0x01E0)
                Local7 >>= 0x05
                Local5 = ITOS (ToBCD (Local7))
                Local7 = (Local1 >> 0x09)
                Local7 += 0x07BC
                Local4 = ITOS (ToBCD (Local7))
                Local1 = 0x02
                Local7 = 0x03
                While (Local1)
                {
                    GBFE (Local5, Local7, RefOf (Local3))
                    PBFE (DerefOf (Local0 [0x02]), Local2, Local3)
                    Local1--
                    Local2++
                    Local7++
                }

                DerefOf (Local0 [0x02]) [Local2] = "/"
                Local2++
                Local1 = 0x02
                Local7 = 0x03
                While (Local1)
                {
                    GBFE (Local6, Local7, RefOf (Local3))
                    PBFE (DerefOf (Local0 [0x02]), Local2, Local3)
                    Local1--
                    Local2++
                    Local7++
                }

                DerefOf (Local0 [0x02]) [Local2] = "/"
                Local2++
                Local1 = 0x04
                Local7 = One
                While (Local1)
                {
                    GBFE (Local4, Local7, RefOf (Local3))
                    PBFE (DerefOf (Local0 [0x02]), Local2, Local3)
                    Local1--
                    Local2++
                    Local7++
                }

                DerefOf (Local0 [0x02]) [Local2] = Zero
                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = One
                \_SB.I2C7.DAT1 = 0x30
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF3 = \_SB.I2C7.RB16 /* External reference */
                If ((\_SB.I2C7.STAT == Zero))
                {
                    Local1 = \_SB.I2C7.BLCK /* External reference */
                }
                Else
                {
                    Local1 = \_SB.I2C7.BUF4 /* External reference */
                }

                Local3 = SizeOf (Local1)
                Local2 = 0x2C
                Local4 = Zero
                While (Local3)
                {
                    GBFE (Local1, Local4, RefOf (Local5))
                    PBFE (DerefOf (Local0 [0x02]), Local2, Local5)
                    Local3--
                    Local2++
                    Local4++
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = One
                \_SB.I2C7.DAT1 = 0x40
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF3 = \_SB.I2C7.RB16 /* External reference */
                If ((\_SB.I2C7.STAT == Zero))
                {
                    Local1 = \_SB.I2C7.BLCK /* External reference */
                }
                Else
                {
                    Local1 = \_SB.I2C7.BUF4 /* External reference */
                }

                GBFE (Local1, Zero, RefOf (Local5))
                If ((Local5 == 0x36))
                {
                    Local3 = SizeOf (Local1)
                    Local2 = 0x3E
                    Local4 = Zero
                }
                Else
                {
                    Local3 = 0x03
                    Local2 = 0x3E
                    Local4 = Zero
                    Local1 = Buffer (0x04)
                        {
                            "N/A"
                        }
                }

                While (Local3)
                {
                    GBFE (Local1, Local4, RefOf (Local5))
                    PBFE (DerefOf (Local0 [0x02]), Local2, Local5)
                    Local3--
                    Local2++
                    Local4++
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = One
                \_SB.I2C7.DAT1 = 0x50
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF3 = \_SB.I2C7.RB16 /* External reference */
                If ((\_SB.I2C7.STAT == Zero))
                {
                    Local1 = \_SB.I2C7.BLCK /* External reference */
                }
                Else
                {
                    Local1 = \_SB.I2C7.BUF4 /* External reference */
                }

                Local3 = SizeOf (Local1)
                Local2 = 0x4F
                Local4 = Zero
                While (Local3)
                {
                    GBFE (Local1, Local4, RefOf (Local5))
                    PBFE (DerefOf (Local0 [0x02]), Local2, Local5)
                    Local3--
                    Local2++
                    Local4++
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x60
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF3 = \_SB.I2C7.RB16 /* External reference */
                If ((\_SB.I2C7.STAT == Zero))
                {
                    Local1 = \_SB.I2C7.BLCK /* External reference */
                }
                Else
                {
                    Local1 = \_SB.I2C7.BUF4 /* External reference */
                }

                Local3 = SizeOf (Local1)
                Local2 = 0x56
                Local4 = Zero
                While (Local3)
                {
                    GBFE (Local1, Local4, RefOf (Local5))
                    PBFE (DerefOf (Local0 [0x02]), Local2, Local5)
                    Local3--
                    Local2++
                    Local4++
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x24
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x5B] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x5A] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x5B] = Zero
                    DerefOf (Local0 [0x02]) [0x5A] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x26
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x5D] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x5C] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x5D] = Zero
                    DerefOf (Local0 [0x02]) [0x5C] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x0E
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x5F] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x5E] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x5F] = Zero
                    DerefOf (Local0 [0x02]) [0x5E] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x0C
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x61] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x60] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x61] = Zero
                    DerefOf (Local0 [0x02]) [0x60] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x06
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x63] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x62] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x63] = Zero
                    DerefOf (Local0 [0x02]) [0x62] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x28
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x65] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x64] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x65] = Zero
                    DerefOf (Local0 [0x02]) [0x64] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x2A
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x67] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x66] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x67] = Zero
                    DerefOf (Local0 [0x02]) [0x66] = Zero
                }

                Sleep (0x0D)
                \_SB.I2C7.BSTA = Zero
                \_SB.I2C7.BLEN = 0x02
                \_SB.I2C7.DAT1 = 0x2C
                \_SB.I2C7.APIR = \_SB.I2C7.BUF1 /* External reference */
                \_SB.I2C7.BUF1 = \_SB.I2C7.RB02 /* External reference */
                If ((\_SB.I2C7.BSTA == Zero))
                {
                    DerefOf (Local0 [0x02]) [0x69] = \_SB.I2C7.DAT1 /* External reference */
                    DerefOf (Local0 [0x02]) [0x68] = \_SB.I2C7.DAT2 /* External reference */
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [0x69] = Zero
                    DerefOf (Local0 [0x02]) [0x68] = Zero
                }

                DerefOf (Local0 [0x02]) [0x6A] = One
                Sleep (0x96)
                Release (\_SB.MUT0)
                Return (Local0)
            }

            Method (GBBT, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x8 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80)
                        {
                            /* 0000 */  0x31, 0x01, 0x9B, 0x01, 0xAE, 0x01, 0xB6, 0x01,  // 1.......
                            /* 0008 */  0xB7, 0x01, 0x9C, 0x21, 0xA1, 0x21, 0xFF, 0xFF,  // ...!.!..
                            /* 0010 */  0x00, 0x00                                       // ..
                        }
                    }
                Return (Local0)
            }

            Method (GHKS, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x9 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (SHKS, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0x9 (BIOS Write)"
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GHKF, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0xA (BIOS Read)"
                Return (HKFR ())
            }

            Method (SHKF, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0xA (BIOS Write)"
                Local1 = (Arg0 & 0xFF)
                Local3 = (Arg0 & 0xFF00)
                Local2 = (Local3 >> 0x08)
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                DerefOf (Local0 [0x02]) [Zero] = Local1
                DerefOf (Local0 [0x02]) [One] = Local2
                Return (Local0)
            }

            Method (HKFR, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GBBV, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0xC (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (GFRC, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x0D (BIOS Read)"
                Local0 = Zero
                Local1 = Zero
                Local2 = Zero
                Local3 = Zero
                Local5 = Zero
                Local4 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                Local0 |= 0x02
                Local0 |= 0x10
                Local2 |= 0x08
                Local0 |= 0x80
                Local1 |= 0x08
                Local1 |= 0x10
                Local1 |= 0x80
                Local2 |= One
                Local3 |= 0x04
                Local3 |= 0x80
                Local5 |= 0x02
                DerefOf (Local4 [0x02]) [Zero] = Local0
                DerefOf (Local4 [0x02]) [One] = Local1
                DerefOf (Local4 [0x02]) [0x02] = Local2
                DerefOf (Local4 [0x02]) [0x03] = Local3
                DerefOf (Local4 [0x02]) [0x04] = Local5
                Return (Local4)
            }

            Method (GSAS, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x0F (BIOS Read)"
                Local0 = Zero
                If ((Local0 <= 0x02))
                {
                    Local0 = One
                }
                ElseIf ((Local0 == 0x03))
                {
                    Local0 = 0x02
                }
                ElseIf ((Local0 == 0x04))
                {
                    Local0 = 0x03
                }

                Local1 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                DerefOf (Local1 [0x02]) [Zero] = Local0
                Return (Local1)
            }

            Method (GWSD, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x10 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                M015 ()
                Local1 = Zero
                Local2 = (DerefOf (N030 [0xD4]) >> 0x04)
                Local2 += 0x30
                DerefOf (Local0 [0x02]) [Local1] = Local2
                Local1 += One
                Local2 = (DerefOf (N030 [0xD4]) & 0x0F)
                Local2 += 0x30
                DerefOf (Local0 [0x02]) [Local1] = Local2
                Local1 += One
                Local2 = (DerefOf (N030 [0xD5]) >> 0x04)
                Local2 += 0x30
                DerefOf (Local0 [0x02]) [Local1] = Local2
                Local1 += One
                Local2 = (DerefOf (N030 [0xD5]) & 0x0F)
                Local2 += 0x30
                DerefOf (Local0 [0x02]) [Local1] = Local2
                Local1 += One
                Local2 = (DerefOf (N030 [0xD6]) >> 0x04)
                Local2 += 0x30
                DerefOf (Local0 [0x02]) [Local1] = Local2
                Local1 += One
                Local2 = (DerefOf (N030 [0xD6]) & 0x0F)
                Local2 += 0x30
                DerefOf (Local0 [0x02]) [Local1] = Local2
                Local1 += One
                Local2 = (DerefOf (N030 [0xD7]) >> 0x04)
                Local2 += 0x30
                DerefOf (Local0 [0x02]) [Local1] = Local2
                Local1 += One
                Local2 = (DerefOf (N030 [0xD7]) & 0x0F)
                Local2 += 0x30
                DerefOf (Local0 [0x02]) [Local1] = Local2
                Local1 += One
                Return (Local0)
            }

            Method (SWSD, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0x10 (BIOS Write)"
                M015 ()
                Local1 = Zero
                Local2 = (DerefOf (Arg0 [Local1]) << 0x04)
                Local2 &= 0xF0
                Local1 += One
                Local2 |= (DerefOf (Arg0 [Local1]) & 0x0F)
                N030 [0xD4] = Local2
                Local1 += One
                Local2 = (DerefOf (Arg0 [Local1]) << 0x04)
                Local2 &= 0xF0
                Local1 += One
                Local2 |= (DerefOf (Arg0 [Local1]) & 0x0F)
                N030 [0xD5] = Local2
                Local1 += One
                Local2 = (DerefOf (Arg0 [Local1]) << 0x04)
                Local2 &= 0xF0
                Local1 += One
                Local2 |= (DerefOf (Arg0 [Local1]) & 0x0F)
                N030 [0xD6] = Local2
                Local1 += One
                Local2 = (DerefOf (Arg0 [Local1]) << 0x04)
                Local2 &= 0xF0
                Local1 += One
                Local2 |= (DerefOf (Arg0 [Local1]) & 0x0F)
                N030 [0xD7] = Local2
                M006 (0x03)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GWDI, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x1B (BIOS Read)"
                WMIF = One
                Local0 = Buffer (0x10){}
                Local1 = Package (0x03){}
                Local1 [Zero] = Zero
                Local1 [0x02] = Local0
                Return (Local1)
            }

            Method (SWDS, 4, NotSerialized)
            {
                Debug = "HP WMI Command 0x1B (BIOS Write)"
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GSDC, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x1D (BIOS Read)"
                M015 ()
                Local1 = DerefOf (N030 [0xD8])
                Local2 = DerefOf (N030 [0xD9])
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                DerefOf (Local0 [0x02]) [Zero] = Local1
                DerefOf (Local0 [0x02]) [One] = Local2
                Return (Local0)
            }

            Method (SSDC, 4, NotSerialized)
            {
                Debug = "HP WMI Command 0x1D (BIOS Write)"
                M015 ()
                Local0 = (Arg0 & 0xFF)
                N030 [0xD8] = Local0
                M006 (0x03)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBUS, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x1E (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                DerefOf (Local0 [0x02]) [Zero] = Zero
                DerefOf (Local0 [0x02]) [One] = Zero
                Return (Local0)
            }

            Method (SBUS, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0x1E (BIOS Write)"
                Local0 = (Arg0 & 0xFF)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBCC, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x1F (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                DerefOf (Local0 [Zero]) [Zero] = 0x35
                Return (Local0)
            }

            Method (SBCC, 4, NotSerialized)
            {
                Debug = "HP WMI Command 0x1F (BIOS Write)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Buffer (0x04){}
                    }
                DerefOf (Local0 [0x02]) [Zero] = 0x35
                Return (Local0)
            }

            Method (GTDC, 1, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                Return (Local0)
            }

            Method (STDC, 3, NotSerialized)
            {
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GFCS, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x29 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (SFCS, 1, Serialized)
            {
                Debug = "HP WMI Command 0x29 (BIOS Write)"
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GPES, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x2A (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (SPES, 1, Serialized)
            {
                Debug = "HP WMI Command 0x2A (BIOS Write)"
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBCO, 0, Serialized)
            {
                Debug = "HP WMI Command 0x2B (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                If ((\_SB.ECOK == One))
                {
                    Sleep (0xC8)
                    0x81 = \_SB.I2C7.GECR /* External reference */
                    Local2
                    0x78 = \_SB.I2C7.GECR /* External reference */
                    Local3
                    0xC2 = \_SB.I2C7.GECR /* External reference */
                    Local4
                    0x06 = \_SB.I2C7.GECR /* External reference */
                    Local5
                    0x90 = \_SB.I2C7.GECR /* External reference */
                    Local6
                    Local6 &= One
                    If (((Local3 & One) == One))
                    {
                        If (((Local3 & 0x80) == 0x80))
                        {
                            If ((Local6 == One))
                            {
                                Local2 &= 0x03
                                Switch (Local2)
                                {
                                    Case (Zero)
                                    {
                                        If ((Local4 == 0xC5))
                                        {
                                            Local1 = 0x04
                                        }
                                        Else
                                        {
                                            Local1 = Zero
                                        }
                                    }
                                    Case (One)
                                    {
                                        Local1 = 0x02
                                    }
                                    Case (0x02)
                                    {
                                        If ((Local5 == Zero))
                                        {
                                            Local1 = Zero
                                        }
                                        ElseIf ((Local4 == 0xC3))
                                        {
                                            Local1 = 0x03
                                        }
                                        Else
                                        {
                                            Local1 = One
                                        }
                                    }
                                    Default
                                    {
                                        DerefOf (Local0 [Zero]) [Zero] = 0x37
                                        Return (Local0)
                                    }

                                }
                            }
                            Else
                            {
                                Local1 = 0x02
                            }
                        }
                        Else
                        {
                            DerefOf (Local0 [Zero]) [Zero] = 0x37
                            Return (Local0)
                        }
                    }
                    Else
                    {
                        Local1 = 0xFF
                    }

                    DerefOf (Local0 [0x02]) [Zero] = Local1
                    DerefOf (Local0 [0x02]) [One] = 0xFF
                    DerefOf (Local0 [0x02]) [0x02] = One
                }
                Else
                {
                    DerefOf (Local0 [Zero]) [Zero] = 0x35
                }

                Return (Local0)
            }

            Method (SBCO, 4, Serialized)
            {
                Debug = "HP WMI Command 0x2B (BIOS Write)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Buffer (0x04){}
                    }
                If ((\_SB.ECOK == One))
                {
                    If ((Arg0 == Zero))
                    {
                        0x78 = \_SB.I2C7.GECR /* External reference */
                        Local2
                        If (((Local2 & One) == One))
                        {
                            If (((Local2 & 0x80) == 0x80))
                            {
                                0x90 = \_SB.I2C7.GECR /* External reference */
                                Local3
                                Local3 &= One
                                Switch (Arg1)
                                {
                                    Case (Zero)
                                    {
                                        Local1 = 0x40
                                    }
                                    Case (One)
                                    {
                                        If ((Local3 == Zero))
                                        {
                                            DerefOf (Local0 [0x02]) [Zero] = 0x35
                                            Return (Local0)
                                        }

                                        Local1 = 0x41
                                    }
                                    Case (0x02)
                                    {
                                        If (((Local2 & One) == Zero))
                                        {
                                            DerefOf (Local0 [0x02]) [Zero] = 0x36
                                            Return (Local0)
                                        }

                                        Local1 = 0x42
                                    }
                                    Case (0x03)
                                    {
                                        If ((Local3 == Zero))
                                        {
                                            DerefOf (Local0 [0x02]) [Zero] = 0x35
                                            Return (Local0)
                                        }

                                        If (((Local2 & 0x08) == 0x08))
                                        {
                                            DerefOf (Local0 [0x02]) [Zero] = 0x35
                                            Return (Local0)
                                        }

                                        Local1 = 0x43
                                    }
                                    Case (0x04)
                                    {
                                        Local1 = 0x44
                                    }
                                    Case (0x05)
                                    {
                                        Local1 = 0x45
                                    }
                                    Case (0x07)
                                    {
                                        \_SB.I2C7.SECR (0xF9)
                                        0x02
                                        DerefOf (Local0 [0x02]) [Zero] = Zero
                                        Return (Local0)
                                    }
                                    Default
                                    {
                                        DerefOf (Local0 [0x02]) [Zero] = 0x03
                                        Return (Local0)
                                    }

                                }

                                \_SB.I2C7.SECR (0xC2)
                                Local1
                                Sleep (0x64)
                                0xC2 = \_SB.I2C7.GECR /* External reference */
                                Local1
                                While (((Local1 & 0x80) != 0x80))
                                {
                                    Sleep (0x64)
                                    0xC2 = \_SB.I2C7.GECR /* External reference */
                                    Local1
                                }

                                Local1 &= 0x30
                                Switch (Local1)
                                {
                                    Case (Zero)
                                    {
                                        DerefOf (Local0 [0x02]) [Zero] = Zero
                                    }
                                    Case (0x10)
                                    {
                                        DerefOf (Local0 [0x02]) [Zero] = 0x35
                                    }
                                    Case (0x20)
                                    {
                                        DerefOf (Local0 [0x02]) [Zero] = 0x35
                                    }
                                    Case (0x30)
                                    {
                                        DerefOf (Local0 [0x02]) [Zero] = 0x37
                                    }

                                }
                            }
                            Else
                            {
                                DerefOf (Local0 [0x02]) [Zero] = 0x37
                            }
                        }
                        Else
                        {
                            DerefOf (Local0 [0x02]) [Zero] = 0x34
                        }
                    }
                    ElseIf ((Arg0 == One))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x34
                    }
                    Else
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x03
                    }
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [Zero] = 0x35
                }

                Return (Local0)
            }

            Method (GTCS, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x2C (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                Return (Local0)
            }

            Method (STCS, 4, NotSerialized)
            {
                Debug = "HP WMI Command 0x2C (BIOS Write)"
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GPSS, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x31 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                Return (Local0)
            }

            Method (SPSS, 2, NotSerialized)
            {
                Debug = "HP WMI Command 0x31 (BIOS Write)"
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GJGD, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x35 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                Return (Local0)
            }

            Method (SJGD, 4, NotSerialized)
            {
                Debug = "HP WMI Command 0x35 (BIOS Write)"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Return (Local0)
            }

            Method (GPST, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x36 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80)
                        {
                             0x00                                             // .
                        }
                    }
                Local1 = Zero
                DerefOf (Local0 [0x02]) [Local1] = 0x1D
                Local1++
                \_SB.I2C7.SECR (0xC4)
                0x9E
                Sleep (One)
                Local2 = Zero
                While ((Local2 < 0x07))
                {
                    Local3 = Zero
                    While ((Local3 < 0x02))
                    {
                        Local4 = ((Local2 * 0x04) + (Local3 + Zero))
                        Local4 += 0x80
                        \_SB.I2C7.SECR (0xC4)
                        Local4
                        Sleep (One)
                        0xC5 = \_SB.I2C7.GECR /* External reference */
                        Local4
                        Local4 <<= 0x08
                        0xC6 = (Local4 + \_SB.I2C7.GECR) /* External reference */
                        Local4
                        If ((Local4 >= 0x05A0))
                        {
                            Local5 = 0xFF
                            Local6 = 0xFF
                        }
                        Else
                        {
                            If (((Local4 == Zero) && (Local3 == Zero)))
                            {
                                \_SB.I2C7.SECR (0xC4)
                                One = (\_SB.I2C7.GECR + 0xC4)
                                Zero
                                If (((\_SB.I2C7.GECR == 0xC5) && Zero))
                                {
                                    (\_SB.I2C7.GECR == 0xC6)
                                    Zero
                                    DerefOf (Local0 [0x02]) [Local1] = 0xFF
                                    Local1++
                                    DerefOf (Local0 [0x02]) [Local1] = 0xFF
                                    Local1++
                                    DerefOf (Local0 [0x02]) [Local1] = 0xFF
                                    Local1++
                                    DerefOf (Local0 [0x02]) [Local1] = 0xFF
                                    Local1++
                                    Break
                                }
                            }

                            Divide (Local4, 0x3C, Local6, Local5)
                            ToBCD (Local5, Local5)
                            ToBCD (Local6, Local6)
                        }

                        DerefOf (Local0 [0x02]) [Local1] = Local5
                        Local1++
                        DerefOf (Local0 [0x02]) [Local1] = Local6
                        Local1++
                        Local3++
                    }

                    Local2++
                }

                Return (Local0)
            }

            Method (SPST, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0x36 (BIOS Write)"
                Name (BCBF, Buffer (0x1C)
                {
                     0x00                                             // .
                })
                Name (PSBF, Buffer (0x1C)
                {
                     0x00                                             // .
                })
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local1 = Zero
                If ((DerefOf (Arg0 [Local1]) != 0x1D))
                {
                    Local0 [Zero] = 0x06
                    Return (Local0)
                }

                Local2 = Zero
                While ((Local2 < 0x07))
                {
                    Local4 = ((Local2 * 0x04) + 0x02)
                    Local4 += 0x80
                    \_SB.I2C7.SECR (0xC4)
                    Local4
                    Sleep (One)
                    0xC6 = \_SB.I2C7.GECR /* External reference */
                    BCBF [((Local2 * 0x04) + Zero)]
                    0xC5 = \_SB.I2C7.GECR /* External reference */
                    BCBF [((Local2 * 0x04) + One)]
                    Local4++
                    \_SB.I2C7.SECR (0xC4)
                    Local4
                    Sleep (One)
                    0xC6 = \_SB.I2C7.GECR /* External reference */
                    BCBF [((Local2 * 0x04) + 0x02)]
                    0xC5 = \_SB.I2C7.GECR /* External reference */
                    BCBF [((Local2 * 0x04) + 0x03)]
                    Local2++
                }

                Local1 = One
                While ((Local1 < 0x1C))
                {
                    Divide ((Local1 - One), 0x04, Local3, Local2)
                    Local4 = DerefOf (Arg0 [Local1])
                    Local1++
                    Local5 = DerefOf (Arg0 [Local1])
                    Local1++
                    If (((Local4 == 0xFF) && (Local5 == 0xFF)))
                    {
                        Local6 = 0xFFFF
                    }
                    Else
                    {
                        FromBCD (Local4, Local4)
                        FromBCD (Local5, Local5)
                        If (((Local4 > 0x17) || (Local5 > 0x3B)))
                        {
                            Local0 [Zero] = 0x06
                            Return (Local0)
                        }

                        Local6 = ((Local4 * 0x3C) + Local5)
                        Local4 = DerefOf (BCBF [((Local2 * 0x04) + Zero)]
                            )
                        Local4 += (DerefOf (BCBF [((Local2 * 0x04) + One
                            )]) << 0x08)
                        Local5 = DerefOf (BCBF [((Local2 * 0x04) + 0x02)]
                            )
                        Local5 += (DerefOf (BCBF [((Local2 * 0x04) + 0x03
                            )]) << 0x08)
                        If (((Local6 >= Local4) && (Local6 <= Local5)))
                        {
                            Local0 [Zero] = 0x39
                            Return (Local0)
                        }
                    }

                    PSBF [((Local2 * 0x04) + (Local3 + Zero)
                        )] = (Local6 & 0xFF)
                    PSBF [((Local2 * 0x04) + (Local3 + One)
                        )] = ((Local6 >> 0x08) & 0xFF)
                    If ((Local3 == Zero))
                    {
                        Local7 = Local6
                    }
                    ElseIf (((((Local6 != 0xFFFF) && (Local7 != 
                        0xFFFF)) && (Local6 <= Local7)) || (((Local6 == 0xFFFF) && (Local7 != 
                        0xFFFF)) || ((Local6 != 0xFFFF) && (Local7 == 0xFFFF)))))
                    {
                        Local0 [Zero] = 0x06
                        Return (Local0)
                    }
                }

                WSMI (0x02, 0x36, 0x80, Zero, Zero)
                Local1 = Zero
                While ((Local1 < SizeOf (PSBF)))
                {
                    Local2 = DerefOf (PSBF [Local1])
                    If ((Local2 != 0xFF))
                    {
                        Break
                    }

                    Local1++
                    If ((Local1 == SizeOf (PSBF)))
                    {
                        \_SB.I2C7.SECR (0xC6)
                        Zero
                        \_SB.I2C7.SECR (0xC5)
                        Zero
                        \_SB.I2C7.SECR (0xC4)
                        0x1E
                        Sleep (One)
                        Local1 = Buffer (0x80)
                            {
                                 0xFF                                             // .
                            }
                        WBUF = Local1
                        SBST (0xFF, 0xFF, 0xFF, 0xFF)
                        Local1 [Zero] = 0x1D
                        WBUF = Local1
                        SBCT (Local1)
                        Return (Local0)
                    }
                }

                Local1 = Zero
                While ((Local1 < SizeOf (PSBF)))
                {
                    Local2 = Local1
                    \_SB.I2C7.SECR (0xC6)
                    DerefOf (PSBF [Local1])
                    Local1++
                    \_SB.I2C7.SECR (0xC5)
                    DerefOf (PSBF [Local1])
                    Local1++
                    Divide (Local2, 0x04, Local3, Local2)
                    Local2 = (Local2 * 0x04)
                    If (Local3)
                    {
                        Local2 += One
                    }
                    Else
                    {
                        Local2 += Zero
                    }

                    \_SB.I2C7.SECR (0xC4)
                    Local2
                    Sleep (One)
                }

                \_SB.I2C7.SECR (0xC6)
                One
                \_SB.I2C7.SECR (0xC5)
                Zero
                \_SB.I2C7.SECR (0xC4)
                0x1E
                Sleep (One)
                Return (Local0)
            }

            Method (GBCT, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x37 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80)
                        {
                             0x00                                             // .
                        }
                    }
                Local1 = Zero
                DerefOf (Local0 [0x02]) [Local1] = 0x1D
                Local1++
                \_SB.I2C7.SECR (0xC4)
                0x9E
                Sleep (One)
                Local2 = Zero
                While ((Local2 < 0x07))
                {
                    Local3 = Zero
                    While ((Local3 < 0x02))
                    {
                        Local4 = ((Local2 * 0x04) + (Local3 + 0x02))
                        Local4 += 0x80
                        \_SB.I2C7.SECR (0xC4)
                        Local4
                        Sleep (One)
                        0xC5 = \_SB.I2C7.GECR /* External reference */
                        Local4
                        Local4 <<= 0x08
                        0xC6 = (Local4 + \_SB.I2C7.GECR) /* External reference */
                        Local4
                        If ((Local4 >= 0x05A0))
                        {
                            Local5 = 0xFF
                            Local6 = 0xFF
                        }
                        Else
                        {
                            If (((Local4 == Zero) && (Local3 == Zero)))
                            {
                                \_SB.I2C7.SECR (0xC4)
                                One = (\_SB.I2C7.GECR + 0xC4)
                                Zero
                                Sleep (One)
                                If (((\_SB.I2C7.GECR == 0xC5) && Zero))
                                {
                                    (\_SB.I2C7.GECR == 0xC6)
                                    Zero
                                    DerefOf (Local0 [0x02]) [Local1] = 0xFF
                                    Local1++
                                    DerefOf (Local0 [0x02]) [Local1] = 0xFF
                                    Local1++
                                    DerefOf (Local0 [0x02]) [Local1] = 0xFF
                                    Local1++
                                    DerefOf (Local0 [0x02]) [Local1] = 0xFF
                                    Local1++
                                    Break
                                }
                            }

                            Divide (Local4, 0x3C, Local6, Local5)
                            ToBCD (Local5, Local5)
                            ToBCD (Local6, Local6)
                        }

                        DerefOf (Local0 [0x02]) [Local1] = Local5
                        Local1++
                        DerefOf (Local0 [0x02]) [Local1] = Local6
                        Local1++
                        Local3++
                    }

                    Local2++
                }

                Return (Local0)
            }

            Method (SBCT, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0x37 (BIOS Write)"
                Name (BCBF, Buffer (0x1C)
                {
                     0x00                                             // .
                })
                Name (PSBF, Buffer (0x1C)
                {
                     0x00                                             // .
                })
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local1 = Zero
                If ((DerefOf (Arg0 [Local1]) != 0x1D))
                {
                    Local0 [Zero] = 0x06
                    Return (Local0)
                }

                Local2 = Zero
                While ((Local2 < 0x07))
                {
                    Local4 = ((Local2 * 0x04) + Zero)
                    Local4 += 0x80
                    \_SB.I2C7.SECR (0xC4)
                    Local4
                    Sleep (One)
                    0xC6 = \_SB.I2C7.GECR /* External reference */
                    PSBF [((Local2 * 0x04) + Zero)]
                    0xC5 = \_SB.I2C7.GECR /* External reference */
                    PSBF [((Local2 * 0x04) + One)]
                    Local4++
                    \_SB.I2C7.SECR (0xC4)
                    Local4
                    Sleep (One)
                    0xC6 = \_SB.I2C7.GECR /* External reference */
                    PSBF [((Local2 * 0x04) + 0x02)]
                    0xC5 = \_SB.I2C7.GECR /* External reference */
                    PSBF [((Local2 * 0x04) + 0x03)]
                    Local2++
                }

                Local1 = One
                While ((Local1 < 0x1C))
                {
                    Divide ((Local1 - One), 0x04, Local3, Local2)
                    Local4 = DerefOf (Arg0 [Local1])
                    Local1++
                    Local5 = DerefOf (Arg0 [Local1])
                    Local1++
                    If (((Local4 == 0xFF) && (Local5 == 0xFF)))
                    {
                        Local6 = 0xFFFF
                    }
                    Else
                    {
                        FromBCD (Local4, Local4)
                        FromBCD (Local5, Local5)
                        If (((Local4 > 0x17) || (Local5 > 0x3B)))
                        {
                            Local0 [Zero] = 0x06
                            Return (Local0)
                        }

                        Local6 = ((Local4 * 0x3C) + Local5)
                        Local4 = DerefOf (PSBF [((Local2 * 0x04) + Zero)]
                            )
                        Local4 += (DerefOf (PSBF [((Local2 * 0x04) + One
                            )]) << 0x08)
                        Local5 = DerefOf (PSBF [((Local2 * 0x04) + 0x02)]
                            )
                        Local5 += (DerefOf (PSBF [((Local2 * 0x04) + 0x03
                            )]) << 0x08)
                        If (((Local6 >= Local4) && (Local6 <= Local5)))
                        {
                            Local0 [Zero] = 0x39
                            Return (Local0)
                        }
                    }

                    BCBF [((Local2 * 0x04) + (Local3 + Zero)
                        )] = (Local6 & 0xFF)
                    BCBF [((Local2 * 0x04) + (Local3 + One)
                        )] = ((Local6 >> 0x08) & 0xFF)
                    If ((Local3 == Zero))
                    {
                        Local7 = Local6
                    }
                    ElseIf (((((Local6 != 0xFFFF) && (Local7 != 
                        0xFFFF)) && (Local6 <= Local7)) || (((Local6 == 0xFFFF) && (Local7 != 
                        0xFFFF)) || ((Local6 != 0xFFFF) && (Local7 == 0xFFFF)))))
                    {
                        Local0 [Zero] = 0x06
                        Return (Local0)
                    }
                }

                WSMI (0x02, 0x37, 0x80, Zero, Zero)
                Local1 = Zero
                While ((Local1 < SizeOf (PSBF)))
                {
                    Local2 = DerefOf (PSBF [Local1])
                    If ((Local2 != 0xFF))
                    {
                        Break
                    }

                    Local1++
                    If ((Local1 == SizeOf (PSBF)))
                    {
                        \_SB.I2C7.SECR (0xC6)
                        Zero
                        \_SB.I2C7.SECR (0xC5)
                        Zero
                        \_SB.I2C7.SECR (0xC4)
                        0x1E
                        Sleep (One)
                        Return (Local0)
                    }
                }

                Local1 = Zero
                While ((Local1 < SizeOf (BCBF)))
                {
                    Local2 = Local1
                    \_SB.I2C7.SECR (0xC6)
                    DerefOf (BCBF [Local1])
                    Local1++
                    \_SB.I2C7.SECR (0xC5)
                    DerefOf (BCBF [Local1])
                    Local1++
                    Divide (Local2, 0x04, Local3, Local2)
                    Local2 = (Local2 * 0x04)
                    If (Local3)
                    {
                        Local2 += 0x03
                    }
                    Else
                    {
                        Local2 += 0x02
                    }

                    \_SB.I2C7.SECR (0xC4)
                    Local2
                    Sleep (One)
                }

                \_SB.I2C7.SECR (0xC6)
                One
                \_SB.I2C7.SECR (0xC5)
                Zero
                \_SB.I2C7.SECR (0xC4)
                0x1E
                Sleep (One)
                Return (Local0)
            }

            Method (GBST, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x38 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                \_SB.I2C7.SECR (0xC4)
                0x9E
                Sleep (One)
                \_SB.I2C7.SECR (0xC4)
                0x9F
                Sleep (One)
                0xC6 = \_SB.I2C7.GECR /* External reference */
                DerefOf (Local0 [0x02]) [Zero]
                Return (Local0)
            }

            Method (SBST, 4, NotSerialized)
            {
                Debug = "HP WMI Command 0x38 (BIOS Write)"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                If ((((Arg0 >= 0x0A) && (Arg0 <= 0x63)) || (
                    Arg0 == 0xFF)))
                {
                    WSMI (0x02, 0x38, 0x04, Zero, Zero)
                    \_SB.I2C7.SECR (0xC5)
                    Zero
                    \_SB.I2C7.SECR (0xC6)
                    Arg0
                    \_SB.I2C7.SECR (0xC4)
                    0x1F
                    Sleep (One)
                }
                Else
                {
                    Local0 [Zero] = 0x06
                }

                Return (Local0)
            }

            Method (GSDM, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x40 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                Local2 = 0x06
                0xF6 = \_SB.I2C7.GECR /* External reference */
                Local1
                If (((Local1 & 0x02) == 0x02))
                {
                    Local2 |= One
                    Local3 = 0x02
                }
                Else
                {
                    Local3 = 0x06
                }

                If (((Local1 & One) == One))
                {
                    Local2 &= 0xFB
                    Local3 = One
                }

                DerefOf (Local0 [0x02]) [Zero] = Local3
                DerefOf (Local0 [0x02]) [One] = Local2
                Return (Local0)
            }

            Method (GBMF, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x44 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                 = 0x30 &= \_SB.I2C7.GECR
                Local1
                If ((Local1 == Zero))
                {
                    DerefOf (Local0 [0x02]) [Zero] = Zero
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                }

                Return (Local0)
            }

            Method (GLED, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x49 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                 = 0x02 &= \_SB.I2C7.GECR
                Local1
                If ((Local1 == 0x02))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [Zero] = Zero
                }

                Return (Local0)
            }

            Method (SLED, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0x49 (BIOS Write)"
                Local0 = (Arg0 & 0xFF)
                0x93 = \_SB.I2C7.GECR /* External reference */
                Local1
                If ((Local0 == One))
                {
                    \_SB.I2C7.WSYS (0x31, \_SB.I2C7.SECR (0x93), (Local1 | 0x02), Else
                        {
                            \_SB.I2C7.WSYS (0x30, \_SB.I2C7.SECR (0x93), (Local1 & 0xFD), Return (Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }))
                        })
                }
            }

            Method (CSTA, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Return (Local0)
            }

            Method (CACT, 0, NotSerialized)
            {
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (CDAC, 0, NotSerialized)
            {
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (CAIP, 0, NotSerialized)
            {
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBSC, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x03 for WMI 20000h command"
                Local0 = Zero
                Local1 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                DerefOf (Local1 [0x02]) [Zero] = Local0
                Return (Local1)
            }

            Method (GASC, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x1E for WMI 20000h command"
                Local0 = Zero
                Local1 = Zero
                Local2 = Zero
                Local3 = Zero
                Local0 |= 0x80
                Local1 |= 0x04
                Local4 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                DerefOf (Local4 [0x02]) [Zero] = Local0
                DerefOf (Local4 [0x02]) [One] = Local1
                DerefOf (Local4 [0x02]) [0x02] = Local2
                DerefOf (Local4 [0x02]) [0x03] = Local3
                Return (Local4)
            }

            Method (ACPD, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x2000B (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                0xC9 = \_SB.I2C7.GECR /* External reference */
                Local1
                If ((Local1 == Zero))
                {
                    Local0 [Zero] = 0x50
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [Zero] = Local1
                    DerefOf (Local0 [0x02]) [One] = Zero
                }

                Return (Local0)
            }

            Method (GM01, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x01 for WMI 20008h command"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                DerefOf (Local0 [0x02]) [Zero] = Zero
                DerefOf (Local0 [0x02]) [One] = Zero
                Return (Local0)
            }

            Method (GM02, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x02 for WMI 20008h command"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                DerefOf (Local0 [0x02]) [Zero] = Zero
                DerefOf (Local0 [0x02]) [One] = Zero
                DerefOf (Local0 [0x02]) [0x02] = Zero
                Return (Local0)
            }

            Method (GM03, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x03 for WMI 20008h command"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local1 = WBUF /* \_SB_.WMID.WBUF */
                Local2 = DerefOf (Local1 [Zero])
                Local3 = DerefOf (Local1 [One])
                Local4 = DerefOf (Local1 [0x02])
                Return (Local0)
            }

            Method (GM04, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x04 for WMI 20008h command"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Local1 = WBUF /* \_SB_.WMID.WBUF */
                Local2 = DerefOf (Local1 [Zero])
                DerefOf (Local0 [0x02]) [Zero] = Zero
                DerefOf (Local0 [0x02]) [One] = Zero
                DerefOf (Local0 [0x02]) [0x02] = Zero
                Return (Local0)
            }

            Method (GM05, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x05 for WMI 20008h command"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local1 = WBUF /* \_SB_.WMID.WBUF */
                Local2 = DerefOf (Local1 [Zero])
                Local3 = DerefOf (Local1 [One])
                Local4 = DerefOf (Local1 [0x02])
                Local5 = DerefOf (Local1 [0x03])
                Return (Local0)
            }

            Method (GM06, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x06 for WMI 20008h command"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                DerefOf (Local0 [0x02]) [Zero] = Zero
                Return (Local0)
            }

            Method (GM07, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x07 for WMI 20008h command"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local1 = WBUF /* \_SB_.WMID.WBUF */
                Local2 = DerefOf (Local1 [Zero])
                Return (Local0)
            }

            Method (GM08, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x08 for WMI 20008h command"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                DerefOf (Local0 [0x02]) [Zero] = Zero
                DerefOf (Local0 [0x02]) [One] = Zero
                Return (Local0)
            }

            Method (GM09, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x09 for WMI 20008h command"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local1 = WBUF /* \_SB_.WMID.WBUF */
                Local2 = DerefOf (Local1 [Zero])
                Local3 = DerefOf (Local1 [One])
                Return (Local0)
            }

            Method (GM0A, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x0A for WMI 20008h command"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                DerefOf (Local0 [0x02]) [Zero] = Zero
                Return (Local0)
            }

            Method (GM0B, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x0B for WMI 20008h command"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local1 = WBUF /* \_SB_.WMID.WBUF */
                Local2 = DerefOf (Local1 [Zero])
                Return (Local0)
            }

            Method (GM0C, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x0C for WMI 20008h command"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x1000, 
                        Buffer (0x1000){}
                    }
                DerefOf (Local0 [0x02]) [Zero] = Zero
                Return (Local0)
            }

            Method (GM0D, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x0D for WMI 20008h command"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local1 = GMBF /* \_SB_.WMID.GMBF */
                Local2 = DerefOf (Local1 [Zero])
                Return (Local0)
            }

            Method (GM0E, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x0E for WMI 20008h command"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local1 = WBUF /* \_SB_.WMID.WBUF */
                Local2 = DerefOf (Local1 [Zero])
                Local3 = DerefOf (Local1 [0x02])
                Return (Local0)
            }

            Method (GM0F, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x0F for WMI 20008h command"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local1 = GMBF /* \_SB_.WMID.GMBF */
                Local2 = DerefOf (Local1 [Zero])
                Return (Local0)
            }

            Method (GM10, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x10 for WMI 20008h command"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Local1 = WBUF /* \_SB_.WMID.WBUF */
                DerefOf (Local0 [0x02]) [Zero] = Zero
                Return (Local0)
            }

            Method (GM11, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x11 for WMI 20008h command"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Local1 = WBUF /* \_SB_.WMID.WBUF */
                Local2 = DerefOf (Local1 [Zero])
                DerefOf (Local0 [0x02]) [Zero] = Zero
                DerefOf (Local0 [0x02]) [One] = Zero
                DerefOf (Local0 [0x02]) [0x02] = Zero
                Return (Local0)
            }

            Method (GM12, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x12 for WMI 20008h command"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local1 = WBUF /* \_SB_.WMID.WBUF */
                Local2 = DerefOf (Local1 [Zero])
                Local3 = DerefOf (Local1 [One])
                Return (Local0)
            }

            Method (GM13, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x13 for WMI 20008h command"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x1B, 
                        Buffer (0x1B){}
                    }
                Local1 = WBUF /* \_SB_.WMID.WBUF */
                DerefOf (Local0 [0x02]) [Zero] = Zero
                DerefOf (Local0 [0x02]) [One] = Zero
                DerefOf (Local0 [0x02]) [0x02] = Zero
                Return (Local0)
            }

            Method (GM14, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x14 for WMI 20008h command"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local1 = WBUF /* \_SB_.WMID.WBUF */
                Local2 = DerefOf (Local1 [Zero])
                Local3 = DerefOf (Local1 [One])
                Local4 = DerefOf (Local1 [0x02])
                Return (Local0)
            }

            Method (GM15, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x15 for WMI 20008h command"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local1 = WBUF /* \_SB_.WMID.WBUF */
                Local2 = DerefOf (Local1 [Zero])
                Return (Local0)
            }

            Method (GM16, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x16 for WMI 20008h command"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local1 = WBUF /* \_SB_.WMID.WBUF */
                Local2 = Zero
                Local3 = DerefOf (Local1 [Zero])
                Local2 |= Local3
                Local3 = DerefOf (Local1 [One])
                Local2 |= (Local3 << 0x08)
                Local3 = DerefOf (Local1 [0x02])
                Local2 |= (Local3 << 0x10)
                Local3 = DerefOf (Local1 [0x03])
                Local2 |= (Local3 << 0x18)
                Local4 = Local2
                Return (Local0)
            }

            Method (GM17, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x17 for WMI 20008h command"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local1 = WBUF /* \_SB_.WMID.WBUF */
                Local2 = DerefOf (Local1 [Zero])
                Return (Local0)
            }

            Method (LM01, 0, NotSerialized)
            {
                Debug = "HP WMI Command type 0x01 for WMI 20009h command"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                Local1 = One
                Local2 = Zero
                DerefOf (Local0 [0x02]) [Zero] = (Local1 | (
                    Local2 << One))
                DerefOf (Local0 [0x02]) [One] = Zero
                Return (Local0)
            }

            Method (LM02, 0, Serialized)
            {
                Debug = "HP WMI Command type 0x02 for WMI 20009h command"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                Local1 = Zero
                DerefOf (Local0 [0x02]) [Zero] = Local1
                Switch (Local1)
                {
                    Case (Zero)
                    {
                    }
                    Case (One)
                    {
                        DerefOf (Local0 [0x02]) [One] = Zero
                        DerefOf (Local0 [0x02]) [0x02] = Zero
                        DerefOf (Local0 [0x02]) [0x03] = Zero
                    }
                    Case (0x02)
                    {
                        DerefOf (Local0 [0x02]) [One] = Zero
                        DerefOf (Local0 [0x02]) [0x02] = Zero
                        DerefOf (Local0 [0x02]) [0x03] = Zero
                        DerefOf (Local0 [0x02]) [0x04] = Zero
                        DerefOf (Local0 [0x02]) [0x05] = Zero
                        DerefOf (Local0 [0x02]) [0x06] = Zero
                        DerefOf (Local0 [0x02]) [0x07] = Zero
                        DerefOf (Local0 [0x02]) [0x08] = Zero
                        DerefOf (Local0 [0x02]) [0x09] = Zero
                        DerefOf (Local0 [0x02]) [0x0A] = Zero
                        DerefOf (Local0 [0x02]) [0x0B] = Zero
                        DerefOf (Local0 [0x02]) [0x0C] = Zero
                        DerefOf (Local0 [0x02]) [0x0D] = Zero
                        DerefOf (Local0 [0x02]) [0x0E] = Zero
                    }
                    Case (0x03)
                    {
                        DerefOf (Local0 [0x02]) [One] = Zero
                        DerefOf (Local0 [0x02]) [0x02] = Zero
                        DerefOf (Local0 [0x02]) [0x03] = Zero
                        DerefOf (Local0 [0x02]) [0x04] = Zero
                        DerefOf (Local0 [0x02]) [0x05] = Zero
                        DerefOf (Local0 [0x02]) [0x06] = Zero
                        DerefOf (Local0 [0x02]) [0x07] = Zero
                        DerefOf (Local0 [0x02]) [0x08] = Zero
                        DerefOf (Local0 [0x02]) [0x09] = Zero
                        DerefOf (Local0 [0x02]) [0x0A] = Zero
                        DerefOf (Local0 [0x02]) [0x0B] = Zero
                        DerefOf (Local0 [0x02]) [0x0C] = Zero
                    }
                    Case (0x03)
                    {
                        DerefOf (Local0 [0x02]) [One] = Zero
                        DerefOf (Local0 [0x02]) [0x02] = Zero
                        DerefOf (Local0 [0x02]) [0x03] = Zero
                        DerefOf (Local0 [0x02]) [0x04] = Zero
                        DerefOf (Local0 [0x02]) [0x05] = Zero
                        DerefOf (Local0 [0x02]) [0x06] = Zero
                        DerefOf (Local0 [0x02]) [0x07] = Zero
                        DerefOf (Local0 [0x02]) [0x08] = Zero
                        DerefOf (Local0 [0x02]) [0x09] = Zero
                        DerefOf (Local0 [0x02]) [0x0A] = Zero
                        DerefOf (Local0 [0x02]) [0x0B] = Zero
                        DerefOf (Local0 [0x02]) [0x0C] = Zero
                    }
                    Default
                    {
                    }

                }

                Return (Local0)
            }

            Method (LM03, 0, Serialized)
            {
                Debug = "HP WMI Command type 0x03 for WMI 20009h command"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local1 = WBUF /* \_SB_.WMID.WBUF */
                Local2 = DerefOf (Local1 [Zero])
                Switch (Local2)
                {
                    Case (Zero)
                    {
                    }
                    Case (One)
                    {
                        Local3 = DerefOf (Local1 [One])
                        Local3 = DerefOf (Local1 [0x02])
                        Local3 = DerefOf (Local1 [0x03])
                    }
                    Case (0x02)
                    {
                        Local3 = DerefOf (Local1 [One])
                        Local3 = DerefOf (Local1 [0x02])
                        Local3 = DerefOf (Local1 [0x03])
                        Local3 = DerefOf (Local1 [0x04])
                        Local3 = DerefOf (Local1 [0x05])
                        Local3 = DerefOf (Local1 [0x06])
                        Local3 = DerefOf (Local1 [0x07])
                        Local3 = DerefOf (Local1 [0x08])
                        Local3 = DerefOf (Local1 [0x09])
                        Local3 = DerefOf (Local1 [0x0A])
                        Local3 = DerefOf (Local1 [0x0B])
                        Local3 = DerefOf (Local1 [0x0C])
                        Local3 = DerefOf (Local1 [0x0D])
                        Local3 = DerefOf (Local1 [0x0E])
                    }
                    Case (0x03)
                    {
                        Local3 = DerefOf (Local1 [One])
                        Local3 = DerefOf (Local1 [0x02])
                        Local3 = DerefOf (Local1 [0x03])
                        Local3 = DerefOf (Local1 [0x04])
                        Local3 = DerefOf (Local1 [0x05])
                        Local3 = DerefOf (Local1 [0x06])
                        Local3 = DerefOf (Local1 [0x07])
                        Local3 = DerefOf (Local1 [0x08])
                        Local3 = DerefOf (Local1 [0x09])
                        Local3 = DerefOf (Local1 [0x0A])
                        Local3 = DerefOf (Local1 [0x0B])
                        Local3 = DerefOf (Local1 [0x0C])
                    }
                    Case (0x03)
                    {
                        Local3 = DerefOf (Local1 [One])
                        Local3 = DerefOf (Local1 [0x02])
                        Local3 = DerefOf (Local1 [0x03])
                        Local3 = DerefOf (Local1 [0x04])
                        Local3 = DerefOf (Local1 [0x05])
                        Local3 = DerefOf (Local1 [0x06])
                        Local3 = DerefOf (Local1 [0x07])
                        Local3 = DerefOf (Local1 [0x08])
                        Local3 = DerefOf (Local1 [0x09])
                        Local3 = DerefOf (Local1 [0x0A])
                        Local3 = DerefOf (Local1 [0x0B])
                        Local3 = DerefOf (Local1 [0x0C])
                    }
                    Default
                    {
                    }

                }

                Return (Local0)
            }

            Method (GWEV, 2, NotSerialized)
            {
                If ((WEI0 == Zero))
                {
                    WEI0 = Arg0
                    WED0 = Arg1
                }
                Else
                {
                    WEI1 = Arg0
                    WED1 = Arg1
                }

                Notify (WMID, 0x80) // Status Change
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
            {
                If ((Arg0 == 0xA0))
                {
                    If ((DerefOf (N00E [Zero]) == Zero))
                    {
                        N007 = ST01 /* \_SB_.WMID.ST01 */
                        DerefOf (EVNT [Zero]) [One] = N007 /* \_SB_.WMID.N007 */
                        Return (DerefOf (EVNT [Zero]))
                    }

                    If ((DerefOf (N00E [Zero]) == One))
                    {
                        Return (DerefOf (EVNT [One]))
                    }
                    Else
                    {
                        Return (DerefOf (EVNT [0x02]))
                    }
                }

                Local0 = Buffer (0x08)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                    }
                CreateDWordField (Local0, Zero, EVID)
                CreateDWordField (Local0, 0x04, EVDA)
                EVID = WEI0 /* \_SB_.WMID.WEI0 */
                EVDA = WED0 /* \_SB_.WMID.WED0 */
                If ((WEI1 != Zero))
                {
                    WEI0 = WEI1 /* \_SB_.WMID.WEI1 */
                    WED0 = WED1 /* \_SB_.WMID.WED1 */
                    EVID = WEI0 /* \_SB_.WMID.WEI0 */
                    EVDA = WED0 /* \_SB_.WMID.WED0 */
                    WEI1 = Zero
                    WED1 = Zero
                    If ((WEVI == Zero))
                    {
                        WEVI = One
                        Notify (WMID, 0x80) // Status Change
                    }
                }
                Else
                {
                    WEI0 = Zero
                    WED0 = Zero
                }

                Return (Local0)
            }

            Name (WQAB, Buffer (0x1EE7)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0xD7, 0x1E, 0x00, 0x00, 0x84, 0xCA, 0x00, 0x00,  // ........
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x18, 0x38, 0xA0, 0x00, 0x01, 0x06, 0x18, 0x42,  // .8.....B
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
                /* 0230 */  0x7C, 0xFF, 0x48, 0x1A, 0x23, 0xF2, 0x28, 0xC1,  // |.H.#.(.
                /* 0238 */  0xD5, 0x1F, 0x34, 0xE8, 0x00, 0x71, 0xFF, 0xFF,  // ..4..q..
                /* 0240 */  0x01, 0xC2, 0x07, 0xF5, 0x00, 0x81, 0x6F, 0xF4,  // ......o.
                /* 0248 */  0xA3, 0x07, 0x7A, 0x5C, 0x16, 0x7D, 0x1E, 0x90,  // ..z\.}..
                /* 0250 */  0xF1, 0x13, 0x8D, 0xE6, 0xC5, 0x4F, 0x07, 0xFC,  // .....O..
                /* 0258 */  0xF0, 0x01, 0x1E, 0x50, 0x0F, 0x09, 0x07, 0x8A,  // ...P....
                /* 0260 */  0x99, 0x36, 0x07, 0x7D, 0x76, 0x39, 0x74, 0xEC,  // .6.}v9t.
                /* 0268 */  0x70, 0xC1, 0x7F, 0x02, 0x01, 0x97, 0xBC, 0x43,  // p......C
                /* 0270 */  0x18, 0x28, 0x46, 0x8C, 0x3F, 0x07, 0xF9, 0x14,  // .(F.?...
                /* 0278 */  0x06, 0xFE, 0xFF, 0xFF, 0x29, 0x0C, 0xFC, 0xC3,  // ....)...
                /* 0280 */  0xE1, 0x41, 0x9E, 0x0E, 0x3E, 0x6D, 0x51, 0xE9,  // .A..>mQ.
                /* 0288 */  0x30, 0xA8, 0x03, 0x17, 0x60, 0x65, 0x12, 0x11,  // 0...`e..
                /* 0290 */  0x9E, 0x25, 0x6A, 0x83, 0xD0, 0xA9, 0xE1, 0x6D,  // .%j....m
                /* 0298 */  0xE2, 0x6D, 0xCB, 0xB7, 0x80, 0x38, 0xA7, 0xD9,  // .m...8..
                /* 02A0 */  0xDB, 0x81, 0x8B, 0x60, 0x44, 0xA8, 0x19, 0x8A,  // ...`D...
                /* 02A8 */  0x9C, 0xB4, 0x22, 0xC6, 0x88, 0xF2, 0xB8, 0x65,  // .."....e
                /* 02B0 */  0x94, 0xB7, 0xAD, 0x17, 0x80, 0x78, 0x27, 0xF6,  // .....x'.
                /* 02B8 */  0xBC, 0x65, 0x8C, 0xE0, 0x91, 0x1F, 0xB8, 0x58,  // .e.....X
                /* 02C0 */  0x8C, 0xD5, 0xEB, 0xBF, 0xE6, 0x03, 0x17, 0xE0,  // ........
                /* 02C8 */  0xEC, 0xFF, 0x7F, 0xE0, 0x02, 0x38, 0x14, 0xF4,  // .....8..
                /* 02D0 */  0x30, 0x84, 0x1E, 0x86, 0xA7, 0x72, 0x2E, 0x0F,  // 0....r..
                /* 02D8 */  0x91, 0xA7, 0x12, 0x31, 0x6A, 0x98, 0xA8, 0xCF,  // ...1j...
                /* 02E0 */  0x50, 0xBE, 0x5B, 0xF8, 0x40, 0x04, 0xBE, 0x33,  // P.[.@..3
                /* 02E8 */  0x17, 0xF0, 0xFB, 0xFF, 0x1F, 0x88, 0xE0, 0x1C,  // ........
                /* 02F0 */  0x53, 0x70, 0x67, 0x1A, 0xF0, 0xF8, 0x9C, 0x81,  // Spg.....
                /* 02F8 */  0x40, 0x4E, 0xC5, 0x87, 0x1A, 0xC0, 0x82, 0xE8,  // @N......
                /* 0300 */  0x27, 0x84, 0x4F, 0x34, 0x54, 0x26, 0x0C, 0xEA,  // '.O4T&..
                /* 0308 */  0x50, 0x03, 0x58, 0xB9, 0xC2, 0x3C, 0x8D, 0x9E,  // P.X..<..
                /* 0310 */  0xF3, 0xB3, 0x8C, 0x4F, 0x35, 0x3E, 0x94, 0x1A,  // ...O5>..
                /* 0318 */  0xC7, 0x10, 0x2F, 0x33, 0x0F, 0x35, 0x3E, 0x16,  // ../3.5>.
                /* 0320 */  0xBC, 0x92, 0xFA, 0x50, 0x63, 0xA8, 0x38, 0x0F,  // ...Pc.8.
                /* 0328 */  0x35, 0x1E, 0x6E, 0xA0, 0xA8, 0x6F, 0x36, 0xCF,  // 5.n..o6.
                /* 0330 */  0x36, 0x46, 0x8F, 0xEF, 0x1B, 0xAA, 0x21, 0x1E,  // 6F....!.
                /* 0338 */  0x6A, 0x98, 0xE4, 0x95, 0x6A, 0x2C, 0x3E, 0xD4,  // j...j,>.
                /* 0340 */  0x80, 0xE3, 0xFF, 0x7F, 0xA8, 0x01, 0xF8, 0xFF,  // ........
                /* 0348 */  0xFF, 0x3F, 0xD4, 0x00, 0x8E, 0x8E, 0x06, 0x70,  // .?.....p
                /* 0350 */  0x8E, 0x8C, 0xB8, 0xA3, 0x01, 0xB8, 0x0E, 0xA5,  // ........
                /* 0358 */  0xC0, 0xE1, 0x68, 0x00, 0x3C, 0x8E, 0x42, 0x60,  // ..h.<.B`
                /* 0360 */  0xBE, 0xD0, 0xF8, 0x28, 0x04, 0x2C, 0xFE, 0xFF,  // ...(.,..
                /* 0368 */  0x47, 0x21, 0xF0, 0xCB, 0x3E, 0x07, 0xA1, 0x84,  // G!..>...
                /* 0370 */  0x1E, 0x85, 0x00, 0x41, 0xB7, 0x9F, 0xA7, 0x88,  // ...A....
                /* 0378 */  0x67, 0x1F, 0x5F, 0x7E, 0x1E, 0x08, 0x22, 0xBC,  // g._~..".
                /* 0380 */  0xE6, 0xFB, 0x14, 0xE4, 0x43, 0xBE, 0x8F, 0x42,  // ....C..B
                /* 0388 */  0x0C, 0xC6, 0x50, 0xBE, 0x06, 0xF9, 0x28, 0xC4,  // ..P...(.
                /* 0390 */  0xA0, 0x5E, 0x83, 0x7C, 0xDF, 0x37, 0xC8, 0xE3,  // .^.|.7..
                /* 0398 */  0x45, 0x90, 0xD8, 0xCF, 0x04, 0x3E, 0x0A, 0x31,  // E....>.1
                /* 03A0 */  0xD1, 0x47, 0x21, 0x40, 0xE1, 0xFF, 0xFF, 0x28,  // .G!@...(
                /* 03A8 */  0x04, 0xF0, 0xFF, 0xFF, 0x7F, 0x14, 0x02, 0x9C,  // ........
                /* 03B0 */  0x05, 0x38, 0x1A, 0x80, 0x6E, 0x5A, 0x8F, 0x42,  // .8..nZ.B
                /* 03B8 */  0xE0, 0xBD, 0xB3, 0x9C, 0xF6, 0x09, 0xF8, 0x2C,  // .......,
                /* 03C0 */  0x04, 0x98, 0xFD, 0xFF, 0x9F, 0x85, 0x80, 0xD9,  // ........
                /* 03C8 */  0x51, 0xE8, 0x28, 0xCE, 0xF2, 0x55, 0xE8, 0x09,  // Q.(..U..
                /* 03D0 */  0xE0, 0x05, 0x20, 0x46, 0x98, 0x77, 0xA0, 0x97,  // .. F.w..
                /* 03D8 */  0x4C, 0x76, 0x17, 0x37, 0xCE, 0x93, 0xCB, 0x59,  // Lv.7...Y
                /* 03E0 */  0x3C, 0x89, 0xFB, 0x12, 0xE4, 0x03, 0xC5, 0xB3,  // <.......
                /* 03E8 */  0x90, 0xA1, 0x4E, 0x37, 0xE8, 0x1B, 0xB9, 0x07,  // ..N7....
                /* 03F0 */  0x16, 0x33, 0x7E, 0x88, 0xE7, 0x21, 0x43, 0x3C,  // .3~..!C<
                /* 03F8 */  0x0B, 0x01, 0xEC, 0xFA, 0xFF, 0x9F, 0x85, 0x00,  // ........
                /* 0400 */  0xFE, 0xFF, 0xFF, 0x8F, 0x06, 0xF0, 0x5F, 0x00,  // ......_.
                /* 0408 */  0x3E, 0x0B, 0x01, 0xCF, 0x13, 0xC0, 0x83, 0xB6,  // >.......
                /* 0410 */  0xCF, 0x42, 0x00, 0x67, 0x0E, 0x97, 0xE7, 0xFF,  // .B.g....
                /* 0418 */  0x0A, 0x74, 0x2C, 0xEF, 0x11, 0x9E, 0xF5, 0x49,  // .t,....I
                /* 0420 */  0xBE, 0x5E, 0x7A, 0xA6, 0x0F, 0x05, 0xCF, 0x42,  // .^z....B
                /* 0428 */  0x0C, 0xEB, 0x30, 0x7C, 0x16, 0x62, 0x10, 0x2F,  // ..0|.b./
                /* 0430 */  0x9A, 0x86, 0x78, 0xE1, 0xF4, 0x61, 0xC0, 0xFF,  // ..x..a..
                /* 0438 */  0x7F, 0xBC, 0xC0, 0xAF, 0x9C, 0x06, 0x0A, 0x12,  // ........
                /* 0440 */  0xE8, 0x59, 0x08, 0x60, 0xFC, 0xFF, 0xFF, 0x2C,  // .Y.`...,
                /* 0448 */  0x04, 0x90, 0x71, 0x8D, 0x3A, 0x0B, 0x01, 0xCB,  // ..q.:...
                /* 0450 */  0xDB, 0xCA, 0x33, 0xB6, 0x4F, 0x2B, 0x09, 0xFE,  // ..3.O+..
                /* 0458 */  0xFF, 0xCF, 0x42, 0x80, 0x83, 0x5C, 0x46, 0x0E,  // ..B..\F.
                /* 0460 */  0x42, 0x98, 0x88, 0x0F, 0x07, 0x1F, 0x33, 0x01,  // B.....3.
                /* 0468 */  0x3D, 0x53, 0x7C, 0x71, 0x37, 0xC6, 0x13, 0xC0,  // =S|q7...
                /* 0470 */  0x8B, 0xC4, 0x63, 0x26, 0x3B, 0x6A, 0x1A, 0xE6,  // ..c&;j..
                /* 0478 */  0x59, 0xC8, 0x78, 0x67, 0xF1, 0x1A, 0xF0, 0x04,  // Y.xg....
                /* 0480 */  0xEF, 0xC9, 0x3F, 0x0B, 0x31, 0xB0, 0xC3, 0x0A,  // ..?.1...
                /* 0488 */  0xF6, 0x28, 0x64, 0x50, 0x83, 0xC7, 0x0E, 0x11,  // .(dP....
                /* 0490 */  0x26, 0xD0, 0xB3, 0x10, 0x8B, 0xFB, 0x5C, 0xD1,  // &.....\.
                /* 0498 */  0x79, 0xC2, 0x67, 0x21, 0xE0, 0xFD, 0xFF, 0x3F,  // y.g!...?
                /* 04A0 */  0x4B, 0xC0, 0xBD, 0x1A, 0x3C, 0x0B, 0x01, 0x26,  // K...<..&
                /* 04A8 */  0x0E, 0x1B, 0x3E, 0x6B, 0x80, 0x67, 0xF8, 0x1E,  // ..>k.g..
                /* 04B0 */  0xD5, 0x39, 0x3C, 0x1E, 0x03, 0xFF, 0xAC, 0x3A,  // .9<....:
                /* 04B8 */  0xCE, 0x09, 0x2C, 0xF7, 0xA2, 0x65, 0xE3, 0x40,  // ..,..e.@
                /* 04C0 */  0x43, 0x47, 0x64, 0x75, 0x40, 0x1A, 0x1B, 0xE6,  // CGdu@...
                /* 04C8 */  0x52, 0x12, 0xF9, 0xE4, 0xD8, 0xA8, 0xAD, 0x08,  // R.......
                /* 04D0 */  0x4E, 0x67, 0x26, 0x9F, 0x00, 0xAC, 0x85, 0x42,  // Ng&....B
                /* 04D8 */  0x0A, 0x68, 0x34, 0x16, 0xC3, 0x3B, 0xF3, 0xD1,  // .h4..;..
                /* 04E0 */  0x89, 0x82, 0x18, 0xD0, 0xC7, 0x21, 0xDB, 0x38,  // .....!.8
                /* 04E8 */  0x14, 0xA0, 0xF6, 0xA2, 0x29, 0x90, 0x73, 0x0E,  // ....).s.
                /* 04F0 */  0x46, 0xFF, 0xEC, 0xE8, 0x6C, 0x7C, 0x27, 0xE0,  // F...l|'.
                /* 04F8 */  0x1A, 0x20, 0x74, 0x4A, 0x30, 0xB4, 0xD5, 0x08,  // . tJ0...
                /* 0500 */  0xF8, 0xFF, 0xCF, 0x12, 0x03, 0x66, 0xFC, 0xA7,  // .....f..
                /* 0508 */  0x18, 0x13, 0xF8, 0x1C, 0x83, 0x3F, 0x18, 0xE0,  // .....?..
                /* 0510 */  0x07, 0xFE, 0x62, 0x50, 0xF5, 0xBD, 0x40, 0xF7,  // ..bP..@.
                /* 0518 */  0x05, 0xAB, 0xBB, 0xC9, 0x40, 0x98, 0x91, 0x09,  // ....@...
                /* 0520 */  0xEA, 0x3B, 0x1D, 0x80, 0x02, 0xC8, 0x17, 0x02,  // .;......
                /* 0528 */  0x9F, 0xA3, 0x1E, 0x0A, 0xD8, 0x44, 0x42, 0x84,  // .....DB.
                /* 0530 */  0x89, 0x66, 0x74, 0xC4, 0x84, 0x51, 0xD1, 0x27,  // .ft..Q.'
                /* 0538 */  0x4C, 0x41, 0x3C, 0x61, 0xC7, 0x9A, 0x30, 0x7A,  // LA<a..0z
                /* 0540 */  0x26, 0xBE, 0xE8, 0xB0, 0x11, 0x63, 0x42, 0x5C,  // &....cB\
                /* 0548 */  0x3D, 0xA0, 0x4D, 0x30, 0xA8, 0x2F, 0x45, 0xB0,  // =.M0./E.
                /* 0550 */  0x86, 0xCC, 0xC7, 0xE2, 0x0B, 0x04, 0x6E, 0xCA,  // ......n.
                /* 0558 */  0x60, 0x9C, 0x13, 0xBB, 0x26, 0xF8, 0xB2, 0x83,  // `...&...
                /* 0560 */  0x9B, 0x33, 0x18, 0xE1, 0x31, 0x77, 0x31, 0x7E,  // .3..1w1~
                /* 0568 */  0x75, 0xF2, 0xE8, 0xF8, 0x41, 0xC1, 0x37, 0x1C,  // u...A.7.
                /* 0570 */  0x86, 0xFD, 0x64, 0xE6, 0x19, 0xBD, 0x97, 0xF9,  // ..d.....
                /* 0578 */  0x1A, 0x87, 0x81, 0xF5, 0x78, 0x39, 0xAC, 0xD1,  // ....x9..
                /* 0580 */  0xC2, 0x1E, 0xDA, 0x7B, 0x88, 0xFF, 0xFF, 0x87,  // ...{....
                /* 0588 */  0x18, 0x9F, 0x27, 0x8C, 0x11, 0xD6, 0xB7, 0x17,  // ..'.....
                /* 0590 */  0x70, 0xDC, 0xB3, 0xE0, 0xDF, 0x35, 0xC0, 0x73,  // p....5.s
                /* 0598 */  0x09, 0xF1, 0x5D, 0x03, 0x60, 0xE0, 0xFF, 0xFF,  // ..].`...
                /* 05A0 */  0xAE, 0x01, 0x9C, 0xAE, 0x09, 0xBE, 0x6B, 0x00,  // ......k.
                /* 05A8 */  0xEF, 0xA1, 0xFB, 0xAE, 0x01, 0x5C, 0xB3, 0xDF,  // .....\..
                /* 05B0 */  0x35, 0x50, 0xC7, 0x00, 0x2B, 0xBC, 0x6B, 0x40,  // 5P..+.k@
                /* 05B8 */  0xBB, 0xB2, 0xBD, 0xAF, 0x3D, 0x61, 0x59, 0xD3,  // ....=aY.
                /* 05C0 */  0x65, 0x03, 0xA5, 0xE6, 0xB2, 0x01, 0x28, 0xF8,  // e.....(.
                /* 05C8 */  0xFF, 0x5F, 0x36, 0x00, 0x03, 0x52, 0x26, 0x8C,  // ._6..R&.
                /* 05D0 */  0x0A, 0x3F, 0x61, 0x0A, 0xE2, 0x09, 0x3B, 0xD8,  // .?a...;.
                /* 05D8 */  0x65, 0x03, 0x14, 0x31, 0x2E, 0x1B, 0xA0, 0x1F,  // e..1....
                /* 05E0 */  0xDB, 0xCB, 0x06, 0x30, 0xB8, 0x27, 0xF0, 0xDB,  // ...0.'..
                /* 05E8 */  0x06, 0xF0, 0x86, 0xF4, 0x6D, 0x03, 0xAC, 0xFF,  // ....m...
                /* 05F0 */  0xFF, 0xDB, 0x06, 0x58, 0xF3, 0xDF, 0x36, 0x50,  // ...X..6P
                /* 05F8 */  0x1C, 0x56, 0x79, 0xDB, 0x80, 0x78, 0x92, 0x67,  // .Vy..x.g
                /* 0600 */  0x04, 0x56, 0x75, 0xDD, 0x40, 0xE9, 0xB9, 0x6E,  // .Vu.@..n
                /* 0608 */  0x00, 0x24, 0x10, 0x33, 0x61, 0x54, 0xFC, 0x09,  // .$.3aT..
                /* 0610 */  0x53, 0x10, 0x4F, 0xD8, 0xD1, 0xAE, 0x1B, 0xA0,  // S.O.....
                /* 0618 */  0x08, 0x72, 0xDD, 0x00, 0xFD, 0xBC, 0x12, 0xFC,  // .r......
                /* 0620 */  0xFF, 0x5F, 0x37, 0x80, 0xC1, 0x45, 0x01, 0x73,  // ._7..E.s
                /* 0628 */  0xDF, 0x00, 0xDE, 0xB0, 0xFC, 0xBE, 0x01, 0xF8,  // ........
                /* 0630 */  0xB8, 0x89, 0x63, 0xEE, 0x1B, 0x80, 0x99, 0xFF,  // ..c.....
                /* 0638 */  0xFF, 0x7D, 0x03, 0x60, 0xCF, 0x45, 0x01, 0x77,  // .}.`.E.w
                /* 0640 */  0xDF, 0x00, 0xDE, 0x17, 0x69, 0xDF, 0x37, 0xC0,  // ....i.7.
                /* 0648 */  0xFC, 0xFF, 0xBF, 0x6F, 0x80, 0x51, 0xDA, 0xFA,  // ...o.Q..
                /* 0650 */  0x3D, 0x38, 0x7A, 0x42, 0xF0, 0xF8, 0x70, 0xF7,  // =8zB..p.
                /* 0658 */  0x4B, 0x8F, 0xCF, 0x77, 0x73, 0x70, 0x0C, 0xF2,  // K..wsp..
                /* 0660 */  0x18, 0x0F, 0xED, 0x80, 0x5F, 0xDF, 0x3D, 0x31,  // ...._.=1
                /* 0668 */  0xDF, 0xCD, 0x81, 0xFF, 0x99, 0xE0, 0x78, 0x30,  // ......x0
                /* 0670 */  0xD0, 0x38, 0xC4, 0x56, 0x2F, 0x0D, 0xE4, 0x68,  // .8.V/..h
                /* 0678 */  0x70, 0x7E, 0xB8, 0x33, 0x02, 0xC3, 0x2A, 0xFE,  // p~.3..*.
                /* 0680 */  0xE4, 0x8F, 0x70, 0x8E, 0xA1, 0xB3, 0xC3, 0x41,  // ..p....A
                /* 0688 */  0x62, 0x07, 0xC1, 0x83, 0xAD, 0xDA, 0x04, 0x0A,  // b.......
                /* 0690 */  0x0D, 0xA1, 0x28, 0x30, 0x28, 0x16, 0x1F, 0x30,  // ..(0(..0
                /* 0698 */  0xF0, 0xC3, 0x66, 0x67, 0x01, 0x26, 0x09, 0x0E,  // ..fg.&..
                /* 06A0 */  0x75, 0x04, 0xF0, 0x7D, 0xA2, 0xF9, 0x71, 0xE8,  // u..}..q.
                /* 06A8 */  0x6E, 0x70, 0xA8, 0x1E, 0xCB, 0x43, 0x01, 0x3D,  // np...C.=
                /* 06B0 */  0x03, 0xE2, 0x8E, 0x19, 0x64, 0xD2, 0x9E, 0x51,  // ....d..Q
                /* 06B8 */  0xC4, 0xA7, 0x84, 0x53, 0x0A, 0x93, 0xC0, 0xE7,  // ...S....
                /* 06C0 */  0x07, 0x86, 0xC6, 0x09, 0x5E, 0x1B, 0x42, 0xF3,  // ....^.B.
                /* 06C8 */  0xFF, 0xFF, 0x49, 0x81, 0x79, 0xBE, 0x63, 0x08,  // ..I.y.c.
                /* 06D0 */  0xD8, 0x04, 0x76, 0x7F, 0xC9, 0x90, 0xB5, 0x81,  // ..v.....
                /* 06D8 */  0xEB, 0x96, 0x64, 0x88, 0xDE, 0x70, 0x64, 0x0B,  // ..d..pd.
                /* 06E0 */  0x45, 0xD3, 0x89, 0xF2, 0xBE, 0x11, 0xC5, 0xCE,  // E.......
                /* 06E8 */  0x10, 0x84, 0x11, 0x25, 0x58, 0x90, 0x47, 0x85,  // ...%X.G.
                /* 06F0 */  0x58, 0x51, 0x5E, 0x0A, 0x8C, 0x10, 0x31, 0xC4,  // XQ^...1.
                /* 06F8 */  0x2B, 0x47, 0xA0, 0x13, 0x0E, 0x1F, 0xE4, 0xB1,  // +G......
                /* 0700 */  0x29, 0x4E, 0xFB, 0x83, 0x20, 0xB1, 0x9E, 0x04,  // )N.. ...
                /* 0708 */  0x1A, 0x8B, 0x23, 0x8D, 0x06, 0x75, 0x0E, 0xF0,  // ..#..u..
                /* 0710 */  0x70, 0x7D, 0x88, 0xF1, 0xF0, 0x1F, 0x42, 0x0C,  // p}....B.
                /* 0718 */  0x72, 0x90, 0xE7, 0xF6, 0xA8, 0x70, 0x9C, 0xBE,  // r....p..
                /* 0720 */  0x4A, 0x98, 0xE0, 0x05, 0xC0, 0x07, 0x15, 0x38,  // J......8
                /* 0728 */  0xAE, 0x01, 0x35, 0xE3, 0x67, 0x0C, 0xB0, 0x1C,  // ..5.g...
                /* 0730 */  0xC7, 0x7D, 0x52, 0x81, 0x3B, 0x1E, 0xDF, 0x0F,  // .}R.;...
                /* 0738 */  0xD8, 0x84, 0x13, 0x58, 0xFE, 0x20, 0x50, 0xC7,  // ...X. P.
                /* 0740 */  0x19, 0x3E, 0xCF, 0x17, 0x16, 0x43, 0x3E, 0x26,  // .>...C>&
                /* 0748 */  0x98, 0xC0, 0x62, 0x4F, 0x36, 0x74, 0x3C, 0xE0,  // ..bO6t<.
                /* 0750 */  0xBF, 0xC7, 0x3C, 0x5E, 0xF8, 0x64, 0xE2, 0xF9,  // ..<^.d..
                /* 0758 */  0x9A, 0x60, 0x44, 0x08, 0x39, 0x19, 0x0F, 0xFA,  // .`D.9...
                /* 0760 */  0x0E, 0x81, 0xB9, 0xDE, 0xB0, 0x73, 0x0B, 0x17,  // .....s..
                /* 0768 */  0x75, 0xD0, 0x40, 0x9D, 0x16, 0x7C, 0x50, 0x60,  // u.@..|P`
                /* 0770 */  0x37, 0x23, 0xCC, 0x71, 0x9D, 0x9F, 0x55, 0xC0,  // 7#.q..U.
                /* 0778 */  0xF0, 0xFF, 0x3F, 0xAB, 0xC0, 0x1E, 0x21, 0xFC,  // ..?...!.
                /* 0780 */  0xDB, 0x83, 0xE7, 0xE5, 0x2B, 0xC3, 0xAB, 0x43,  // ....+..C
                /* 0788 */  0x02, 0x87, 0x1C, 0x21, 0x7A, 0x5C, 0x1E, 0x21,  // ...!z\.!
                /* 0790 */  0xE6, 0x7C, 0x84, 0x19, 0x22, 0xB8, 0xCE, 0x02,  // .|.."...
                /* 0798 */  0xE0, 0x18, 0x22, 0xF0, 0x39, 0xE0, 0x80, 0xE3,  // ..".9...
                /* 07A0 */  0xD2, 0xC4, 0x07, 0xEA, 0x03, 0x0E, 0xE0, 0xE0,  // ........
                /* 07A8 */  0x9A, 0x86, 0x3B, 0xE0, 0x80, 0xE3, 0x2C, 0xC0,  // ..;...,.
                /* 07B0 */  0xFE, 0xFF, 0x87, 0x1B, 0x58, 0x92, 0x4C, 0x1C,  // ....X.L.
                /* 07B8 */  0x46, 0x30, 0x22, 0x60, 0x50, 0x04, 0x04, 0x48,  // F0"`P..H
                /* 07C0 */  0x67, 0x01, 0x1F, 0x52, 0x00, 0x3E, 0x5C, 0x19,  // g..R.>\.
                /* 07C8 */  0x1E, 0x52, 0xB0, 0x27, 0x0D, 0x0F, 0x1C, 0x37,  // .R.'...7
                /* 07D0 */  0x0A, 0x0F, 0x1A, 0x17, 0x60, 0xD0, 0xF4, 0xC4,  // ....`...
                /* 07D8 */  0x01, 0xFF, 0x98, 0xE0, 0x33, 0x0A, 0x38, 0xC6,  // ....3.8.
                /* 07E0 */  0x0D, 0xBE, 0x55, 0x18, 0xF8, 0xFF, 0x7F, 0x60,  // ..U....`
                /* 07E8 */  0x98, 0xC3, 0x85, 0xC7, 0x72, 0x14, 0x41, 0x0F,  // ....r.A.
                /* 07F0 */  0x3C, 0xA8, 0xEF, 0x19, 0x67, 0xEE, 0x49, 0x1E,  // <...g.I.
                /* 07F8 */  0xA3, 0xA3, 0x1E, 0x4E, 0xE8, 0xC9, 0x0B, 0x77,  // ...N...w
                /* 0800 */  0xAE, 0xF2, 0x15, 0xE2, 0x28, 0x30, 0x70, 0xEF,  // ....(0p.
                /* 0808 */  0x52, 0x1E, 0x9F, 0x2F, 0x56, 0x86, 0xC7, 0x8C,  // R../V...
                /* 0810 */  0xF6, 0x3D, 0xE4, 0xAC, 0x23, 0x04, 0xC4, 0x5F,  // .=..#.._
                /* 0818 */  0xEA, 0xD8, 0x80, 0xC1, 0x72, 0x30, 0x00, 0x0E,  // ....r0..
                /* 0820 */  0x03, 0xC6, 0x27, 0x1A, 0xB0, 0xCE, 0x36, 0x78,  // ..'...6x
                /* 0828 */  0xE8, 0xD3, 0x62, 0x88, 0xC7, 0x17, 0xF6, 0xAD,  // ..b.....
                /* 0830 */  0xC2, 0x04, 0xD5, 0x83, 0xEA, 0x24, 0xE8, 0xA1,  // .....$..
                /* 0838 */  0x81, 0x03, 0xD0, 0x43, 0x83, 0x7F, 0x72, 0x21,  // ...C..r!
                /* 0840 */  0xF7, 0x57, 0x3A, 0x04, 0x6B, 0xC5, 0xD3, 0xBC,  // .W:.k...
                /* 0848 */  0x8F, 0x3C, 0xE6, 0xB9, 0x45, 0x79, 0x1B, 0x78,  // .<..Ey.x
                /* 0850 */  0x0E, 0xE0, 0xA7, 0x05, 0x0F, 0xC7, 0xC7, 0x02,  // ........
                /* 0858 */  0x8F, 0xD3, 0x97, 0xB0, 0x04, 0xEF, 0x35, 0x3E,  // ......5>
                /* 0860 */  0xD9, 0x3C, 0xB8, 0xB0, 0x64, 0x43, 0x40, 0x0D,  // .<..dC@.
                /* 0868 */  0xD6, 0x43, 0xC0, 0x4C, 0x35, 0x81, 0x93, 0x8C,  // .C.L5...
                /* 0870 */  0x00, 0x95, 0x01, 0x42, 0x37, 0x96, 0xD3, 0x7D,  // ...B7..}
                /* 0878 */  0x16, 0x09, 0x71, 0x9A, 0x8F, 0x32, 0x8F, 0x05,  // ..q..2..
                /* 0880 */  0x1E, 0xEB, 0x83, 0x81, 0xFF, 0xFF, 0x9A, 0x47,  // .......G
                /* 0888 */  0xA8, 0xFB, 0x9A, 0x67, 0xF6, 0x74, 0x80, 0x59,  // ...g.t.Y
                /* 0890 */  0x45, 0xB8, 0xF7, 0x9C, 0x37, 0x0C, 0xA3, 0x3D,  // E...7..=
                /* 0898 */  0x5B, 0xF8, 0x9A, 0xF1, 0xAC, 0x69, 0x84, 0x70,  // [....i.p
                /* 08A0 */  0xEC, 0x06, 0xE7, 0x91, 0x18, 0xE1, 0x05, 0x81,  // ........
                /* 08A8 */  0x9D, 0x18, 0x1E, 0x60, 0x8C, 0x73, 0xF2, 0x86,  // ...`.s..
                /* 08B0 */  0xF5, 0x85, 0x97, 0x81, 0x06, 0x33, 0xB6, 0x2F,  // .....3./
                /* 08B8 */  0x03, 0x6C, 0x54, 0xBE, 0x11, 0x81, 0x2F, 0xF9,  // .lT.../.
                /* 08C0 */  0xC5, 0x00, 0xCA, 0x2C, 0x7C, 0x3D, 0xF1, 0x41,  // ...,|=.A
                /* 08C8 */  0x89, 0x5D, 0x0C, 0x58, 0xCA, 0x8B, 0x01, 0xA8,  // .].X....
                /* 08D0 */  0x6E, 0x18, 0xBE, 0x18, 0xC0, 0xBF, 0x12, 0xBD,  // n.......
                /* 08D8 */  0x18, 0x80, 0xE1, 0xE2, 0xE4, 0x7B, 0x80, 0x3D,  // .....{.=
                /* 08E0 */  0xDC, 0x47, 0xE9, 0x38, 0x7D, 0xFB, 0x7B, 0x33,  // .G.8}.{3
                /* 08E8 */  0xF0, 0xD9, 0x80, 0xC1, 0x78, 0x86, 0x61, 0x8C,  // ....x.a.
                /* 08F0 */  0x11, 0xC6, 0xA3, 0x0C, 0x63, 0x82, 0xB9, 0x6F,  // ....c..o
                /* 08F8 */  0x07, 0xD0, 0x73, 0x0E, 0x03, 0x95, 0xF0, 0x76,  // ..s....v
                /* 0900 */  0x00, 0xE5, 0x1C, 0xD0, 0xE5, 0xD1, 0x84, 0x9E,  // ........
                /* 0908 */  0x02, 0x9E, 0x0E, 0x7C, 0x52, 0x34, 0x44, 0x5F,  // ...|R4D_
                /* 0910 */  0x63, 0x15, 0x4C, 0xA0, 0x88, 0x0F, 0x1A, 0x7C,  // c.L....|
                /* 0918 */  0x6A, 0x51, 0x7C, 0x2A, 0xF0, 0x5A, 0x9E, 0x9D,  // jQ|*.Z..
                /* 0920 */  0xC2, 0xC5, 0x39, 0x13, 0x4F, 0xD5, 0x70, 0x06,  // ..9.O.p.
                /* 0928 */  0x7A, 0xCD, 0x0D, 0xC7, 0xFE, 0xFF, 0x70, 0xF8,  // z.....p.
                /* 0930 */  0x53, 0xC1, 0x6B, 0x00, 0x3B, 0x48, 0x7A, 0x5A,  // S.k.;HzZ
                /* 0938 */  0x46, 0x84, 0x71, 0x48, 0x79, 0x64, 0xF0, 0x6D,  // F.qHyd.m
                /* 0940 */  0x31, 0x8E, 0x21, 0x1F, 0x22, 0x7D, 0x27, 0x30,  // 1.!."}'0
                /* 0948 */  0xE4, 0x43, 0xDE, 0xF3, 0x8E, 0x81, 0x5F, 0x11,  // .C...._.
                /* 0950 */  0xE2, 0x3C, 0x65, 0xF9, 0xCE, 0xE0, 0xCB, 0x02,  // .<e.....
                /* 0958 */  0xF8, 0x22, 0x5D, 0x16, 0xD0, 0xD0, 0x3E, 0xC9,  // ."]...>.
                /* 0960 */  0xF8, 0x82, 0x60, 0xD8, 0x13, 0x67, 0x01, 0xEE,  // ..`..g..
                /* 0968 */  0x0A, 0xA0, 0x02, 0xF5, 0x5D, 0x01, 0xFE, 0x85,  // ....]...
                /* 0970 */  0xE0, 0x5D, 0x01, 0x0C, 0xF3, 0xF2, 0xAD, 0x80,  // .]......
                /* 0978 */  0x6B, 0x3A, 0x94, 0xA0, 0xCF, 0x24, 0xBE, 0x2E,  // k:...$..
                /* 0980 */  0xE0, 0xA6, 0xC8, 0x52, 0x1D, 0x15, 0xA0, 0xA7,  // ...R....
                /* 0988 */  0x98, 0x04, 0xEA, 0x8E, 0xEE, 0xA3, 0x02, 0x8C,  // ........
                /* 0990 */  0x9B, 0xB2, 0x0F, 0xA8, 0xEC, 0xB4, 0xC0, 0xCE,  // ........
                /* 0998 */  0x42, 0xEC, 0x3A, 0x82, 0xBB, 0x92, 0x30, 0x94,  // B.:...0.
                /* 09A0 */  0x67, 0x03, 0x5F, 0xB2, 0xF8, 0xE1, 0x00, 0x06,  // g._.....
                /* 09A8 */  0xB8, 0x67, 0x71, 0x88, 0x11, 0x62, 0xB3, 0x03,  // .gq..b..
                /* 09B0 */  0xD7, 0xEB, 0xA4, 0xE1, 0x5E, 0x88, 0xD8, 0xFF,  // ....^...
                /* 09B8 */  0xFF, 0x64, 0x00, 0xC6, 0xA3, 0x36, 0x38, 0x4E,  // .d...68N
                /* 09C0 */  0x3A, 0xE1, 0x23, 0x3D, 0xB3, 0xF0, 0x93, 0x32,  // :.#=...2
                /* 09C8 */  0x60, 0xE2, 0xE4, 0x07, 0xC6, 0x93, 0x35, 0x8C,  // `.....5.
                /* 09D0 */  0x01, 0x70, 0x79, 0xAF, 0x2A, 0x03, 0xF9, 0x87,  // .py.*...
                /* 09D8 */  0x20, 0x41, 0x30, 0xA8, 0x53, 0x32, 0x70, 0x38,  //  A0.S2p8
                /* 09E0 */  0x8A, 0xE1, 0x4E, 0xC9, 0xF0, 0xA0, 0xF0, 0x87,  // ..N.....
                /* 09E8 */  0x01, 0xCC, 0x8D, 0xD0, 0xF7, 0x04, 0x43, 0xBD,  // ......C.
                /* 09F0 */  0x27, 0x1D, 0xC6, 0x23, 0xA1, 0x09, 0x7C, 0x5A,  // '..#..|Z
                /* 09F8 */  0x86, 0xF5, 0xFF, 0x3F, 0x2D, 0xF3, 0x73, 0x42,  // ...?-.sB
                /* 0A00 */  0xFC, 0xA7, 0x9C, 0xF7, 0x8B, 0x07, 0x65, 0x63,  // ......ec
                /* 0A08 */  0x44, 0x79, 0x55, 0xF6, 0x39, 0xD3, 0x28, 0xEC,  // DyU.9.(.
                /* 0A10 */  0x96, 0xFC, 0xE6, 0xF0, 0xAA, 0xEC, 0xD3, 0xF2,  // ........
                /* 0A18 */  0xB9, 0x45, 0x7A, 0x5F, 0xF6, 0xC8, 0x63, 0xC6,  // .Ez_..c.
                /* 0A20 */  0x89, 0x15, 0x24, 0xD0, 0xFB, 0x46, 0x94, 0xB0,  // ..$..F..
                /* 0A28 */  0x31, 0xC2, 0x05, 0x7A, 0x5A, 0x66, 0xC7, 0x76,  // 1..zZf.v
                /* 0A30 */  0x0F, 0xD9, 0x67, 0x05, 0xDC, 0xD9, 0x01, 0xEE,  // ..g.....
                /* 0A38 */  0xF4, 0xF8, 0xE9, 0x01, 0x70, 0x02, 0xF4, 0xF4,  // ....p...
                /* 0A40 */  0x00, 0xB6, 0xF3, 0x06, 0xDC, 0x03, 0x01, 0xE2,  // ........
                /* 0A48 */  0xF8, 0x8F, 0x0A, 0x7E, 0x65, 0xA1, 0x70, 0xFC,  // ...~e.p.
                /* 0A50 */  0xD8, 0xCE, 0x8F, 0x25, 0xB8, 0xC3, 0x81, 0x8F,  // ...%....
                /* 0A58 */  0x0C, 0x3E, 0x40, 0xE2, 0x86, 0xE2, 0x43, 0x05,  // .>@...C.
                /* 0A60 */  0xF2, 0x2C, 0x00, 0x8A, 0xD1, 0xB3, 0x11, 0xB0,  // .,......
                /* 0A68 */  0x1B, 0xCC, 0x4B, 0x4B, 0x94, 0xFF, 0xFF, 0x7B,  // ..KK...{
                /* 0A70 */  0x03, 0x3B, 0xA5, 0xE0, 0x0E, 0x02, 0xE0, 0x3B,  // .;.....;
                /* 0A78 */  0x06, 0x80, 0x77, 0x30, 0x5C, 0xD6, 0x98, 0x51,  // ..w0\..Q
                /* 0A80 */  0x42, 0x60, 0x34, 0x66, 0xDC, 0x21, 0x84, 0x9F,  // B`4f.!..
                /* 0A88 */  0x08, 0x70, 0x63, 0xF6, 0xB8, 0x3D, 0x66, 0xDC,  // .pc..=f.
                /* 0A90 */  0x71, 0x96, 0x8F, 0xEA, 0x29, 0x23, 0x94, 0x0F,  // q...)#..
                /* 0A98 */  0x1C, 0xEC, 0x9C, 0xF1, 0x46, 0xC0, 0x87, 0x0E,  // ....F...
                /* 0AA0 */  0x3C, 0x0E, 0x30, 0xB8, 0x23, 0x05, 0x18, 0x2F,  // <.0.#../
                /* 0AA8 */  0x07, 0x6C, 0xEC, 0xE0, 0x0E, 0x42, 0x4E, 0x81,  // .l...BN.
                /* 0AB0 */  0x2C, 0x1D, 0x46, 0x63, 0xC7, 0xC9, 0x06, 0xD2,  // ,.Fc....
                /* 0AB8 */  0x31, 0xC6, 0x87, 0x5C, 0x8F, 0x1D, 0x37, 0x58,  // 1..\..7X
                /* 0AC0 */  0x8F, 0x1D, 0x77, 0x7C, 0xC1, 0xFE, 0xFF, 0x8F,  // ..w|....
                /* 0AC8 */  0x2F, 0x60, 0x18, 0x03, 0x17, 0x3F, 0x0C, 0xF4,  // /`...?..
                /* 0AD0 */  0xCD, 0xCF, 0xA3, 0x33, 0xB8, 0x87, 0xED, 0x13,  // ...3....
                /* 0AD8 */  0x4C, 0x8C, 0x37, 0x98, 0x10, 0x8F, 0x2C, 0x2F,  // L.7...,/
                /* 0AE0 */  0x2D, 0x11, 0x1E, 0x5A, 0x7C, 0x73, 0x79, 0x69,  // -..Z|syi
                /* 0AE8 */  0xF1, 0x2D, 0xC6, 0x28, 0x21, 0x22, 0x1C, 0x4C,  // .-.(!".L
                /* 0AF0 */  0x9C, 0x27, 0x18, 0x23, 0x1C, 0x78, 0x14, 0x43,  // .'.#.x.C
                /* 0AF8 */  0x44, 0x38, 0x81, 0x10, 0x27, 0x7D, 0xB2, 0x41,  // D8..'}.A
                /* 0B00 */  0xC2, 0xC7, 0x08, 0x1B, 0x2D, 0xCA, 0x13, 0x0C,  // ....-...
                /* 0B08 */  0x1B, 0x0B, 0x3F, 0xAF, 0x78, 0xF0, 0xFC, 0xB4,  // ..?.x...
                /* 0B10 */  0xE6, 0xBB, 0xA0, 0x27, 0x73, 0x8E, 0x0F, 0x59,  // ...'s..Y
                /* 0B18 */  0x9E, 0xDA, 0xE3, 0xA4, 0x0F, 0xB3, 0xB8, 0x41,  // .......A
                /* 0B20 */  0x3D, 0x38, 0xB2, 0xBB, 0x8E, 0x8F, 0xD7, 0xD8,  // =8......
                /* 0B28 */  0x53, 0x90, 0x87, 0xC0, 0x4F, 0x04, 0xBE, 0x20,  // S...O.. 
                /* 0B30 */  0x7A, 0xB2, 0xBE, 0xEB, 0xB1, 0x7B, 0x99, 0x31,  // z....{.1
                /* 0B38 */  0xAA, 0x9F, 0x02, 0xEA, 0x98, 0x72, 0x06, 0xAF,  // .....r..
                /* 0B40 */  0x10, 0xEC, 0x9E, 0xE7, 0x43, 0xB6, 0xEF, 0x92,  // ....C...
                /* 0B48 */  0x6C, 0x14, 0xB8, 0x43, 0x82, 0xCF, 0x48, 0xFC,  // l..C..H.
                /* 0B50 */  0x54, 0xE1, 0x61, 0x78, 0x14, 0x30, 0x66, 0xF0,  // T.ax.0f.
                /* 0B58 */  0x8E, 0x70, 0x68, 0x21, 0x0E, 0xF8, 0x7D, 0x97,  // .ph!..}.
                /* 0B60 */  0x0D, 0x35, 0xC6, 0xE9, 0xF9, 0xFC, 0xC1, 0x06,  // .5......
                /* 0B68 */  0x01, 0x1F, 0xEA, 0x50, 0x3D, 0xCC, 0xA3, 0x7A,  // ...P=..z
                /* 0B70 */  0x29, 0x64, 0x38, 0x67, 0x07, 0x77, 0x10, 0xD8,  // )d8g.w..
                /* 0B78 */  0xE3, 0x87, 0x07, 0xC1, 0x6F, 0x96, 0x7C, 0x10,  // ....o.|.
                /* 0B80 */  0xEC, 0x7C, 0xF3, 0x06, 0x67, 0x90, 0xFF, 0xFF,  // .|..g...
                /* 0B88 */  0x31, 0xC0, 0x3E, 0x53, 0xF9, 0x68, 0x82, 0x38,  // 1.>S.h.8
                /* 0B90 */  0x02, 0xA2, 0xCF, 0x1F, 0x1E, 0xC3, 0x9B, 0x1C,  // ........
                /* 0B98 */  0x1F, 0x0E, 0xF6, 0xE8, 0x81, 0x3B, 0x89, 0xC0,  // .....;..
                /* 0BA0 */  0x3D, 0x76, 0x1D, 0xB4, 0xAF, 0x71, 0xBE, 0x68,  // =v...q.h
                /* 0BA8 */  0xC1, 0xB8, 0xEF, 0x3D, 0x8B, 0x80, 0x1F, 0xE3,  // ...=....
                /* 0BB0 */  0xB1, 0x05, 0x1C, 0x87, 0x12, 0x70, 0x07, 0x3B,  // .....p.;
                /* 0BB8 */  0xAE, 0x71, 0x08, 0x45, 0x81, 0xD1, 0xA1, 0x04,  // .q.E....
                /* 0BC0 */  0x17, 0x03, 0x48, 0x30, 0x8E, 0x71, 0x46, 0x43,  // ..H0.qFC
                /* 0BC8 */  0x5F, 0x22, 0x7D, 0x48, 0x83, 0x33, 0x68, 0xD8,  // _"}H.3h.
                /* 0BD0 */  0xF3, 0x7C, 0x42, 0xE1, 0xF6, 0x04, 0x28, 0x3A,  // .|B...(:
                /* 0BD8 */  0xA1, 0x80, 0x0C, 0xF7, 0x19, 0x04, 0x7B, 0x42,  // ......{B
                /* 0BE0 */  0xE0, 0x67, 0x10, 0xF6, 0xFF, 0x3F, 0x38, 0x7A,  // .g...?8z
                /* 0BE8 */  0xDC, 0xEF, 0x8D, 0x3E, 0x35, 0xB2, 0xB9, 0x3F,  // ...>5..?
                /* 0BF0 */  0x04, 0x9C, 0xC0, 0xB9, 0xB3, 0x53, 0x33, 0xEE,  // .....S3.
                /* 0BF8 */  0xCC, 0x80, 0x3D, 0x7F, 0x78, 0x08, 0xFC, 0x5C,  // ..=.x..\
                /* 0C00 */  0xE0, 0xE1, 0x7B, 0x08, 0xF8, 0xC1, 0x3F, 0x30,  // ..{...?0
                /* 0C08 */  0x1B, 0x1C, 0x8C, 0xA7, 0x08, 0x5F, 0x3B, 0x38,  // ....._;8
                /* 0C10 */  0x38, 0x3F, 0x0D, 0x18, 0x9C, 0xBF, 0x42, 0x7D,  // 8?....B}
                /* 0C18 */  0x9E, 0x67, 0xE0, 0xD8, 0x53, 0xAF, 0xEF, 0x1D,  // .g..S...
                /* 0C20 */  0x9E, 0xAF, 0x0F, 0x15, 0xF8, 0x9B, 0x9E, 0x0F,  // ........
                /* 0C28 */  0x15, 0xE0, 0x38, 0x3C, 0xF0, 0xC3, 0x0A, 0x1B,  // ..8<....
                /* 0C30 */  0xC2, 0xA3, 0x00, 0xFE, 0xD4, 0xE2, 0xE3, 0x5F,  // ......._
                /* 0C38 */  0x9C, 0xA7, 0x08, 0x76, 0x1B, 0xC1, 0x1E, 0x2E,  // ...v....
                /* 0C40 */  0x00, 0x47, 0xD1, 0xCE, 0x62, 0xA8, 0x30, 0x67,  // .G..b.0g
                /* 0C48 */  0x31, 0xF2, 0xFF, 0x3F, 0x47, 0xA1, 0xCE, 0x62,  // 1..?G..b
                /* 0C50 */  0xF4, 0x70, 0x01, 0xB8, 0x10, 0x7C, 0x3C, 0x00,  // .p...|<.
                /* 0C58 */  0xCD, 0x41, 0xE0, 0x71, 0xC1, 0x17, 0x82, 0x23,  // .A.q...#
                /* 0C60 */  0x39, 0x90, 0xA7, 0x03, 0xC0, 0xA7, 0x3C, 0x12,  // 9.....<.
                /* 0C68 */  0x7A, 0x3E, 0xB2, 0x20, 0x18, 0xD4, 0xF9, 0xC0,  // z>. ....
                /* 0C70 */  0x27, 0x14, 0x1F, 0x3B, 0xF8, 0xD9, 0xC0, 0x37,  // '..;...7
                /* 0C78 */  0x72, 0x0F, 0x95, 0x9F, 0x9A, 0x7D, 0xD2, 0xE6,  // r....}..
                /* 0C80 */  0xC1, 0x7F, 0xD2, 0xB2, 0x01, 0xA3, 0x40, 0xC3,  // ......@.
                /* 0C88 */  0x40, 0x8D, 0xC8, 0x47, 0xA4, 0xFF, 0xFF, 0x73,  // @..G...s
                /* 0C90 */  0x1B, 0x36, 0xC0, 0xD0, 0xE8, 0x39, 0x1C, 0xC6,  // .6...9..
                /* 0C98 */  0x01, 0xD7, 0xE7, 0x70, 0xEC, 0x80, 0x7C, 0x0E,  // ...p..|.
                /* 0CA0 */  0x87, 0x7F, 0x8E, 0x86, 0x3F, 0x36, 0x76, 0xBA,  // ....?6v.
                /* 0CA8 */  0xE7, 0x03, 0x83, 0x75, 0xFD, 0xC6, 0x0C, 0x0C,  // ...u....
                /* 0CB0 */  0x6C, 0xDF, 0x22, 0x0F, 0x0C, 0x38, 0xA2, 0x9E,  // l."..8..
                /* 0CB8 */  0x8D, 0xAF, 0x10, 0x1E, 0x18, 0xD8, 0x00, 0x3D,  // .......=
                /* 0CC0 */  0x30, 0xE0, 0x13, 0x0B, 0x42, 0x4E, 0x06, 0x86,  // 0...BN..
                /* 0CC8 */  0x3A, 0x65, 0x18, 0x39, 0xE6, 0x13, 0x87, 0x87,  // :e.9....
                /* 0CD0 */  0xE1, 0x43, 0x45, 0xD4, 0x67, 0x80, 0x47, 0x3C,  // .CE.g.G<
                /* 0CD8 */  0x36, 0x36, 0xF6, 0xFF, 0x1F, 0x1B, 0x58, 0x8E,  // 66....X.
                /* 0CE0 */  0x2D, 0x1E, 0x1B, 0xF8, 0x8F, 0xF0, 0xF8, 0xB1,  // -.......
                /* 0CE8 */  0xC1, 0x19, 0xCB, 0xA3, 0x89, 0x2F, 0x33, 0x47,  // ...../3G
                /* 0CF0 */  0x76, 0x1A, 0x67, 0xF6, 0x1A, 0xE2, 0xA3, 0xDD,  // v.g.....
                /* 0CF8 */  0xE3, 0xB7, 0xC7, 0x06, 0x2E, 0x0B, 0x63, 0x03,  // ......c.
                /* 0D00 */  0x4A, 0x21, 0xC7, 0x86, 0x3E, 0xA4, 0xF8, 0x14,  // J!..>...
                /* 0D08 */  0x60, 0xE3, 0xA8, 0x64, 0x1E, 0x3E, 0x5E, 0xF9,  // `..d.>^.
                /* 0D10 */  0xC4, 0x70, 0x74, 0x41, 0xDE, 0xD0, 0x7D, 0xB9,  // .ptA..}.
                /* 0D18 */  0xF0, 0x91, 0xC6, 0x60, 0xBE, 0xB4, 0xF8, 0x0C,  // ...`....
                /* 0D20 */  0xCA, 0x87, 0x08, 0x2E, 0x0D, 0x43, 0x04, 0x4A,  // .....C.J
                /* 0D28 */  0xA1, 0x86, 0x88, 0x1E, 0xCF, 0xFF, 0xFF, 0x11,  // ........
                /* 0D30 */  0xCC, 0x43, 0x64, 0x43, 0x03, 0xEF, 0x37, 0x46,  // .CdC..7F
                /* 0D38 */  0x43, 0x03, 0x42, 0xE1, 0x86, 0x86, 0x3E, 0xAC,  // C.B...>.
                /* 0D40 */  0xF9, 0x10, 0xC0, 0x20, 0x7C, 0x1B, 0x60, 0x57,  // ... |.`W
                /* 0D48 */  0x01, 0x5F, 0x85, 0x3C, 0xC0, 0x27, 0x51, 0x36,  // ._.<.'Q6
                /* 0D50 */  0x3C, 0xF0, 0x0D, 0xCA, 0xC3, 0x03, 0x3E, 0xE1,  // <.....>.
                /* 0D58 */  0x81, 0xBD, 0x0A, 0x0F, 0x8F, 0x9E, 0x95, 0x3C,  // .......<
                /* 0D60 */  0x3C, 0x78, 0x20, 0x8F, 0x11, 0xEC, 0x1C, 0xE2,  // <x .....
                /* 0D68 */  0xC1, 0x81, 0xC3, 0xC4, 0xE0, 0x40, 0x71, 0xF4,  // .....@q.
                /* 0D70 */  0xC7, 0x0D, 0x81, 0x5D, 0x66, 0x3D, 0x71, 0x7E,  // ...]f=q~
                /* 0D78 */  0x65, 0xF1, 0xA0, 0xF0, 0xFF, 0xFF, 0x23, 0x00,  // e.....#.
                /* 0D80 */  0xAC, 0xE3, 0x0C, 0xF8, 0x82, 0x1D, 0x0E, 0xD0,  // ........
                /* 0D88 */  0xC7, 0x44, 0x36, 0x86, 0x87, 0x88, 0x07, 0x57,  // .D6....W
                /* 0D90 */  0x0F, 0xC4, 0xD7, 0x8E, 0xD7, 0x62, 0xDC, 0xD1,  // .....b..
                /* 0D98 */  0x00, 0x5C, 0x2A, 0x8E, 0x06, 0x40, 0xE9, 0x60,  // .\*..@.`
                /* 0DA0 */  0x0B, 0x8E, 0x7B, 0x9A, 0x8F, 0x76, 0x98, 0x39,  // ..{..v.9
                /* 0DA8 */  0x7A, 0x00, 0xCF, 0x6F, 0x1E, 0x2D, 0x3F, 0xBF,  // z..o.-?.
                /* 0DB0 */  0x01, 0x8E, 0x82, 0x1E, 0x6C, 0xE9, 0xC0, 0x1D,  // ....l...
                /* 0DB8 */  0x0D, 0x06, 0x75, 0x7E, 0xC3, 0xFC, 0xFF, 0xCF,  // ..u~....
                /* 0DC0 */  0x6F, 0x60, 0x88, 0x00, 0xAE, 0x33, 0x8D, 0xCF,  // o`...3..
                /* 0DC8 */  0x2F, 0x70, 0x86, 0x7A, 0xD0, 0xBE, 0x26, 0x78,  // /p.z..&x
                /* 0DD0 */  0xD6, 0xBE, 0x71, 0xB1, 0x73, 0x02, 0xB8, 0x06,  // ..q.s...
                /* 0DD8 */  0xE4, 0x93, 0x0E, 0x70, 0x04, 0x3E, 0x89, 0x07,  // ...p.>..
                /* 0DE0 */  0xFC, 0x43, 0x03, 0xF3, 0xB0, 0x3C, 0x34, 0xE0,  // .C...<4.
                /* 0DE8 */  0x73, 0x34, 0xC0, 0x9D, 0x28, 0xC0, 0x73, 0x1B,  // s4..(.s.
                /* 0DF0 */  0xC1, 0x1D, 0x28, 0x80, 0xC5, 0xFF, 0xFF, 0x40,  // ..(....@
                /* 0DF8 */  0x01, 0xAC, 0x8E, 0xF8, 0x1E, 0x17, 0x87, 0xC6,  // ........
                /* 0E00 */  0x21, 0x3E, 0xA4, 0x9D, 0xB3, 0xCF, 0x5F, 0x67,  // !>...._g
                /* 0E08 */  0x8A, 0x3B, 0x8B, 0x80, 0xE1, 0x44, 0x8F, 0x78,  // .;...D.x
                /* 0E10 */  0xA7, 0x19, 0xC8, 0x0F, 0x0C, 0x09, 0x81, 0x41,  // .......A
                /* 0E18 */  0x9D, 0x80, 0x3C, 0x14, 0x1F, 0x0C, 0x38, 0xB0,  // ..<...8.
                /* 0E20 */  0x8F, 0x08, 0xEC, 0x5C, 0xC0, 0x0E, 0x50, 0x86,  // ...\..P.
                /* 0E28 */  0xE3, 0x67, 0x01, 0x9F, 0x12, 0x1E, 0x6A, 0x8E,  // .g....j.
                /* 0E30 */  0xE3, 0x71, 0xD3, 0x77, 0x33, 0x43, 0xB2, 0xAB,  // .q.w3C..
                /* 0E38 */  0xC1, 0xF3, 0x0F, 0xF6, 0xB4, 0x0B, 0xE7, 0x88,  // ........
                /* 0E40 */  0x0B, 0x2E, 0x02, 0x9F, 0x75, 0x3C, 0x0A, 0x7E,  // ....u<.~
                /* 0E48 */  0x7A, 0xF0, 0x1C, 0xDF, 0x18, 0x7C, 0x7A, 0x60,  // z....|z`
                /* 0E50 */  0xEE, 0x05, 0x98, 0x3B, 0x74, 0x0B, 0xE1, 0x98,  // ...;t...
                /* 0E58 */  0x5E, 0x1F, 0x62, 0x1C, 0xF5, 0x63, 0x43, 0x5B,  // ^.b..cC[
                /* 0E60 */  0x02, 0xB4, 0xA1, 0xE8, 0x0E, 0xF0, 0x32, 0x10,  // ......2.
                /* 0E68 */  0x25, 0xC4, 0x11, 0x44, 0x6A, 0x0D, 0x45, 0x33,  // %..Dj.E3
                /* 0E70 */  0x8F, 0x14, 0x25, 0x60, 0x3C, 0xC3, 0x34, 0x36,  // ..%`<.46
                /* 0E78 */  0x19, 0x41, 0xC6, 0x08, 0x1D, 0x27, 0x58, 0x94,  // .A...'X.
                /* 0E80 */  0x68, 0xAF, 0x00, 0xED, 0x8F, 0x96, 0xAD, 0x58,  // h......X
                /* 0E88 */  0x63, 0x71, 0xA4, 0x93, 0x25, 0x7A, 0xD8, 0x3E,  // cq..%z.>
                /* 0E90 */  0x66, 0xE3, 0x4F, 0xAB, 0x98, 0xFF, 0x3F, 0xC1,  // f.O...?.
                /* 0E98 */  0xAB, 0x8A, 0x0F, 0x0A, 0x3E, 0x00, 0xE0, 0x5D,  // ....>..]
                /* 0EA0 */  0x02, 0xEA, 0xEA, 0xE8, 0x71, 0xFB, 0xBC, 0x01,  // ....q...
                /* 0EA8 */  0xFE, 0xEB, 0x05, 0x96, 0xA0, 0xFC, 0x41, 0xA0,  // ......A.
                /* 0EB0 */  0x46, 0x66, 0x68, 0x8F, 0xF3, 0x6D, 0xC6, 0x90,  // Ffh..m..
                /* 0EB8 */  0x4F, 0x4E, 0x26, 0xB0, 0xD8, 0x13, 0x2A, 0xD0,  // ON&...*.
                /* 0EC0 */  0x18, 0xFC, 0xD3, 0x86, 0xAF, 0xED, 0x9E, 0xAF,  // ........
                /* 0EC8 */  0xCF, 0x71, 0x00, 0x1F, 0xFE, 0xFF, 0xE7, 0x38,  // .q.....8
                /* 0ED0 */  0xC0, 0xD0, 0x70, 0x70, 0x47, 0x1F, 0xB8, 0x57,  // ..ppG..W
                /* 0ED8 */  0x12, 0x7E, 0xF8, 0x01, 0x9C, 0x01, 0x3D, 0xFC,  // .~....=.
                /* 0EE0 */  0x80, 0x7D, 0xA8, 0xB8, 0x21, 0xF0, 0x08, 0x2B,  // .}..!..+
                /* 0EE8 */  0xA2, 0x87, 0x01, 0x8B, 0x86, 0x41, 0x9D, 0xD7,  // .....A..
                /* 0EF0 */  0xB0, 0xFF, 0xFF, 0xF3, 0x1A, 0x6C, 0x71, 0xE0,  // .....lq.
                /* 0EF8 */  0x3A, 0xA8, 0xFA, 0x6C, 0x0C, 0x67, 0x50, 0xA7,  // :..l.gP.
                /* 0F00 */  0xDD, 0xFB, 0x5D, 0x81, 0x5C, 0x44, 0x3C, 0xE8,  // ..].\D<.
                /* 0F08 */  0xF3, 0x79, 0x76, 0x60, 0x07, 0x36, 0xE0, 0x3F,  // .yv`.6.?
                /* 0F10 */  0x36, 0x38, 0x37, 0x80, 0xA7, 0xE8, 0x08, 0xC7,  // 687.....
                /* 0F18 */  0x06, 0xF6, 0x13, 0x1B, 0x70, 0x3A, 0xDB, 0xC1,  // ....p:..
                /* 0F20 */  0xB9, 0x42, 0xB1, 0xDB, 0x3E, 0x6E, 0x68, 0x60,  // .B..>nh`
                /* 0F28 */  0xB3, 0x31, 0x34, 0x90, 0xFD, 0xFF, 0x0F, 0x9F,  // .14.....
                /* 0F30 */  0xC0, 0xEB, 0xD0, 0xC5, 0x2F, 0x15, 0xCF, 0x5F,  // ..../.._
                /* 0F38 */  0xFC, 0x70, 0x07, 0x38, 0x97, 0x76, 0xB2, 0x43,  // .p.8.v.C
                /* 0F40 */  0x89, 0x39, 0xDC, 0x01, 0x52, 0xFE, 0xFF, 0x87,  // .9..R...
                /* 0F48 */  0x3B, 0x70, 0xDD, 0xE5, 0xDE, 0x19, 0x5E, 0x1A,  // ;p....^.
                /* 0F50 */  0x3C, 0xA7, 0x77, 0x3B, 0x63, 0xBC, 0xD4, 0x19,  // <.w;c...
                /* 0F58 */  0x21, 0x0A, 0xBB, 0x0D, 0x44, 0xB3, 0xB7, 0xC3,  // !...D...
                /* 0F60 */  0x1D, 0x39, 0xE1, 0x71, 0xCC, 0x48, 0x4F, 0x7A,  // .9.q.HOz
                /* 0F68 */  0xC1, 0x22, 0x45, 0x3C, 0x9C, 0x28, 0x21, 0x82,  // ."E<.(!.
                /* 0F70 */  0xBD, 0x4E, 0x3C, 0xE5, 0x3D, 0xDC, 0x31, 0x21,  // .N<.=.1!
                /* 0F78 */  0x87, 0x3B, 0xA0, 0xE3, 0xFA, 0x70, 0x07, 0x54,  // .;...p.T
                /* 0F80 */  0x4E, 0x54, 0xF8, 0xC3, 0x1D, 0x60, 0xF6, 0xFF,  // NT...`..
                /* 0F88 */  0x7F, 0xB8, 0x03, 0x18, 0x75, 0x46, 0xC3, 0x1D,  // ....uF..
                /* 0F90 */  0xEE, 0xC0, 0x76, 0xFA, 0x01, 0xCE, 0xFF, 0xFF,  // ..v.....
                /* 0F98 */  0xD3, 0x0F, 0xF0, 0x1E, 0x2B, 0x8C, 0x31, 0xF0,  // ....+.1.
                /* 0FA0 */  0x68, 0x4B, 0xA2, 0x40, 0x0E, 0x03, 0x83, 0x22,  // hK.@..."
                /* 0FA8 */  0x70, 0x90, 0x43, 0x1D, 0x0D, 0x76, 0x7A, 0x81,  // p.C..vz.
                /* 0FB0 */  0x32, 0x97, 0x03, 0x3D, 0x85, 0x67, 0x04, 0x1F,  // 2..=.g..
                /* 0FB8 */  0xC0, 0xC0, 0x7E, 0xAA, 0x03, 0x0E, 0xA7, 0x06,  // ..~.....
                /* 0FC0 */  0x7C, 0xA0, 0x13, 0x0A, 0x7A, 0x14, 0x3E, 0x9B,  // |...z.>.
                /* 0FC8 */  0x80, 0xF7, 0x48, 0x07, 0x6C, 0xFE, 0xFF, 0x67,  // ..H.l..g
                /* 0FD0 */  0x13, 0xF6, 0x6A, 0xF4, 0xD9, 0x04, 0xC7, 0x62,  // ..j....b
                /* 0FD8 */  0xD4, 0x37, 0x88, 0x43, 0x7C, 0xE9, 0xF0, 0xB9,  // .7.C|...
                /* 0FE0 */  0xF1, 0x9D, 0xC6, 0x97, 0x00, 0xCC, 0xF5, 0xC3,  // ........
                /* 0FE8 */  0x04, 0x63, 0x42, 0xE8, 0x93, 0xE5, 0x53, 0x1D,  // .cB...S.
                /* 0FF0 */  0x70, 0x3A, 0x9C, 0xC0, 0x1B, 0x3D, 0xEE, 0xB4,  // p:...=..
                /* 0FF8 */  0xE0, 0xE1, 0x70, 0x70, 0xCF, 0xE6, 0x59, 0xE2,  // ..pp..Y.
                /* 1000 */  0x89, 0xC8, 0x3A, 0x4E, 0x27, 0x40, 0xED, 0x80,  // ..:N'@..
                /* 1008 */  0x81, 0x99, 0x41, 0xF8, 0x87, 0x10, 0x76, 0xFA,  // ..A...v.
                /* 1010 */  0xF4, 0x91, 0xC9, 0x73, 0x7F, 0x37, 0xF2, 0xE9,  // ...s.7..
                /* 1018 */  0x04, 0xF0, 0xF5, 0xFF, 0x3F, 0xEA, 0x01, 0x0B,  // ....?...
                /* 1020 */  0x89, 0x1A, 0xCE, 0x79, 0x18, 0x51, 0x30, 0xA8,  // ...y.Q0.
                /* 1028 */  0xA3, 0x1E, 0x60, 0xED, 0xA2, 0x67, 0x63, 0x08,  // ..`..gc.
                /* 1030 */  0xBA, 0x08, 0x9C, 0x41, 0x88, 0xC7, 0xBB, 0x57,  // ...A...W
                /* 1038 */  0xBC, 0x48, 0xBE, 0x03, 0xC4, 0x79, 0xD4, 0x33,  // .H...y.3
                /* 1040 */  0xD8, 0xDB, 0xC7, 0x83, 0x44, 0x94, 0x38, 0x8F,  // ....D.8.
                /* 1048 */  0x7A, 0x1E, 0x7D, 0x28, 0x4F, 0x3E, 0xD4, 0xE9,  // z.}(O>..
                /* 1050 */  0xC7, 0x0A, 0x1B, 0xE8, 0x89, 0xEF, 0x45, 0x2F,  // ......E/
                /* 1058 */  0xA4, 0x11, 0x1E, 0xF5, 0x98, 0xA0, 0x97, 0x87,  // ........
                /* 1060 */  0x0E, 0x57, 0x3E, 0xEA, 0x01, 0x56, 0xFE, 0xFF,  // .W>..V..
                /* 1068 */  0x47, 0x3D, 0x80, 0xFF, 0xFF, 0xFF, 0xA3, 0x1E,  // G=......
                /* 1070 */  0x98, 0x4F, 0x4F, 0x80, 0xFF, 0x63, 0x0D, 0xEE,  // .OO..c..
                /* 1078 */  0xA8, 0x08, 0xB6, 0xF3, 0x13, 0xE0, 0xE2, 0xFF,  // ........
                /* 1080 */  0x7F, 0x7E, 0x02, 0xD3, 0xD0, 0x7D, 0x7E, 0x02,  // .~...}~.
                /* 1088 */  0xF3, 0x68, 0x61, 0x1E, 0x10, 0x10, 0x67, 0x45,  // .ha...gE
                /* 1090 */  0x54, 0xF8, 0x87, 0x8C, 0xE1, 0x50, 0xC1, 0x81,  // T....P..
                /* 1098 */  0xF4, 0x8B, 0xF2, 0x11, 0x10, 0xB8, 0x1C, 0x15,  // ........
                /* 10A0 */  0x81, 0xC3, 0x99, 0x05, 0x2F, 0xE4, 0xD4, 0x81,  // ..../...
                /* 10A8 */  0x1E, 0x8F, 0x41, 0x5F, 0x39, 0x7C, 0x25, 0xE0,  // ..A_9|%.
                /* 10B0 */  0x47, 0x0E, 0x16, 0xFA, 0xC8, 0x01, 0xAA, 0xC3,  // G.......
                /* 10B8 */  0x22, 0xF8, 0x8E, 0x1C, 0xE0, 0xB8, 0x5E, 0x05,  // ".....^.
                /* 10C0 */  0xE6, 0xFF, 0x7F, 0x60, 0x76, 0x3B, 0x78, 0xFD,  // ...`v;x.
                /* 10C8 */  0xF4, 0x24, 0x1E, 0xA3, 0x8E, 0x33, 0x44, 0xE1,  // .$...3D.
                /* 10D0 */  0x98, 0xE4, 0x60, 0x10, 0xE9, 0x1D, 0x8C, 0x0D,  // ..`.....
                /* 10D8 */  0xF0, 0xE5, 0xC5, 0x87, 0x2A, 0x1F, 0x03, 0x81,  // ....*...
                /* 10E0 */  0x21, 0xC4, 0xD9, 0xF0, 0xD3, 0x85, 0x31, 0x4F,  // !.....1O
                /* 10E8 */  0x87, 0x1F, 0x03, 0x01, 0xEB, 0x52, 0xCF, 0x80,  // .....R..
                /* 10F0 */  0x28, 0x71, 0xC7, 0x40, 0x20, 0xF5, 0xFF, 0x3F,  // (q.@ ..?
                /* 10F8 */  0x06, 0x02, 0xD7, 0x4B, 0xA0, 0xC7, 0x7C, 0xC6,  // ...K..|.
                /* 1100 */  0x6F, 0x7E, 0x4F, 0x7E, 0x51, 0x6A, 0xBB, 0xFE,  // o~O~Qj..
                /* 1108 */  0xE9, 0x6E, 0x60, 0xAC, 0x87, 0x80, 0x27, 0x40,  // .n`...'@
                /* 1110 */  0xDF, 0xFF, 0x7C, 0xAC, 0x88, 0x12, 0x30, 0x4A,  // ..|...0J
                /* 1118 */  0xAC, 0x17, 0x41, 0x63, 0xC6, 0x08, 0xF6, 0x0E,  // ..Ac....
                /* 1120 */  0x18, 0xF3, 0x91, 0xD0, 0x23, 0x8C, 0x16, 0xDC,  // ....#...
                /* 1128 */  0x40, 0x8F, 0x81, 0x4C, 0xD8, 0x31, 0x10, 0x20,  // @..L.1. 
                /* 1130 */  0xD1, 0xFF, 0xFF, 0x18, 0x08, 0x30, 0xF2, 0x04,  // .....0..
                /* 1138 */  0x05, 0x6C, 0xFF, 0xFF, 0x27, 0x28, 0xC0, 0xD0,  // .l..'(..
                /* 1140 */  0x51, 0x10, 0xCC, 0x67, 0x28, 0xC0, 0xDA, 0x51,  // Q..g(..Q
                /* 1148 */  0x10, 0xEC, 0xA3, 0x85, 0x39, 0x0A, 0x1E, 0xF3,  // ....9...
                /* 1150 */  0xE5, 0x61, 0x20, 0x1A, 0x4C, 0xC2, 0xFF, 0xFF,  // .a .L...
                /* 1158 */  0x28, 0x88, 0x0D, 0x05, 0xA4, 0x73, 0x87, 0x43,  // (....s.C
                /* 1160 */  0x9D, 0x5E, 0xD0, 0x07, 0x05, 0x0F, 0xFB, 0xA9,  // .^......
                /* 1168 */  0xC0, 0x93, 0x38, 0x55, 0x5F, 0x0B, 0x8E, 0xE2,  // ..8U_...
                /* 1170 */  0x09, 0xC0, 0x87, 0x41, 0xE0, 0x3F, 0x34, 0x58,  // ...A.?4X
                /* 1178 */  0x93, 0x28, 0x7E, 0x68, 0xA0, 0x3E, 0x7B, 0x80,  // .(~h.>{.
                /* 1180 */  0x6F, 0x68, 0xE0, 0x88, 0x7A, 0xC6, 0x41, 0x9F,  // oh..z.A.
                /* 1188 */  0x88, 0x7C, 0x36, 0x88, 0xF9, 0xE6, 0x11, 0xE1,  // .|6.....
                /* 1190 */  0xC9, 0xC3, 0xD7, 0x07, 0x76, 0xF2, 0xF4, 0xA9,  // ....v...
                /* 1198 */  0x29, 0x50, 0x94, 0xF7, 0x0D, 0x1E, 0xE7, 0x94,  // )P......
                /* 11A0 */  0x03, 0xAA, 0xC3, 0x2F, 0x38, 0x0E, 0xBC, 0x30,  // .../8..0
                /* 11A8 */  0xFE, 0xFF, 0x07, 0x5E, 0x76, 0x9C, 0xF2, 0xB1,  // ...^v...
                /* 11B0 */  0x04, 0x7C, 0x67, 0x52, 0x38, 0x37, 0x17, 0xDF,  // .|gR87..
                /* 11B8 */  0xF1, 0xD8, 0x69, 0x00, 0x6C, 0x07, 0x62, 0x9F,  // ..i.l.b.
                /* 11C0 */  0x06, 0x80, 0x4F, 0xAC, 0x81, 0xA1, 0x8F, 0x2A,  // ..O....*
                /* 11C8 */  0x46, 0xED, 0x7D, 0x12, 0x9A, 0x18, 0xBB, 0x8E,  // F.}.....
                /* 11D0 */  0xBC, 0xA4, 0xF8, 0x7A, 0xF2, 0xAC, 0x05, 0x3E,  // ...z...>
                /* 11D8 */  0x1F, 0x63, 0x03, 0x4A, 0x27, 0x30, 0x7E, 0xF4,  // .c.J'0~.
                /* 11E0 */  0x04, 0x13, 0xCC, 0xC1, 0xBC, 0x8A, 0x7B, 0x90,  // ......{.
                /* 11E8 */  0x4F, 0x42, 0xEC, 0x94, 0x03, 0xDE, 0xFF, 0xFF,  // OB......
                /* 11F0 */  0xC1, 0x13, 0xB0, 0x27, 0xE2, 0xD4, 0x89, 0x8A,  // ...'....
                /* 11F8 */  0xFD, 0xE6, 0xF2, 0xC1, 0x13, 0x90, 0x77, 0x67,  // ......wg
                /* 1200 */  0x30, 0xC2, 0xF9, 0x87, 0x78, 0x80, 0x08, 0xF1,  // 0...x...
                /* 1208 */  0xCC, 0x69, 0x90, 0x38, 0x41, 0x5E, 0x06, 0x1E,  // .i.8A^..
                /* 1210 */  0x3C, 0x7D, 0xEF, 0x8C, 0xF3, 0xEC, 0x19, 0xE5,  // <}......
                /* 1218 */  0xCD, 0xD3, 0x08, 0x47, 0x1F, 0xCF, 0x40, 0xEF,  // ...G..@.
                /* 1220 */  0x9C, 0x21, 0xDE, 0x3A, 0x9F, 0x41, 0x5F, 0x3D,  // .!.:.A_=
                /* 1228 */  0x8D, 0x16, 0x2B, 0xF8, 0x31, 0x3E, 0x78, 0xB2,  // ..+.1>x.
                /* 1230 */  0xC8, 0x67, 0x24, 0x7A, 0xF0, 0x84, 0xFD, 0xFF,  // .g$z....
                /* 1238 */  0x3F, 0x78, 0x02, 0xFC, 0xFF, 0xFF, 0x1F, 0x3C,  // ?x.....<
                /* 1240 */  0x01, 0x63, 0x67, 0x30, 0xC0, 0xE9, 0xD1, 0x1F,  // .cg0....
                /* 1248 */  0x3C, 0x27, 0x4D, 0x18, 0x47, 0x26, 0xF0, 0xFF,  // <'M.G&..
                /* 1250 */  0xFF, 0x8F, 0x4C, 0x80, 0xAB, 0xB1, 0xC2, 0x18,  // ..L.....
                /* 1258 */  0x03, 0x8F, 0x78, 0x5E, 0x42, 0x85, 0x3A, 0x32,  // ..x^B.:2
                /* 1260 */  0x01, 0x02, 0x67, 0x74, 0xFA, 0xAF, 0xFE, 0xBE,  // ..gt....
                /* 1268 */  0x25, 0x3D, 0xAB, 0x1C, 0xC2, 0xA3, 0xBF, 0x41,  // %=.....A
                /* 1270 */  0x8C, 0x70, 0xDC, 0x8F, 0x4C, 0x3E, 0x2F, 0x3D,  // .p..L>/=
                /* 1278 */  0x2D, 0x3D, 0x37, 0xF9, 0xAE, 0xF4, 0xB8, 0x14,  // -=7.....
                /* 1280 */  0x2C, 0x44, 0x94, 0x60, 0x8F, 0xFD, 0xBE, 0x3A,  // ,D.`...:
                /* 1288 */  0xF9, 0xFE, 0x64, 0x0C, 0x9F, 0x9A, 0x82, 0x84,  // ..d.....
                /* 1290 */  0x7B, 0x64, 0x62, 0x81, 0x8E, 0x4C, 0x90, 0xFF,  // {db..L..
                /* 1298 */  0xFF, 0x47, 0x26, 0x80, 0xFF, 0xFF, 0xFF, 0x23,  // .G&....#
                /* 12A0 */  0x13, 0x60, 0xEE, 0x40, 0x0B, 0xE7, 0x00, 0xF3,  // .`.@....
                /* 12A8 */  0x92, 0xC0, 0x8E, 0x05, 0xE0, 0x1B, 0x8C, 0x8F,  // ........
                /* 12B0 */  0x05, 0xC0, 0x47, 0xDE, 0x29, 0x15, 0x84, 0x27,  // ..G.)..'
                /* 12B8 */  0x9E, 0x23, 0x7D, 0x89, 0x61, 0x27, 0x24, 0x60,  // .#}.a'$`
                /* 12C0 */  0xFA, 0xFF, 0x3F, 0x21, 0x01, 0x26, 0xF4, 0xA8,  // ..?!.&..
                /* 12C8 */  0x00, 0x61, 0x47, 0x01, 0x4B, 0x3A, 0x1F, 0x09,  // .aG.K:..
                /* 12D0 */  0x86, 0xB3, 0xF8, 0x84, 0xE0, 0x73, 0x01, 0x3F,  // .....s.?
                /* 12D8 */  0x21, 0x78, 0x04, 0x15, 0x8F, 0x93, 0x9E, 0x82,  // !x......
                /* 12E0 */  0x7C, 0xD0, 0x67, 0x27, 0x03, 0x47, 0x1F, 0x24,  // |.g'.G.$
                /* 12E8 */  0x1D, 0x19, 0xEE, 0x3C, 0x00, 0xB6, 0xC3, 0x11,  // ...<....
                /* 12F0 */  0xAC, 0x43, 0x01, 0xE0, 0x26, 0xF3, 0xB2, 0x34,  // .C..&..4
                /* 12F8 */  0x72, 0xE7, 0x05, 0x91, 0x8D, 0x23, 0x0B, 0xE5,  // r....#..
                /* 1300 */  0xB0, 0x2A, 0x20, 0x9D, 0xF9, 0x7D, 0xC8, 0xF2,  // .* ..}..
                /* 1308 */  0xE5, 0xE3, 0x54, 0x4E, 0x15, 0x7F, 0x2C, 0xB1,  // ..TN..,.
                /* 1310 */  0x0A, 0x11, 0xFF, 0x7F, 0x78, 0x76, 0x08, 0x72,  // ....xv.r
                /* 1318 */  0x7E, 0x0F, 0x10, 0xE3, 0x3D, 0x5B, 0x34, 0x1A,  // ~...=[4.
                /* 1320 */  0x1F, 0x9F, 0x38, 0x9C, 0x41, 0xCC, 0x26, 0x01,  // ..8.A.&.
                /* 1328 */  0xD9, 0x0E, 0x50, 0x68, 0x25, 0x20, 0x1A, 0x03,  // ..Ph% ..
                /* 1330 */  0x3F, 0x3E, 0x61, 0x82, 0xDC, 0x63, 0xE8, 0xCC,  // ?>a..c..
                /* 1338 */  0x7D, 0x39, 0xE0, 0x2F, 0x63, 0x9F, 0x3B, 0x0C,  // }9./c.;.
                /* 1340 */  0xEE, 0x3B, 0x09, 0x38, 0x66, 0x63, 0x35, 0xA0,  // .;.8fc5.
                /* 1348 */  0xA8, 0x01, 0x18, 0x0D, 0x73, 0x0E, 0x78, 0x74,  // ....s.xt
                /* 1350 */  0x01, 0x57, 0xAE, 0x9B, 0x0B, 0xFA, 0x25, 0xE1,  // .W....%.
                /* 1358 */  0x9B, 0x0B, 0x66, 0x6E, 0xC0, 0x61, 0xFC, 0x9E,  // ..fn.a..
                /* 1360 */  0x1B, 0x2C, 0x34, 0xCF, 0x0D, 0xFE, 0xED, 0x05,  // .,4.....
                /* 1368 */  0x1B, 0x6D, 0x6E, 0x68, 0x64, 0x76, 0xB3, 0x37,  // .mnhdv.7
                /* 1370 */  0xC2, 0x2B, 0x82, 0x0F, 0x1F, 0x1E, 0x1D, 0x70,  // .+.....p
                /* 1378 */  0x00, 0xF4, 0xE8, 0xD8, 0xFF, 0x7F, 0x74, 0x78,  // ......tx
                /* 1380 */  0x24, 0x8F, 0x0E, 0x6C, 0x09, 0x47, 0x87, 0xD6,  // $..l.G..
                /* 1388 */  0x03, 0x22, 0x97, 0x27, 0x37, 0x72, 0x32, 0x39,  // .".'7r29
                /* 1390 */  0xBD, 0x93, 0x79, 0x53, 0xF1, 0xE9, 0x22, 0x48,  // ..yS.."H
                /* 1398 */  0xA0, 0x38, 0xD1, 0x9F, 0x4D, 0x3C, 0x41, 0xE0,  // .8..M<A.
                /* 13A0 */  0x30, 0x00, 0x4F, 0x10, 0x16, 0x9A, 0x27, 0x08,  // 0.O...'.
                /* 13A8 */  0xB6, 0x88, 0xD7, 0x0C, 0xF4, 0xFD, 0xC3, 0xC8,  // ........
                /* 13B0 */  0x21, 0x4F, 0xEF, 0x89, 0xC9, 0xA0, 0xBE, 0xDD,  // !O......
                /* 13B8 */  0xC0, 0x18, 0x21, 0x70, 0x78, 0x5A, 0x7A, 0x84,  // ..!pxZz.
                /* 13C0 */  0xB0, 0xD0, 0x7C, 0xD4, 0x00, 0x5B, 0xBC, 0x11,  // ..|..[..
                /* 13C8 */  0xA2, 0x87, 0xE5, 0x5B, 0xC9, 0xF9, 0x9D, 0xDC,  // ...[....
                /* 13D0 */  0xF1, 0xC1, 0xFE, 0xFF, 0x8F, 0x0F, 0xBC, 0xC0,  // ........
                /* 13D8 */  0x1E, 0x1F, 0x2C, 0x14, 0x8F, 0x0F, 0x6C, 0xFA,  // ..,...l.
                /* 13E0 */  0xEE, 0x46, 0xA0, 0x00, 0xF2, 0x49, 0xC8, 0xE7,  // .F...I..
                /* 13E8 */  0x93, 0x97, 0x21, 0x36, 0x86, 0x57, 0x29, 0xA3,  // ..!6.W).
                /* 13F0 */  0x19, 0x9D, 0xEB, 0xDB, 0x92, 0xCE, 0x37, 0x5C,  // ......7\
                /* 13F8 */  0x11, 0x8C, 0xCE, 0x2E, 0x06, 0xF1, 0x8D, 0xC4,  // ........
                /* 1400 */  0x69, 0x29, 0x74, 0x0C, 0xC1, 0xE3, 0x9F, 0xF7,  // i)t.....
                /* 1408 */  0x19, 0xBD, 0x29, 0x78, 0xB6, 0x3E, 0xE8, 0x08,  // ..)x.>..
                /* 1410 */  0x52, 0xC7, 0x01, 0x1F, 0x36, 0xF1, 0xB7, 0x0B,  // R...6...
                /* 1418 */  0x3E, 0x0D, 0x5F, 0xA4, 0x9F, 0x05, 0x31, 0xD3,  // >._...1.
                /* 1420 */  0xB6, 0xD6, 0x41, 0xEB, 0x0A, 0x13, 0xF0, 0x14,  // ..A.....
                /* 1428 */  0x5E, 0x85, 0x8C, 0xE7, 0x33, 0x32, 0x1B, 0x8F,  // ^...32..
                /* 1430 */  0x4F, 0xD0, 0x3E, 0x18, 0xF9, 0x84, 0xE5, 0x43,  // O.>....C
                /* 1438 */  0x69, 0x82, 0x57, 0x09, 0x1F, 0x26, 0x9E, 0x94,  // i.W..&..
                /* 1440 */  0xD8, 0x05, 0x35, 0xC1, 0x63, 0x6A, 0x82, 0xC7,  // ..5.cj..
                /* 1448 */  0xD3, 0x04, 0x0F, 0xA7, 0x09, 0x9E, 0x51, 0x43,  // ......QC
                /* 1450 */  0x1A, 0x95, 0xC1, 0x1A, 0xE2, 0x09, 0x8E, 0x65,  // .......e
                /* 1458 */  0x5D, 0x82, 0x06, 0xC3, 0x47, 0xE7, 0xC1, 0x60,  // ]...G..`
                /* 1460 */  0xEE, 0x47, 0x1E, 0x9D, 0x00, 0x35, 0x16, 0x9E,  // .G...5..
                /* 1468 */  0x8A, 0x44, 0x47, 0x6E, 0x9F, 0xAE, 0xDE, 0xAE,  // .DGn....
                /* 1470 */  0x7C, 0x59, 0xF0, 0x85, 0xC1, 0x17, 0x2A, 0x2F,  // |Y....*/
                /* 1478 */  0xE0, 0xC1, 0x1B, 0xC6, 0xF9, 0xC8, 0x87, 0x2A,  // .......*
                /* 1480 */  0xFF, 0xFF, 0xA1, 0xE2, 0x04, 0x7E, 0x25, 0x78,  // .....~%x
                /* 1488 */  0xD7, 0x0A, 0x11, 0xCC, 0xB0, 0x8F, 0x01, 0x8F,  // ........
                /* 1490 */  0x1B, 0x46, 0xF5, 0x79, 0xD7, 0x58, 0x8F, 0x49,  // .F.y.X.I
                /* 1498 */  0x1E, 0x31, 0xBF, 0x4F, 0x1D, 0x50, 0xA4, 0xE7,  // .1.O.P..
                /* 14A0 */  0x1F, 0x4F, 0xC0, 0x97, 0x2C, 0xDF, 0x4A, 0x4F,  // .O..,.JO
                /* 14A8 */  0xCA, 0xE7, 0x5B, 0xA3, 0xBF, 0x4A, 0xF8, 0x52,  // ..[..J.R
                /* 14B0 */  0x66, 0x64, 0x9F, 0xC0, 0xD8, 0xFD, 0x94, 0x0D,  // fd......
                /* 14B8 */  0x8A, 0x23, 0x3E, 0x38, 0x3C, 0x84, 0x78, 0x2A,  // .#>8<.x*
                /* 14C0 */  0xEC, 0xFE, 0x84, 0x01, 0x8B, 0x79, 0x04, 0x0F,  // .....y..
                /* 14C8 */  0x83, 0xFC, 0xE8, 0x72, 0x44, 0x16, 0x7F, 0x73,  // ...rD..s
                /* 14D0 */  0x24, 0x33, 0x38, 0x43, 0x83, 0x62, 0x06, 0xC9,  // $38C.b..
                /* 14D8 */  0x87, 0x74, 0x52, 0x3E, 0xF4, 0x30, 0x3C, 0xDC,  // .tR>.0<.
                /* 14E0 */  0x78, 0xD8, 0x60, 0x7D, 0x8C, 0x64, 0x53, 0x60,  // x.`}.dS`
                /* 14E8 */  0x03, 0xF2, 0x64, 0x3C, 0x1B, 0x76, 0xE8, 0xC0,  // ..d<.v..
                /* 14F0 */  0x0F, 0xCF, 0x87, 0x26, 0x5F, 0x96, 0x3D, 0x1E,  // ...&_.=.
                /* 14F8 */  0x8F, 0x84, 0x5F, 0x12, 0xCE, 0xD0, 0xC0, 0x70,  // .._....p
                /* 1500 */  0x6E, 0x04, 0x0F, 0x6E, 0x0C, 0xD9, 0xA7, 0x0E,  // n..n....
                /* 1508 */  0x83, 0x44, 0x7B, 0x82, 0xF0, 0x94, 0x30, 0xA7,  // .D{...0.
                /* 1510 */  0x23, 0x0F, 0xCC, 0x43, 0xF0, 0x84, 0x60, 0x5C,  // #..C..`\
                /* 1518 */  0xDF, 0xF1, 0xC7, 0x0F, 0x76, 0xD9, 0xC3, 0xDC,  // ....v...
                /* 1520 */  0x24, 0xC1, 0x75, 0x91, 0xF0, 0xF9, 0x03, 0xCC,  // $.u.....
                /* 1528 */  0x04, 0xFF, 0xFF, 0xF0, 0xFC, 0x0E, 0xEA, 0x53,  // .......S
                /* 1530 */  0x8B, 0x65, 0x8D, 0x0B, 0x75, 0x70, 0xF1, 0x1D,  // .e..up..
                /* 1538 */  0x95, 0x8D, 0x99, 0xDD, 0xF8, 0xCE, 0xF2, 0x00,  // ........
                /* 1540 */  0x5F, 0xC9, 0x30, 0xB0, 0xBE, 0x7A, 0x70, 0x58,  // _.0..zpX
                /* 1548 */  0xA3, 0x85, 0x7D, 0x88, 0x78, 0x6F, 0xF0, 0x41,  // ..}.xo.A
                /* 1550 */  0x0F, 0x77, 0x75, 0x06, 0x0B, 0x20, 0xFE, 0x2E,  // .wu.. ..
                /* 1558 */  0xF0, 0xE0, 0xE2, 0x09, 0x18, 0x90, 0xC5, 0x59,  // .......Y
                /* 1560 */  0x15, 0xBD, 0xA5, 0x3B, 0x00, 0x0C, 0xEA, 0xA2,  // ...;....
                /* 1568 */  0x0E, 0x58, 0xBB, 0x9E, 0xFB, 0xB4, 0xF2, 0xA6,  // .X......
                /* 1570 */  0xF2, 0x50, 0xF0, 0xC6, 0x12, 0x21, 0xC8, 0x13,  // .P...!..
                /* 1578 */  0xFA, 0x3B, 0x42, 0x84, 0x50, 0x81, 0x5E, 0xD4,  // .;B.P.^.
                /* 1580 */  0x8D, 0x17, 0xF4, 0xF9, 0x2B, 0x4A, 0x9C, 0x28,  // ....+J.(
                /* 1588 */  0x11, 0x42, 0x19, 0xE3, 0x5C, 0x9E, 0x0E, 0x5E,  // .B..\..^
                /* 1590 */  0x5D, 0xC2, 0x3D, 0x26, 0x04, 0x7E, 0x72, 0x78,  // ].=&.~rx
                /* 1598 */  0x52, 0x37, 0xC2, 0x31, 0xBE, 0xA8, 0x33, 0xF1,  // R7.1..3.
                /* 15A0 */  0xD7, 0x1B, 0xDD, 0x86, 0x7C, 0x51, 0x07, 0xE7,  // ....|Q..
                /* 15A8 */  0xFF, 0xFF, 0xA2, 0x0E, 0xB8, 0x1E, 0x86, 0x6F,  // .......o
                /* 15B0 */  0xAD, 0xE0, 0xB8, 0x26, 0xF0, 0x7B, 0x2B, 0xE0,  // ...&.{+.
                /* 15B8 */  0x70, 0x1A, 0xEF, 0xC6, 0xB0, 0xFF, 0xFF, 0x77,  // p......w
                /* 15C0 */  0x63, 0xD8, 0xC3, 0x85, 0x3D, 0x0C, 0x9E, 0xEC,  // c...=...
                /* 15C8 */  0x65, 0x40, 0x0F, 0x05, 0x16, 0x75, 0x3D, 0x06,  // e@...u=.
                /* 15D0 */  0xED, 0x0D, 0xDF, 0xE3, 0xF4, 0x99, 0x04, 0x77,  // .......w
                /* 15D8 */  0x3D, 0x06, 0x0B, 0xC2, 0x73, 0x8D, 0x0F, 0x10,  // =...s...
                /* 15E0 */  0x3E, 0x49, 0x78, 0x6A, 0x70, 0x0E, 0x06, 0x80,  // >Ixjp...
                /* 15E8 */  0x1B, 0xED, 0x8F, 0x5A, 0x9D, 0x35, 0x1C, 0xE0,  // ...Z.5..
                /* 15F0 */  0x3B, 0xA7, 0xFB, 0x31, 0x2E, 0xE6, 0x33, 0x47,  // ;..1..3G
                /* 15F8 */  0xD3, 0x64, 0x43, 0x85, 0x45, 0xE0, 0x58, 0x17,  // .dC.E.X.
                /* 1600 */  0x63, 0x3A, 0x00, 0xDF, 0x8C, 0xAD, 0x9D, 0x44,  // c:.....D
                /* 1608 */  0x17, 0x3E, 0xAE, 0x16, 0x46, 0x70, 0x06, 0xF1,  // .>..Fp..
                /* 1610 */  0xC9, 0xC7, 0x47, 0x5E, 0x9F, 0x5B, 0x70, 0x47,  // ..G^.[pG
                /* 1618 */  0x5E, 0x9F, 0x59, 0xFC, 0xFF, 0xBF, 0x1D, 0x03,  // ^.Y.....
                /* 1620 */  0x56, 0x82, 0xCD, 0x0D, 0x7D, 0x5F, 0xF1, 0x79,  // V...}_.y
                /* 1628 */  0x0F, 0x73, 0x3C, 0x06, 0x1C, 0x0C, 0x0E, 0x7B,  // .s<....{
                /* 1630 */  0xEE, 0x86, 0x73, 0x1C, 0x05, 0x56, 0xD7, 0x63,  // ..s..V.c
                /* 1638 */  0xB0, 0x1F, 0x47, 0x61, 0xFC, 0xFF, 0x8F, 0xA3,  // ..Ga....
                /* 1640 */  0xC0, 0x40, 0xD3, 0x6D, 0x02, 0xA5, 0xE2, 0x36,  // .@.m...6
                /* 1648 */  0x41, 0x41, 0x7C, 0x03, 0x70, 0x42, 0x1A, 0x1D,  // AA|.pB..
                /* 1650 */  0x47, 0xE1, 0xE7, 0x81, 0xD4, 0x71, 0x14, 0xFE,  // G....q..
                /* 1658 */  0x84, 0x1E, 0x47, 0xC1, 0x70, 0xA7, 0xF3, 0x78,  // ..G.p..x
                /* 1660 */  0x7C, 0xB6, 0x37, 0xAB, 0x8F, 0xA3, 0x70, 0xF3,  // |.7...p.
                /* 1668 */  0x0E, 0x02, 0x75, 0x0C, 0x85, 0x93, 0x6F, 0x0C,  // ..u...o.
                /* 1670 */  0xA8, 0x64, 0x10, 0x3A, 0x86, 0x02, 0xB6, 0x0E,  // .d.:....
                /* 1678 */  0x92, 0xE0, 0xFA, 0xFF, 0x1F, 0x24, 0x01, 0x1E,  // .....$..
                /* 1680 */  0xE4, 0x5E, 0x97, 0x0E, 0x44, 0xFC, 0xF4, 0x68,  // .^..D..h
                /* 1688 */  0x75, 0x07, 0x22, 0x04, 0xC6, 0x33, 0xDF, 0xE3,  // u."..3..
                /* 1690 */  0x87, 0x67, 0xE3, 0xA3, 0x80, 0x8F, 0x51, 0x9E,  // .g....Q.
                /* 1698 */  0xF9, 0x19, 0x3D, 0xD7, 0x32, 0x2D, 0x27, 0x22,  // ..=.2-'"
                /* 16A0 */  0x94, 0x0A, 0x18, 0x05, 0xA6, 0xD1, 0x9D, 0x83,  // ........
                /* 16A8 */  0x47, 0xBC, 0x17, 0x53, 0x10, 0x8F, 0xD6, 0x37,  // G..S...7
                /* 16B0 */  0x17, 0x60, 0x7A, 0x26, 0x02, 0xD3, 0xFF, 0xFF,  // .`z&....
                /* 16B8 */  0xE6, 0x02, 0x86, 0x90, 0xB3, 0x43, 0xCF, 0xDB,  // .....C..
                /* 16C0 */  0xD3, 0x66, 0xC7, 0x5F, 0xDC, 0xB4, 0x61, 0x9C,  // .f._..a.
                /* 16C8 */  0x8C, 0x00, 0x1F, 0x77, 0x1D, 0x80, 0x15, 0xFF,  // ...w....
                /* 16D0 */  0xFF, 0xBB, 0x0E, 0xC0, 0xC2, 0xFB, 0x83, 0xEF,  // ........
                /* 16D8 */  0x3A, 0xC0, 0x35, 0xD2, 0x05, 0x1C, 0xF1, 0xFF,  // :.5.....
                /* 16E0 */  0x87, 0x18, 0xE2, 0x0E, 0x0E, 0x08, 0x3C, 0x6E,  // ......<n
                /* 16E8 */  0xBC, 0x44, 0xBC, 0x76, 0xFB, 0x12, 0xEE, 0x33,  // .D.v...3
                /* 16F0 */  0xC1, 0x29, 0x3C, 0x7C, 0x1F, 0x56, 0x9C, 0xF7,  // .)<|.V..
                /* 16F8 */  0x8D, 0x10, 0xEF, 0xE0, 0x3E, 0x7C, 0xFB, 0x0E,  // ....>|..
                /* 1700 */  0x6E, 0xBC, 0x48, 0x01, 0xA3, 0x45, 0x09, 0xF6,  // n.H..E..
                /* 1708 */  0x10, 0x1E, 0x22, 0x68, 0xA4, 0x10, 0x01, 0x43,  // .."h...C
                /* 1710 */  0xBC, 0x83, 0xC7, 0x0A, 0x17, 0xFD, 0x1D, 0x9C,  // ........
                /* 1718 */  0x05, 0xB8, 0x83, 0x03, 0xB2, 0xFF, 0xFF, 0x77,  // .......w
                /* 1720 */  0x70, 0x30, 0x5F, 0xA3, 0x71, 0x77, 0x70, 0xB0,  // p0_.qwp.
                /* 1728 */  0x5D, 0x8E, 0x01, 0x7B, 0x82, 0x2F, 0xE1, 0x20,  // ]..{./. 
                /* 1730 */  0x1F, 0x2F, 0x18, 0xC6, 0xC1, 0x95, 0x93, 0xD0,  // ./......
                /* 1738 */  0x63, 0x81, 0xB5, 0xC2, 0xA0, 0x6E, 0xE1, 0xE0,  // c....n..
                /* 1740 */  0xD2, 0x04, 0xAE, 0xAB, 0xB2, 0x0F, 0x35, 0x3E,  // ......5>
                /* 1748 */  0x04, 0xE3, 0xCF, 0x17, 0xEC, 0xFF, 0x7F, 0x72,  // .......r
                /* 1750 */  0x60, 0x01, 0x86, 0x4C, 0x4F, 0x65, 0x30, 0xAE,  // `..LOe0.
                /* 1758 */  0x29, 0x3E, 0x95, 0x61, 0xEE, 0x0E, 0x1E, 0x90,  // )>.a....
                /* 1760 */  0x8F, 0x18, 0xC0, 0x67, 0x15, 0x1E, 0x18, 0xEE,  // ...g....
                /* 1768 */  0xB4, 0xE0, 0x9B, 0x92, 0x41, 0xCF, 0x31, 0xA8,  // ....A.1.
                /* 1770 */  0x8F, 0x3C, 0x27, 0xEF, 0x7B, 0xC2, 0xE3, 0x84,  // .<'.{...
                /* 1778 */  0xA3, 0x9E, 0x83, 0xE8, 0xD8, 0xC0, 0x71, 0xDC,  // ......q.
                /* 1780 */  0x00, 0xC7, 0xE1, 0x06, 0x77, 0xCE, 0x63, 0xE3,  // ....w.c.
                /* 1788 */  0xC2, 0xC0, 0x3D, 0x17, 0x78, 0x18, 0xBE, 0xE9,  // ..=.x...
                /* 1790 */  0x78, 0x44, 0x98, 0xF1, 0x3F, 0xEA, 0x19, 0x21,  // xD..?..!
                /* 1798 */  0x20, 0xFE, 0x62, 0xC4, 0x06, 0x0C, 0xC6, 0x5B,  //  .b....[
                /* 17A0 */  0x9B, 0xAF, 0x6F, 0xB8, 0x01, 0xFB, 0xEA, 0xE0,  // ..o.....
                /* 17A8 */  0x0B, 0x86, 0x4F, 0x60, 0x46, 0x7F, 0x81, 0x79,  // ..O`F..y
                /* 17B0 */  0x12, 0xF3, 0xB1, 0x81, 0x5C, 0xE0, 0xE8, 0x80,  // ....\...
                /* 17B8 */  0xC1, 0x01, 0xE8, 0x01, 0xC3, 0xFE, 0xFF, 0x5F,  // ......._
                /* 17C0 */  0xEC, 0x7C, 0x97, 0x03, 0xC3, 0x55, 0xD0, 0xC7,  // .|...U..
                /* 17C8 */  0x05, 0x1F, 0x7B, 0xAC, 0xE8, 0x2E, 0x87, 0xBE,  // ..{.....
                /* 17D0 */  0xC9, 0x19, 0x26, 0x8E, 0x21, 0xDE, 0xC0, 0xD8,  // ..&.!...
                /* 17D8 */  0x5D, 0x82, 0x1C, 0xE6, 0xA0, 0xDE, 0x25, 0x3C,  // ].....%<
                /* 17E0 */  0x07, 0x7E, 0xB6, 0xF0, 0x09, 0xCE, 0x37, 0x9F,  // .~....7.
                /* 17E8 */  0x10, 0xA7, 0xFA, 0x68, 0xF5, 0x1E, 0xE0, 0xA3,  // ...h....
                /* 17F0 */  0xC7, 0x7B, 0x97, 0xCF, 0x4E, 0xEC, 0x22, 0xE0,  // .{..N.".
                /* 17F8 */  0x23, 0x97, 0x71, 0x3C, 0x4D, 0x5F, 0x01, 0x3D,  // #.q<M_.=
                /* 1800 */  0x64, 0x83, 0xBD, 0x6A, 0xF8, 0x04, 0xE6, 0xA3,  // d..j....
                /* 1808 */  0x1B, 0xEE, 0x18, 0xE5, 0x99, 0x78, 0xFA, 0xBE,  // .....x..
                /* 1810 */  0x83, 0xB0, 0x23, 0xC9, 0x51, 0x87, 0xBA, 0xA6,  // ..#.Q...
                /* 1818 */  0x47, 0x94, 0x13, 0x3A, 0x10, 0xDF, 0xDA, 0xC0,  // G..:....
                /* 1820 */  0x19, 0xED, 0xFE, 0x81, 0xDE, 0xA6, 0x47, 0x86,  // ......G.
                /* 1828 */  0x39, 0x1A, 0xC0, 0xBA, 0x84, 0x80, 0xEB, 0x8E,  // 9.......
                /* 1830 */  0xE1, 0x4B, 0x08, 0xF0, 0x09, 0x7A, 0x89, 0x40,  // .K...z.@
                /* 1838 */  0x5F, 0x33, 0x3C, 0xBA, 0x47, 0x00, 0xCC, 0x15,  // _3<.G...
                /* 1840 */  0x83, 0xA1, 0xFC, 0xFF, 0xCF, 0xFA, 0x61, 0xC3,  // ......a.
                /* 1848 */  0xD7, 0x00, 0x76, 0x2F, 0x70, 0x98, 0x7B, 0x04,  // ..v/p.{.
                /* 1850 */  0xA8, 0x40, 0x3D, 0x3C, 0xF8, 0x6A, 0xEF, 0x11,  // .@=<.j..
                /* 1858 */  0xA0, 0x38, 0x59, 0xFA, 0xD0, 0xE0, 0x81, 0x5A,  // .8Y....Z
                /* 1860 */  0xD5, 0x19, 0x13, 0xCA, 0x11, 0x93, 0x43, 0x45,  // ......CE
                /* 1868 */  0x63, 0xB7, 0x02, 0x76, 0xBB, 0xF4, 0x4D, 0x02,  // c..v..M.
                /* 1870 */  0x6E, 0x9E, 0x59, 0xA0, 0x92, 0xDC, 0x24, 0xA0,  // n.Y...$.
                /* 1878 */  0xC3, 0x74, 0x79, 0x99, 0xA1, 0xF3, 0x3F, 0x70,  // .ty...?p
                /* 1880 */  0xDF, 0xEA, 0x3C, 0x42, 0x1F, 0x22, 0x18, 0xCA,  // ..<B."..
                /* 1888 */  0x7B, 0x9E, 0x4F, 0x61, 0xFC, 0x0C, 0xE1, 0x03,  // {.Oa....
                /* 1890 */  0x26, 0x3B, 0x53, 0xF0, 0xB3, 0x26, 0xEE, 0x0E,  // &;S..&..
                /* 1898 */  0x60, 0x94, 0x37, 0x4F, 0x4F, 0x80, 0x9D, 0x3F,  // `.7OO..?
                /* 18A0 */  0x8D, 0xFC, 0x6E, 0xF0, 0x2E, 0xE0, 0xE9, 0xFB,  // ..n.....
                /* 18A8 */  0x5E, 0xC4, 0x4F, 0x14, 0xE0, 0x0B, 0x76, 0xA7,  // ^.O...v.
                /* 18B0 */  0x83, 0x02, 0x7D, 0x42, 0x1E, 0x91, 0x51, 0x7D,  // ..}B..Q}
                /* 18B8 */  0x44, 0xE0, 0x97, 0x24, 0xB0, 0xFD, 0xFF, 0x47,  // D..$...G
                /* 18C0 */  0xE6, 0x23, 0x89, 0x0F, 0x14, 0x40, 0xE8, 0x5E,  // .#...@.^
                /* 18C8 */  0x80, 0x3A, 0x7D, 0xF0, 0xC3, 0xB3, 0x2F, 0xA8,  // .:}.../.
                /* 18D0 */  0xC6, 0x7C, 0xB7, 0x7A, 0x84, 0xF3, 0xE4, 0x30,  // .|.z...0
                /* 18D8 */  0x97, 0x03, 0x16, 0xE7, 0x9A, 0x04, 0xAA, 0xE3,  // ........
                /* 18E0 */  0x2E, 0x1F, 0x1D, 0xDC, 0x6B, 0x2B, 0x7E, 0x70,  // ....k+~p
                /* 18E8 */  0xEF, 0x2C, 0xEF, 0x7C, 0x86, 0xF2, 0x20, 0xC1,  // .,.|.. .
                /* 18F0 */  0x77, 0x6D, 0x05, 0xC7, 0x55, 0x0D, 0xC6, 0xB1,  // wm..U...
                /* 18F8 */  0x85, 0x5F, 0xF2, 0x00, 0x33, 0xFF, 0xFF, 0x61,  // ._..3..a
                /* 1900 */  0xE2, 0x04, 0xFF, 0x3D, 0x0C, 0x44, 0x25, 0xC2,  // ...=.D%.
                /* 1908 */  0xA0, 0x08, 0x2C, 0xEF, 0xDE, 0x4A, 0xE1, 0x0F,  // ..,..J..
                /* 1910 */  0x19, 0x8C, 0x37, 0x05, 0x3E, 0x69, 0xEC, 0xA8,  // ..7.>i..
                /* 1918 */  0x01, 0x3B, 0x43, 0xC5, 0xDD, 0x14, 0xC1, 0x3A,  // .;C....:
                /* 1920 */  0x55, 0xCC, 0x10, 0x78, 0xB0, 0x07, 0x80, 0xCF,  // U..x....
                /* 1928 */  0x57, 0x3E, 0x03, 0x28, 0x0A, 0x0C, 0xEA, 0xD0,  // W>.(....
                /* 1930 */  0x0E, 0xE7, 0x36, 0x0C, 0x3C, 0xFF, 0xFF, 0xB7,  // ..6.<...
                /* 1938 */  0x61, 0xB8, 0x23, 0xC6, 0x5D, 0x0A, 0xE1, 0x4E,  // a.#.]..N
                /* 1940 */  0xF9, 0x1D, 0x25, 0xF6, 0x73, 0x39, 0x9B, 0x2E,  // ..%.s9..
                /* 1948 */  0xEE, 0x6A, 0xEE, 0xD3, 0x09, 0xBB, 0x20, 0xC3,  // .j.... .
                /* 1950 */  0x38, 0x0B, 0x3C, 0x02, 0xBC, 0x9A, 0xF3, 0x0B,  // 8.<.....
                /* 1958 */  0xF2, 0x0B, 0xF1, 0x0B, 0xC1, 0x1B, 0xB2, 0x6F,  // .......o
                /* 1960 */  0x4A, 0xCF, 0x06, 0x2F, 0x3B, 0x31, 0xDE, 0x8D,  // J../;1..
                /* 1968 */  0x7D, 0x4A, 0xF6, 0x79, 0xE7, 0x05, 0xD9, 0x18,  // }J.y....
                /* 1970 */  0x47, 0x13, 0x31, 0xCA, 0xB9, 0x3D, 0x0C, 0xBC,  // G.1..=..
                /* 1978 */  0x26, 0x1B, 0xE5, 0xFD, 0xE4, 0x85, 0x20, 0x62,  // &..... b
                /* 1980 */  0x34, 0x43, 0x04, 0x8D, 0x11, 0xE8, 0x7D, 0xD9,  // 4C....}.
                /* 1988 */  0x78, 0x2F, 0xC8, 0x4C, 0xE0, 0x5B, 0x41, 0x07,  // x/.L.[A.
                /* 1990 */  0x17, 0x5F, 0x90, 0x01, 0x7E, 0x9C, 0x8C, 0xFC,  // ._..~...
                /* 1998 */  0xFF, 0x3F, 0x19, 0x01, 0x2E, 0x4F, 0x1C, 0xB8,  // .?...O..
                /* 19A0 */  0x4B, 0x35, 0xF8, 0x4E, 0x36, 0x80, 0xB3, 0xA1,  // K5.N6...
                /* 19A8 */  0xFB, 0x64, 0x03, 0xEE, 0xD1, 0xFA, 0xFF, 0x3F,  // .d.....?
                /* 19B0 */  0x5A, 0x38, 0x47, 0x13, 0xC4, 0xC9, 0x86, 0x02,  // Z8G.....
                /* 19B8 */  0x39, 0xF8, 0xBA, 0x28, 0x1C, 0x0F, 0x7D, 0x12,  // 9..(..}.
                /* 19C0 */  0xA1, 0x47, 0x27, 0x1F, 0x25, 0x71, 0x67, 0x06,  // .G'.%qg.
                /* 19C8 */  0x4F, 0xE4, 0x9D, 0xC5, 0xA3, 0x78, 0x19, 0xF4,  // O....x..
                /* 19D0 */  0xBD, 0xE0, 0x44, 0x5E, 0x1F, 0x2C, 0xE7, 0x18,  // ..D^.,..
                /* 19D8 */  0x09, 0xAA, 0x91, 0xF8, 0xF8, 0x00, 0xFF, 0xFA,  // ........
                /* 19E0 */  0xE2, 0x63, 0x24, 0x7C, 0x3E, 0xFF, 0xB0, 0x3C,  // .c$|>..<
                /* 19E8 */  0x18, 0x43, 0xFA, 0x14, 0xC9, 0x41, 0x9E, 0x5D,  // .C...A.]
                /* 19F0 */  0x1E, 0x43, 0xF8, 0x05, 0x12, 0xEE, 0x69, 0xE6,  // .C....i.
                /* 19F8 */  0x00, 0x30, 0xB2, 0x2E, 0x8F, 0xE8, 0xB3, 0x23,  // .0.....#
                /* 1A00 */  0xC7, 0x88, 0xEB, 0x8B, 0xA2, 0xAF, 0xC0, 0x3E,  // .......>
                /* 1A08 */  0x08, 0x9C, 0xCF, 0x73, 0x22, 0x58, 0x47, 0xCD,  // ...s"XG.
                /* 1A10 */  0x8F, 0x36, 0x7C, 0xFC, 0x1C, 0xFC, 0xAD, 0xE0,  // .6|.....
                /* 1A18 */  0x81, 0xD2, 0xC7, 0xA2, 0x10, 0x8F, 0x48, 0xFC,  // ......H.
                /* 1A20 */  0x9C, 0x08, 0x2E, 0x13, 0x67, 0x00, 0xE8, 0xFF,  // ....g...
                /* 1A28 */  0xFF, 0xD3, 0x0D, 0x58, 0x0E, 0xBD, 0x30, 0x4E,  // ...X..0N
                /* 1A30 */  0x0B, 0xB8, 0x81, 0xF8, 0x4C, 0x89, 0x9D, 0xF2,  // ....L...
                /* 1A38 */  0x89, 0xB0, 0x73, 0x09, 0x66, 0x74, 0xE0, 0xBA,  // ..s.ft..
                /* 1A40 */  0xDC, 0x7B, 0x74, 0xE0, 0x3F, 0x09, 0xE0, 0xB1,  // .{t.?...
                /* 1A48 */  0x1E, 0xEF, 0xC0, 0x77, 0x52, 0xF7, 0xDD, 0xC4,  // ...wR...
                /* 1A50 */  0x17, 0x19, 0x1F, 0x8A, 0x9E, 0xEF, 0x00, 0xAF,  // ........
                /* 1A58 */  0xFF, 0xFF, 0xF3, 0x1D, 0x78, 0xC2, 0x1D, 0xEE,  // ....x...
                /* 1A60 */  0x50, 0x71, 0xCE, 0x77, 0x00, 0x35, 0xCE, 0xD6,  // Pq.w.5..
                /* 1A68 */  0xCF, 0x77, 0x60, 0x17, 0x79, 0xBE, 0x03, 0xBA,  // .w`.y...
                /* 1A70 */  0xFF, 0xFF, 0xF3, 0x1D, 0xC0, 0xC3, 0x33, 0x1A,  // ......3.
                /* 1A78 */  0xEE, 0x7C, 0x07, 0xB6, 0xA3, 0x0D, 0xD8, 0xFF,  // .|......
                /* 1A80 */  0xFF, 0x47, 0x1B, 0xE0, 0x3E, 0x8D, 0x47, 0x1B,  // .G..>.G.
                /* 1A88 */  0x70, 0x0F, 0x17, 0xF6, 0x30, 0xB8, 0x42, 0x9B,  // p...0.B.
                /* 1A90 */  0x3E, 0x35, 0x1A, 0xB5, 0x6A, 0x50, 0xA6, 0x46,  // >5..jP.F
                /* 1A98 */  0x99, 0x06, 0xB5, 0xFA, 0x54, 0x6A, 0xCC, 0x98,  // ....Tj..
                /* 1AA0 */  0xB2, 0xD3, 0x8D, 0x02, 0x3E, 0x2A, 0x34, 0x36,  // ....>*46
                /* 1AA8 */  0xCB, 0xA3, 0x10, 0x88, 0xC5, 0xBC, 0x1A, 0x04,  // ........
                /* 1AB0 */  0xE2, 0xB0, 0x20, 0x34, 0xD2, 0x2B, 0x47, 0x20,  // .. 4.+G 
                /* 1AB8 */  0x96, 0xFC, 0xEC, 0x17, 0x88, 0xE5, 0xBE, 0x19,  // ........
                /* 1AC0 */  0x04, 0xE2, 0x80, 0x6F, 0x30, 0x81, 0x93, 0x87,  // ...o0...
                /* 1AC8 */  0x95, 0xC0, 0xC9, 0xBB, 0x41, 0x20, 0x8E, 0x0C,  // ....A ..
                /* 1AD0 */  0x42, 0x85, 0xEA, 0x00, 0x61, 0x31, 0x41, 0x68,  // B...a1Ah
                /* 1AD8 */  0x28, 0x1F, 0x20, 0x4C, 0xFA, 0x23, 0x41, 0x80,  // (. L.#A.
                /* 1AE0 */  0xC4, 0x08, 0x08, 0x0B, 0xF7, 0xFE, 0x12, 0x88,  // ........
                /* 1AE8 */  0xA5, 0xBD, 0x27, 0x04, 0x62, 0x21, 0x56, 0x40,  // ..'.b!V@
                /* 1AF0 */  0x58, 0x5C, 0x10, 0x1A, 0x4E, 0x0B, 0x08, 0x93,  // X\..N...
                /* 1AF8 */  0x64, 0x06, 0x84, 0x05, 0x02, 0xA1, 0xF2, 0xD5,  // d.......
                /* 1B00 */  0x80, 0x30, 0x91, 0x6E, 0x00, 0xE9, 0xEA, 0x05,  // .0.n....
                /* 1B08 */  0xE2, 0x20, 0x7A, 0x40, 0x98, 0x0C, 0x3F, 0x20,  // . z@..? 
                /* 1B10 */  0x2C, 0x34, 0x08, 0x8D, 0xF6, 0xC0, 0x10, 0x20,  // ,4..... 
                /* 1B18 */  0x31, 0x04, 0xC2, 0xE2, 0x3B, 0x02, 0x61, 0xE2,  // 1...;.a.
                /* 1B20 */  0x5F, 0x45, 0x02, 0x71, 0x7E, 0x4B, 0x10, 0xFF,  // _E.q~K..
                /* 1B28 */  0xFF, 0x9B, 0xD2, 0x10, 0x6B, 0x02, 0x62, 0x1A,  // ....k.b.
                /* 1B30 */  0x3C, 0x01, 0x31, 0x45, 0x20, 0x02, 0x72, 0xEC,  // <.1E .r.
                /* 1B38 */  0xA7, 0x87, 0x80, 0xAC, 0xC1, 0x14, 0x10, 0x8B,  // ........
                /* 1B40 */  0x0E, 0x22, 0x20, 0x0B, 0x51, 0x05, 0xC4, 0xF2,  // ." .Q...
                /* 1B48 */  0xBA, 0x02, 0x62, 0xE1, 0x41, 0x04, 0xE4, 0xCC,  // ..b.A...
                /* 1B50 */  0x2F, 0x3F, 0x01, 0x59, 0xC1, 0x4B, 0xE7, 0x21,  // /?.Y.K.!
                /* 1B58 */  0x80, 0xBD, 0x21, 0x02, 0x91, 0xE4, 0x20, 0x02,  // ..!... .
                /* 1B60 */  0x72, 0x60, 0x5F, 0x40, 0x2C, 0x3E, 0x88, 0x80,  // r`_@,>..
                /* 1B68 */  0x9C, 0xF5, 0x51, 0x28, 0x20, 0x07, 0x07, 0xD1,  // ..Q( ...
                /* 1B70 */  0x20, 0xC8, 0xD7, 0x4C, 0x40, 0x4E, 0x0F, 0x22,  //  ..L@N."
                /* 1B78 */  0x20, 0xF2, 0x09, 0x0A, 0x42, 0xD4, 0x7A, 0x03,  //  ...B.z.
                /* 1B80 */  0x61, 0x7A, 0x1E, 0x85, 0x1A, 0x0A, 0x01, 0xA1,  // az......
                /* 1B88 */  0xCA, 0xD5, 0x9D, 0x63, 0x58, 0x0E, 0x10, 0x9A,  // ...cX...
                /* 1B90 */  0x0B, 0x44, 0x60, 0x56, 0xE1, 0x0E, 0x88, 0xA9,  // .D`V....
                /* 1B98 */  0x02, 0x11, 0x90, 0x13, 0x00, 0xD1, 0x54, 0x20,  // ......T 
                /* 1BA0 */  0x34, 0x25, 0x18, 0xD5, 0x25, 0x0F, 0x88, 0x25,  // 4%..%..%
                /* 1BA8 */  0x00, 0xA1, 0xA9, 0x40, 0x68, 0x4A, 0x10, 0x01,  // ...@hJ..
                /* 1BB0 */  0x5A, 0x95, 0x3D, 0x20, 0xA6, 0x14, 0x84, 0x2A,  // Z.= ...*
                /* 1BB8 */  0x07, 0xA1, 0xE9, 0x40, 0xA8, 0x6C, 0x7D, 0x87,  // ...@.l}.
                /* 1BC0 */  0x05, 0x0A, 0x22, 0x20, 0x47, 0x07, 0xA1, 0xC2,  // .." G...
                /* 1BC8 */  0xFD, 0x81, 0x30, 0xBD, 0x2F, 0x0D, 0x01, 0x3A,  // ..0./..:
                /* 1BD0 */  0x1D, 0x88, 0x80, 0x9C, 0x18, 0x84, 0x2A, 0xF8,  // ......*.
                /* 1BD8 */  0x64, 0x04, 0x21, 0x62, 0x41, 0xA8, 0x82, 0x4F,  // d.!bA..O
                /* 1BE0 */  0x46, 0x50, 0xA2, 0xE5, 0x65, 0x27, 0x20, 0xEB,  // FP..e' .
                /* 1BE8 */  0x03, 0xA1, 0x7A, 0x41, 0x04, 0xE6, 0x6C, 0x40,  // ..zA..l@
                /* 1BF0 */  0x34, 0x2F, 0x08, 0xCD, 0x0F, 0x46, 0xB5, 0x1A,  // 4/...F..
                /* 1BF8 */  0x05, 0x62, 0xFA, 0x41, 0x68, 0x1E, 0x10, 0x81,  // .b.Ah...
                /* 1C00 */  0x59, 0xC1, 0xF3, 0xE3, 0x80, 0x19, 0x08, 0x55,  // Y......U
                /* 1C08 */  0x09, 0x22, 0x30, 0xE7, 0x02, 0xA2, 0x59, 0x41,  // ."0...YA
                /* 1C10 */  0x68, 0x76, 0x10, 0xFD, 0xFF, 0xC1, 0xAC, 0xFD,  // hv......
                /* 1C18 */  0x1F, 0xA2, 0x01, 0x10, 0x10, 0x9A, 0x0F, 0x44,  // .......D
                /* 1C20 */  0x87, 0x01, 0xF2, 0x2C, 0x13, 0x90, 0x35, 0x82,  // ...,..5.
                /* 1C28 */  0x50, 0xCD, 0x20, 0x3A, 0x1E, 0x10, 0x20, 0x9A,  // P. :.. .
                /* 1C30 */  0x1F, 0x84, 0xEA, 0xF9, 0x9B, 0x04, 0x23, 0x19,  // ......#.
                /* 1C38 */  0x40, 0x04, 0x64, 0x2D, 0x4F, 0xD0, 0x40, 0x44,  // @.d-O.@D
                /* 1C40 */  0x3F, 0x88, 0x80, 0x9C, 0x09, 0x84, 0x66, 0x04,  // ?.....f.
                /* 1C48 */  0xA3, 0x6A, 0xDF, 0x3A, 0x3A, 0x0E, 0x10, 0x10,  // .j.::...
                /* 1C50 */  0x9A, 0x08, 0x44, 0xC3, 0x23, 0xEF, 0x9E, 0xC3,  // ..D.#...
                /* 1C58 */  0x63, 0x20, 0x54, 0x25, 0x88, 0xC0, 0xAC, 0xF1,  // c T%....
                /* 1C60 */  0xE9, 0x22, 0x10, 0x27, 0x04, 0xA1, 0xEA, 0xED,  // .".'....
                /* 1C68 */  0x1E, 0x18, 0xA8, 0xDE, 0x41, 0x50, 0xC1, 0x83,  // ....AP..
                /* 1C70 */  0xA0, 0x20, 0x34, 0x11, 0x88, 0x0E, 0x19, 0xE4,  // . 4.....
                /* 1C78 */  0x7D, 0x26, 0x20, 0xEB, 0x02, 0xA1, 0x3A, 0x41,  // }& ...:A
                /* 1C80 */  0x34, 0x64, 0x02, 0x44, 0xB3, 0x82, 0xD0, 0xEC,  // 4d.D....
                /* 1C88 */  0x60, 0x34, 0xFB, 0x37, 0x49, 0xC3, 0x20, 0xDF,  // `4.7I. .
                /* 1C90 */  0x2B, 0x1D, 0x18, 0xC8, 0x23, 0x2E, 0x08, 0x51,  // +...#..Q
                /* 1C98 */  0xF4, 0x31, 0x12, 0x88, 0x73, 0xBF, 0x81, 0x34,  // .1..s..4
                /* 1CA0 */  0x50, 0xF2, 0x98, 0x09, 0x42, 0xB4, 0x81, 0x08,  // P...B...
                /* 1CA8 */  0xCC, 0x39, 0x80, 0x68, 0x36, 0x10, 0x9A, 0x15,  // .9.h6...
                /* 1CB0 */  0x8C, 0x66, 0x55, 0x7D, 0xC4, 0xA0, 0x3F, 0x9B,  // .fU}..?.
                /* 1CB8 */  0x43, 0x63, 0xCF, 0x2B, 0x81, 0x58, 0xC9, 0xCB,  // Cc.+.X..
                /* 1CC0 */  0xE6, 0xD1, 0x82, 0xFD, 0x6C, 0x05, 0x42, 0x8C,  // ....l.B.
                /* 1CC8 */  0x03, 0xD3, 0xEF, 0x8D, 0x8E, 0x01, 0x04, 0x84,  // ........
                /* 1CD0 */  0xEA, 0xF9, 0x5D, 0xE9, 0x08, 0x40, 0x40, 0x74,  // ..]..@@t
                /* 1CD8 */  0x04, 0x20, 0x20, 0x34, 0x23, 0x08, 0xCD, 0x0E,  // .  4#...
                /* 1CE0 */  0x42, 0x75, 0xBD, 0xD7, 0x04, 0x6A, 0x6D, 0xDE,  // Bu...jm.
                /* 1CE8 */  0x41, 0x58, 0x32, 0x10, 0xAA, 0x5A, 0x3C, 0x08,  // AX2..Z<.
                /* 1CF0 */  0x53, 0xFC, 0x60, 0xD3, 0x30, 0x89, 0xFA, 0x43,  // S.`.0..C
                /* 1CF8 */  0x00, 0x7D, 0x9E, 0x09, 0xDC, 0xBA, 0x41, 0xF4,  // .}....A.
                /* 1D00 */  0xFF, 0x3F, 0x80, 0x10, 0x10, 0x0D, 0x94, 0x00,  // .?......
                /* 1D08 */  0x51, 0x2D, 0x5F, 0x3A, 0x0D, 0x94, 0x80, 0x08,  // Q-_:....
                /* 1D10 */  0xCC, 0x99, 0x80, 0x68, 0x4E, 0x10, 0x9A, 0x1B,  // ...hN...
                /* 1D18 */  0x84, 0xAA, 0xD0, 0x3F, 0x10, 0x0A, 0x22, 0x20,  // ...?.." 
                /* 1D20 */  0xA7, 0x00, 0xA1, 0xA9, 0xC0, 0xA8, 0x0E, 0xFF,  // ........
                /* 1D28 */  0x43, 0xA0, 0x20, 0x54, 0x2B, 0x88, 0x8E, 0x17,  // C. T+...
                /* 1D30 */  0x24, 0x01, 0x08, 0x4B, 0x0A, 0x42, 0x53, 0x34,  // $..K.BS4
                /* 1D38 */  0x38, 0x9A, 0xD0, 0x08, 0x80, 0xB4, 0x02, 0x08,  // 8.......
                /* 1D40 */  0xD3, 0x1B, 0x02, 0x84, 0xA5, 0x05, 0xA1, 0x49,  // .......I
                /* 1D48 */  0x4A, 0x00, 0xD3, 0x14, 0x20, 0x2C, 0x31, 0x88,  // J... ,1.
                /* 1D50 */  0x86, 0x44, 0x5A, 0x1C, 0x1F, 0x28, 0x88, 0xC0,  // .DZ..(..
                /* 1D58 */  0x2C, 0x36, 0xC7, 0x91, 0x84, 0x82, 0xD0, 0x30,  // ,6.....0
                /* 1D60 */  0x20, 0x3A, 0xC6, 0x38, 0x19, 0x88, 0x8E, 0x0D,  //  :.8....
                /* 1D68 */  0xA4, 0xC7, 0x41, 0x80, 0x82, 0x50, 0x8D, 0x20,  // ..A..P. 
                /* 1D70 */  0x02, 0xB4, 0x60, 0x10, 0x1D, 0x4E, 0x08, 0x18,  // ..`..N..
                /* 1D78 */  0x4D, 0x0A, 0x42, 0xD3, 0x03, 0x52, 0x29, 0x41,  // M.B..R)A
                /* 1D80 */  0x8E, 0x44, 0x14, 0x44, 0x60, 0x8E, 0x02, 0x42,  // .D.D`..B
                /* 1D88 */  0xE3, 0x81, 0x08, 0xD0, 0x59, 0x01, 0xA9, 0xC0,  // ....Y...
                /* 1D90 */  0x22, 0x07, 0x15, 0x0A, 0x42, 0x03, 0x80, 0x08,  // "...B...
                /* 1D98 */  0xD0, 0x69, 0x40, 0x74, 0x24, 0x22, 0x60, 0x54,  // .i@t$"`T
                /* 1DA0 */  0x4A, 0x12, 0x10, 0x26, 0x0F, 0x44, 0x80, 0xD6,  // J..&.D..
                /* 1DA8 */  0x0A, 0xA2, 0x83, 0x03, 0x69, 0x72, 0x4C, 0xA0,  // ....irL.
                /* 1DB0 */  0x20, 0x34, 0x0F, 0x08, 0x95, 0x5E, 0x05, 0x94,  //  4...^..
                /* 1DB8 */  0x05, 0x01, 0xD1, 0xF1, 0x89, 0x64, 0x19, 0x00,  // .....d..
                /* 1DC0 */  0x05, 0xA1, 0xA2, 0x41, 0x68, 0x08, 0x10, 0x2A,  // ...Ah..*
                /* 1DC8 */  0x30, 0x0C, 0x28, 0x8B, 0x07, 0x42, 0x75, 0x3C,  // 0.(..Bu<
                /* 1DD0 */  0xF8, 0x04, 0x66, 0x4D, 0x20, 0x54, 0x27, 0x88,  // ..fM T'.
                /* 1DD8 */  0xFE, 0xFF, 0x83, 0xB0, 0x68, 0x10, 0x01, 0x3A,  // ....h..:
                /* 1DE0 */  0x1F, 0x18, 0xCD, 0x0A, 0x42, 0xF3, 0x03, 0x52,  // ....B..R
                /* 1DE8 */  0x31, 0x75, 0x8E, 0x58, 0x14, 0x44, 0x60, 0x8E,  // 1u.X.D`.
                /* 1DF0 */  0x01, 0x42, 0xA3, 0x81, 0x08, 0xD0, 0x39, 0x01,  // .B....9.
                /* 1DF8 */  0x69, 0x8A, 0x3C, 0x47, 0x0B, 0x0A, 0x42, 0xB3,  // i.<G..B.
                /* 1E00 */  0x83, 0xD0, 0xA8, 0x7D, 0x8E, 0x4A, 0x14, 0x44,  // ...}.J.D
                /* 1E08 */  0xA0, 0x16, 0x1E, 0x08, 0x8C, 0xC5, 0x01, 0xA1,  // ........
                /* 1E10 */  0x21, 0x41, 0x68, 0x68, 0x10, 0x9A, 0xA6, 0x10,  // !Ahh....
                /* 1E18 */  0x08, 0x4B, 0x06, 0x42, 0xD3, 0x82, 0x68, 0x00,  // .K.B..h.
                /* 1E20 */  0x8E, 0x0E, 0xA2, 0xC3, 0x04, 0x49, 0x04, 0xC6,  // .....I..
                /* 1E28 */  0xD4, 0x83, 0xD0, 0x44, 0x20, 0x02, 0x74, 0x3C,  // ...D .t<
                /* 1E30 */  0x10, 0x1D, 0xB4, 0x48, 0xA3, 0x83, 0x01, 0x05,  // ...H....
                /* 1E38 */  0xA1, 0x91, 0x41, 0x68, 0xC2, 0x57, 0xA8, 0x40,  // ..Ah.W.@
                /* 1E40 */  0x9D, 0x17, 0x44, 0x07, 0x09, 0x52, 0xE9, 0x78,  // ..D..R.x
                /* 1E48 */  0x41, 0x41, 0x68, 0x36, 0x10, 0x9A, 0x15, 0x84,  // AAh6....
                /* 1E50 */  0xE6, 0xE8, 0x74, 0x30, 0xA1, 0xA1, 0x0E, 0x00,  // ..t0....
                /* 1E58 */  0x34, 0xD5, 0x21, 0x83, 0x82, 0x50, 0xAD, 0x20,  // 4.!..P. 
                /* 1E60 */  0x3A, 0x3C, 0x10, 0x20, 0x9A, 0x18, 0x84, 0x2A,  // :<. ...*
                /* 1E68 */  0x68, 0x05, 0x48, 0x41, 0x04, 0x48, 0x80, 0x68,  // h.HA.H.h
                /* 1E70 */  0x62, 0x10, 0xAA, 0x20, 0x16, 0x08, 0x93, 0x0A,  // b.. ....
                /* 1E78 */  0x42, 0xA3, 0x83, 0x08, 0xD4, 0x82, 0x6B, 0x1D,  // B.....k.
                /* 1E80 */  0x10, 0x28, 0x08, 0x0D, 0x05, 0xA2, 0xA3, 0x1C,  // .(......
                /* 1E88 */  0xC9, 0x75, 0x48, 0xA0, 0x20, 0x54, 0x30, 0x08,  // .uH. T0.
                /* 1E90 */  0x4D, 0x07, 0x42, 0xC5, 0xF7, 0x3A, 0x88, 0x51,  // M.B..:.Q
                /* 1E98 */  0x10, 0x01, 0x59, 0xC4, 0x23, 0x5E, 0x20, 0x16,  // ..Y.#^ .
                /* 1EA0 */  0x05, 0x22, 0x30, 0x47, 0x01, 0xA2, 0xF1, 0x40,  // ."0G...@
                /* 1EA8 */  0x68, 0x78, 0x30, 0x2A, 0xB4, 0x1A, 0xC4, 0xFF,  // hx0*....
                /* 1EB0 */  0xFF, 0x01, 0x8B, 0x80, 0xD0, 0x38, 0xD9, 0x0E,  // .....8..
                /* 1EB8 */  0x06, 0x34, 0xDC, 0xF1, 0x83, 0x82, 0xD0, 0x70,  // .4.....p
                /* 1EC0 */  0x20, 0x34, 0x3E, 0x08, 0x95, 0x5A, 0xEE, 0x18,  //  4>..Z..
                /* 1EC8 */  0x41, 0x41, 0x74, 0x10, 0x20, 0x20, 0x54, 0x42,  // AAt.  TB
                /* 1ED0 */  0xBA, 0x01, 0x50, 0x10, 0x0D, 0x80, 0x80, 0xD0,  // ..P.....
                /* 1ED8 */  0x70, 0x60, 0x54, 0x46, 0x3E, 0x10, 0x16, 0x02,  // p`TF>...
                /* 1EE0 */  0x84, 0x8A, 0xED, 0x07, 0xC2, 0xFE, 0xFF         // .......
            })
            Method (GBFE, 3, NotSerialized)
            {
                CreateByteField (Arg0, Arg1, TIDX)
                Arg2 = TIDX /* \_SB_.WMID.GBFE.TIDX */
            }

            Method (PBFE, 3, NotSerialized)
            {
                CreateByteField (Arg0, Arg1, TIDX)
                TIDX = Arg2
            }

            Method (ITOS, 1, NotSerialized)
            {
                Local0 = Buffer (0x05)
                    {
                         0x20, 0x20, 0x20, 0x20, 0x20                     //      
                    }
                Local7 = Buffer (0x11)
                    {
                        "0123456789ABCDEF"
                    }
                Local1 = 0x05
                Local2 = Zero
                Local3 = Zero
                While (Local1)
                {
                    Local1--
                    Local4 = ((Arg0 >> (Local1 << 0x02)) & 0x0F)
                    GBFE (Local7, Local4, RefOf (Local5))
                    PBFE (Local0, Local2, Local5)
                    Local2++
                }

                Return (Local0)
            }

            Name (N023, Zero)
            Name (N024, Zero)
            Name (N025, Zero)
            Name (N026, Buffer (0x0100){})
            Name (N027, Buffer (0x0100){})
            Name (N035, Buffer (0x0100){})
            Name (N030, Buffer (0x0100){})
            Name (AEAX, Zero)
            Name (AEBX, Zero)
            Name (AECX, Zero)
            Name (AEDX, Zero)
            Name (AREF, Zero)
            Name (WBUF, Buffer (0x80){})
            Name (SBUF, Buffer (0x0100){})
            Name (N028, 0x07DF)
            Name (N029, Zero)
            Name (MFLG, 0x00000000)
            Name (VFLG, 0x00000004)
            Name (FVER, 0x00000001)
            Name (N031, Buffer (0x0100)
            {
                /* 0000 */  0x00, 0x1B, 0x36, 0x2D, 0x6C, 0x77, 0x5A, 0x41,  // ..6-lwZA
                /* 0008 */  0xD8, 0xC3, 0xEE, 0xF5, 0xB4, 0xAF, 0x82, 0x99,  // ........
                /* 0010 */  0xD3, 0xC8, 0xE5, 0xFE, 0xBF, 0xA4, 0x89, 0x92,  // ........
                /* 0018 */  0x0B, 0x10, 0x3D, 0x26, 0x67, 0x7C, 0x51, 0x4A,  // ..=&g|QJ
                /* 0020 */  0xC5, 0xDE, 0xF3, 0xE8, 0xA9, 0xB2, 0x9F, 0x84,  // ........
                /* 0028 */  0x1D, 0x06, 0x2B, 0x30, 0x71, 0x6A, 0x47, 0x5C,  // ..+0qjG\
                /* 0030 */  0x16, 0x0D, 0x20, 0x3B, 0x7A, 0x61, 0x4C, 0x57,  // .. ;zaLW
                /* 0038 */  0xCE, 0xD5, 0xF8, 0xE3, 0xA2, 0xB9, 0x94, 0x8F,  // ........
                /* 0040 */  0xE9, 0xF2, 0xDF, 0xC4, 0x85, 0x9E, 0xB3, 0xA8,  // ........
                /* 0048 */  0x31, 0x2A, 0x07, 0x1C, 0x5D, 0x46, 0x6B, 0x70,  // 1*..]Fkp
                /* 0050 */  0x3A, 0x21, 0x0C, 0x17, 0x56, 0x4D, 0x60, 0x7B,  // :!..VM`{
                /* 0058 */  0xE2, 0xF9, 0xD4, 0xCF, 0x8E, 0x95, 0xB8, 0xA3,  // ........
                /* 0060 */  0x2C, 0x37, 0x1A, 0x01, 0x40, 0x5B, 0x76, 0x6D,  // ,7..@[vm
                /* 0068 */  0xF4, 0xEF, 0xC2, 0xD9, 0x98, 0x83, 0xAE, 0xB5,  // ........
                /* 0070 */  0xFF, 0xE4, 0xC9, 0xD2, 0x93, 0x88, 0xA5, 0xBE,  // ........
                /* 0078 */  0x27, 0x3C, 0x11, 0x0A, 0x4B, 0x50, 0x7D, 0x66,  // '<..KP}f
                /* 0080 */  0xB1, 0xAA, 0x87, 0x9C, 0xDD, 0xC6, 0xEB, 0xF0,  // ........
                /* 0088 */  0x69, 0x72, 0x5F, 0x44, 0x05, 0x1E, 0x33, 0x28,  // ir_D..3(
                /* 0090 */  0x62, 0x79, 0x54, 0x4F, 0x0E, 0x15, 0x38, 0x23,  // byTO..8#
                /* 0098 */  0xBA, 0xA1, 0x8C, 0x97, 0xD6, 0xCD, 0xE0, 0xFB,  // ........
                /* 00A0 */  0x74, 0x6F, 0x42, 0x59, 0x18, 0x03, 0x2E, 0x35,  // toBY...5
                /* 00A8 */  0xAC, 0xB7, 0x9A, 0x81, 0xC0, 0xDB, 0xF6, 0xED,  // ........
                /* 00B0 */  0xA7, 0xBC, 0x91, 0x8A, 0xCB, 0xD0, 0xFD, 0xE6,  // ........
                /* 00B8 */  0x7F, 0x64, 0x49, 0x52, 0x13, 0x08, 0x25, 0x3E,  // .dIR..%>
                /* 00C0 */  0x58, 0x43, 0x6E, 0x75, 0x34, 0x2F, 0x02, 0x19,  // XCnu4/..
                /* 00C8 */  0x80, 0x9B, 0xB6, 0xAD, 0xEC, 0xF7, 0xDA, 0xC1,  // ........
                /* 00D0 */  0x8B, 0x90, 0xBD, 0xA6, 0xE7, 0xFC, 0xD1, 0xCA,  // ........
                /* 00D8 */  0x53, 0x48, 0x65, 0x7E, 0x3F, 0x24, 0x09, 0x12,  // SHe~?$..
                /* 00E0 */  0x9D, 0x86, 0xAB, 0xB0, 0xF1, 0xEA, 0xC7, 0xDC,  // ........
                /* 00E8 */  0x45, 0x5E, 0x73, 0x68, 0x29, 0x32, 0x1F, 0x04,  // E^sh)2..
                /* 00F0 */  0x4E, 0x55, 0x78, 0x63, 0x22, 0x39, 0x14, 0x0F,  // NUxc"9..
                /* 00F8 */  0x96, 0x8D, 0xA0, 0xBB, 0xFA, 0xE1, 0xCC, 0xD7   // ........
            })
            Name (N032, Buffer (0x0100){})
            Name (N033, Buffer (0x0100){})
            Name (N034, Buffer (0x20)
            {
                /* 0000 */  0x41, 0x42, 0x44, 0x45, 0x46, 0x47, 0x48, 0x4D,  // ABDEFGHM
                /* 0008 */  0x4E, 0x51, 0x52, 0x54, 0x59, 0x61, 0x64, 0x65,  // NQRTYade
                /* 0010 */  0x66, 0x67, 0x68, 0x6D, 0x6E, 0x71, 0x72, 0x74,  // fghmnqrt
                /* 0018 */  0x79, 0x32, 0x33, 0x34, 0x35, 0x37, 0x38, 0x39   // y2345789
            })
            Name (EPR1, Buffer (0x0100)
            {
                /* 0000 */  0x35, 0x43, 0x44, 0x38, 0x31, 0x32, 0x38, 0x35,  // 5CD81285
                /* 0008 */  0x36, 0x5A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // 6Z......
                /* 0010 */  0x3C, 0x52, 0x82, 0xC7, 0x2E, 0x5F, 0x00, 0x00,  // <R..._..
                /* 0018 */  0x3C, 0x52, 0x82, 0xC7, 0x2E, 0x5E, 0x00, 0x00,  // <R...^..
                /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0030 */  0x00, 0x00, 0x00, 0x33, 0x53, 0x47, 0x38, 0x38,  // ...3SG88
                /* 0038 */  0x55, 0x41, 0x23, 0x41, 0x42, 0x41, 0x00, 0x00,  // UA#ABA..
                /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0050 */  0x48, 0x50, 0x20, 0x45, 0x4E, 0x56, 0x59, 0x00,  // HP ENVY.
                /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0070 */  0x50, 0x48, 0x41, 0x4E, 0x4E, 0x30, 0x32, 0x38,  // PHANN028
                /* 0078 */  0x4A, 0x41, 0x4A, 0x30, 0x33, 0x37, 0x00, 0x00,  // JAJ037..
                /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00,  // ........
                /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0098 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00A0 */  0x35, 0x43, 0x44, 0x38, 0x31, 0x32, 0x38, 0x35,  // 5CD81285
                /* 00A8 */  0x36, 0x5A, 0x5A, 0x35, 0x32, 0x31, 0x44, 0x35,  // 6ZZ521D5
                /* 00B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00C8 */  0x00, 0x00, 0x48, 0x50, 0x20, 0x45, 0x4E, 0x56,  // ..HP ENV
                /* 00D0 */  0x59, 0x20, 0x78, 0x32, 0x20, 0x44, 0x65, 0x74,  // Y x2 Det
                /* 00D8 */  0x61, 0x63, 0x68, 0x61, 0x62, 0x6C, 0x65, 0x20,  // achable 
                /* 00E0 */  0x31, 0x32, 0x2D, 0x65, 0x30, 0x78, 0x78, 0x00,  // 12-e0xx.
                /* 00E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00F8 */  0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0xAA, 0x55   // .......U
            })
            Name (EPR2, Buffer (0x0100)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0020 */  0x00, 0x00, 0x00, 0x31, 0x37, 0x57, 0x57, 0x33,  // ...17WW3
                /* 0028 */  0x43, 0x4D, 0x43, 0x52, 0x30, 0x34, 0x23, 0x53,  // CMCR04#S
                /* 0030 */  0x41, 0x42, 0x41, 0x23, 0x44, 0x41, 0x42, 0x41,  // ABA#DABA
                /* 0038 */  0x37, 0x42, 0x37, 0x4B, 0x37, 0x4E, 0x37, 0x57,  // 7B7K7N7W
                /* 0040 */  0x61, 0x42, 0x61, 0x70, 0x61, 0x71, 0x61, 0x77,  // aBapaqaw
                /* 0048 */  0x62, 0x54, 0x62, 0x57, 0x62, 0x68, 0x62, 0x7A,  // bTbWbhbz
                /* 0050 */  0x64, 0x36, 0x64, 0x55, 0x64, 0x71, 0x66, 0x50,  // d6dUdqfP
                /* 0058 */  0x67, 0x45, 0x67, 0x48, 0x67, 0x4A, 0x68, 0x4A,  // gEgHgJhJ
                /* 0060 */  0x2E, 0x6E, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00,  // .nB.....
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
            Name (EPR3, Buffer (0x0100)
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
                /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0090 */  0x33, 0x35, 0x34, 0x39, 0x34, 0x30, 0x30, 0x39,  // 35494009
                /* 0098 */  0x30, 0x30, 0x31, 0x35, 0x31, 0x36, 0x34, 0x00,  // 0015164.
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
                /* 00F0 */  0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // U.......
                /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
            })
            Name (BCSE, Buffer (0x0100)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x01, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00,  // ........
                /* 0028 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0040 */  0x00, 0x01, 0x02, 0x03, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0048 */  0x01, 0x02, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0090 */  0x57, 0x31, 0x30, 0x52, 0x53, 0x33, 0x1D, 0xFF,  // W10RS3..
                /* 0098 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 00A0 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 00A8 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 00B0 */  0xFF, 0xFF, 0xFF, 0x1D, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 00B8 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 00C0 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 00C8 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 00D0 */  0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00D8 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xAA, 0x55   // .......U
            })
            Method (M005, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        N026 = EPR1 /* \_SB_.WMID.EPR1 */
                    }
                    Case (One)
                    {
                        N027 = EPR2 /* \_SB_.WMID.EPR2 */
                    }
                    Case (0x02)
                    {
                        N035 = EPR3 /* \_SB_.WMID.EPR3 */
                    }
                    Case (0x03)
                    {
                        N030 = BCSE /* \_SB_.WMID.BCSE */
                    }
                    Default
                    {
                    }

                }
            }

            Method (M006, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        If (CondRefOf (\_SB.I2C7.WEPR))
                        {
                            \_SB.I2C7.WEPR (Zero, N026)
                        }
                    }
                    Case (One)
                    {
                        If (CondRefOf (\_SB.I2C7.WEPR))
                        {
                            \_SB.I2C7.WEPR (One, N027)
                        }
                    }
                    Case (0x02)
                    {
                        If (CondRefOf (\_SB.I2C7.WEPR))
                        {
                            \_SB.I2C7.WEPR (0x02, N035)
                        }
                    }
                    Case (0x03)
                    {
                        If (CondRefOf (\_SB.I2C7.WEPR))
                        {
                            \_SB.I2C7.WEPR (0x03, N030)
                        }
                    }
                    Default
                    {
                    }

                }
            }

            Method (M015, 0, NotSerialized)
            {
                If ((N029 != One))
                {
                    M005 (Zero)
                    M005 (One)
                    M005 (0x02)
                    M005 (0x03)
                    N029 = One
                }
            }

            Method (WFDA, 0, NotSerialized)
            {
                If (((AECX == Zero) || (AEBX != Zero)))
                {
                    Local0 = Package (0x02)
                        {
                            Zero, 
                            Zero
                        }
                }
                Else
                {
                    Local1 = AECX /* \_SB_.WMID.AECX */
                    Local0 = Package (0x03)
                        {
                            Zero, 
                            Zero, 
                            Buffer (Local1){}
                        }
                }

                Local0 [Zero] = AEBX /* \_SB_.WMID.AEBX */
                If ((AEBX == Zero))
                {
                    Local0 [One] = AECX /* \_SB_.WMID.AECX */
                    If ((AECX != Zero))
                    {
                        Local1 = WBUF /* \_SB_.WMID.WBUF */
                        Local2 = Zero
                        While ((Local2 < AECX))
                        {
                            DerefOf (Local0 [0x02]) [Local2] = DerefOf (Local1 [
                                Local2])
                            Local2++
                        }
                    }
                }

                Return (Local0)
            }

            Method (SCMP, 2, NotSerialized)
            {
                If ((SizeOf (Arg0) < SizeOf (Arg1)))
                {
                    Return (Zero)
                }

                Local0 = (SizeOf (Arg0) + One)
                Name (BUF0, Buffer (Local0){})
                Name (BUF1, Buffer (Local0){})
                BUF0 = Arg0
                BUF1 = Arg1
                While (Local0)
                {
                    Local0--
                    If ((DerefOf (BUF0 [Local0]) != DerefOf (BUF1 [Local0]
                        )))
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (SRCM, 3, NotSerialized)
            {
                Local0 = Arg2
                Name (BUF0, Buffer (Local0){})
                Name (BUF1, Buffer (Local0){})
                BUF0 = Arg0
                BUF1 = Arg1
                While (Local0)
                {
                    Local0--
                    If ((DerefOf (BUF0 [Local0]) != DerefOf (BUF1 [Local0]
                        )))
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (ISTR, 2, NotSerialized)
            {
                Local0 = Arg1
                Name (BUF0, Buffer (Local0){})
                Local3 = BUF0 /* \_SB_.WMID.ISTR.BUF0 */
                Local2 = Zero
                While (Local0)
                {
                    Local0--
                    Local1 = ((Arg0 >> (Local0 << 0x02)) & 0x0F)
                    Local3 [Local2] = (Local1 + 0x30)
                    Local2++
                }

                Return (Local3)
            }

            Method (M007, 1, NotSerialized)
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

            Method (M009, 1, NotSerialized)
            {
                Local0 = (Arg0 & 0xFF)
                Local1 = Buffer (0x02)
                    {
                         0x00, 0x00                                       // ..
                    }
                Local1 [Zero] = M007 ((Local0 >> 0x04))
                Local1 [One] = M007 ((Local0 & 0x0F))
                Return (Local1)
            }

            Method (M008, 1, NotSerialized)
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

            Method (M010, 2, NotSerialized)
            {
                Local0 = M008 (Arg0)
                Local1 = M008 (Arg1)
                Return (((Local0 << 0x04) + Local1))
            }

            Method (M011, 2, NotSerialized)
            {
                Local0 = (Arg0 & 0xFF)
                Local1 = (Arg1 & 0xFF)
                Local2 = (Local0 ^ Local1)
                Return (DerefOf (N031 [Local2]))
            }

            Method (M012, 1, NotSerialized)
            {
                Local0 = Zero
                Local1 = Zero
                If ((Arg0 == Zero))
                {
                    While ((DerefOf (N032 [Local1]) != Zero))
                    {
                        Local0 = M011 (Local0, DerefOf (N032 [Local1]))
                        Local1++
                    }
                }
                Else
                {
                    While ((DerefOf (N033 [Local1]) != Zero))
                    {
                        Local0 = M011 (Local0, DerefOf (N033 [Local1]))
                        Local1++
                    }
                }

                Return (Local0)
            }

            Method (M013, 0, NotSerialized)
            {
                Local0 = Buffer (0x03)
                    {
                         0x00, 0x00, 0x00                                 // ...
                    }
                If ((DerefOf (N032 [Zero]) != Zero))
                {
                    Local2 = Zero
                    While ((DerefOf (N032 [Local2]) != Zero))
                    {
                        Local2++
                    }

                    Local1 = Zero
                    While ((Local1 < Local2))
                    {
                        N033 [((Local2 - Local1) - One)] = DerefOf (
                            N032 [Local1])
                        Local1++
                    }

                    Local3 = M012 (Zero)
                    Local4 = M012 (One)
                    Local0 [Zero] = DerefOf (N034 [(Local3 % 0x1F)]
                        )
                    Local0 [One] = DerefOf (N034 [(Local4 % 0x1F)]
                        )
                    Local0 [0x02] = Zero
                }

                Return (Local0)
            }

            Method (M014, 0, NotSerialized)
            {
                Local0 = Zero
                While (((DerefOf (SBUF [Local0]) >= 0x20) && (
                    DerefOf (SBUF [Local0]) <= 0x7F)))
                {
                    N032 [Local0] = DerefOf (SBUF [Local0])
                    Local0++
                    If ((Local0 == SizeOf (N032)))
                    {
                        Break
                    }
                }

                If ((Local0 >= 0x05))
                {
                    If ((DerefOf (N032 [(Local0 - 0x03)]) == 0x2E))
                    {
                        Local3 = DerefOf (N032 [(Local0 - 0x02)])
                        Local4 = DerefOf (N032 [(Local0 - One)])
                        N032 [(Local0 - 0x03)] = Zero
                        Local1 = M013 ()
                        If (((DerefOf (Local1 [Zero]) == Local3) && (DerefOf (
                            Local1 [One]) == Local4)))
                        {
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Mutex (MUTS, 0x00)
            Method (WSMI, 5, Serialized)
            {
                Acquire (MUTS, 0xFFFF)
                If (Arg4)
                {
                    Acquire (\_GL, 0xFFFF)
                }

                AEAX = Arg0
                AEBX = Arg1
                AECX = Arg2
                AEDX = Arg3
                AREF = Zero
                Switch (AEAX)
                {
                    Case (One)
                    {
                        M015 ()
                        Switch (AEBX)
                        {
                            Case (0x36)
                            {
                                Local0 = Zero
                                While ((Local0 < 0x1D))
                                {
                                    WBUF [Local0] = DerefOf (N030 [(0x96 + Local0)]
                                        )
                                    Local0++
                                }
                            }
                            Case (0x37)
                            {
                                Local0 = Zero
                                While ((Local0 < 0x1D))
                                {
                                    WBUF [Local0] = DerefOf (N030 [(0xB3 + Local0)]
                                        )
                                    Local0++
                                }
                            }
                            Case (0x38)
                            {
                                Local0 = Zero
                                While ((Local0 < 0x04))
                                {
                                    WBUF [Local0] = DerefOf (N030 [(0xD0 + Local0)]
                                        )
                                    Local0++
                                }
                            }
                            Default
                            {
                            }

                        }
                    }
                    Case (0x02)
                    {
                        M015 ()
                        Switch (AEBX)
                        {
                            Case (0x36)
                            {
                                Local0 = Zero
                                While ((Local0 < 0x1D))
                                {
                                    N030 [(0x96 + Local0)] = DerefOf (WBUF [Local0]
                                        )
                                    Local0++
                                }

                                M006 (0x03)
                            }
                            Case (0x37)
                            {
                                Local0 = Zero
                                While ((Local0 < 0x1D))
                                {
                                    N030 [(0xB3 + Local0)] = DerefOf (WBUF [Local0]
                                        )
                                    Local0++
                                }

                                M006 (0x03)
                            }
                            Case (0x38)
                            {
                                Local0 = Zero
                                While ((Local0 < 0x04))
                                {
                                    N030 [(0xD0 + Local0)] = DerefOf (WBUF [Local0]
                                        )
                                    Local0++
                                }

                                M006 (0x03)
                            }
                            Default
                            {
                            }

                        }
                    }
                    Case (0xEA7B)
                    {
                        Switch (AEBX)
                        {
                            Case (Zero)
                            {
                                M015 ()
                                N023 = AEDX /* \_SB_.WMID.AEDX */
                                N024 = AECX /* \_SB_.WMID.AECX */
                                AEBX = 0x80
                                AECX = Zero
                                AEDX = Zero
                                If ((N024 == One))
                                {
                                    Switch (N023)
                                    {
                                        Case (Package (0x09)
                                            {
                                                Zero, 
                                                0x03, 
                                                0x07, 
                                                0x0D, 
                                                0x17, 
                                                0x18, 
                                                0x20, 
                                                0x21, 
                                                0x22
                                            }

)
                                        {
                                            AEDX = DerefOf (N030 [N023])
                                            AECX = One
                                            AEBX = Zero
                                        }
                                        Case (0x11)
                                        {
                                            Local0 = DerefOf (N030 [N023])
                                            If ((Local0 == 0x55))
                                            {
                                                AEDX = Zero
                                            }
                                            ElseIf ((Local0 == 0xAA))
                                            {
                                                AEDX = One
                                            }
                                            Else
                                            {
                                                AEDX = MFLG /* \_SB_.WMID.MFLG */
                                            }

                                            AECX = One
                                            AEBX = Zero
                                        }
                                        Case (Package (0x02)
                                            {
                                                0x15, 
                                                0x1D
                                            }

)
                                        {
                                            If ((DerefOf (N030 [N023]) == Zero))
                                            {
                                                AEDX = Zero
                                            }
                                            Else
                                            {
                                                AEDX = One
                                            }

                                            AECX = One
                                            AEBX = Zero
                                        }
                                        Case (0x1C)
                                        {
                                            Local0 = DerefOf (N026 [0x8F])
                                            Switch (Local0)
                                            {
                                                Case (Package (0x04)
                                                    {
                                                        0x02, 
                                                        0x03, 
                                                        0x04, 
                                                        0x05
                                                    }

)
                                                {
                                                    AEDX = (Local0 - One)
                                                }
                                                Default
                                                {
                                                    AEDX = Local0
                                                }

                                            }

                                            AECX = One
                                            AEBX = Zero
                                        }
                                        Case (0x1E)
                                        {
                                            AEBX = Zero
                                            AECX = One
                                            AEDX = 0x02
                                        }
                                        Case (0x1F)
                                        {
                                            Local0 = DerefOf (N030 [0x27])
                                            Local1 = DerefOf (N030 [0x1F])
                                            If ((Local0 == Zero))
                                            {
                                                AEDX = Local1
                                            }
                                            ElseIf ((Local0 == One))
                                            {
                                                AEDX = One
                                            }
                                            ElseIf ((Local0 == 0x02))
                                            {
                                                AEDX = Zero
                                            }
                                            ElseIf ((Local0 == 0x03))
                                            {
                                                AEDX = 0x02
                                            }
                                            Else
                                            {
                                                AEDX = Zero
                                            }

                                            AECX = One
                                            AEBX = Zero
                                        }
                                        Case (0x24)
                                        {
                                            AEBX = Zero
                                            AECX = One
                                            AEDX = DerefOf (N026 [0x68])
                                        }
                                        Case (0x25)
                                        {
                                            If (((MFLG == One) || (FVER == Zero)))
                                            {
                                                AEBX = Zero
                                                AECX = One
                                                AEDX = Zero
                                            }
                                        }
                                        Case (0x26)
                                        {
                                            AEBX = Zero
                                            AECX = One
                                            AEDX = Zero
                                        }
                                        Default
                                        {
                                        }

                                    }
                                }
                                ElseIf ((N024 == 0x02))
                                {
                                    Switch (N023)
                                    {
                                        Case (Zero)
                                        {
                                            Local0 = Zero
                                            Local1 = 0x38
                                            Local2 = 0xC8
                                            While (((DerefOf (N027 [(Local1 + Local0)]) >= 
                                                0x20) && (DerefOf (N027 [(Local1 + Local0)]) <= 0x7F)))
                                            {
                                                SBUF [Local0] = DerefOf (N027 [(Local1 + Local0)]
                                                    )
                                                Local0++
                                                If ((Local0 == Local2))
                                                {
                                                    Break
                                                }
                                            }

                                            SBUF [Local0] = Zero
                                            Local0++
                                            AEBX = Zero
                                            AECX = Local0
                                            AEDX = Zero
                                        }
                                        Case (One)
                                        {
                                            Local0 = Zero
                                            Local1 = 0x23
                                            Local2 = 0x15
                                            While (((DerefOf (N027 [(Local1 + Local0)]) >= 
                                                0x20) && (DerefOf (N027 [(Local1 + Local0)]) <= 0x7F)))
                                            {
                                                SBUF [Local0] = DerefOf (N027 [(Local1 + Local0)]
                                                    )
                                                Local0++
                                                If ((Local0 == Local2))
                                                {
                                                    Break
                                                }
                                            }

                                            SBUF [Local0] = Zero
                                            Local0++
                                            AEBX = Zero
                                            AECX = Local0
                                            AEDX = Zero
                                        }
                                        Case (0x03)
                                        {
                                            Local0 = Zero
                                            Local1 = Zero
                                            Local2 = 0x0A
                                            While (((DerefOf (N026 [(Local1 + Local0)]) >= 
                                                0x20) && (DerefOf (N026 [(Local1 + Local0)]) <= 0x7F)))
                                            {
                                                SBUF [Local0] = DerefOf (N026 [(Local1 + Local0)]
                                                    )
                                                Local0++
                                                If ((Local0 == Local2))
                                                {
                                                    Break
                                                }
                                            }

                                            SBUF [Local0] = Zero
                                            Local0++
                                            AEBX = Zero
                                            AECX = Local0
                                            AEDX = Zero
                                        }
                                        Case (0x04)
                                        {
                                            Local0 = Zero
                                            Local1 = 0xCA
                                            Local2 = 0x28
                                            While (((DerefOf (N026 [(Local1 + Local0)]) >= 
                                                0x20) && (DerefOf (N026 [(Local1 + Local0)]) <= 0x7F)))
                                            {
                                                SBUF [Local0] = DerefOf (N026 [(Local1 + Local0)]
                                                    )
                                                Local0++
                                                If ((Local0 == Local2))
                                                {
                                                    Break
                                                }
                                            }

                                            SBUF [Local0] = Zero
                                            Local0++
                                            AEBX = Zero
                                            AECX = Local0
                                            AEDX = Zero
                                        }
                                        Case (0x06)
                                        {
                                            Local0 = Zero
                                            Local1 = 0xA0
                                            Local2 = 0x10
                                            While ((Local0 < Local2))
                                            {
                                                Local5 = (Local0 << One)
                                                Local3 = DerefOf (N026 [(Local1 + Local0)])
                                                Local4 = M009 (Local3)
                                                SBUF [Local5] = DerefOf (Local4 [Zero])
                                                Local5++
                                                SBUF [Local5] = DerefOf (Local4 [One])
                                                Local0++
                                            }

                                            Local5 = (Local0 << One)
                                            SBUF [Local5] = Zero
                                            Local5++
                                            AEBX = Zero
                                            AECX = Local5
                                            AEDX = Zero
                                        }
                                        Case (0x07)
                                        {
                                            Local0 = Zero
                                            Local1 = 0x33
                                            Local2 = 0x0D
                                            While (((DerefOf (N026 [(Local1 + Local0)]) >= 
                                                0x20) && (DerefOf (N026 [(Local1 + Local0)]) <= 0x7F)))
                                            {
                                                SBUF [Local0] = DerefOf (N026 [(Local1 + Local0)]
                                                    )
                                                Local0++
                                                If ((Local0 == Local2))
                                                {
                                                    Break
                                                }
                                            }

                                            SBUF [Local0] = Zero
                                            Local0++
                                            AEBX = Zero
                                            AECX = Local0
                                            AEDX = Zero
                                        }
                                        Case (0x09)
                                        {
                                            Local0 = Zero
                                            Local1 = 0x70
                                            Local2 = 0x13
                                            While (((DerefOf (N026 [(Local1 + Local0)]) >= 
                                                0x20) && (DerefOf (N026 [(Local1 + Local0)]) <= 0x7F)))
                                            {
                                                SBUF [Local0] = DerefOf (N026 [(Local1 + Local0)]
                                                    )
                                                Local0++
                                                If ((Local0 == Local2))
                                                {
                                                    Break
                                                }
                                            }

                                            SBUF [Local0] = Zero
                                            Local0++
                                            AEBX = Zero
                                            AECX = Local0
                                            AEDX = Zero
                                        }
                                        Case (0x0D)
                                        {
                                            Switch (VFLG)
                                            {
                                                Case (One)
                                                {
                                                    SBUF [Zero] = 0x30
                                                    SBUF [One] = 0x38
                                                    SBUF [0x02] = 0x34
                                                    SBUF [0x03] = 0x37
                                                    SBUF [0x04] = 0x34
                                                    SBUF [0x05] = Zero
                                                }
                                                Case (0x02)
                                                {
                                                    SBUF [Zero] = 0x30
                                                    SBUF [One] = 0x38
                                                    SBUF [0x02] = 0x34
                                                    SBUF [0x03] = 0x43
                                                    SBUF [0x04] = 0x36
                                                    SBUF [0x05] = Zero
                                                }
                                                Case (0x03)
                                                {
                                                    SBUF [Zero] = 0x30
                                                    SBUF [One] = 0x38
                                                    SBUF [0x02] = 0x34
                                                    SBUF [0x03] = 0x43
                                                    SBUF [0x04] = 0x37
                                                    SBUF [0x05] = Zero
                                                }
                                                Case (0x04)
                                                {
                                                    SBUF [Zero] = 0x30
                                                    SBUF [One] = 0x38
                                                    SBUF [0x02] = 0x34
                                                    SBUF [0x03] = 0x45
                                                    SBUF [0x04] = 0x31
                                                    SBUF [0x05] = Zero
                                                }
                                                Default
                                                {
                                                    SBUF [Zero] = 0x30
                                                    SBUF [One] = 0x38
                                                    SBUF [0x02] = 0x33
                                                    SBUF [0x03] = 0x36
                                                    SBUF [0x04] = 0x44
                                                    SBUF [0x05] = Zero
                                                }

                                            }

                                            AEBX = Zero
                                            AECX = 0x06
                                            AEDX = Zero
                                        }
                                        Case (0x0E)
                                        {
                                            Local0 = Zero
                                            Local1 = 0x50
                                            Local2 = 0x18
                                            While (((DerefOf (N026 [(Local1 + Local0)]) >= 
                                                0x20) && (DerefOf (N026 [(Local1 + Local0)]) <= 0x7F)))
                                            {
                                                SBUF [Local0] = DerefOf (N026 [(Local1 + Local0)]
                                                    )
                                                Local0++
                                                If ((Local0 == Local2))
                                                {
                                                    Break
                                                }
                                            }

                                            SBUF [Local0] = Zero
                                            Local0++
                                            AEBX = Zero
                                            AECX = Local0
                                            AEDX = Zero
                                        }
                                        Case (0x0F)
                                        {
                                            Local0 = Zero
                                            Local1 = 0x90
                                            Local2 = 0x06
                                            While (((DerefOf (N030 [(Local1 + Local0)]) >= 
                                                0x20) && (DerefOf (N030 [(Local1 + Local0)]) <= 0x7F)))
                                            {
                                                SBUF [Local0] = DerefOf (N030 [(Local1 + Local0)]
                                                    )
                                                Local0++
                                                If ((Local0 == Local2))
                                                {
                                                    Break
                                                }
                                            }

                                            SBUF [Local0] = Zero
                                            Local0++
                                            AEBX = Zero
                                            AECX = Local0
                                            AEDX = Zero
                                        }
                                        Case (0x10)
                                        {
                                            If (((MFLG == One) || (FVER == Zero)))
                                            {
                                                Local5 = DerefOf (N030 [0x2A])
                                                If ((Local5 == One))
                                                {
                                                    SBUF [Zero] = 0x30
                                                    SBUF [One] = 0x30
                                                    SBUF [0x02] = 0x30
                                                    SBUF [0x03] = Zero
                                                }
                                                Else
                                                {
                                                    Local0 = DerefOf (N035 [0xF1])
                                                    Divide (Local0, 0x64, Local2, Local1)
                                                    SBUF [Zero] = (Local1 + 0x30)
                                                    Divide (Local2, 0x0A, Local4, Local3)
                                                    SBUF [One] = (Local3 + 0x30)
                                                    SBUF [0x02] = (Local4 + 0x30)
                                                    SBUF [0x03] = Zero
                                                }

                                                AEBX = Zero
                                                AECX = 0x04
                                                AEDX = Zero
                                            }
                                        }
                                        Default
                                        {
                                        }

                                    }
                                }
                                ElseIf ((N024 == 0x03))
                                {
                                    WBUF [Zero] = (DerefOf (N030 [0x40]) + One
                                        )
                                    WBUF [One] = (DerefOf (N030 [0x41]) + One
                                        )
                                    WBUF [0x02] = (DerefOf (N030 [0x42]) + One
                                        )
                                    WBUF [0x03] = (DerefOf (N030 [0x43]) + One
                                        )
                                }
                                ElseIf ((N024 == 0x08))
                                {
                                    WBUF [Zero] = (DerefOf (N030 [0x48]) + One
                                        )
                                    WBUF [One] = (DerefOf (N030 [0x49]) + One
                                        )
                                    WBUF [0x02] = (DerefOf (N030 [0x4A]) + One
                                        )
                                    WBUF [0x03] = (DerefOf (N030 [0x4B]) + One
                                        )
                                }
                                ElseIf ((N024 == 0x04))
                                {
                                    Local0 = Zero
                                    While ((Local0 < 0x20))
                                    {
                                        If ((DerefOf (N030 [(0x70 + Local0)]) != Zero))
                                        {
                                            Break
                                        }

                                        Local0++
                                    }

                                    If ((Local0 == 0x20))
                                    {
                                        AEDX = Zero
                                    }
                                    Else
                                    {
                                        AEDX = One
                                    }

                                    AEBX = Zero
                                }
                            }
                            Case (One)
                            {
                                N023 = AECX /* \_SB_.WMID.AECX */
                                N024 = (AEDX >> 0x08)
                                N025 = (AEDX & 0xFF)
                                AEBX = 0x8001
                                AECX = Zero
                                AEDX = Zero
                                If ((N024 == One))
                                {
                                    Switch (N023)
                                    {
                                        Case (Package (0x08)
                                            {
                                                Zero, 
                                                0x03, 
                                                0x07, 
                                                0x17, 
                                                0x18, 
                                                0x20, 
                                                0x21, 
                                                0x22
                                            }

)
                                        {
                                            N030 [N023] = N025 /* \_SB_.WMID.N025 */
                                            M006 (0x03)
                                            AEBX = Zero
                                        }
                                        Case (0x0D)
                                        {
                                            If ((MFLG == One))
                                            {
                                                If ((N025 == One))
                                                {
                                                    Local0 = DerefOf (N030 [0x27])
                                                    Local1 = DerefOf (N030 [0x1F])
                                                    If (((Local0 == One) || (Local0 == 0x03)))
                                                    {
                                                        N030 [N023] = N025 /* \_SB_.WMID.N025 */
                                                        M006 (0x03)
                                                        AEBX = Zero
                                                    }
                                                    ElseIf ((Local0 == Zero))
                                                    {
                                                        If ((Local1 == Zero))
                                                        {
                                                            AEBX = 0x8001
                                                        }
                                                        Else
                                                        {
                                                            N030 [N023] = N025 /* \_SB_.WMID.N025 */
                                                            M006 (0x03)
                                                            AEBX = Zero
                                                        }
                                                    }
                                                    Else
                                                    {
                                                        AEBX = 0x8001
                                                    }
                                                }
                                                Else
                                                {
                                                    N030 [N023] = N025 /* \_SB_.WMID.N025 */
                                                    M006 (0x03)
                                                    AEBX = Zero
                                                }
                                            }
                                            Else
                                            {
                                                AEBX = 0x06
                                            }
                                        }
                                        Case (0x11)
                                        {
                                            Local0 = DerefOf (N030 [N023])
                                            AEBX = Zero
                                            If ((Local0 == 0x55))
                                            {
                                                If ((N025 == One))
                                                {
                                                    AEBX = 0x8001
                                                }
                                            }
                                            ElseIf ((Local0 == 0xAA))
                                            {
                                                If ((N025 == Zero))
                                                {
                                                    N030 [N023] = Zero
                                                    M006 (0x03)
                                                }
                                            }
                                            ElseIf ((MFLG == One))
                                            {
                                                If ((N025 == Zero))
                                                {
                                                    N030 [N023] = 0x55
                                                    M006 (0x03)
                                                }
                                            }
                                            ElseIf ((N025 == One))
                                            {
                                                AEBX = 0x8001
                                            }
                                        }
                                        Case (Package (0x02)
                                            {
                                                0x15, 
                                                0x1D
                                            }

)
                                        {
                                            If ((N025 == One))
                                            {
                                                If ((DerefOf (N030 [0x11]) == 0x55))
                                                {
                                                    N030 [N023] = 0x02
                                                }
                                                Else
                                                {
                                                    N030 [N023] = One
                                                }
                                            }
                                            Else
                                            {
                                                N030 [N023] = Zero
                                            }

                                            M006 (0x03)
                                            AEBX = Zero
                                        }
                                        Case (0x1C)
                                        {
                                            If ((MFLG == One))
                                            {
                                                Switch (N025)
                                                {
                                                    Case (Package (0x04)
                                                        {
                                                            One, 
                                                            0x02, 
                                                            0x03, 
                                                            0x04
                                                        }

)
                                                    {
                                                        Local0 = (N025 + One)
                                                    }
                                                    Default
                                                    {
                                                        Local0 = N025 /* \_SB_.WMID.N025 */
                                                    }

                                                }

                                                N026 [0x8F] = Local0
                                                M006 (Zero)
                                                AEBX = Zero
                                            }
                                            Else
                                            {
                                                AEBX = 0x06
                                            }
                                        }
                                        Case (0x1E)
                                        {
                                            AEBX = Zero
                                        }
                                        Case (0x1F)
                                        {
                                            If ((MFLG == One))
                                            {
                                                Local0 = DerefOf (N030 [0x27])
                                                Local1 = DerefOf (N030 [0x1F])
                                                Local2 = DerefOf (N030 [0x0D])
                                                If ((Local1 != N025))
                                                {
                                                    Switch (N025)
                                                    {
                                                        Case (Zero)
                                                        {
                                                            If ((Local2 == One))
                                                            {
                                                                AEBX = 0x8001
                                                            }
                                                            Else
                                                            {
                                                                N030 [0x27] = 0x02
                                                                M006 (0x03)
                                                                AEBX = Zero
                                                            }
                                                        }
                                                        Case (One)
                                                        {
                                                            N030 [0x27] = One
                                                            M006 (0x03)
                                                            AEBX = Zero
                                                        }
                                                        Case (0x02)
                                                        {
                                                            If ((FVER == Zero))
                                                            {
                                                                N030 [0x27] = 0x03
                                                                M006 (0x03)
                                                                AEBX = Zero
                                                            }
                                                            Else
                                                            {
                                                                AEBX = 0x06
                                                            }
                                                        }
                                                        Default
                                                        {
                                                            AEBX = 0x8001
                                                        }

                                                    }
                                                }
                                                ElseIf (((Local1 == Zero) && (Local2 == One)))
                                                {
                                                    AEBX = 0x8001
                                                }
                                                Else
                                                {
                                                    N030 [0x27] = Zero
                                                    M006 (0x03)
                                                    AEBX = Zero
                                                }
                                            }
                                            Else
                                            {
                                                AEBX = 0x06
                                            }
                                        }
                                        Case (0x24)
                                        {
                                            N026 [0x68] = N025 /* \_SB_.WMID.N025 */
                                            M006 (Zero)
                                            AEBX = Zero
                                        }
                                        Case (0x25)
                                        {
                                            If (((MFLG == One) || (FVER == Zero)))
                                            {
                                                If ((N025 == One))
                                                {
                                                    N030 [0x2A] = One
                                                    M006 (0x03)
                                                }

                                                AEBX = Zero
                                            }
                                        }
                                        Case (0x26)
                                        {
                                            If ((N025 == One))
                                            {
                                                If ((MFLG == One))
                                                {
                                                    N030 [0xD4] = Zero
                                                    N030 [0xD5] = Zero
                                                    N030 [0xD6] = Zero
                                                    N030 [0xD7] = Zero
                                                    M006 (0x03)
                                                    AEBX = Zero
                                                }
                                                Else
                                                {
                                                    AEBX = 0x06
                                                }
                                            }
                                            Else
                                            {
                                                AEBX = Zero
                                            }
                                        }
                                        Default
                                        {
                                        }

                                    }
                                }
                                ElseIf ((N024 == 0x02))
                                {
                                    Switch (N023)
                                    {
                                        Case (Zero)
                                        {
                                            If ((MFLG == One))
                                            {
                                                Local0 = Zero
                                                Local1 = 0x38
                                                Local2 = 0xC8
                                                If ((M014 () == One))
                                                {
                                                    While (((DerefOf (SBUF [Local0]) >= 0x20) && (
                                                        DerefOf (SBUF [Local0]) <= 0x7F)))
                                                    {
                                                        N027 [(Local1 + Local0)] = DerefOf (SBUF [Local0]
                                                            )
                                                        Local0++
                                                        If ((Local0 == Local2))
                                                        {
                                                            Break
                                                        }
                                                    }

                                                    While ((Local0 != Local2))
                                                    {
                                                        N027 [(Local1 + Local0)] = Zero
                                                        Local0++
                                                    }

                                                    M006 (One)
                                                    AEBX = Zero
                                                }
                                                Else
                                                {
                                                    AEBX = 0x06
                                                }
                                            }
                                            Else
                                            {
                                                AEBX = 0x06
                                            }
                                        }
                                        Case (One)
                                        {
                                            If ((MFLG == One))
                                            {
                                                Local0 = Zero
                                                Local1 = 0x23
                                                Local2 = 0x15
                                                While (((DerefOf (SBUF [Local0]) >= 0x20) && (
                                                    DerefOf (SBUF [Local0]) <= 0x7F)))
                                                {
                                                    N027 [(Local1 + Local0)] = DerefOf (SBUF [Local0]
                                                        )
                                                    Local0++
                                                    If ((Local0 == Local2))
                                                    {
                                                        Break
                                                    }
                                                }

                                                While ((Local0 != Local2))
                                                {
                                                    N027 [(Local1 + Local0)] = Zero
                                                    Local0++
                                                }

                                                M006 (One)
                                                AEBX = Zero
                                            }
                                            Else
                                            {
                                                AEBX = 0x06
                                            }
                                        }
                                        Case (0x03)
                                        {
                                            If ((MFLG == One))
                                            {
                                                Local0 = Zero
                                                Local1 = Zero
                                                Local2 = 0x0A
                                                While (((DerefOf (SBUF [Local0]) >= 0x20) && (
                                                    DerefOf (SBUF [Local0]) <= 0x7F)))
                                                {
                                                    N026 [(Local1 + Local0)] = DerefOf (SBUF [Local0]
                                                        )
                                                    Local0++
                                                    If ((Local0 == Local2))
                                                    {
                                                        Break
                                                    }
                                                }

                                                While ((Local0 != Local2))
                                                {
                                                    N026 [(Local1 + Local0)] = Zero
                                                    Local0++
                                                }

                                                M006 (Zero)
                                                AEBX = Zero
                                            }
                                            Else
                                            {
                                                AEBX = 0x06
                                            }
                                        }
                                        Case (0x04)
                                        {
                                            If ((MFLG == One))
                                            {
                                                Local0 = Zero
                                                Local1 = 0xCA
                                                Local2 = 0x28
                                                While (((DerefOf (SBUF [Local0]) >= 0x20) && (
                                                    DerefOf (SBUF [Local0]) <= 0x7F)))
                                                {
                                                    N026 [(Local1 + Local0)] = DerefOf (SBUF [Local0]
                                                        )
                                                    Local0++
                                                    If ((Local0 == Local2))
                                                    {
                                                        Break
                                                    }
                                                }

                                                While ((Local0 != Local2))
                                                {
                                                    N026 [(Local1 + Local0)] = Zero
                                                    Local0++
                                                }

                                                M006 (Zero)
                                                AEBX = Zero
                                            }
                                            Else
                                            {
                                                AEBX = 0x06
                                            }
                                        }
                                        Case (0x06)
                                        {
                                            If ((MFLG == One))
                                            {
                                                Local0 = Zero
                                                Local1 = 0xA0
                                                Local2 = 0x10
                                                While ((Local0 < Local2))
                                                {
                                                    Local5 = (Local0 << One)
                                                    Local3 = DerefOf (SBUF [Local5])
                                                    Local5++
                                                    Local4 = DerefOf (SBUF [Local5])
                                                    N026 [(Local1 + Local0)] = M010 (Local3, Local4)
                                                    Local0++
                                                }

                                                M006 (Zero)
                                                AEBX = Zero
                                            }
                                            Else
                                            {
                                                AEBX = 0x06
                                            }
                                        }
                                        Case (0x07)
                                        {
                                            If ((MFLG == One))
                                            {
                                                Local0 = Zero
                                                Local1 = 0x33
                                                Local2 = 0x0D
                                                While (((DerefOf (SBUF [Local0]) >= 0x20) && (
                                                    DerefOf (SBUF [Local0]) <= 0x7F)))
                                                {
                                                    N026 [(Local1 + Local0)] = DerefOf (SBUF [Local0]
                                                        )
                                                    Local0++
                                                    If ((Local0 == Local2))
                                                    {
                                                        Break
                                                    }
                                                }

                                                While ((Local0 != Local2))
                                                {
                                                    N026 [(Local1 + Local0)] = Zero
                                                    Local0++
                                                }

                                                M006 (Zero)
                                                AEBX = Zero
                                            }
                                            Else
                                            {
                                                AEBX = 0x06
                                            }
                                        }
                                        Case (0x09)
                                        {
                                            If ((MFLG == One))
                                            {
                                                Local0 = Zero
                                                Local1 = 0x70
                                                Local2 = 0x13
                                                While (((DerefOf (SBUF [Local0]) >= 0x20) && (
                                                    DerefOf (SBUF [Local0]) <= 0x7F)))
                                                {
                                                    N026 [(Local1 + Local0)] = DerefOf (SBUF [Local0]
                                                        )
                                                    Local0++
                                                    If ((Local0 == Local2))
                                                    {
                                                        Break
                                                    }
                                                }

                                                While ((Local0 != Local2))
                                                {
                                                    N026 [(Local1 + Local0)] = Zero
                                                    Local0++
                                                }

                                                M006 (Zero)
                                                AEBX = Zero
                                            }
                                            Else
                                            {
                                                AEBX = 0x06
                                            }
                                        }
                                        Case (0x0D)
                                        {
                                            AEBX = Zero
                                        }
                                        Case (0x0E)
                                        {
                                            If ((MFLG == One))
                                            {
                                                Local0 = Zero
                                                Local1 = 0x50
                                                Local2 = 0x18
                                                While (((DerefOf (SBUF [Local0]) >= 0x20) && (
                                                    DerefOf (SBUF [Local0]) <= 0x7F)))
                                                {
                                                    N026 [(Local1 + Local0)] = DerefOf (SBUF [Local0]
                                                        )
                                                    Local0++
                                                    If ((Local0 == Local2))
                                                    {
                                                        Break
                                                    }
                                                }

                                                While ((Local0 != Local2))
                                                {
                                                    N026 [(Local1 + Local0)] = Zero
                                                    Local0++
                                                }

                                                M006 (Zero)
                                                AEBX = Zero
                                            }
                                            Else
                                            {
                                                AEBX = 0x06
                                            }
                                        }
                                        Case (0x0F)
                                        {
                                            If ((MFLG == One))
                                            {
                                                Local0 = Zero
                                                Local1 = 0x90
                                                Local2 = 0x06
                                                While (((DerefOf (SBUF [Local0]) >= 0x20) && (
                                                    DerefOf (SBUF [Local0]) <= 0x7F)))
                                                {
                                                    N030 [(Local1 + Local0)] = DerefOf (SBUF [Local0]
                                                        )
                                                    Local0++
                                                    If ((Local0 == Local2))
                                                    {
                                                        Break
                                                    }
                                                }

                                                While ((Local0 != Local2))
                                                {
                                                    N030 [(Local1 + Local0)] = Zero
                                                    Local0++
                                                }

                                                M006 (0x03)
                                                AEBX = Zero
                                            }
                                            Else
                                            {
                                                AEBX = 0x06
                                            }
                                        }
                                        Case (0x10)
                                        {
                                            If (((MFLG == One) || (FVER == Zero)))
                                            {
                                                AEBX = Zero
                                            }
                                        }
                                        Default
                                        {
                                        }

                                    }
                                }
                                ElseIf ((N024 == 0x03))
                                {
                                    N030 [0x40] = (DerefOf (WBUF [Zero]) - One
                                        )
                                    N030 [0x41] = (DerefOf (WBUF [One]) - One
                                        )
                                    N030 [0x42] = (DerefOf (WBUF [0x02]) - One
                                        )
                                    N030 [0x43] = (DerefOf (WBUF [0x03]) - One
                                        )
                                    M006 (0x03)
                                    AEBX = Zero
                                }
                                ElseIf ((N024 == 0x08))
                                {
                                    N030 [0x48] = (DerefOf (WBUF [Zero]) - One
                                        )
                                    N030 [0x49] = (DerefOf (WBUF [One]) - One
                                        )
                                    N030 [0x4A] = (DerefOf (WBUF [0x02]) - One
                                        )
                                    N030 [0x4B] = (DerefOf (WBUF [0x03]) - One
                                        )
                                    M006 (0x03)
                                    AEBX = Zero
                                }
                                ElseIf ((N024 == 0x04))
                                {
                                    AEBX = 0x06
                                }
                            }
                            Default
                            {
                            }

                        }
                    }
                    Case (0xEA7C)
                    {
                        N030 [0x10] = One
                        M006 (0x03)
                        AEBX = Zero
                    }
                    Default
                    {
                    }

                }

                Local0 = AREF /* \_SB_.WMID.AREF */
                If (Arg4)
                {
                    Release (\_GL)
                }

                Release (MUTS)
                Return (Local0)
            }

            Name (WCDS, Package (0x49)
            {
                0x04, 
                0x04, 
                0x04, 
                Zero, 
                0x04, 
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
                0x08, 
                Zero, 
                Zero, 
                0x04, 
                0x04, 
                0x04, 
                Zero, 
                0x04, 
                0x80, 
                0x04, 
                0x04, 
                0x04, 
                Zero, 
                0x04, 
                0x04, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                0x04, 
                0x80, 
                0x04, 
                0x04, 
                0x04, 
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
                0x80, 
                0x80, 
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
                0x04
            })
            Name (ZOBF, Buffer (0x0128){})
            Name (GMBF, Buffer (0x1000){})
            Method (HWMC, 2, NotSerialized)
            {
                CreateDWordField (Arg1, Zero, SGIN)
                CreateDWordField (Arg1, 0x04, COMD)
                CreateDWordField (Arg1, 0x08, CMDT)
                CreateDWordField (Arg1, 0x0C, DSZI)
                CreateByteField (Arg1, 0x10, D008)
                CreateByteField (Arg1, 0x11, D009)
                CreateByteField (Arg1, 0x12, D010)
                CreateDWordField (Arg1, 0x10, D032)
                CreateField (Arg1, 0x80, 0x0400, D128)
                If ((Arg0 == One))
                {
                    Local0 = Zero
                }

                If ((Arg0 == 0x02))
                {
                    Local0 = 0x04
                }

                If ((Arg0 == 0x03))
                {
                    Local0 = 0x80
                }

                If ((Arg0 == 0x04))
                {
                    Local0 = 0x0400
                }

                If ((Arg0 == 0x05))
                {
                    Local0 = 0x1000
                }

                Local1 = Buffer ((0x08 + Local0)){}
                CreateDWordField (Local1, Zero, SIOU)
                CreateDWordField (Local1, 0x04, RETC)
                Local5 = DSZI /* \_SB_.WMID.HWMC.DSZI */
                CreateField (Arg1, 0x80, (Local5 * 0x08), DAIN)
                If ((Local5 > 0x80))
                {
                    GMBF = DAIN /* \_SB_.WMID.HWMC.DAIN */
                }
                Else
                {
                    WBUF = DAIN /* \_SB_.WMID.HWMC.DAIN */
                }

                SIOU = 0x4C494146
                RETC = 0x02
                If ((SGIN == 0x55434553))
                {
                    RETC = 0x03
                    If ((COMD == One))
                    {
                        RETC = 0x04
                        If ((CMDT == One))
                        {
                            Local2 = GDST ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x04))
                        {
                            Local2 = GDKS ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x07))
                        {
                            If (DSZI)
                            {
                                Local3 = DerefOf (Arg1 [0x10])
                                Local2 = GBIF (Local3)
                                RETC = Zero
                            }
                            Else
                            {
                                RETC = 0x05
                            }
                        }

                        If ((CMDT == 0x08))
                        {
                            Local2 = GBBT ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x09))
                        {
                            Local2 = GHKS ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x0A))
                        {
                            Local2 = GHKF ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x0C))
                        {
                            Local2 = GBBV ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x0D))
                        {
                            Local2 = GFRC ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x0F))
                        {
                            Local2 = GSAS ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x10))
                        {
                            Local2 = GWSD ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x1B))
                        {
                            If ((N028 >= 0x07DC))
                            {
                                RETC = 0x04
                            }
                            Else
                            {
                                Local2 = GWDI ()
                                RETC = Zero
                            }
                        }

                        If ((CMDT == 0x1D))
                        {
                            Local2 = GSDC ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x1E))
                        {
                            Local2 = GBUS ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x29))
                        {
                            Local2 = GFCS ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x2B))
                        {
                            Local2 = GBCO ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x2A))
                        {
                            Local2 = GPES ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x28))
                        {
                            If ((DSZI == 0x04))
                            {
                                If ((((((D032 >= Zero) && (D032 <= 
                                    0x06)) || ((D032 >= 0x10) && (D032 <= 0x15))) || ((
                                    D032 >= 0x20) && (D032 <= 0x25))) || (D032 == 0xAA)))
                                {
                                    Local2 = GTDC (D008)
                                    RETC = Zero
                                }
                                Else
                                {
                                    RETC = 0x06
                                }
                            }
                            Else
                            {
                                RETC = 0x05
                            }
                        }

                        If ((CMDT == 0x2C))
                        {
                            Local2 = GTCS ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x31))
                        {
                            Local2 = GPSS ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x35))
                        {
                            Local2 = GJGD ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x36))
                        {
                            Local2 = GPST ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x37))
                        {
                            Local2 = GBCT ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x38))
                        {
                            Local2 = GBST ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x40))
                        {
                            Local2 = GSDM ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x44))
                        {
                            Local2 = GBMF ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x49))
                        {
                            Local2 = GLED ()
                            RETC = Zero
                        }
                    }

                    If ((COMD == 0x02))
                    {
                        RETC = 0x04
                        If (((CMDT > Zero) && (CMDT <= 0x49)))
                        {
                            If ((DSZI < DerefOf (WCDS [(CMDT - One)])))
                            {
                                RETC = 0x05
                            }
                            Else
                            {
                                CreateDWordField (Arg1, 0x10, DDWD)
                                If ((CMDT == One))
                                {
                                    Local2 = SDST (DDWD)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x09))
                                {
                                    Local2 = SHKS (DDWD)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x0A))
                                {
                                    Local2 = SHKF (DDWD)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x10))
                                {
                                    If ((DSZI != DerefOf (WCDS [(CMDT - One)])))
                                    {
                                        RETC = 0x05
                                    }
                                    Else
                                    {
                                        CreateField (Arg1, 0x80, 0x40, DB08)
                                        Local2 = SWSD (DB08)
                                        RETC = Zero
                                    }
                                }

                                If ((CMDT == 0x1B))
                                {
                                    If ((N028 >= 0x07DC))
                                    {
                                        RETC = 0x04
                                    }
                                    Else
                                    {
                                        CreateByteField (Arg1, 0x10, SWD0)
                                        CreateByteField (Arg1, 0x11, SWD1)
                                        CreateByteField (Arg1, 0x12, SWD2)
                                        CreateByteField (Arg1, 0x13, SWD3)
                                        Local2 = SWDS (SWD0, SWD1, SWD2, SWD3)
                                        RETC = Zero
                                    }
                                }

                                If ((CMDT == 0x1D))
                                {
                                    If ((DSZI != DerefOf (WCDS [(CMDT - One)])))
                                    {
                                        RETC = 0x05
                                    }
                                    Else
                                    {
                                        CreateByteField (Arg1, 0x10, SDC0)
                                        CreateByteField (Arg1, 0x11, SDC1)
                                        CreateByteField (Arg1, 0x12, SDC2)
                                        CreateByteField (Arg1, 0x13, SDC3)
                                        Local2 = SSDC (SDC0, SDC1, SDC2, SDC3)
                                        RETC = Zero
                                    }
                                }

                                If ((CMDT == 0x1E))
                                {
                                    Local2 = SBUS (DDWD)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x29))
                                {
                                    Local2 = SFCS (DDWD)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x2B))
                                {
                                    If ((DSZI != DerefOf (WCDS [(CMDT - One)])))
                                    {
                                        RETC = 0x05
                                    }
                                    Else
                                    {
                                        CreateByteField (Arg1, 0x10, BCO0)
                                        CreateByteField (Arg1, 0x11, BCO1)
                                        CreateByteField (Arg1, 0x12, BCO2)
                                        CreateByteField (Arg1, 0x13, BCO3)
                                        Local2 = SBCO (BCO0, BCO1, BCO2, BCO3)
                                        RETC = Zero
                                    }
                                }

                                If ((CMDT == 0x2A))
                                {
                                    Local2 = SPES (DDWD)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x28))
                                {
                                    If ((DSZI == 0x80))
                                    {
                                        If (((((D008 >= 0x10) && (D008 <= 0x15)) || 
                                            ((D008 >= 0x20) && (D008 <= 0x24))) || (D008 == 0xAA)))
                                        {
                                            If ((D008 != 0xAA))
                                            {
                                                If ((D009 != One))
                                                {
                                                    RETC = 0x06
                                                }
                                                Else
                                                {
                                                    Local2 = STDC (D008, D009, D010)
                                                    RETC = Zero
                                                }
                                            }
                                            Else
                                            {
                                                Local2 = STDC (D008, D009, D010)
                                                RETC = Zero
                                            }
                                        }
                                        Else
                                        {
                                            RETC = 0x06
                                        }
                                    }
                                    Else
                                    {
                                        RETC = 0x05
                                    }
                                }

                                If ((CMDT == 0x2C))
                                {
                                    If ((DSZI != DerefOf (WCDS [(CMDT - One)])))
                                    {
                                        RETC = 0x05
                                    }
                                    Else
                                    {
                                        CreateByteField (Arg1, 0x10, STC0)
                                        CreateByteField (Arg1, 0x11, STC1)
                                        CreateByteField (Arg1, 0x12, STC2)
                                        CreateByteField (Arg1, 0x13, STC3)
                                        Local2 = STCS (STC0, STC1, STC2, STC3)
                                        RETC = Zero
                                    }
                                }

                                If ((CMDT == 0x31))
                                {
                                    If ((DSZI != DerefOf (WCDS [(CMDT - One)])))
                                    {
                                        RETC = 0x05
                                    }
                                    Else
                                    {
                                        Local2 = SPSS (D008, D009)
                                        RETC = Zero
                                    }
                                }

                                If ((CMDT == 0x35))
                                {
                                    CreateByteField (Arg1, 0x10, JGD0)
                                    CreateByteField (Arg1, 0x11, JGD1)
                                    CreateByteField (Arg1, 0x12, JGD2)
                                    CreateByteField (Arg1, 0x13, JGD3)
                                    Local2 = SJGD (JGD0, JGD1, JGD2, JGD3)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x36))
                                {
                                    Local2 = SPST (D128)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x37))
                                {
                                    Local2 = SBCT (D128)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x38))
                                {
                                    CreateByteField (Arg1, 0x10, BST0)
                                    CreateByteField (Arg1, 0x11, BST1)
                                    CreateByteField (Arg1, 0x12, BST2)
                                    CreateByteField (Arg1, 0x13, BST3)
                                    Local2 = SBST (BST0, BST1, BST2, BST3)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x49))
                                {
                                    Local2 = SLED (DDWD)
                                    RETC = Zero
                                }
                            }
                        }
                    }

                    If ((COMD == 0x00020002))
                    {
                        If ((CMDT == One))
                        {
                            Local2 = CSTA ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x02))
                        {
                            Local2 = CACT ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x03))
                        {
                            Local2 = CDAC ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x06))
                        {
                            Local2 = CAIP ()
                            RETC = Zero
                        }
                    }

                    If ((COMD == 0x0002000B))
                    {
                        If ((CMDT == One))
                        {
                            Local2 = ACPD ()
                            RETC = Zero
                        }
                    }

                    If ((COMD == 0x00020000))
                    {
                        If ((CMDT == 0x03))
                        {
                            RETC = 0x04
                        }

                        If ((CMDT == 0x1E))
                        {
                            Local2 = GASC ()
                            RETC = Zero
                        }
                    }
                }

                If ((RETC == Zero))
                {
                    RETC = DerefOf (Local2 [Zero])
                    If ((RETC == Zero))
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

                            SIOU = 0x53534150
                        }
                        Else
                        {
                            RETC = 0x05
                        }
                    }
                }

                WBUF = ZOBF /* \_SB_.WMID.ZOBF */
                Return (Local1)
            }

            Name (FLAG, 0x05)
            Name (N000, Zero)
            Name (N017, Zero)
            Name (N001, Buffer (0x80){})
            Name (N002, Buffer (0x0200){})
            Name (N003, Buffer (0x03){})
            Name (N004, Buffer (0x64)
            {
                /* 0000 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 0018 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 0020 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 0028 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 0030 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 0038 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 0040 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 0048 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 0050 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 0058 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                /* 0060 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
            })
            Name (TEMP, Buffer (0x32){})
            Name (ST01, Buffer (0x64){})
            Name (ST02, Buffer (0x0100){})
            Name (ST14, Buffer (0x32){})
            Name (BF01, Buffer (0x32){})
            Name (N005, Buffer (0x0190){})
            Name (N006, "Information Not Available")
            Name (YESY, "Yes")
            Name (NONO, "No")
            Name (N007, "                                                                                                                                                            ")
            Name (N008, "                                                                                                                                                                                           ")
            Name (N009, Buffer (0x1000){})
            Name (N00A, Package (0x27)
            {
                Package (0x1C)
                {
                    "Language", 
                    " *English, Francais, Espanol, Traditional Chinese, Simplified Chinese", 
                    "\\System Configuration", 
                    Zero, 
                    One, 
                    Zero, 
                    0x78, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "English", 
                    0x05, 
                    "English", 
                    "Francais", 
                    "Espanol", 
                    "Traditional Chinese", 
                    "Simplified Chinese"
                }, 

                Package (0x1C)
                {
                    " ", 
                    " ", 
                    " ", 
                    One, 
                    Zero, 
                    One, 
                    Zero, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    " ", 
                    Zero
                }, 

                Package (0x1C)
                {
                    "Fan Always On", 
                    "", 
                    "\\System Configuration", 
                    Zero, 
                    One, 
                    Zero, 
                    0x8C, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "Enable", 
                    0x02, 
                    "Disable", 
                    "Enable"
                }, 

                Package (0x1C)
                {
                    "Action Keys Mode", 
                    "", 
                    "\\System Configuration", 
                    Zero, 
                    One, 
                    Zero, 
                    0x96, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "Enable", 
                    0x02, 
                    "Disable", 
                    "Enable"
                }, 

                Package (0x1C)
                {
                    " ", 
                    " ", 
                    " ", 
                    One, 
                    Zero, 
                    One, 
                    Zero, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    " ", 
                    Zero
                }, 

                Package (0x1C)
                {
                    " ", 
                    " ", 
                    " ", 
                    One, 
                    Zero, 
                    One, 
                    Zero, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    " ", 
                    Zero
                }, 

                Package (0x1C)
                {
                    " ", 
                    " ", 
                    " ", 
                    One, 
                    Zero, 
                    One, 
                    Zero, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    " ", 
                    Zero
                }, 

                Package (0x1C)
                {
                    "POST Hotkey Delay (sec)", 
                    "", 
                    "\\System Configuration\\Boot Options", 
                    Zero, 
                    One, 
                    Zero, 
                    0xC8, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "0", 
                    0x05, 
                    "0", 
                    "5", 
                    "10", 
                    "15", 
                    "20"
                }, 

                Package (0x1C)
                {
                    " ", 
                    " ", 
                    " ", 
                    One, 
                    Zero, 
                    One, 
                    Zero, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    " ", 
                    Zero
                }, 

                Package (0x1C)
                {
                    "Floppy Boot", 
                    "", 
                    "\\System Configuration\\Boot Options", 
                    Zero, 
                    One, 
                    Zero, 
                    0xE6, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "Disable", 
                    0x02, 
                    "Disable", 
                    "Enable"
                }, 

                Package (0x1C)
                {
                    "Network Boot", 
                    "", 
                    "\\System Configuration\\Boot Options", 
                    Zero, 
                    One, 
                    Zero, 
                    0xF0, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "Disable", 
                    0x02, 
                    "Disable", 
                    "Enable"
                }, 

                Package (0x1C)
                {
                    "Network Boot Protocol", 
                    "", 
                    "\\System Configuration\\Boot Options", 
                    Zero, 
                    One, 
                    Zero, 
                    0xF5, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "IPv4 (Legacy)", 
                    0x04, 
                    "IPv4 (Legacy)", 
                    "IPv4 (UEFI)", 
                    "IPv6 (UEFI)", 
                    "IPv4+IPv6 (UEFI)"
                }, 

                Package (0x1C)
                {
                    " ", 
                    " ", 
                    " ", 
                    One, 
                    Zero, 
                    One, 
                    Zero, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    " ", 
                    Zero
                }, 

                Package (0x1C)
                {
                    "Secure Boot", 
                    "", 
                    "\\System Configuration\\Boot Options", 
                    Zero, 
                    One, 
                    Zero, 
                    0x0104, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "Disable", 
                    0x02, 
                    "Disable", 
                    "Enable"
                }, 

                Package (0x1C)
                {
                    "Clear All Secure Boot Keys", 
                    "", 
                    "\\System Configuration\\Boot Options", 
                    One, 
                    Zero, 
                    One, 
                    0x010A, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "No", 
                    0x02, 
                    "No", 
                    "Yes"
                }, 

                Package (0x1C)
                {
                    "Load HP Factory Default Keys", 
                    "", 
                    "\\System Configuration\\Boot Options", 
                    One, 
                    Zero, 
                    One, 
                    0x010C, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "No", 
                    0x02, 
                    "No", 
                    "Yes"
                }, 

                Package (0x1C)
                {
                    " ", 
                    " ", 
                    " ", 
                    One, 
                    Zero, 
                    One, 
                    Zero, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    " ", 
                    Zero
                }, 

                Package (0x1C)
                {
                    "Manufacturing Programming Mode", 
                    "", 
                    "\\dir Place holder for Path", 
                    Zero, 
                    One, 
                    Zero, 
                    0x0377, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "Unlock", 
                    0x02, 
                    "Lock", 
                    "Unlock"
                }, 

                Package (0x1C)
                {
                    " ", 
                    " ", 
                    " ", 
                    One, 
                    Zero, 
                    One, 
                    Zero, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    " ", 
                    Zero
                }, 

                Package (0x1C)
                {
                    "TPM Device", 
                    "", 
                    "\\Security", 
                    Zero, 
                    One, 
                    Zero, 
                    0x0258, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "Hidden", 
                    0x02, 
                    "Hidden", 
                    "Available"
                }, 

                Package (0x1C)
                {
                    " ", 
                    " ", 
                    " ", 
                    One, 
                    Zero, 
                    One, 
                    Zero, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    " ", 
                    Zero
                }, 

                Package (0x1C)
                {
                    "TPM Reset to Factory Defaults", 
                    "", 
                    "\\dir Place holder for Path", 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x0384, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "No", 
                    0x02, 
                    "No", 
                    "Yes"
                }, 

                Package (0x1C)
                {
                    "TPM State", 
                    "", 
                    "\\Security", 
                    Zero, 
                    One, 
                    Zero, 
                    0x025D, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "Disable", 
                    0x02, 
                    "Disable", 
                    "Enable"
                }, 

                Package (0x1C)
                {
                    "Clear TPM", 
                    "", 
                    "\\Security", 
                    Zero, 
                    One, 
                    Zero, 
                    0x0262, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "No", 
                    0x02, 
                    "No", 
                    "Yes"
                }, 

                Package (0x1C)
                {
                    "TPM Activation Policy", 
                    "", 
                    "\\dir Place holder for Path", 
                    Zero, 
                    One, 
                    Zero, 
                    0x0389, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "No prompts", 
                    0x02, 
                    "No prompts", 
                    "Allow user to reject"
                }, 

                Package (0x1C)
                {
                    "Load MSFT Debug Policy Keys", 
                    "", 
                    "\\System Configuration\\Boot Options", 
                    One, 
                    Zero, 
                    One, 
                    0x010E, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "No", 
                    0x02, 
                    "No", 
                    "Yes"
                }, 

                Package (0x1C)
                {
                    " ", 
                    " ", 
                    " ", 
                    One, 
                    Zero, 
                    One, 
                    Zero, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    " ", 
                    Zero
                }, 

                Package (0x1C)
                {
                    " ", 
                    " ", 
                    " ", 
                    One, 
                    Zero, 
                    One, 
                    Zero, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    " ", 
                    Zero
                }, 

                Package (0x1C)
                {
                    "Keyboard Type", 
                    "", 
                    "\\dir Place holder for Path", 
                    Zero, 
                    One, 
                    Zero, 
                    0x16, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "Non-Japanese Keyboard", 
                    0x05, 
                    "Non-Japanese Keyboard", 
                    "Japanese Keyboard", 
                    "New EMEA UK KB (US2)", 
                    "New BRZL KB (UK2)", 
                    "New BRZL KB (US3)"
                }, 

                Package (0x1C)
                {
                    "Restore Security Defaults", 
                    "", 
                    "\\dir Place holder for Path", 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x0398, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "No", 
                    0x02, 
                    "No", 
                    "Yes"
                }, 

                Package (0x1C)
                {
                    "TPM version", 
                    "", 
                    "\\dir Place holder for Path", 
                    Zero, 
                    One, 
                    Zero, 
                    0x0398, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "d1.2", 
                    0x03, 
                    "d1.2", 
                    "d2.0", 
                    "f2.0"
                }, 

                Package (0x1C)
                {
                    "Secure Boot Keys", 
                    "", 
                    "\\System Configuration\\Boot Options", 
                    Zero, 
                    One, 
                    Zero, 
                    0x039D, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "Clear", 
                    0x04, 
                    "Clear", 
                    "HP", 
                    "MSFT", 
                    "Custom"
                }, 

                Package (0x1C)
                {
                    "PIN Load Defaults", 
                    "", 
                    "\\dir Place holder for Path", 
                    Zero, 
                    One, 
                    Zero, 
                    0x03A2, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "No", 
                    0x02, 
                    "No", 
                    "Yes"
                }, 

                Package (0x1C)
                {
                    "OOBE", 
                    "", 
                    "\\dir Place holder for Path", 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x03A4, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "No", 
                    0x02, 
                    "No", 
                    "Yes"
                }, 

                Package (0x1C)
                {
                    "Clear Event Log", 
                    "", 
                    "\\dir Place holder for Path", 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x03A6, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "No", 
                    0x02, 
                    "No", 
                    "Yes"
                }, 

                Package (0x1C)
                {
                    " ", 
                    " ", 
                    " ", 
                    One, 
                    Zero, 
                    One, 
                    Zero, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    " ", 
                    Zero
                }, 

                Package (0x1C)
                {
                    "MSLAB", 
                    "", 
                    "\\dir Place holder for Path", 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x03AA, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "No", 
                    0x02, 
                    "No", 
                    "Yes"
                }, 

                Package (0x1C)
                {
                    "Clear Crash Dump Counter", 
                    "", 
                    "\\dir Place holder for Path", 
                    Zero, 
                    One, 
                    Zero, 
                    0x03AC, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "No", 
                    0x02, 
                    "No", 
                    "Yes"
                }, 

                Package (0x1C)
                {
                    "Clear BOD", 
                    "", 
                    "\\dir Place holder for Path", 
                    Zero, 
                    One, 
                    Zero, 
                    0x03AE, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    "No", 
                    0x02, 
                    "No", 
                    "Yes"
                }
            })
            Name (N00B, Package (0x01)
            {
                Package (0x10)
                {
                    "Setup Password", 
                    " ", 
                    "\\Security", 
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
                }
            })
            Name (N00C, Package (0x01)
            {
                Package (0x0F)
                {
                    "Manufacturing Programming Mode Counter", 
                    "Place holder ", 
                    "\\Place holder for Path", 
                    One, 
                    Zero, 
                    One, 
                    0x0376, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0A, 
                    Zero
                }
            })
            Name (N00D, Package (0x11)
            {
                Package (0x0E)
                {
                    "Feature Byte", 
                    " ", 
                    "\\Main", 
                    Zero, 
                    One, 
                    Zero, 
                    0x02, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }, 

                Package (0x0E)
                {
                    "Build ID", 
                    " ", 
                    "\\Main", 
                    Zero, 
                    One, 
                    Zero, 
                    0x04, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }, 

                Package (0x0E)
                {
                    " ", 
                    " ", 
                    " ", 
                    One, 
                    Zero, 
                    One, 
                    Zero, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }, 

                Package (0x0E)
                {
                    "Serial Number", 
                    " ", 
                    "\\Main", 
                    Zero, 
                    One, 
                    Zero, 
                    0x08, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }, 

                Package (0x0E)
                {
                    "Product Name", 
                    " ", 
                    "\\Main", 
                    Zero, 
                    One, 
                    Zero, 
                    0x0A, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }, 

                Package (0x0E)
                {
                    " ", 
                    " ", 
                    " ", 
                    One, 
                    Zero, 
                    One, 
                    Zero, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }, 

                Package (0x0E)
                {
                    "UUID", 
                    " ", 
                    "\\Main", 
                    Zero, 
                    One, 
                    Zero, 
                    0x0E, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }, 

                Package (0x0E)
                {
                    "SKU Number", 
                    " ", 
                    "\\Main", 
                    Zero, 
                    One, 
                    Zero, 
                    0x10, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }, 

                Package (0x0E)
                {
                    "MAC Address", 
                    " ", 
                    "\\Main", 
                    Zero, 
                    One, 
                    Zero, 
                    0x12, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }, 

                Package (0x0E)
                {
                    "System Board CT Number", 
                    " ", 
                    "\\Main", 
                    Zero, 
                    One, 
                    Zero, 
                    0x14, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }, 

                Package (0x0E)
                {
                    "Asset Tag", 
                    " ", 
                    "\\Main", 
                    Zero, 
                    One, 
                    Zero, 
                    0x16, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }, 

                Package (0x0E)
                {
                    "MS Digital Marker", 
                    " ", 
                    "\\dir Place holder for Path", 
                    Zero, 
                    One, 
                    Zero, 
                    0x16, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }, 

                Package (0x0E)
                {
                    " ", 
                    " ", 
                    " ", 
                    One, 
                    Zero, 
                    One, 
                    Zero, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }, 

                Package (0x0E)
                {
                    "System Board ID", 
                    " ", 
                    "\\dir Place holder for Path", 
                    One, 
                    One, 
                    Zero, 
                    0x1A, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }, 

                Package (0x0E)
                {
                    "System Family", 
                    " ", 
                    "\\Main", 
                    Zero, 
                    One, 
                    Zero, 
                    0x1C, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }, 

                Package (0x0E)
                {
                    "Preinstall OS Version", 
                    " ", 
                    "\\dir Place holder for Path", 
                    Zero, 
                    One, 
                    Zero, 
                    0x1E, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }, 

                Package (0x0E)
                {
                    "Crash Dump Counter", 
                    " ", 
                    "\\dir Place holder for Path", 
                    One, 
                    One, 
                    Zero, 
                    0x03AE, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    Zero, 
                    0x0100
                }
            })
            Name (N010, Buffer (0x03)
            {
                 0xFF, 0xFF, 0xFF                                 // ...
            })
            Name (N011, Buffer (0x03)
            {
                 0xFF, 0xFF, 0xFF                                 // ...
            })
            Name (N012, Package (0x02)
            {
                Package (0x11)
                {
                    "Legacy Boot Order", 
                    " Notebook Hard Drive, USB Diskette on Key/USB Hard Disk, USB CD/DVD ROM Drive,", 
                    "\\System Configuration\\Boot Options", 
                    One, 
                    Zero, 
                    One, 
                    0x0122, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    0x03, 
                    " Notebook Hard Drive", 
                    " USB Diskette on Key/USB Hard Disk", 
                    " USB CD/DVD ROM Drive", 
                    " "
                }, 

                Package (0x11)
                {
                    "UEFI Boot Order", 
                    " OS Boot Manager, USB Diskette on Key/USB Hard Disk, USB CD/DVD ROM Drive,", 
                    "\\System Configuration\\Boot Options", 
                    Zero, 
                    One, 
                    Zero, 
                    0x0118, 
                    0x03, 
                    " ", 
                    " ", 
                    " ", 
                    Zero, 
                    0x03, 
                    " OS Boot Manager", 
                    " USB Diskette on Key/USB Hard Disk", 
                    " USB CD/DVD ROM Drive", 
                    " "
                }
            })
            Name (N013, Package (0x03)
            {
                Package (0x02)
                {
                    One, 
                    " Notebook Hard Drive"
                }, 

                Package (0x02)
                {
                    0x02, 
                    " USB Diskette on Key/USB Hard Disk"
                }, 

                Package (0x02)
                {
                    0x03, 
                    " USB CD/DVD ROM Drive"
                }
            })
            Name (N014, Package (0x03)
            {
                Package (0x02)
                {
                    One, 
                    " OS Boot Manager"
                }, 

                Package (0x02)
                {
                    0x02, 
                    " USB Diskette on Key/USB Hard Disk"
                }, 

                Package (0x02)
                {
                    0x03, 
                    " USB CD/DVD ROM Drive"
                }
            })
            Name (N015, Package (0x03)
            {
                " Boot Device 1", 
                " Boot Device 2", 
                " Boot Device 3"
            })
            Name (N016, Package (0x03)
            {
                " UEFI Boot Device 1", 
                " UEFI Boot Device 2", 
                " UEFI Boot Device 3"
            })
            Name (NULL, "                                      ")
            Name (N018, 0x03)
            Name (N019, 0x03)
            Method (WQBC, 1, NotSerialized)
            {
                M000 ()
                WSMI (0xEA7B, Zero, One, Arg0, Zero)
                If ((AEBX == 0x80))
                {
                    DerefOf (N00A [Arg0]) [0x04] = Zero
                    DerefOf (N00A [Arg0]) [0x03] = One
                    DerefOf (N00A [Arg0]) [0x05] = One
                }

                If ((AEBX == 0x81))
                {
                    DerefOf (N00A [Arg0]) [0x03] = One
                }

                Local5 = DerefOf (N00A [Arg0])
                Local0 = DerefOf (Local5 [Zero])
                If ((MFLG == Zero))
                {
                    If (SCMP (Local0, "Manufacturing Programming Mode"))
                    {
                        DerefOf (N00A [Arg0]) [0x03] = One
                    }

                    If (SCMP (Local0, "Legacy Support"))
                    {
                        DerefOf (N00A [Arg0]) [0x03] = One
                    }

                    If (SCMP (Local0, "Secure Boot"))
                    {
                        DerefOf (N00A [Arg0]) [0x03] = One
                    }

                    If (SCMP (Local0, "Secure Boot Keys"))
                    {
                        DerefOf (N00A [Arg0]) [0x03] = One
                        DerefOf (N00A [Arg0]) [0x04] = Zero
                        DerefOf (N00A [Arg0]) [0x05] = One
                    }

                    If (SCMP (Local0, "Keyboard Type"))
                    {
                        DerefOf (N00A [Arg0]) [0x03] = One
                    }

                    If (SCMP (Local0, "Clear BOD"))
                    {
                        DerefOf (N00A [Arg0]) [0x03] = One
                        DerefOf (N00A [Arg0]) [0x04] = Zero
                        DerefOf (N00A [Arg0]) [0x05] = One
                    }
                }

                Local6 = AEDX /* \_SB_.WMID.AEDX */
                Local4 = SizeOf (Local5)
                Local2 = DerefOf (Local5 [0x0D])
                Local2 += 0x0E
                If ((Local2 < Local4))
                {
                    Local4 = Local2
                }

                Local6 += 0x0E
                If ((Local2 < Local6))
                {
                    Local6 = Local2
                }

                Local7 = DerefOf (DerefOf (N00A [Arg0]) [Local6])
                DerefOf (N00A [Arg0]) [0x0C] = Local7
                Local1 = " "
                Local2 = 0x0E
                While ((Local2 < Local6))
                {
                    Local3 = DerefOf (Local5 [Local2])
                    Concatenate (Local1, Local3, Local7)
                    Concatenate (Local7, ", ", Local1)
                    Local2++
                }

                Concatenate (Local1, "*", Local7)
                While ((Local2 < Local4))
                {
                    Local3 = DerefOf (Local5 [Local2])
                    If (SCMP (Local3, " "))
                    {
                        Break
                    }
                    Else
                    {
                        If ((Local2 != Local6))
                        {
                            Concatenate (Local7, ", ", Local1)
                        }
                        Else
                        {
                            Local1 = Local7
                        }

                        Concatenate (Local1, Local3, Local7)
                    }

                    Local2++
                }

                DerefOf (N00A [Arg0]) [One] = Local7
                Return (DerefOf (N00A [Arg0]))
            }

            Method (WQBD, 1, NotSerialized)
            {
                Local0 = Zero
                Local1 = Zero
                Local2 = Zero
                Local4 = Zero
                Local5 = Zero
                Local6 = Zero
                Local7 = Zero
                WSMI (0xEA7B, Zero, 0x02, Arg0, Zero)
                If ((AEBX == 0x80))
                {
                    DerefOf (N00D [Arg0]) [0x04] = Zero
                    N007 = N006 /* \_SB_.WMID.N006 */
                }
                ElseIf ((AECX != Zero))
                {
                    N002 = SBUF /* \_SB_.WMID.SBUF */
                    CreateField (N002, Zero, (AECX * 0x08), WSTR)
                    N007 = WSTR /* \_SB_.WMID.WQBD.WSTR */
                }
                Else
                {
                    DerefOf (N00D [Arg0]) [0x04] = Zero
                    N007 = N006 /* \_SB_.WMID.N006 */
                }

                DerefOf (N00D [Arg0]) [One] = N007 /* \_SB_.WMID.N007 */
                Local5 = DerefOf (N00D [Arg0])
                Local0 = DerefOf (Local5 [Zero])
                If ((MFLG == Zero))
                {
                    If (SCMP (Local0, "Serial Number"))
                    {
                        DerefOf (N00D [Arg0]) [0x03] = One
                    }

                    If (SCMP (Local0, "Product Name"))
                    {
                        DerefOf (N00D [Arg0]) [0x03] = One
                    }

                    If (SCMP (Local0, "UUID"))
                    {
                        DerefOf (N00D [Arg0]) [0x03] = One
                    }

                    If (SCMP (Local0, "SKU Number"))
                    {
                        DerefOf (N00D [Arg0]) [0x03] = One
                    }

                    If (SCMP (Local0, "MAC Address"))
                    {
                        DerefOf (N00D [Arg0]) [0x03] = One
                    }

                    If (SCMP (Local0, "System Board CT Number"))
                    {
                        DerefOf (N00D [Arg0]) [0x03] = One
                    }

                    If (SCMP (Local0, "System Family"))
                    {
                        DerefOf (N00D [Arg0]) [0x03] = One
                    }

                    If (SCMP (Local0, "Preinstall OS Version"))
                    {
                        DerefOf (N00D [Arg0]) [0x03] = One
                    }

                    If (SCMP (Local0, "Feature Byte"))
                    {
                        DerefOf (N00D [Arg0]) [0x03] = One
                    }

                    If (SCMP (Local0, "Build ID"))
                    {
                        DerefOf (N00D [Arg0]) [0x03] = One
                    }
                }

                Return (DerefOf (N00D [Arg0]))
            }

            Method (WQBE, 1, NotSerialized)
            {
                Local1 = Zero
                Local2 = Zero
                Local4 = Zero
                Local5 = Zero
                Local6 = Zero
                Local7 = Zero
                N018 = 0x03
                N019 = 0x03
                If ((Arg0 == Zero))
                {
                    WSMI (0xEA7B, Zero, 0x03, Arg0, Zero)
                    N002 = WBUF /* \_SB_.WMID.WBUF */
                    CreateField (N002, Zero, (N018 * 0x08), WBU1)
                    N003 = WBU1 /* \_SB_.WMID.WQBE.WBU1 */
                    CreateField (N003, Zero, (N018 * 0x08), CBOS)
                    While ((Local1 != N018))
                    {
                        Local4 = DerefOf (N003 [Local1])
                        Local5 = Zero
                        While ((Local5 != N018))
                        {
                            Local7 = DerefOf (DerefOf (N013 [Local5]) [Zero])
                            If ((Local4 == Local7))
                            {
                                BF01 = DerefOf (DerefOf (N013 [Local5]) [One])
                                N007 = BF01 /* \_SB_.WMID.BF01 */
                                N015 [Local6] = N007 /* \_SB_.WMID.N007 */
                                Local6++
                                Local5 = (N018 - One)
                            }

                            Local5++
                        }

                        Local1++
                    }

                    Local0 = Zero
                    Local5 = Zero
                    Local4 = Zero
                    Local0 = 0x0D
                    While ((Local5 != N018))
                    {
                        BF01 = DerefOf (N015 [Local5])
                        N007 = BF01 /* \_SB_.WMID.BF01 */
                        DerefOf (N012 [Zero]) [Local0] = N007 /* \_SB_.WMID.N007 */
                        Local5++
                        Local0++
                    }

                    Local1 = Zero
                    Local2 = Zero
                    While ((Local2 != N018))
                    {
                        BF01 = DerefOf (N015 [Local2])
                        Local5 = Zero
                        While ((DerefOf (BF01 [Local5]) != Zero))
                        {
                            Local3 = DerefOf (BF01 [Local5])
                            N005 [Local1] = Local3
                            Local5++
                            Local1++
                        }

                        N005 [Local1] = 0x2C
                        Local1++
                        Local2++
                    }

                    Local2 = Zero
                    While ((Local2 != 0x09))
                    {
                        N005 [Local1] = 0x20
                        Local1++
                        N005 [Local1] = 0x2C
                        Local1++
                        Local2++
                    }

                    N008 = N005 /* \_SB_.WMID.N005 */
                    DerefOf (N012 [Zero]) [One] = N008 /* \_SB_.WMID.N008 */
                }

                If ((Arg0 == One))
                {
                    Local4 = M002 ()
                    WSMI (0xEA7B, Zero, 0x08, Arg0, Zero)
                    N002 = WBUF /* \_SB_.WMID.WBUF */
                    CreateField (N002, Zero, (N019 * 0x08), WBU2)
                    N011 = WBU2 /* \_SB_.WMID.WQBE.WBU2 */
                    While ((Local1 != N019))
                    {
                        Local4 = DerefOf (N011 [Local1])
                        Local5 = Zero
                        While ((Local5 != N019))
                        {
                            Local7 = DerefOf (DerefOf (N014 [Local5]) [Zero])
                            If ((Local4 == Local7))
                            {
                                BF01 = DerefOf (DerefOf (N014 [Local5]) [One])
                                N007 = BF01 /* \_SB_.WMID.BF01 */
                                N016 [Local6] = N007 /* \_SB_.WMID.N007 */
                                Local6++
                                Local5 = (N019 - One)
                            }

                            Local5++
                        }

                        Local1++
                    }

                    Local0 = Zero
                    Local5 = Zero
                    Local4 = Zero
                    Local0 = 0x0D
                    While ((Local5 != N019))
                    {
                        BF01 = DerefOf (N016 [Local5])
                        N007 = BF01 /* \_SB_.WMID.BF01 */
                        DerefOf (N012 [Arg0]) [Local0] = N007 /* \_SB_.WMID.N007 */
                        Local5++
                        Local0++
                    }

                    Local1 = Zero
                    Local2 = Zero
                    While ((Local2 != N019))
                    {
                        BF01 = DerefOf (N016 [Local2])
                        Local5 = Zero
                        While ((DerefOf (BF01 [Local5]) != Zero))
                        {
                            Local3 = DerefOf (BF01 [Local5])
                            N005 [Local1] = Local3
                            Local5++
                            Local1++
                        }

                        N005 [Local1] = 0x2C
                        Local1++
                        Local2++
                    }

                    Local2 = Zero
                    While ((Local2 != 0x09))
                    {
                        N005 [Local1] = 0x20
                        Local1++
                        N005 [Local1] = 0x2C
                        Local1++
                        Local2++
                    }

                    N008 = N005 /* \_SB_.WMID.N005 */
                    DerefOf (N012 [Arg0]) [One] = N008 /* \_SB_.WMID.N008 */
                }

                Return (DerefOf (N012 [Arg0]))
            }

            Method (M001, 1, NotSerialized)
            {
                Local0 = Zero
                WSMI (0xEA7B, Zero, 0x04, Arg0, Zero)
                If ((AEBX == Zero))
                {
                    Local0 = AEDX /* \_SB_.WMID.AEDX */
                }

                Return (Local0)
            }

            Method (M003, 0, NotSerialized)
            {
                Local1 = Zero
                Local4 = Zero
                Local5 = Zero
                Local6 = Zero
                Local7 = 0x64
                Local2 = SizeOf (N009)
                Local2--
                While ((Local4 != Local2))
                {
                    Local1 = Zero
                    While ((Local1 != SizeOf (TEMP)))
                    {
                        TEMP [Local1] = Zero
                        Local1++
                    }

                    Local1 = Zero
                    While ((Local1 != 0x28))
                    {
                        TEMP [Local1] = DerefOf (N009 [Local4])
                        If (((DerefOf (N009 [Local4]) == 0x2C) || (DerefOf (
                            N009 [Local4]) == Zero)))
                        {
                            Local1 = 0x27
                        }

                        Local1++
                        Local4++
                    }

                    If ((DerefOf (N009 [Local4]) != Zero))
                    {
                        Local3 = FNID ()
                        If ((Local3 != 0xFF))
                        {
                            N004 [Local6] = Local3
                        }

                        Local6++
                    }
                    Else
                    {
                        Local4 = Local2
                    }
                }

                Return (Local7)
            }

            Method (FNID, 0, NotSerialized)
            {
                Local3 = 0xFF
                Local2 = One
                If ((SRCM (TEMP, "Notebook Hard Drive", 0x13) || SRCM (TEMP, " Notebook Hard Drive", 0x14)))
                {
                    Local3 = Local2
                }

                Local2++
                If ((SRCM (TEMP, "USB Diskette on Key/USB Hard Disk", 0x21) || SRCM (TEMP, " USB Diskette on Key/USB Hard Disk", 0x22)))
                {
                    Local3 = Local2
                }

                Local2++
                If ((SRCM (TEMP, "USB CD/DVD ROM Drive", 0x14) || SRCM (TEMP, " USB CD/DVD ROM Drive", 0x15)))
                {
                    Local3 = Local2
                }

                Return (Local3)
            }

            Method (M004, 0, NotSerialized)
            {
                Local1 = Zero
                Local4 = Zero
                Local5 = Zero
                Local6 = Zero
                Local7 = 0x64
                Local2 = SizeOf (N009)
                Local2--
                While ((Local4 != Local2))
                {
                    Local1 = Zero
                    While ((Local1 != SizeOf (TEMP)))
                    {
                        TEMP [Local1] = Zero
                        Local1++
                    }

                    Local1 = Zero
                    While ((Local1 != 0x28))
                    {
                        TEMP [Local1] = DerefOf (N009 [Local4])
                        If (((DerefOf (N009 [Local4]) == 0x2C) || (DerefOf (
                            N009 [Local4]) == Zero)))
                        {
                            Local1 = 0x27
                        }

                        Local1++
                        Local4++
                    }

                    If ((DerefOf (N009 [Local4]) != Zero))
                    {
                        Local3 = UFID ()
                        If ((Local3 != 0xFF))
                        {
                            N004 [Local6] = Local3
                        }

                        Local6++
                    }
                    Else
                    {
                        Local4 = Local2
                    }
                }

                Return (Local7)
            }

            Method (UFID, 0, NotSerialized)
            {
                Local3 = 0xFF
                Local2 = One
                If ((SRCM (TEMP, "OS Boot Manager", 0x0F) || SRCM (TEMP, " OS Boot Manager", 0x10)))
                {
                    Local3 = Local2
                }

                Local2++
                If ((SRCM (TEMP, "USB Diskette on Key/USB Hard Disk", 0x21) || SRCM (TEMP, " USB Diskette on Key/USB Hard Disk", 0x22)))
                {
                    Local3 = Local2
                }

                Local2++
                If ((SRCM (TEMP, "USB CD/DVD ROM Drive", 0x14) || SRCM (TEMP, " USB CD/DVD ROM Drive", 0x15)))
                {
                    Local3 = Local2
                }

                Return (Local3)
            }

            Method (WQBF, 1, NotSerialized)
            {
                If ((M001 (Arg0) == One))
                {
                    DerefOf (N00B [Arg0]) [0x06] = Arg0
                    DerefOf (N00B [Arg0]) [0x0E] = One
                }
                Else
                {
                    DerefOf (N00B [Arg0]) [0x06] = Arg0
                    DerefOf (N00B [Arg0]) [0x0E] = Zero
                }

                Return (DerefOf (N00B [Arg0]))
            }

            Method (WQBG, 1, NotSerialized)
            {
                WSMI (0xEA7B, Zero, 0x06, Arg0, Zero)
                If ((MFLG == Zero))
                {
                    DerefOf (N00C [Arg0]) [0x03] = One
                }

                Local4 = Zero
                If ((AEBX == Zero))
                {
                    Local4 = AEDX /* \_SB_.WMID.AEDX */
                }

                DerefOf (N00C [Arg0]) [0x0E] = Local4
                If ((Local4 <= 0x09))
                {
                    Local2 = One
                }
                Else
                {
                    Local2 = 0x02
                }

                ToBCD (Local4, Local1)
                Local3 = ISTR (Local1, Local2)
                N007 = Local3
                DerefOf (N00C [Arg0]) [One] = N007 /* \_SB_.WMID.N007 */
                Return (DerefOf (N00C [Arg0]))
            }

            Method (WQBH, 0, NotSerialized)
            {
            }

            Method (WQBI, 1, NotSerialized)
            {
            }

            Method (WQBJ, 1, NotSerialized)
            {
            }

            Name (LEN2, Zero)
            Method (WMBH, 1, NotSerialized)
            {
                Return (Zero)
            }

            Method (WMBA, 3, NotSerialized)
            {
                M000 ()
                N018 = 0x03
                N019 = 0x03
                If ((Arg1 == One))
                {
                    Local0 = Arg2
                    Local1 = SizeOf (Local0)
                    Local2 = Zero
                    Local4 = DerefOf (Local0 [Local2])
                    Local2++
                    Local2++
                    Local5 = Zero
                    Local6 = Zero
                    Local3 = Zero
                    Local3 = M002 ()
                    While ((Local5 != Local4))
                    {
                        ST01 [Local6] = DerefOf (Local0 [Local2])
                        Local2++
                        Local5++
                        Local6++
                        Local2++
                        Local5++
                    }

                    Local4 = DerefOf (Local0 [Local2])
                    Local2++
                    Local2++
                    Local5 = Zero
                    Local6 = Zero
                    If ((SRCM (ST01, "Legacy Boot Order", 0x11) || SRCM (ST01, "UEFI Boot Order", 0x0F)))
                    {
                        Local2--
                        Local4 += (DerefOf (Local0 [Local2]) * 0x0100)
                        Local2++
                        While ((Local5 != Local4))
                        {
                            N009 [Local6] = DerefOf (Local0 [Local2])
                            Local2++
                            Local5++
                            Local6++
                            Local2++
                            Local5++
                        }

                        If ((Local5 == Local4))
                        {
                            Local4 = Zero
                        }
                    }

                    If (SRCM (ST01, "Setup Password", 0x0E))
                    {
                        While ((Local5 != Local4))
                        {
                            N001 [Local6] = DerefOf (Local0 [Local2])
                            Local2++
                            Local5++
                            Local6++
                        }

                        Local4 = DerefOf (Local0 [Local2])
                        Local2++
                        Local2++
                        Local5 = Zero
                        Local6 = Zero
                        While ((Local5 != Local4))
                        {
                            N001 [(Local6 + 0x40)] = DerefOf (Local0 [Local2]
                                )
                            Local2++
                            Local5++
                            Local6++
                        }

                        WBUF = N001 /* \_SB_.WMID.N001 */
                        WSMI (0xEA7B, One, Zero, 0x0400, Zero)
                        If ((AEBX == Zero))
                        {
                            N00E [Zero] = Zero
                            Notify (\_SB.WMID, 0xA0) // Device-Specific
                        }

                        If ((AEBX == 0x06))
                        {
                            N00E [Zero] = One
                            Notify (\_SB.WMID, 0xA0) // Device-Specific
                        }

                        Return (AEBX) /* \_SB_.WMID.AEBX */
                    }

                    Local5 = Zero
                    Local6 = Zero
                    N017 = Local4
                    While ((Local5 != Local4))
                    {
                        ST02 [Local6] = DerefOf (Local0 [Local2])
                        Local2++
                        Local5++
                        Local6++
                        Local2++
                        Local5++
                    }

                    LEN2 = Local6
                    Local7 = Zero
                    Local4 = Zero
                    Local2 = Zero
                    Local5 = 0x27
                    While ((Local5 != Local4))
                    {
                        ST14 = DerefOf (DerefOf (N00A [Local4]) [Zero])
                        If (SRCM (ST01, ST14, SizeOf (ST14)))
                        {
                            Local4 = 0x27
                            Local4--
                            Local2 = One
                        }

                        Local7++
                        Local4++
                    }

                    Local7--
                    If (SRCM (ST01, "Legacy Boot Order", 0x11))
                    {
                        Local2 = 0x03
                    }

                    If (SRCM (ST01, "UEFI Boot Order", 0x0F))
                    {
                        Local2 = 0x08
                    }

                    If (SRCM (ST01, "Manufacturing Programming Mode Counter", 0x26))
                    {
                        Local2 = 0x06
                        Local6 = 0x06
                        Local6 <<= 0x08
                        If ((N017 == 0x04))
                        {
                            CreateByteField (ST02, Zero, HIGB)
                            CreateByteField (ST02, One, LOWB)
                            Local4 = (HIGB - 0x30)
                            Local5 = (LOWB - 0x30)
                            Local4 = (Local5 + (Local4 * 0x0A))
                        }
                        Else
                        {
                            CreateByteField (ST02, Zero, MINL)
                            Local4 = (MINL - 0x30)
                        }

                        If (SRCM (ST01, "Manufacturing Programming Mode Counter", 0x26))
                        {
                            If ((MFLG == One))
                            {
                                If (((Local4 >= Zero) && (Local4 <= 0x0A)))
                                {
                                    Local4 &= 0xFF
                                    Local6 |= Local4
                                    FLAG = Zero
                                    Local7 = Zero
                                    If ((Local4 == 0x0A))
                                    {
                                        Local0 = Zero
                                        While ((Local0 < 0x27))
                                        {
                                            Local5 = DerefOf (DerefOf (N00A [Local0]) [Zero])
                                            If (SCMP (Local5, "Manufacturing Programming Mode"))
                                            {
                                                Break
                                            }

                                            Local0++
                                        }

                                        WSMI (0xEA7B, One, Local0, 0x0100, Zero)
                                    }
                                }
                                Else
                                {
                                    AEBX = 0x05
                                    Return (AEBX) /* \_SB_.WMID.AEBX */
                                }
                            }
                            Else
                            {
                                AEBX = One
                                Return (AEBX) /* \_SB_.WMID.AEBX */
                            }
                        }
                    }

                    If ((Local2 == Zero))
                    {
                        Local7 = Zero
                        Local4 = Zero
                        While ((Local4 < 0x11))
                        {
                            ST14 = DerefOf (DerefOf (N00D [Local4]) [Zero])
                            If (SRCM (ST01, ST14, SizeOf (ST14)))
                            {
                                Local4 = 0x11
                                Local2 = 0x02
                            }

                            Local7++
                            Local4++
                        }

                        Local7--
                    }

                    If ((Local2 == One))
                    {
                        FLAG = 0x05
                        Local0 = DerefOf (N00A [Local7])
                        Local1 = 0x0E
                        Local3 = DerefOf (Local0 [0x0D])
                        Local3 += Local1
                        While ((Local1 < Local3))
                        {
                            Local4 = DerefOf (Local0 [Local1])
                            If (SRCM (ST02, Local4, LEN2))
                            {
                                Local6 = (Local1 - 0x0E)
                                FLAG = Zero
                                Break
                            }

                            Local1++
                        }

                        If (SCMP (DerefOf (Local0 [0x0E]), NONO)){}
                        Local6 &= 0xFF
                        Local3 = One
                        Local6 |= (Local3 << 0x08)
                    }

                    If ((Local2 == 0x02))
                    {
                        Local4 = Zero
                        Local5 = 0x02
                        If (SRCM (ST01, "Feature Byte", 0x0C))
                        {
                            SBUF = ST02 /* \_SB_.WMID.ST02 */
                            Local7 = Zero
                            FLAG = Zero
                        }

                        If (SRCM (ST01, "Build ID", 0x08))
                        {
                            SBUF = ST02 /* \_SB_.WMID.ST02 */
                            Local7 = One
                            FLAG = Zero
                        }

                        If (SRCM (ST01, "Serial Number", 0x0D))
                        {
                            SBUF = ST02 /* \_SB_.WMID.ST02 */
                            Local7 = 0x03
                            FLAG = Zero
                        }

                        If (SRCM (ST01, "Product Name", 0x0C))
                        {
                            SBUF = ST02 /* \_SB_.WMID.ST02 */
                            Local7 = 0x04
                            FLAG = Zero
                        }

                        If (SRCM (ST01, "UUID", 0x04))
                        {
                            SBUF = ST02 /* \_SB_.WMID.ST02 */
                            Local7 = 0x06
                            FLAG = Zero
                        }

                        If (SRCM (ST01, "SKU Number", 0x0A))
                        {
                            SBUF = ST02 /* \_SB_.WMID.ST02 */
                            Local7 = 0x07
                            FLAG = Zero
                        }

                        If (SRCM (ST01, "MAC Address", 0x0B))
                        {
                            SBUF = ST02 /* \_SB_.WMID.ST02 */
                            Local7 = 0x08
                            FLAG = Zero
                        }

                        If (SRCM (ST01, "System Board CT Number", 0x16))
                        {
                            SBUF = ST02 /* \_SB_.WMID.ST02 */
                            Local7 = 0x09
                            FLAG = Zero
                        }

                        If (SRCM (ST01, "Asset Tag", 0x09))
                        {
                            SBUF = ST02 /* \_SB_.WMID.ST02 */
                            Local7 = 0x0A
                            FLAG = Zero
                        }

                        If (SRCM (ST01, "MS Digital Marker", 0x11))
                        {
                            SBUF = ST02 /* \_SB_.WMID.ST02 */
                            Local7 = 0x0B
                            FLAG = Zero
                        }

                        If (SRCM (ST01, "System Family", 0x0D))
                        {
                            SBUF = ST02 /* \_SB_.WMID.ST02 */
                            Local7 = 0x0E
                            FLAG = Zero
                        }

                        If (SRCM (ST01, "Preinstall OS Version", 0x15))
                        {
                            SBUF = ST02 /* \_SB_.WMID.ST02 */
                            Local7 = 0x0F
                            FLAG = Zero
                        }

                        Local6 = 0x02
                        Local6 <<= 0x08
                    }

                    If ((Local2 == 0x03))
                    {
                        Local1 = Zero
                        Local2 = Zero
                        Local3 = Zero
                        Local4 = Zero
                        Local5 = Zero
                        Local6 = Zero
                        Local7 = Zero
                        WSMI (0xEA7B, Zero, 0x03, Zero, Zero)
                        N002 = WBUF /* \_SB_.WMID.WBUF */
                        CreateField (N002, Zero, (N018 * 0x08), WBU3)
                        N010 = WBU3 /* \_SB_.WMID.WMBA.WBU3 */
                        Local2 = Zero
                        Local1 = M003 ()
                        N000 = Zero
                        While ((Local2 < 0x64))
                        {
                            Local5 = Zero
                            Local6 = Zero
                            While ((Local6 < N018))
                            {
                                If ((DerefOf (N004 [Local2]) == DerefOf (N010 [Local5])))
                                {
                                    N000 = One
                                    Local6 = (N018 - One)
                                }

                                Local5++
                                Local6++
                            }

                            Local5--
                            If ((N000 == One))
                            {
                                Local4 = Local5
                                Local4--
                                While ((Local5 > Local3))
                                {
                                    N010 [Local5] = DerefOf (N010 [Local4])
                                    Local5--
                                    Local4--
                                }

                                N010 [Local3] = DerefOf (N004 [Local2])
                                Local3++
                            }

                            Local2++
                            N000 = Zero
                        }

                        WBUF = N010 /* \_SB_.WMID.N010 */
                        FLAG = Zero
                        Local7 = Zero
                        Local6 = 0x03
                        Local6 <<= 0x08
                    }

                    If ((Local2 == 0x08))
                    {
                        Local1 = Zero
                        Local2 = Zero
                        Local3 = Zero
                        Local4 = Zero
                        Local5 = Zero
                        Local6 = Zero
                        Local7 = Zero
                        WSMI (0xEA7B, Zero, 0x08, Zero, Zero)
                        N002 = WBUF /* \_SB_.WMID.WBUF */
                        CreateField (N002, Zero, (N019 * 0x08), WBU4)
                        N011 = WBU4 /* \_SB_.WMID.WMBA.WBU4 */
                        Local2 = Zero
                        Local1 = M004 ()
                        N000 = Zero
                        While ((Local2 < 0x64))
                        {
                            Local5 = Zero
                            Local6 = Zero
                            While ((Local6 < N019))
                            {
                                If ((DerefOf (N004 [Local2]) == DerefOf (N011 [Local5])))
                                {
                                    N000 = One
                                    Local6 = (N019 - One)
                                }

                                Local5++
                                Local6++
                            }

                            Local5--
                            If ((N000 == One))
                            {
                                Local4 = Local5
                                Local4--
                                While ((Local5 > Local3))
                                {
                                    N011 [Local5] = DerefOf (N011 [Local4])
                                    Local5--
                                    Local4--
                                }

                                N011 [Local3] = DerefOf (N004 [Local2])
                                Local3++
                            }

                            Local2++
                            N000 = Zero
                        }

                        WBUF = N011 /* \_SB_.WMID.N011 */
                        FLAG = Zero
                        Local7 = Zero
                        Local6 = 0x08
                        Local6 <<= 0x08
                    }

                    If ((Local2 == Zero))
                    {
                        AEBX = One
                        Return (AEBX) /* \_SB_.WMID.AEBX */
                    }

                    If ((FLAG == 0x05))
                    {
                        AEBX = 0x05
                        Return (AEBX) /* \_SB_.WMID.AEBX */
                    }

                    If ((Local2 != Zero))
                    {
                        WSMI (0xEA7B, One, Local7, Local6, Zero)
                        If ((AEBX == Zero))
                        {
                            N00E [Zero] = Zero
                            Notify (\_SB.WMID, 0xA0) // Device-Specific
                        }

                        If ((AEBX == 0x06))
                        {
                            N00E [Zero] = One
                            Notify (\_SB.WMID, 0xA0) // Device-Specific
                        }
                    }

                    Return (AEBX) /* \_SB_.WMID.AEBX */
                }

                If ((Arg1 == 0x02))
                {
                    WSMI (0xEA7C, Zero, Zero, Zero, Zero)
                    If ((AEBX == Zero))
                    {
                        N00E [Zero] = Zero
                        Notify (\_SB.WMID, 0xA0) // Device-Specific
                    }

                    If ((AEBX == 0x06))
                    {
                        N00E [Zero] = One
                        Notify (\_SB.WMID, 0xA0) // Device-Specific
                    }

                    Return (AEBX) /* \_SB_.WMID.AEBX */
                }
                Else
                {
                    AEBX = 0x05
                    Return (AEBX) /* \_SB_.WMID.AEBX */
                }
            }

            Method (M002, 0, NotSerialized)
            {
                AEBX = 0x05
                Local3 = Zero
                While ((Local3 != SizeOf (ST01)))
                {
                    ST01 [Local3] = Zero
                    Local3++
                }

                Local3 = Zero
                While ((Local3 != SizeOf (ST02)))
                {
                    ST02 [Local3] = Zero
                    Local3++
                }

                Local3 = Zero
                While ((Local3 != SizeOf (N009)))
                {
                    N009 [Local3] = Zero
                    Local3++
                }

                Local3 = Zero
                While ((Local3 != SizeOf (N004)))
                {
                    N004 [Local3] = 0xFF
                    Local3++
                }

                Local3 = Zero
                While ((Local3 != SizeOf (N001)))
                {
                    N001 [Local3] = Zero
                    Local3++
                }

                Local3 = Zero
                While ((Local3 != SizeOf (N005)))
                {
                    N005 [Local3] = Zero
                    Local3++
                }

                Local3 = Zero
                While ((Local3 != SizeOf (BF01)))
                {
                    BF01 [Local3] = Zero
                    Local3++
                }

                Local3 = Zero
                While ((Local3 != N019))
                {
                    N011 [Local3] = Zero
                    Local3++
                }

                Return (Zero)
            }

            Method (WMAC, 3, NotSerialized)
            {
                Return (Zero)
            }
        }
    }
}

