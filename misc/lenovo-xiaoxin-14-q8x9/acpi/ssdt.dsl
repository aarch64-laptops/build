/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240927 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000130 (304)
 *     Revision         0x02
 *     Checksum         0x54
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20230331 (539165489)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "CB-01   ", 0x00001000)
{
    Name (CMPB, 0xD46DE018)
    Name (CMPL, 0x00000300)
    OperationRegion (COMP, SystemMemory, CMPB, CMPL)
    Field (COMP, AnyAcc, Lock, Preserve)
    {
        RSR0,   32, 
        BDDD,   8, 
        CPFB,   8, 
        PBTI,   8, 
        BRLV,   8, 
        CAVR,   8, 
        TJMA,   16, 
        CORE,   8, 
        TPDF,   8, 
        TPLF,   8, 
        TPDD,   8, 
        TMUD,   8, 
        CTUR,   8, 
        CUCB,   32, 
        CG21,   16, 
        CSID,   8, 
        CG24,   8, 
        CG25,   8, 
        CG26,   8, 
        CG27,   8, 
        CG28,   8, 
        CG29,   8, 
        CG30,   8, 
        CG31,   8, 
        SFNO,   16, 
        STDT,   16, 
        BFDT,   1024, 
        ESMS,   8, 
        ESMB,   256, 
        E3EN,   8, 
        RSR1,   464, 
        IDFD,   1024, 
        IDF2,   1024, 
        QADV,   256, 
        OADV,   256, 
        OSBS,   8, 
        RSR2,   504, 
        TPID,   8, 
        CPP1,   8, 
        CPP2,   8, 
        CPP3,   8, 
        MBID,   8, 
        RSR3,   984
    }
}

