/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000281 (641)
 *     Revision         0x01
 *     Checksum         0x66
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20230628 (539166248)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "CB-01   ", 0x00000001)
{
    External (_SB_.I2C6, DeviceObj)

    Scope (\_SB.I2C6)
    {
        Name (UMLC, ResourceTemplate ()
        {
            I2cSerialBusV2 (0x0076, ControllerInitiated, 0x00061A80,
                AddressingMode7Bit, "\\_SB.I2C6",
                0x00, ResourceConsumer, , Exclusive,
                )
        })
        OperationRegion (LFC2, GenericSerialBus, Zero, 0x0100)
        Field (LFC2, BufferAcc, NoLock, Preserve)
        {
            Connection (UMLC), 
            Offset (0x74), 
            AccessAs (BufferAcc, AttribByte), 
            FC74,   8
        }

        Field (LFC2, BufferAcc, NoLock, Preserve)
        {
            Connection (UMLC), 
            Offset (0x15), 
            AccessAs (BufferAcc, AttribByte), 
            FC15,   8
        }

        Method (RWEC, 2, Serialized)
        {
            Name (REST, Zero)
            Switch (ToInteger (Arg0))
            {
                Case (One)
                {
                    Debug = "Set VBUS ON or OFF"
                    Name (C15S, Buffer (0x03){})
                    CreateByteField (C15S, Zero, S015)
                    CreateByteField (C15S, One, S115)
                    CreateByteField (C15S, 0x02, S215)
                    S115 = One
                    S215 = Arg1
                    Debug = "init buff"
                    C15S = \_SB.I2C6.FC15 = C15S /* \_SB_.I2C6.RWEC.C15S */
                    Debug = "buff post i2c"
                    Debug = C15S /* \_SB_.I2C6.RWEC.C15S */
                    If ((S015 != Zero))
                    {
                        Debug = "Set VBUS ON or OFF to EC failed"
                        Debug = C15S /* \_SB_.I2C6.RWEC.C15S */
                        REST = (S015 | 0x80000000)
                    }

                    Return (REST) /* \_SB_.I2C6.RWEC.REST */
                }
                Case (0x05)
                {
                    Debug = "Set Cold Boot Test"
                    Name (C74S, Buffer (0x03){})
                    CreateByteField (C74S, Zero, S074)
                    CreateByteField (C74S, One, S174)
                    CreateByteField (C74S, 0x02, S274)
                    S174 = One
                    S274 = Arg1
                    Debug = "init buff"
                    C74S = \_SB.I2C6.FC74 = C74S /* \_SB_.I2C6.RWEC.C74S */
                    Debug = "buff post i2c"
                    Debug = C74S /* \_SB_.I2C6.RWEC.C74S */
                    If ((S074 != Zero))
                    {
                        Debug = "Set Cold Boot to EC failed"
                        Debug = C74S /* \_SB_.I2C6.RWEC.C74S */
                        REST = (S074 | 0x80000000)
                    }

                    Return (REST) /* \_SB_.I2C6.RWEC.REST */
                }
                Default
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

            }
        }
    }
}

