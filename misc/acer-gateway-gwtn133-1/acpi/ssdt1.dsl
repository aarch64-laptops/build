/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt1.dat, Fri Sep 15 16:32:46 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000370F (14095)
 *     Revision         0x03
 *     Checksum         0x56
 *     OEM ID           "QCOM  "
 *     OEM Table ID     "SSDT1Tbl"
 *     OEM Revision     0x00000002 (2)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20140214 (538182164)
 */
DefinitionBlock ("", "SSDT", 3, "QCOM  ", "SSDT1Tbl", 0x00000002)
{
    External (_SB_.CCST, UnknownObj)
    External (_SB_.DPPN, UnknownObj)
    External (_SB_.GIO0, DeviceObj)
    External (_SB_.GIO0.GABL, IntObj)
    External (_SB_.HSFL, UnknownObj)
    External (_SB_.I2C1, DeviceObj)
    External (_SB_.I2C4, DeviceObj)
    External (_SB_.I2C8, DeviceObj)
    External (_SB_.MUXC, UnknownObj)
    External (_SB_.PEP0, UnknownObj)
    External (_SB_.PMIC, UnknownObj)
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
    External (_SB_.UBTC.VER1, UnknownObj)
    External (_SB_.UBTC.VER2, UnknownObj)
    External (_SB_.UCP0, UnknownObj)

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
                        0x004F
                    }
            })
        }
    }

    Scope (\_SB)
    {
        Name (ECOK, Zero)
        Mutex (MUT0, 0x00)
        Mutex (MUTX, 0x00)
    }

    Scope (\_SB.I2C8)
    {
        Name (ECI2, ResourceTemplate ()
        {
            I2cSerialBusV2 (0x0076, ControllerInitiated, 0x00061A80,
                AddressingMode7Bit, "\\_SB_.I2C8",
                0x00, ResourceConsumer, , Exclusive,
                )
        })
        OperationRegion (ECFD, GenericSerialBus, Zero, 0x0200)
        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            WS01,   8, 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            RS01,   8, 
            Offset (0x31), 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            GENM,   8, 
            Offset (0x40), 
            AccessAs (BufferAcc, AttribBytes (0x04)), 
            RFCA,   8, 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            RM01,   8, 
            AccessAs (BufferAcc, AttribBytes (0x05)), 
            FLER,   8, 
            AccessAs (BufferAcc, AttribBytes (0x06)), 
            WM01,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x03)), 
            WS02,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x04)), 
            WS03,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x05)), 
            WS04,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x06)), 
            WS05,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x07)), 
            WS06,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x08)), 
            WS07,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x09)), 
            WS08,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x11)), 
            WS10,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x21)), 
            WS20,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x20), 
            AccessAs (BufferAcc, AttribBytes (0x41)), 
            WS40,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x21), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            RS02,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x21), 
            AccessAs (BufferAcc, AttribBytes (0x03)), 
            RS03,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x21), 
            AccessAs (BufferAcc, AttribBytes (0x04)), 
            RS04,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x21), 
            AccessAs (BufferAcc, AttribBytes (0x05)), 
            RS05,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x21), 
            AccessAs (BufferAcc, AttribBytes (0x06)), 
            RS06,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x21), 
            AccessAs (BufferAcc, AttribBytes (0x07)), 
            RS07,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x21), 
            AccessAs (BufferAcc, AttribBytes (0x08)), 
            RS08,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x21), 
            AccessAs (BufferAcc, AttribBytes (0x10)), 
            RS10,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x21), 
            AccessAs (BufferAcc, AttribBytes (0x20)), 
            RS20,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x21), 
            AccessAs (BufferAcc, AttribBytes (0x40)), 
            RS40,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x41), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            RM02,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x41), 
            AccessAs (BufferAcc, AttribBytes (0x03)), 
            RM03,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x41), 
            AccessAs (BufferAcc, AttribBytes (0x04)), 
            RM04,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x41), 
            AccessAs (BufferAcc, AttribBytes (0x05)), 
            RM05,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x41), 
            AccessAs (BufferAcc, AttribBytes (0x06)), 
            RM06,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x41), 
            AccessAs (BufferAcc, AttribBytes (0x07)), 
            RM07,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x41), 
            AccessAs (BufferAcc, AttribBytes (0x08)), 
            RM08,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x41), 
            AccessAs (BufferAcc, AttribBytes (0x10)), 
            RM10,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x41), 
            AccessAs (BufferAcc, AttribBytes (0x20)), 
            RM20,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x41), 
            AccessAs (BufferAcc, AttribBytes (0x40)), 
            RM40,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x43), 
            AccessAs (BufferAcc, AttribBytes (0x07)), 
            WM02,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x43), 
            AccessAs (BufferAcc, AttribBytes (0x08)), 
            WM03,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x43), 
            AccessAs (BufferAcc, AttribBytes (0x09)), 
            WM04,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x43), 
            AccessAs (BufferAcc, AttribBytes (0x0A)), 
            WM05,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x43), 
            AccessAs (BufferAcc, AttribBytes (0x0B)), 
            WM06,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x43), 
            AccessAs (BufferAcc, AttribBytes (0x0C)), 
            WM07,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x43), 
            AccessAs (BufferAcc, AttribBytes (0x0D)), 
            WM08,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x43), 
            AccessAs (BufferAcc, AttribBytes (0x15)), 
            WM10,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x43), 
            AccessAs (BufferAcc, AttribBytes (0x25)), 
            WM20,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0x43), 
            AccessAs (BufferAcc, AttribBytes (0x45)), 
            WM40,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0xA2), 
            AccessAs (BufferAcc, AttribBytes (0x01)), 
            CMA0,   8, 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            CMA1,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0xA0), 
            AccessAs (BufferAcc, AttribBytes (0x30)), 
            RBA0,   8
        }

        Field (ECFD, BufferAcc, NoLock, Preserve)
        {
            Connection (ECI2), 
            Offset (0xA1), 
            AccessAs (BufferAcc, AttribBytes (0x31)), 
            RBA1,   8
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
        Name (BUF4, Buffer (0x07)
        {
             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00         // .......
        })
        CreateByteField (BUF4, Zero, BST4)
        CreateByteField (BUF4, One, BLN4)
        CreateByteField (BUF4, 0x02, D4T0)
        CreateByteField (BUF4, 0x03, D4T1)
        CreateByteField (BUF4, 0x04, D4T2)
        CreateByteField (BUF4, 0x05, D4T3)
        CreateByteField (BUF4, 0x06, D4T4)
        Name (BUF5, Buffer (0x08)
        {
             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
        })
        CreateByteField (BUF5, Zero, BST5)
        CreateByteField (BUF5, One, BLN5)
        CreateByteField (BUF5, 0x02, D5T0)
        CreateByteField (BUF5, 0x03, D5T1)
        CreateByteField (BUF5, 0x04, D5T2)
        CreateByteField (BUF5, 0x05, D5T3)
        CreateByteField (BUF5, 0x06, D5T4)
        CreateByteField (BUF5, 0x07, D5T5)
        Name (BUF6, Buffer (0x09)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0008 */  0x00                                             // .
        })
        CreateByteField (BUF6, Zero, BST6)
        CreateByteField (BUF6, One, BLN6)
        CreateByteField (BUF6, 0x02, D6T0)
        CreateByteField (BUF6, 0x03, D6T1)
        CreateByteField (BUF6, 0x04, D6T2)
        CreateByteField (BUF6, 0x05, D6T3)
        CreateByteField (BUF6, 0x06, D6T4)
        CreateByteField (BUF6, 0x07, D6T5)
        CreateByteField (BUF6, 0x08, D6T6)
        Name (BUF7, Buffer (0x0A)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0008 */  0x00, 0x00                                       // ..
        })
        CreateByteField (BUF7, Zero, BST7)
        CreateByteField (BUF7, One, BLN7)
        CreateByteField (BUF7, 0x02, D7T0)
        CreateByteField (BUF7, 0x03, D7T1)
        CreateByteField (BUF7, 0x04, D7T2)
        CreateByteField (BUF7, 0x05, D7T3)
        CreateByteField (BUF7, 0x06, D7T4)
        CreateByteField (BUF7, 0x07, D7T5)
        CreateByteField (BUF7, 0x08, D7T6)
        CreateByteField (BUF7, 0x09, D7T7)
        Name (BUF8, Buffer (0x60)
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
            /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
        })
        CreateByteField (BUF8, Zero, BST8)
        CreateByteField (BUF8, One, BLN8)
        CreateByteField (BUF8, 0x02, D8T0)
        CreateByteField (BUF8, 0x03, D8T1)
        CreateByteField (BUF8, 0x04, D8T2)
        CreateByteField (BUF8, 0x05, D8T3)
        CreateByteField (BUF8, 0x06, D8T4)
        CreateByteField (BUF8, 0x07, D8T5)
        CreateByteField (BUF8, 0x08, D8T6)
        CreateByteField (BUF8, 0x09, D8T7)
        Name (BUF9, Buffer (0x60)
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
            /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
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
        Name (BUFA, Buffer (0x60)
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
            /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
        })
        CreateByteField (BUFA, Zero, BSTA)
        CreateByteField (BUFA, One, BLNA)
        CreateByteField (BUFA, 0x02, DAT0)
        CreateByteField (BUFA, 0x03, DAT1)
        CreateByteField (BUFA, 0x04, DAT2)
        CreateByteField (BUFA, 0x05, DAT3)
        CreateByteField (BUFA, 0x06, DAT4)
        CreateByteField (BUFA, 0x07, DAT5)
        CreateByteField (BUFA, 0x08, DAT6)
        CreateByteField (BUFA, 0x09, DAT7)
        Name (BUFB, Buffer (0x60)
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
            /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
        })
        CreateByteField (BUFB, Zero, BSTB)
        CreateByteField (BUFB, One, BLNB)
        CreateByteField (BUFB, 0x02, DBT0)
        CreateByteField (BUFB, 0x03, DBT1)
        CreateByteField (BUFB, 0x04, DBT2)
        CreateByteField (BUFB, 0x05, DBT3)
        CreateByteField (BUFB, 0x06, DBT4)
        CreateByteField (BUFB, 0x07, DBT5)
        CreateByteField (BUFB, 0x08, DBT6)
        CreateByteField (BUFB, 0x09, DBT7)
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
        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {
            Acquire (\_SB.MUTX, 0xFFFF)
            If ((Arg1 == One))
            {
                \_SB.ECOK = One
            }
            Else
            {
                \_SB.ECOK = Zero
            }

            Release (\_SB.MUTX)
        }

        Method (RWEC, 2, NotSerialized)
        {
            Local1 = Buffer (0x0100){}
            If (((Arg0 > 0x03) || (Arg0 < Zero)))
            {
                Return (Zero)
            }

            If ((Arg0 == Zero))
            {
                If ((Arg1 == One))
                {
                    Local1 = \_SB.I2C8.RM01
                }
                ElseIf ((Arg1 == 0x02))
                {
                    Local1 = \_SB.I2C8.RM02
                }
                ElseIf ((Arg1 == 0x03))
                {
                    Local1 = \_SB.I2C8.RM03
                }
                ElseIf ((Arg1 == 0x04))
                {
                    Local1 = \_SB.I2C8.RM04
                }
                ElseIf ((Arg1 == 0x05))
                {
                    Local1 = \_SB.I2C8.RM05
                }
                ElseIf ((Arg1 == 0x06))
                {
                    Local1 = \_SB.I2C8.RM06
                }
                ElseIf ((Arg1 == 0x07))
                {
                    Local1 = \_SB.I2C8.RM07
                }
                ElseIf ((Arg1 == 0x08))
                {
                    Local1 = \_SB.I2C8.RM08
                }
                ElseIf ((Arg1 == 0x10))
                {
                    Local1 = \_SB.I2C8.RM10
                }
                ElseIf ((Arg1 == 0x20))
                {
                    Local1 = \_SB.I2C8.RM20
                }
                ElseIf ((Arg1 == 0x40))
                {
                    Local1 = \_SB.I2C8.RM40
                }

                Return (Local1)
            }
            ElseIf ((Arg0 == One))
            {
                If ((Arg1 == One))
                {
                    \_SB.I2C8.WM01 = BUF8 /* \_SB_.I2C8.BUF8 */
                }
                ElseIf ((Arg1 == 0x02))
                {
                    \_SB.I2C8.WM02 = BUF8 /* \_SB_.I2C8.BUF8 */
                }
                ElseIf ((Arg1 == 0x03))
                {
                    \_SB.I2C8.WM03 = BUF8 /* \_SB_.I2C8.BUF8 */
                }
                ElseIf ((Arg1 == 0x04))
                {
                    \_SB.I2C8.WM04 = BUF8 /* \_SB_.I2C8.BUF8 */
                }
                ElseIf ((Arg1 == 0x05))
                {
                    \_SB.I2C8.WM05 = BUF8 /* \_SB_.I2C8.BUF8 */
                }
                ElseIf ((Arg1 == 0x06))
                {
                    \_SB.I2C8.WM06 = BUF8 /* \_SB_.I2C8.BUF8 */
                }
                ElseIf ((Arg1 == 0x07))
                {
                    \_SB.I2C8.WM07 = BUF8 /* \_SB_.I2C8.BUF8 */
                }
                ElseIf ((Arg1 == 0x08))
                {
                    \_SB.I2C8.WM08 = BUF8 /* \_SB_.I2C8.BUF8 */
                }
                ElseIf ((Arg1 == 0x10))
                {
                    \_SB.I2C8.WM10 = BUF8 /* \_SB_.I2C8.BUF8 */
                }
                ElseIf ((Arg1 == 0x20))
                {
                    \_SB.I2C8.WM20 = BUF8 /* \_SB_.I2C8.BUF8 */
                }
                ElseIf ((Arg1 == 0x40))
                {
                    \_SB.I2C8.WM40 = BUF8 /* \_SB_.I2C8.BUF8 */
                }
            }
            ElseIf ((Arg0 == 0x02))
            {
                If ((Arg1 == One))
                {
                    Local1 = \_SB.I2C8.RS01
                }
                ElseIf ((Arg1 == 0x02))
                {
                    Local1 = \_SB.I2C8.RS02
                }
                ElseIf ((Arg1 == 0x03))
                {
                    Local1 = \_SB.I2C8.RS03
                }
                ElseIf ((Arg1 == 0x04))
                {
                    Local1 = \_SB.I2C8.RS04
                }
                ElseIf ((Arg1 == 0x05))
                {
                    Local1 = \_SB.I2C8.RS05
                }
                ElseIf ((Arg1 == 0x06))
                {
                    Local1 = \_SB.I2C8.RS06
                }
                ElseIf ((Arg1 == 0x07))
                {
                    Local1 = \_SB.I2C8.RS07
                }
                ElseIf ((Arg1 == 0x08))
                {
                    Local1 = \_SB.I2C8.RS08
                }
                ElseIf ((Arg1 == 0x10))
                {
                    Local1 = \_SB.I2C8.RS10
                }
                ElseIf ((Arg1 == 0x20))
                {
                    Local1 = \_SB.I2C8.RS20
                }
                ElseIf ((Arg1 == 0x40))
                {
                    Local1 = \_SB.I2C8.RS40
                }

                Return (Local1)
            }
            ElseIf ((Arg0 == 0x03))
            {
                If ((Arg1 == One))
                {
                    \_SB.I2C8.WS01 = BUFA /* \_SB_.I2C8.BUFA */
                }
                ElseIf ((Arg1 == 0x02))
                {
                    \_SB.I2C8.WS02 = BUFA /* \_SB_.I2C8.BUFA */
                }
                ElseIf ((Arg1 == 0x03))
                {
                    \_SB.I2C8.WS03 = BUFA /* \_SB_.I2C8.BUFA */
                }
                ElseIf ((Arg1 == 0x04))
                {
                    \_SB.I2C8.WS04 = BUFA /* \_SB_.I2C8.BUFA */
                }
                ElseIf ((Arg1 == 0x05))
                {
                    \_SB.I2C8.WS05 = BUFA /* \_SB_.I2C8.BUFA */
                }
                ElseIf ((Arg1 == 0x06))
                {
                    \_SB.I2C8.WS06 = BUFA /* \_SB_.I2C8.BUFA */
                }
                ElseIf ((Arg1 == 0x07))
                {
                    \_SB.I2C8.WS07 = BUFA /* \_SB_.I2C8.BUFA */
                }
                ElseIf ((Arg1 == 0x08))
                {
                    \_SB.I2C8.WS08 = BUFA /* \_SB_.I2C8.BUFA */
                }
                ElseIf ((Arg1 == 0x10))
                {
                    \_SB.I2C8.WS10 = BUFA /* \_SB_.I2C8.BUFA */
                }
                ElseIf ((Arg1 == 0x20))
                {
                    \_SB.I2C8.WS20 = BUFA /* \_SB_.I2C8.BUFA */
                }
                ElseIf ((Arg1 == 0x40))
                {
                    \_SB.I2C8.WS40 = BUFA /* \_SB_.I2C8.BUFA */
                }
            }

            Sleep (0x0D)
        }

        Method (NREP, 2, NotSerialized)
        {
            Acquire (\_SB.MUTX, 0xFFFF)
            Local1 = Buffer (0x0100){}
            If ((\_SB.ECOK == One))
            {
                Local0 = Zero
                Acquire (\_SB.MUT0, 0xFFFF)
                BST3 = Zero
                BLN2 = 0x04
                D3T0 = 0x02
                Divide (Arg0, 0x00010000, Local0, Local2)
                D3T1 = Local2
                Divide (Local0, 0x0100, Local0, Local2)
                D3T2 = Local2
                D3T3 = Local0
                \_SB.I2C8.RFCA = BUF3 /* \_SB_.I2C8.BUF3 */
                Sleep (0x0D)
                BUF9 = RWEC (Zero, Arg1)
                If ((DerefOf (BUF9 [Zero]) == Zero))
                {
                    Local2 = Zero
                    While ((Local2 < Arg1))
                    {
                        Local1 [Local2] = DerefOf (BUF9 [(Local2 + 0x02)]
                            )
                        Local2++
                    }
                }

                Release (\_SB.MUT0)
            }

            Release (\_SB.MUTX)
            Return (Local1)
        }

        Method (ERSE, 1, NotSerialized)
        {
            Local0 = Zero
            BST4 = Zero
            BLN4 = 0x05
            D4T0 = 0x02
            D4T1 = 0x20
            Divide (Arg0, 0x00010000, Local0, Local2)
            D4T2 = Local2
            Divide (Local0, 0x0100, Local0, Local2)
            D4T3 = Local2
            D4T4 = Local0
            \_SB.I2C8.FLER = BUF4 /* \_SB_.I2C8.BUF4 */
            Sleep (0x32)
        }

        Method (WEEP, 3, NotSerialized)
        {
            Local1 = Arg1
            BST8 = Zero
            BLN8 = (Arg2 + 0x05)
            D8T0 = 0x02
            D8T1 = Arg2
            Divide (Arg0, 0x00010000, Local0, Local2)
            D8T2 = Local2
            Divide (Arg0, 0x0100, Local0, Local2)
            D8T3 = Local2
            D8T4 = Local0
            Local2 = Zero
            While ((Local2 < Arg2))
            {
                BUF8 [(Local2 + 0x07)] = DerefOf (Local1 [Local2]
                    )
                Local2++
            }

            RWEC (One, Arg2)
        }

        Method (NWEP, 3, NotSerialized)
        {
            Acquire (\_SB.MUTX, 0xFFFF)
            If ((\_SB.ECOK == One))
            {
                Local1 = Arg1
                Local0 = Zero
                Acquire (\_SB.MUT0, 0xFFFF)
                BST4 = Zero
                BLN4 = 0x05
                D4T0 = 0x02
                D4T1 = 0x20
                Divide (Arg0, 0x00010000, Local0, Local2)
                D4T2 = Local2
                Divide (Local0, 0x0100, Local0, Local2)
                D4T3 = Local2
                D4T4 = Local0
                \_SB.I2C8.FLER = BUF4 /* \_SB_.I2C8.BUF4 */
                Sleep (0x32)
                BST8 = Zero
                BLN8 = (Arg2 + 0x05)
                D8T0 = 0x02
                D8T1 = Arg2
                Divide (Arg0, 0x00010000, Local0, Local2)
                D8T2 = Local2
                Divide (Arg0, 0x0100, Local0, Local2)
                D8T3 = Local2
                D8T4 = Local0
                Local2 = Zero
                While ((Local2 < Arg2))
                {
                    BUF8 [(Local2 + 0x07)] = DerefOf (Local1 [Local2]
                        )
                    Local2++
                }

                RWEC (One, Arg2)
                Release (\_SB.MUT0)
            }

            Release (\_SB.MUTX)
        }

        Method (RESP, 2, NotSerialized)
        {
            Acquire (\_SB.MUTX, 0xFFFF)
            Local1 = Buffer (0x0100){}
            If ((\_SB.ECOK == One))
            {
                Acquire (\_SB.MUT0, 0xFFFF)
                BST0 = Zero
                BLN0 = One
                D0T0 = Arg0
                \_SB.I2C8.RS01 = BUF0 /* \_SB_.I2C8.BUF0 */
                BUFB = RWEC (0x02, Arg1)
                If ((DerefOf (BUFB [Zero]) == Zero))
                {
                    Local2 = Zero
                    While ((Local2 < Arg1))
                    {
                        Local1 [Local2] = DerefOf (BUFB [(Local2 + 0x02)]
                            )
                        Local2++
                    }
                }

                Release (\_SB.MUT0)
            }

            Release (\_SB.MUTX)
            Return (Local1)
        }

        Method (WRSP, 3, NotSerialized)
        {
            Acquire (\_SB.MUTX, 0xFFFF)
            If ((\_SB.ECOK == One))
            {
                Acquire (\_SB.MUT0, 0xFFFF)
                Local1 = Arg1
                BSTA = Zero
                BLNA = (Arg2 + One)
                DAT0 = Arg0
                Local2 = Zero
                While ((Local2 < Arg2))
                {
                    BUFA [(Local2 + 0x03)] = DerefOf (Local1 [Local2]
                        )
                    Local2++
                }

                RWEC (0x03, Arg2)
                Release (\_SB.MUT0)
            }

            Release (\_SB.MUTX)
        }

        Method (GEVT, 0, NotSerialized)
        {
            Acquire (\_SB.MUTX, 0xFFFF)
            Local0 = 0xFF
            If ((\_SB.ECOK == One))
            {
                Sleep (0x0D)
                Acquire (\_SB.MUT0, 0xFFFF)
                BUF0 = \_SB.I2C8.GENM
                Release (\_SB.MUT0)
                If ((BST0 != One))
                {
                    Local0 = D0T0 /* \_SB_.I2C8.D0T0 */
                }
            }

            Release (\_SB.MUTX)
            Return (Local0)
        }

        Method (INTC, 0, Serialized)
        {
            Local0 = GEVT ()
            Switch (Local0)
            {
                Case (0x10)
                {
                    Acquire (\_SB.MUTX, 0xFFFF)
                    If ((\_SB.ECOK == One))
                    {
                        Acquire (\_SB.MUT0, 0xFFFF)
                        BST0 = Zero
                        BLN0 = One
                        D0T0 = Zero
                        \_SB.I2C8.CMA0 = BUF0 /* \_SB_.I2C8.BUF0 */
                        BUFS = \_SB.I2C8.RBA0
                        Release (\_SB.MUT0)
                        If ((DerefOf (BUFS [Zero]) == Zero))
                        {
                            \_SB.UBTC.MGI0 = DerefOf (BUFS [0x12])
                            \_SB.UBTC.MGI1 = DerefOf (BUFS [0x13])
                            \_SB.UBTC.MGI2 = DerefOf (BUFS [0x14])
                            \_SB.UBTC.MGI3 = DerefOf (BUFS [0x15])
                            \_SB.UBTC.MGI4 = DerefOf (BUFS [0x16])
                            \_SB.UBTC.MGI5 = DerefOf (BUFS [0x17])
                            \_SB.UBTC.MGI6 = DerefOf (BUFS [0x18])
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
                            \_SB.UBTC.VER1 = DerefOf (BUFS [0x02])
                            \_SB.UBTC.VER2 = DerefOf (BUFS [0x03])
                        }

                        Notify (\_SB.UBTC, 0x80) // Status Change
                    }

                    Release (\_SB.MUTX)
                }
                Case (0x11)
                {
                }
                Case (0x12)
                {
                }
                Case (0x20)
                {
                    \_SB.LID0.LIDB = One
                    Notify (\_SB.LID0, 0x80) // Status Change
                }
                Case (0x21)
                {
                    \_SB.LID0.LIDB = Zero
                    Notify (\_SB.LID0, 0x80) // Status Change
                }
                Case (0x22)
                {
                    Notify (\_SB.ADP1, 0x80) // Status Change
                    Notify (\_SB.BATC, 0x81) // Information Change
                    Notify (\_SB.BATC, 0x80) // Status Change
                }
                Case (0x23)
                {
                    Notify (\_SB.ADP1, 0x80) // Status Change
                    Notify (\_SB.BATC, 0x81) // Information Change
                    Notify (\_SB.BATC, 0x80) // Status Change
                }
                Case (0x30)
                {
                    Notify (\_SB.BATC, 0x80) // Status Change
                }
                Case (0x31)
                {
                    Notify (\_SB.BATC, 0x80) // Status Change
                    Notify (\_SB.BATC, 0x81) // Information Change
                }
                Case (0x32)
                {
                    Notify (\_SB.BATC, 0x80) // Status Change
                }
                Case (0x40)
                {
                    Acquire (\_SB.MUTX, 0xFFFF)
                    If ((\_SB.ECOK == One))
                    {
                        Acquire (\_SB.MUT0, 0xFFFF)
                        BST1 = Zero
                        BLN1 = One
                        D1T0 = 0x40
                        \_SB.I2C8.RS01 = BUF1 /* \_SB_.I2C8.BUF1 */
                        BUF7 = \_SB.I2C8.RS08
                        Release (\_SB.MUT0)
                        \_SB.CCST = D7T0 /* \_SB_.I2C8.D7T0 */
                        \_SB.MUXC = D7T1 /* \_SB_.I2C8.D7T1 */
                        \_SB.DPPN = D7T2 /* \_SB_.I2C8.D7T2 */
                        \_SB.HSFL = D7T7 /* \_SB_.I2C8.D7T7 */
                        Notify (\_SB.UCP0, 0xA0) // Device-Specific
                    }

                    Release (\_SB.MUTX)
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
                Case (0x0140)
                {
                    \_SB.I2C8.INTC ()
                }

            }
        }
    }

    Scope (\_SB.I2C4)
    {
        Device (TCPD)
        {
            Name (_ADR, One)  // _ADR: Address
            Name (_HID, "HTIX5288")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.I2C4, 
                \_SB.GIO0, 
                \_SB.PEP0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x002C, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2C4",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0003
                        }
                })
                Return (RBUF) /* \_SB_.I2C4.TCPD._CRS.RBUF */
            }

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
                    }

                    If ((Arg2 == One))
                    {
                        Debug = "Method _DSM Function HID"
                        Return (0x20)
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

    Scope (\_SB.I2C1)
    {
        Device (ECKB)
        {
            Name (_ADR, One)  // _ADR: Address
            Name (_HID, "QTEC0001")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.I2C1, 
                \_SB.GIO0, 
                \_SB.PEP0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x003A, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2C1",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0034
                        }
                })
                Return (RBUF) /* \_SB_.I2C1.ECKB._CRS.RBUF */
            }

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
                \_SB.I2C8, 
                \_SB.PMIC
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
                "HB30C4J7ECW-21", 
                "123456789", 
                "LION", 
                "QCOM"
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
                If ((\_SB.ECOK == One))
                {
                    Acquire (\_SB.MUT0, 0xFFFF)
                    If ((CMFG == One))
                    {
                        BTS1 = Zero
                        BTL1 = One
                        B1T0 = 0x8C
                        \_SB.I2C8.RS01 = BTB1 /* \_SB_.BATC.BTB1 */
                        BTB2 = \_SB.I2C8.RS01
                        If ((BTS2 == Zero))
                        {
                            If ((B2D0 == One))
                            {
                                BIXP [0x13] = "DYNAPACK"
                            }
                            ElseIf ((B2D0 == 0x02))
                            {
                                BIXP [0x13] = "Sunwoda-S"
                            }
                            Else
                            {
                                BIXP [0x13] = "Unknown"
                            }
                        }

                        CMFG = 0x02
                    }

                    BTS1 = Zero
                    BTL1 = One
                    B1T0 = 0x80
                    \_SB.I2C8.RS01 = BTB1 /* \_SB_.BATC.BTB1 */
                    BTB1 = \_SB.I2C8.RS20
                    If ((BTS1 == Zero))
                    {
                        ToDecimalString (MEGD (DerefOf (BTB1 [0x05]), DerefOf (BTB1 [0x04])), 
                            SRNM) /* \_SB_.BATC.SRNM */
                        Local1 = Zero
                        Local1 = MEGD (DerefOf (BTB1 [0x07]), DerefOf (BTB1 [0x06]
                            ))
                        Local1 &= 0xFFFFFFFF
                        DSCP = Local1
                        Local1 = Zero
                        Local1 = MEGD (DerefOf (BTB1 [0x09]), DerefOf (BTB1 [0x08]
                            ))
                        Local1 &= 0xFFFFFFFF
                        DSVO = Local1
                        Local1 = Zero
                        Local1 = MEGD (DerefOf (BTB1 [0x17]), DerefOf (BTB1 [0x16]
                            ))
                        Local1 &= 0xFFFFFFFF
                        BCLP = Local1
                        BIXP [0x03] = Local1
                        Local1 = Zero
                        Local1 = MEGD (DerefOf (BTB1 [0x1B]), DerefOf (BTB1 [0x1A]
                            ))
                        Local1 &= 0xFFFFFFFF
                        BCCL = Local1
                    }

                    Release (\_SB.MUT0)
                }

                BIXP [0x02] = DSCP /* \_SB_.BATC.DSCP */
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
                If ((\_SB.ECOK == One))
                {
                    Acquire (\_SB.MUT0, 0xFFFF)
                    BTS0 = Zero
                    BTL0 = One
                    B0D0 = 0xDD
                    \_SB.I2C8.RS01 = BTB0 /* \_SB_.BATC.BTB0 */
                    BTB0 = \_SB.I2C8.RS01
                    If ((BTS0 == Zero))
                    {
                        Local1 = Zero
                        Local1 = (B0D0 & 0x03)
                        BSTP [Zero] = Local1
                    }

                    BTS1 = Zero
                    BTL1 = One
                    B1T0 = 0x80
                    \_SB.I2C8.RS01 = BTB1 /* \_SB_.BATC.BTB1 */
                    BTB1 = \_SB.I2C8.RS20
                    If ((BTS1 == Zero))
                    {
                        Local1 = Zero
                        Local1 = MEGD (DerefOf (BTB1 [0x13]), DerefOf (BTB1 [0x12]
                            ))
                        Local1 &= 0xFFFFFFFF
                        BSTP [0x03] = Local1
                        Local1 = Zero
                        Local1 = MEGD (DerefOf (BTB1 [0x15]), DerefOf (BTB1 [0x14]
                            ))
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

                        Local1 = Zero
                        Local1 = MEGD (DerefOf (BTB1 [0x19]), DerefOf (BTB1 [0x18]
                            ))
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
                If ((\_SB.ECOK == One))
                {
                    Acquire (\_SB.MUT0, 0xFFFF)
                    BTS0 = Zero
                    BTL0 = One
                    B0D0 = 0xDB
                    \_SB.I2C8.RS01 = BTB0 /* \_SB_.BATC.BTB0 */
                    BTB0 = \_SB.I2C8.RS01
                    If ((BTS0 == Zero))
                    {
                        Local1 = (DerefOf (BTB0 [0x02]) & 0x02)
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
                If ((\_SB.ECOK == One))
                {
                    Acquire (\_SB.MUT0, 0xFFFF)
                    BTS0 = Zero
                    BTL0 = One
                    B0D0 = 0xDB
                    \_SB.I2C8.RS01 = BTB0 /* \_SB_.BATC.BTB0 */
                    BTB0 = \_SB.I2C8.RS01
                    If ((BTS0 == Zero))
                    {
                        Local1 = (DerefOf (BTB0 [0x02]) & One)
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
                Return (LIDB) /* \_SB_.LID0.LIDB */
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (\_SB.GIO0.GABL)
                {
                    LIDB = One
                    Notify (\_SB.LID0, 0x80) // Status Change
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (\_SB.GIO0.GABL)
                {
                    LIDB = Zero
                    Notify (\_SB.LID0, 0x80) // Status Change
                }
            }
        }
    }

    Device (WMIH)
    {
        Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
        Name (_UID, "HWMI")  // _UID: Unique ID
        Name (BATA, Buffer (0x0100){})
        Name (WMIO, 0x55AAAA55)
        Name (IBUF, Buffer (0x0100){})
        Name (HEDB, Buffer (0x0100){})
        Name (TM64, Buffer (0x40){})
        Name (ODAT, Buffer (0x010E){})
        Mutex (OWMI, 0x00)
        Name (_WDG, Buffer (0x28)
        {
            /* 0000 */  0x5B, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,  // [.......
            /* 0008 */  0xA0, 0x00, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,  // ....)...
            /* 0010 */  0x45, 0x31, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  // E1..!...
            /* 0018 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
            /* 0020 */  0xC9, 0x06, 0x29, 0x10, 0x43, 0x41, 0x01, 0x00   // ..).CA..
        })
        Name (ITEM, Package (0x05)
        {
            Package (0x03)
            {
                Zero, 
                "Secure Boot", 
                Zero
            }, 

            Package (0x03)
            {
                0x22, 
                "PXE Device Enable", 
                Zero
            }, 

            Package (0x03)
            {
                0x30, 
                "Keep Setup Values after BIOS Update", 
                Zero
            }, 

            Package (0x03)
            {
                0x40, 
                "Other Wakeup Source", 
                Zero
            }, 

            Package (0x03)
            {
                0x50, 
                "Bootable Device", 
                One
            }
        })
        Name (SEPD, Buffer (0x0101)
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
            /* 00F0 */  0x00                                             // .
        })
        Method (THEX, 1, NotSerialized)
        {
            If (((Arg0 >= 0x30) && (Arg0 <= 0x39)))
            {
                Return ((Arg0 - 0x30))
            }
            ElseIf (((Arg0 >= 0x41) && (Arg0 <= 0x46)))
            {
                Return ((Arg0 - 0x37))
            }
            ElseIf (((Arg0 >= 0x61) && (Arg0 <= 0x66)))
            {
                Return ((Arg0 - 0x57))
            }
            ElseIf (((Arg0 == 0x58) || (Arg0 == 0x78)))
            {
                Return (0xFE)
            }
            Else
            {
                Return (0xFF)
            }
        }

        Method (GVER, 0, NotSerialized)
        {
            ODAT [0x05] = One
            ODAT [0x07] = 0x08
            Return (Zero)
        }

        Method (GTSI, 0, NotSerialized)
        {
            ODAT [0x05] = 0x80
            ODAT [0x06] = 0x41
            ODAT [0x07] = Zero
            Return (Zero)
        }

        Method (GTMP, 1, NotSerialized)
        {
            If (((Arg0 != 0x07) && (Arg0 != 0x08)))
            {
                If ((Arg0 != 0x0E))
                {
                    Return (One)
                }
            }

            Local0 = \_SB.I2C8.RESP (0x2C, One)
            If ((Arg0 == 0x07))
            {
                Local1 = \_SB.I2C8.RESP (0x21, One)
                If (((DerefOf (Local0 [Zero]) & 0x04) == Zero))
                {
                    ODAT [0x05] = Zero
                }
                Else
                {
                    ODAT [0x05] = One
                }
            }

            If ((Arg0 == 0x08))
            {
                Local1 = \_SB.I2C8.RESP (0x22, One)
                If (((DerefOf (Local0 [Zero]) & 0x02) == Zero))
                {
                    ODAT [0x05] = Zero
                }
                Else
                {
                    ODAT [0x05] = One
                }
            }

            If ((Arg0 == 0x0E))
            {
                Local1 = \_SB.I2C8.RESP (0x9A, One)
                If (((DerefOf (Local0 [Zero]) & One) == Zero))
                {
                    ODAT [0x05] = Zero
                }
                Else
                {
                    ODAT [0x05] = One
                }
            }

            ODAT [0x06] = DerefOf (Local1 [Zero])
            ODAT [0x07] = Zero
            Return (Zero)
        }

        Method (STMT, 5, NotSerialized)
        {
            If (((Arg0 != 0x07) && (Arg0 != 0x08)))
            {
                If ((Arg0 != 0x0E))
                {
                    Return (One)
                }
            }

            Local1 = Buffer (0x0100){}
            Local2 = Buffer (0x0100){}
            Local3 = Buffer (0x0100){}
            Local0 = \_SB.I2C8.RESP (0x2B, One)
            If ((Arg0 == 0x07))
            {
                If ((Arg1 == Zero))
                {
                    Local1 [Zero] = (DerefOf (Local0 [Zero]) & 0xDF)
                }
                Else
                {
                    Local1 [Zero] = (DerefOf (Local0 [Zero]) | 0x20)
                }

                Local3 [Zero] = Arg2
                If ((Arg3 == Zero))
                {
                    Local2 [Zero] = (DerefOf (Local1 [Zero]) & 0xEF)
                }
                Else
                {
                    Local2 [Zero] = (DerefOf (Local1 [Zero]) | 0x10)
                }

                Local3 [One] = Arg4
                \_SB.I2C8.WRSP (0x2B, Local2, One)
                \_SB.I2C8.WRSP (0x25, Local3, 0x02)
            }

            If ((Arg0 == 0x08))
            {
                If ((Arg1 == Zero))
                {
                    Local1 [Zero] = (DerefOf (Local0 [Zero]) & 0xF7)
                }
                Else
                {
                    Local1 [Zero] = (DerefOf (Local0 [Zero]) | 0x08)
                }

                Local3 [Zero] = Arg2
                If ((Arg3 == Zero))
                {
                    Local2 [Zero] = (DerefOf (Local1 [Zero]) & 0xFB)
                }
                Else
                {
                    Local2 [Zero] = (DerefOf (Local1 [Zero]) | 0x04)
                }

                Local3 [One] = Arg4
                \_SB.I2C8.WRSP (0x2B, Local2, One)
                \_SB.I2C8.WRSP (0x27, Local3, 0x02)
            }

            If ((Arg0 == 0x0E))
            {
                If ((Arg1 == Zero))
                {
                    Local1 [Zero] = (DerefOf (Local0 [Zero]) & 0xFD)
                }
                Else
                {
                    Local1 [Zero] = (DerefOf (Local0 [Zero]) | 0x02)
                }

                Local3 [Zero] = Arg2
                If ((Arg3 == Zero))
                {
                    Local2 [Zero] = (DerefOf (Local1 [Zero]) & 0xFE)
                }
                Else
                {
                    Local2 [Zero] = (DerefOf (Local1 [Zero]) | One)
                }

                Local3 [One] = Arg4
                \_SB.I2C8.WRSP (0x2B, Local2, One)
                \_SB.I2C8.WRSP (0x29, Local3, 0x02)
            }

            Return (Zero)
        }

        Method (GPSI, 0, NotSerialized)
        {
            ODAT [0x05] = 0x0C
            Return (Zero)
        }

        Method (GPCI, 1, NotSerialized)
        {
            If (((Arg0 != 0x02) && (Arg0 != 0x03)))
            {
                Return (One)
            }

            If ((Arg0 == 0x02))
            {
                Local1 = \_SB.I2C8.RESP (0x90, 0x04)
                Local2 = ((DerefOf (Local1 [One]) * 0x10) + DerefOf (
                    Local1 [Zero]))
                Divide (Local2, 0x03E8, Local0, Local2)
                Local3 = ((DerefOf (Local1 [0x03]) * 0x10) + DerefOf (
                    Local1 [0x02]))
                Divide (Local3, 0x03E8, Local0, Local3)
                Local4 = (Local2 * Local3)
            }

            If ((Arg0 == 0x03))
            {
                Local1 = \_SB.I2C8.RESP (0x88, 0x04)
                Local2 = ((DerefOf (Local1 [One]) * 0x10) + DerefOf (
                    Local1 [Zero]))
                Divide (Local2, 0x03E8, Local0, Local2)
                Local3 = ((DerefOf (Local1 [0x03]) * 0x10) + DerefOf (
                    Local1 [0x02]))
                Divide (Local3, 0x03E8, Local0, Local3)
                Local4 = (Local2 * Local3)
            }

            ODAT [0x05] = Local4
            Return (Zero)
        }

        Method (GCVA, 1, NotSerialized)
        {
            If (((Arg0 != Zero) && (Arg0 != 0x10)))
            {
                If (((Arg0 != 0x20) && (Arg0 != 0x30)))
                {
                    Return (One)
                }
            }

            If ((Arg0 == Zero))
            {
                Local1 = \_SB.I2C8.RESP (0x3C, 0x02)
                ODAT [0x05] = Zero
                ODAT [0x06] = DerefOf (Local1 [Zero])
                ODAT [0x07] = DerefOf (Local1 [One])
            }

            If ((Arg0 == 0x10))
            {
                Local1 = \_SB.I2C8.RESP (0x3A, 0x02)
                ODAT [0x05] = Zero
                ODAT [0x06] = DerefOf (Local1 [Zero])
                ODAT [0x07] = DerefOf (Local1 [One])
            }

            If ((Arg0 == 0x20))
            {
                Local1 = \_SB.I2C8.RESP (0x90, 0x02)
                ODAT [0x05] = Zero
                ODAT [0x06] = DerefOf (Local1 [Zero])
                ODAT [0x07] = DerefOf (Local1 [One])
            }

            If ((Arg0 == 0x30))
            {
                Local1 = \_SB.I2C8.RESP (0x92, 0x02)
                Local2 = (DerefOf (Local1 [One]) & 0x80)
                If ((Local2 == Zero))
                {
                    ODAT [0x05] = Zero
                }
                Else
                {
                    ODAT [0x05] = One
                }

                ODAT [0x06] = DerefOf (Local1 [Zero])
                Local2 = (DerefOf (Local1 [One]) & 0x7F)
                ODAT [0x07] = Local2
            }

            Return (Zero)
        }

        Method (SBTT, 2, NotSerialized)
        {
            Local1 = Buffer (0x0100){}
            If (((Arg0 > 0x64) || (Arg0 < Zero)))
            {
                Return (One)
            }

            If (((Arg1 > 0x64) || (Arg1 < Zero)))
            {
                Return (One)
            }

            Local1 [Zero] = Arg0
            Local1 [One] = Arg1
            \_SB.I2C8.WRSP (0xD5, Local1, 0x02)
            Return (Zero)
        }

        Method (GBTT, 0, NotSerialized)
        {
            Local1 = \_SB.I2C8.RESP (0xD5, 0x02)
            ODAT [0x05] = DerefOf (Local1 [Zero])
            ODAT [0x06] = DerefOf (Local1 [One])
            Return (Zero)
        }

        Method (GFRS, 0, NotSerialized)
        {
            Local0 = \_SB.I2C8.RESP (0x2D, Zero)
            If (((DerefOf (Local0 [Zero]) & 0x04) == Zero))
            {
                ODAT [0x05] = One
            }
            Else
            {
                ODAT [0x05] = 0x02
            }

            Return (Zero)
        }

        Method (SFRS, 1, NotSerialized)
        {
            If (((Arg0 != One) && (Arg0 != 0x02)))
            {
                Return (One)
            }

            Local0 = \_SB.I2C8.RESP (0x2D, Zero)
            If ((Arg0 == One))
            {
                Local1 = (DerefOf (Local0 [Zero]) & 0xFE)
                Local1 |= 0x02
                Local0 [Zero] = Local1
                \_SB.I2C8.WRSP (0x2D, Local0, One)
            }
            Else
            {
                Local1 = (DerefOf (Local0 [Zero]) | One)
                Local1 |= 0x02
                Local0 [Zero] = Local1
                \_SB.I2C8.WRSP (0x2D, Local0, One)
            }

            Return (Zero)
        }

        Method (GSTP, 1, NotSerialized)
        {
            If (((Arg0 != Zero) && (Arg0 != 0x22)))
            {
                If (((Arg0 != 0x30) && (Arg0 != 0x40)))
                {
                    If ((Arg0 != 0x50))
                    {
                        Return (One)
                    }
                }
            }

            Local0 = (0x00082000 + Arg0)
            Local1 = \_SB.I2C8.NREP (Local0, One)
            ODAT [0x05] = DerefOf (Local1 [Zero])
            Return (Zero)
        }

        Method (SSTP, 2, NotSerialized)
        {
            Local0 = Zero
            Local1 = Zero
            While ((Local0 < 0x04))
            {
                Local1 = ((Local0 * 0x40) + 0x00082000)
                TM64 = \_SB.I2C8.NREP (Local1, 0x40)
                Local2 = Zero
                While ((Local2 < 0x40))
                {
                    SEPD [((Local0 * 0x40) + Local2)] = DerefOf (
                        TM64 [Local2])
                    Local2++
                }

                Sleep (0x0A)
                Local0++
            }

            If (((Arg0 != Zero) && (Arg0 != 0x22)))
            {
                If (((Arg0 != 0x30) && (Arg0 != 0x40)))
                {
                    If (((Arg0 != 0x50) && (Arg0 != 0xDF)))
                    {
                        Return (One)
                    }
                }
            }

            If (((Arg0 == Zero) || (Arg0 == 0x22)))
            {
                If (((Arg1 != Zero) && (Arg1 != One)))
                {
                    Return (One)
                }
            }

            If (((Arg0 == 0x30) || (Arg0 == 0x40)))
            {
                If (((Arg1 != Zero) && (Arg1 != One)))
                {
                    Return (One)
                }
            }

            If ((Arg0 == 0x50))
            {
                If (((Arg1 != Zero) && (Arg1 != One)))
                {
                    If (((Arg1 != 0x02) && (Arg1 != 0x03)))
                    {
                        If (((Arg1 != 0x04) && (Arg1 != 0x05)))
                        {
                            Return (One)
                        }
                    }
                }
            }

            If ((Arg0 != 0xDF))
            {
                SEPD [Arg0] = Arg1
            }
            Else
            {
                SEPD [Zero] = One
                SEPD [0x22] = Zero
                SEPD [0x30] = One
                SEPD [0x40] = One
                SEPD [0x50] = Zero
            }

            Acquire (\_SB.MUTX, 0xFFFF)
            If ((\_SB.ECOK == One))
            {
                Acquire (\_SB.MUT0, 0xFFFF)
                \_SB.I2C8.ERSE (0x00082000)
                Local0 = Zero
                Local1 = Zero
                While ((Local0 < 0x04))
                {
                    Local1 = ((Local0 * 0x40) + 0x00082000)
                    Local2 = Zero
                    While ((Local2 < 0x40))
                    {
                        TM64 [Local2] = DerefOf (SEPD [((Local0 * 0x40
                            ) + Local2)])
                        Local2++
                    }

                    \_SB.I2C8.WEEP (Local1, TM64, 0x40)
                    Sleep (0x0A)
                    Local0++
                }

                Release (\_SB.MUT0)
            }

            Release (\_SB.MUTX)
            Return (Zero)
        }

        Method (WME1, 3, Serialized)
        {
            Acquire (OWMI, 0xFFFF)
            Local0 = SizeOf (Arg2)
            CreateByteField (Arg2, Zero, IPD0)
            CreateByteField (Arg2, One, IPD1)
            CreateByteField (Arg2, 0x02, IPD2)
            CreateByteField (Arg2, 0x03, IPD3)
            CreateByteField (Arg2, 0x04, IPD4)
            CreateByteField (Arg2, 0x05, IPD5)
            CreateByteField (Arg2, 0x06, IPD6)
            CreateByteField (Arg2, 0x07, IPD7)
            Local4 = Zero
            While ((Local4 < 0x08))
            {
                ODAT [Local4] = Zero
                Local4++
            }

            If ((IPD0 == One))
            {
                If ((IPD1 == One))
                {
                    ODAT [0x04] = GVER ()
                }
            }

            If ((IPD0 == 0x02))
            {
                If ((IPD1 == One))
                {
                    ODAT [0x04] = GTSI ()
                }

                If ((IPD1 == 0x02))
                {
                    ODAT [0x04] = GTMP (IPD2)
                }

                If ((IPD1 == 0x03))
                {
                    ODAT [0x04] = STMT (IPD2, IPD4, IPD5, IPD6, IPD7)
                }

                If ((IPD1 == 0x04))
                {
                    ODAT [0x04] = GPSI ()
                }

                If ((IPD1 == 0x05))
                {
                    ODAT [0x04] = GPCI (IPD2)
                }

                If ((IPD1 == 0x09))
                {
                    ODAT [0x04] = GCVA (IPD2)
                }
            }

            If ((IPD0 == 0x03))
            {
                If ((IPD1 == 0x10))
                {
                    ODAT [0x04] = SBTT (IPD2, IPD3)
                }

                If ((IPD1 == 0x02))
                {
                    ODAT [0x04] = GBTT ()
                }
            }

            If ((IPD0 == 0x04))
            {
                If ((IPD1 == 0x06))
                {
                    ODAT [0x04] = GFRS ()
                }

                If ((IPD1 == 0x07))
                {
                    ODAT [0x04] = SFRS (IPD2)
                }
            }

            If ((IPD0 == 0x05))
            {
                If ((IPD1 == One))
                {
                    ODAT [0x04] = GSTP (IPD2)
                }

                If ((IPD1 == 0x02))
                {
                    Local1 = \_SB.I2C8.NREP (0x000820FF, One)
                    If ((DerefOf (Local1 [Zero]) == One))
                    {
                        ODAT [0x04] = One
                    }

                    ODAT [0x04] = SSTP (IPD2, IPD3)
                }
            }

            Release (OWMI)
            Return (ODAT) /* \WMIH.ODAT */
        }

        Name (WQCA, Buffer (0x03EB)
        {
            /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
            /* 0008 */  0xDB, 0x03, 0x00, 0x00, 0x20, 0x0C, 0x00, 0x00,  // .... ...
            /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
            /* 0018 */  0x18, 0xCD, 0x85, 0x00, 0x01, 0x06, 0x18, 0x42,  // .......B
            /* 0020 */  0x10, 0x05, 0x10, 0x92, 0xE2, 0x81, 0x42, 0x04,  // ......B.
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
            /* 01C0 */  0x18, 0xF3, 0x35, 0xA0, 0x53, 0x88, 0x23, 0x82,  // ..5.S.#.
            /* 01C8 */  0xC8, 0xC6, 0x4A, 0x7D, 0xE8, 0xA0, 0x11, 0x57,  // ..J}...W
            /* 01D0 */  0xAB, 0x01, 0xE1, 0xB0, 0x9F, 0x2C, 0x7C, 0x50,  // .....,|P
            /* 01D8 */  0x10, 0x98, 0x4E, 0x24, 0x3C, 0x12, 0x85, 0x82,  // ..N$<...
            /* 01E0 */  0x8F, 0x87, 0x82, 0x3B, 0xEA, 0xC1, 0x84, 0x82,  // ...;....
            /* 01E8 */  0x18, 0xD0, 0x39, 0x20, 0x64, 0xE5, 0x20, 0x80,  // ..9 d. .
            /* 01F0 */  0x52, 0x02, 0xA2, 0x19, 0xBC, 0x4B, 0xBC, 0x3B,  // R....K.;
            /* 01F8 */  0xBC, 0x32, 0xF8, 0xD6, 0x11, 0xE6, 0x88, 0x7C,  // .2.....|
            /* 0200 */  0xFD, 0xF0, 0x75, 0xC1, 0x33, 0xF4, 0x45, 0x80,  // ..u.3.E.
            /* 0208 */  0xDF, 0x50, 0x7C, 0x34, 0x30, 0xB8, 0xD5, 0x08,  // .P|40...
            /* 0210 */  0xF8, 0xFF, 0x03, 0x32, 0x30, 0x7E, 0xD7, 0xE0,  // ...20~..
            /* 0218 */  0x04, 0x75, 0x9D, 0x06, 0xA0, 0x0F, 0xE4, 0x08,  // .u......
            /* 0220 */  0x3C, 0x92, 0x93, 0x31, 0x41, 0x7D, 0x97, 0x01,  // <..1A}..
            /* 0228 */  0x50, 0x00, 0x79, 0xF8, 0x56, 0x7A, 0x03, 0xA0,  // P.y.Vz..
            /* 0230 */  0x63, 0x08, 0x11, 0x26, 0x9A, 0xD1, 0xF9, 0x41,  // c..&...A
            /* 0238 */  0xC3, 0x83, 0xE5, 0x51, 0x60, 0x34, 0x58, 0x83,  // ...Q`4X.
            /* 0240 */  0x78, 0x62, 0x8E, 0x03, 0x21, 0x27, 0x83, 0x45,  // xb..!'.E
            /* 0248 */  0x4D, 0xD2, 0x23, 0xEA, 0xEC, 0x1E, 0xA2, 0x11,  // M.#.....
            /* 0250 */  0xBC, 0xB3, 0xF8, 0x48, 0xF0, 0x16, 0xE1, 0x03,  // ...H....
            /* 0258 */  0x02, 0x9B, 0xEF, 0xC3, 0x06, 0xAC, 0xD3, 0x8A,  // ........
            /* 0260 */  0x67, 0xED, 0x89, 0x18, 0xCE, 0xD3, 0xE5, 0x70,  // g......p
            /* 0268 */  0x9E, 0x2E, 0x1F, 0x8D, 0x0F, 0x13, 0xF0, 0xC7,  // ........
            /* 0270 */  0xCB, 0xE7, 0xE3, 0xE1, 0x11, 0x08, 0x19, 0x39,  // .......9
            /* 0278 */  0x28, 0xD0, 0x71, 0xF9, 0xA4, 0x60, 0xC8, 0xF7,  // (.q..`..
            /* 0280 */  0x96, 0x27, 0x85, 0x83, 0xF1, 0x99, 0x80, 0x13,  // .'......
            /* 0288 */  0x0C, 0x01, 0xA1, 0x03, 0x8A, 0x87, 0x05, 0xAE,  // ........
            /* 0290 */  0xE1, 0x9C, 0xFB, 0xA3, 0x87, 0x97, 0xE5, 0xD1,  // ........
            /* 0298 */  0xC1, 0x3B, 0x34, 0x58, 0xD6, 0xE8, 0x40, 0x33,  // .;4X..@3
            /* 02A0 */  0xAB, 0x07, 0x0F, 0xEC, 0xFF, 0xFF, 0x6E, 0x00,  // ......n.
            /* 02A8 */  0x46, 0x78, 0x4C, 0x6C, 0x08, 0x59, 0x18, 0x0F,  // FxLl.Y..
            /* 02B0 */  0x1D, 0x16, 0x3F, 0x16, 0xF8, 0x96, 0xF1, 0xCE,  // ..?.....
            /* 02B8 */  0xE4, 0x5B, 0x08, 0x6E, 0x4C, 0xAF, 0x05, 0x3E,  // .[.nL..>
            /* 02C0 */  0x07, 0x18, 0xD6, 0xE3, 0xE5, 0xB0, 0x46, 0x0B,  // ......F.
            /* 02C8 */  0x7B, 0xE2, 0xCF, 0x27, 0xBE, 0xDB, 0x78, 0x62,  // {..'..xb
            /* 02D0 */  0xBE, 0x21, 0xB0, 0x53, 0x0D, 0x38, 0x00, 0xF1,  // .!.S.8..
            /* 02D8 */  0xDE, 0x2F, 0x34, 0x64, 0x02, 0x06, 0x64, 0x73,  // ./4d..ds
            /* 02E0 */  0x7C, 0x7C, 0x02, 0xCB, 0xD1, 0xE0, 0x38, 0xCF,  // ||....8.
            /* 02E8 */  0xED, 0x95, 0x89, 0x9F, 0x9E, 0x60, 0x10, 0x38,  // .....`.8
            /* 02F0 */  0xC6, 0xF3, 0xC0, 0x20, 0x5E, 0xA1, 0x84, 0xC3,  // ... ^...
            /* 02F8 */  0xA0, 0x4E, 0x5D, 0xC0, 0xFB, 0xA4, 0xE1, 0x71,  // .N]....q
            /* 0300 */  0x82, 0x63, 0x9A, 0x8F, 0x1D, 0x3E, 0x06, 0x78,  // .c...>.x
            /* 0308 */  0x98, 0xAF, 0x45, 0x51, 0x3C, 0x17, 0x8F, 0xEB,  // ..EQ<...
            /* 0310 */  0x51, 0x80, 0x41, 0xFD, 0xFF, 0x8F, 0xFE, 0xC5,  // Q.A.....
            /* 0318 */  0x20, 0x96, 0x51, 0xCE, 0x2D, 0xD6, 0x01, 0xC4,  //  .Q.-...
            /* 0320 */  0x79, 0x74, 0x30, 0x52, 0xA0, 0x20, 0x07, 0x11,  // yt0R. ..
            /* 0328 */  0x23, 0x90, 0xCF, 0x15, 0x3E, 0x77, 0x81, 0x6B,  // #...>w.k
            /* 0330 */  0x06, 0xCF, 0x5D, 0xC0, 0x38, 0xF2, 0x8B, 0x43,  // ..].8..C
            /* 0338 */  0x67, 0x02, 0x9F, 0xBB, 0x00, 0x7E, 0x44, 0x3F,  // g....~D?
            /* 0340 */  0x02, 0xA1, 0xFF, 0xFF, 0xA3, 0xF0, 0x61, 0x23,  // ......a#
            /* 0348 */  0xE2, 0x61, 0x9C, 0xB6, 0x0F, 0x52, 0x6C, 0xD0,  // .a...Rl.
            /* 0350 */  0x16, 0x75, 0x4A, 0x41, 0x1D, 0x2E, 0x7C, 0x4A,  // .uJA..|J
            /* 0358 */  0x61, 0x87, 0x85, 0xD7, 0x07, 0x43, 0x3C, 0xA4,  // a....C<.
            /* 0360 */  0x60, 0x0E, 0x00, 0x3E, 0x52, 0x80, 0x63, 0x24,  // `..>R.c$
            /* 0368 */  0x98, 0xD3, 0x84, 0x4F, 0x11, 0x3E, 0x0F, 0xFA,  // ...O.>..
            /* 0370 */  0x3E, 0xE1, 0x93, 0x87, 0x61, 0x8C, 0x64, 0x3C,  // >...a.d<
            /* 0378 */  0x1F, 0x29, 0xF0, 0x90, 0x81, 0x5E, 0x29, 0x70,  // .)...^)p
            /* 0380 */  0x07, 0x23, 0x30, 0xCA, 0x3B, 0xB4, 0x81, 0xEE,  // .#0.;...
            /* 0388 */  0xF4, 0x81, 0x39, 0xB3, 0x01, 0x93, 0xAB, 0x87,  // ..9.....
            /* 0390 */  0x87, 0xC0, 0xCF, 0x12, 0x1E, 0x02, 0x1F, 0xC0,  // ........
            /* 0398 */  0x23, 0xC8, 0xD9, 0xF9, 0x1C, 0x74, 0x4E, 0xB8,  // #....tN.
            /* 03A0 */  0xB3, 0x0A, 0x9F, 0x12, 0x6E, 0x00, 0x18, 0x85,  // ....n...
            /* 03A8 */  0x36, 0x7D, 0x6A, 0x34, 0x6A, 0xD5, 0xA0, 0x4C,  // 6}j4j..L
            /* 03B0 */  0x8D, 0x32, 0x0D, 0x6A, 0xF5, 0xA9, 0xD4, 0x98,  // .2.j....
            /* 03B8 */  0xB1, 0x83, 0x83, 0x45, 0xBD, 0x1D, 0x74, 0x38,  // ...E..t8
            /* 03C0 */  0xF0, 0xF1, 0xCD, 0x20, 0xCE, 0x4F, 0x21, 0x23,  // ... .O!#
            /* 03C8 */  0xA3, 0xF3, 0xD9, 0x46, 0x40, 0x0E, 0x0F, 0x22,  // ...F@.."
            /* 03D0 */  0x20, 0x4B, 0x79, 0x1C, 0x09, 0xC8, 0xB1, 0x40,  //  Ky....@
            /* 03D8 */  0x04, 0xE4, 0xFF, 0x7F, 0x48, 0x20, 0x2A, 0xD1,  // ....H *.
            /* 03E0 */  0x04, 0x08, 0x0B, 0x08, 0x42, 0xA3, 0xA9, 0x00,  // ....B...
            /* 03E8 */  0x61, 0xFF, 0x7F                                 // a..
        })
    }

    OperationRegion (GNVS, SystemMemory, 0xFFE58000, 0x001E)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        TSOP,   16, 
        SMBF,   8, 
        FUSE,   8, 
        RPMB,   8, 
        PROD,   8, 
        CPUN,   32, 
        ECFG,   8, 
        RSVD,   152
    }
}

