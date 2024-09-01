/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt3.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000108 (264)
 *     Revision         0x01
 *     Checksum         0xD8
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "8CBE    "
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "HP  "
 *     Compiler Version 0x20230628 (539166248)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "8CBE    ", 0x00001000)
{
    Scope (\)
    {
        Scope (\)
        {
            OperationRegion (OPNV, SystemMemory, 0xD46D6018, 0x00001000)
            Field (OPNV, AnyAcc, Lock, Preserve)
            {
                Offset (0x00), 
                OSID,   16, 
                Offset (0x10), 
                PBDE,   8, 
                Offset (0x20), 
                BSDC,   16, 
                BSFC,   16, 
                BSRC,   16, 
                BSME,   16, 
                BSCY,   16, 
                BSTE,   16, 
                BSVO,   16, 
                BSCU,   16, 
                BSDV,   16, 
                BSST,   16, 
                BCV1,   16, 
                BCV2,   16, 
                BCV3,   16, 
                BCV4,   16, 
                BSSN,   128, 
                BSMN,   144, 
                BSCT,   128, 
                BRE1,   8, 
                BSDN,   56, 
                BSCH,   32, 
                BSMA,   16, 
                BSMD,   16, 
                BSCC,   16, 
                BSCV,   16, 
                BSAC,   16, 
                BSRE,   16, 
                BSAE,   16, 
                BSAF,   16, 
                BSUP,   8, 
                CNSK,   8, 
                BRE2,   160
            }

            Method (GOHK, 1, Serialized)
            {
                OSID = ToInteger (Arg0)
            }
        }
    }
}

