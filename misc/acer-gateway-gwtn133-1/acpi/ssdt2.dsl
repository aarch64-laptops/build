/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt2.dat, Fri Sep 15 16:32:46 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002BAC (11180)
 *     Revision         0x04
 *     Checksum         0xEC
 *     OEM ID           "QCOM  "
 *     OEM Table ID     "SSDT2Tbl"
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20140214 (538182164)
 */
DefinitionBlock ("", "SSDT", 4, "QCOM  ", "SSDT2Tbl", 0x00000003)
{
    /*
     * iASL Warning: There were 4 external control methods found during
     * disassembly, but only 0 were resolved (4 unresolved). Additional
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
    External (_SB_.GIO0.FSTA, UnknownObj)
    External (_SB_.GIO0.PS18, UnknownObj)
    External (_SB_.GIO0.PS7C, UnknownObj)
    External (_SB_.I2C8.ERSE, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.I2C8.NREP, IntObj)
    External (_SB_.I2C8.NWEP, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (_SB_.I2C8.RESP, IntObj)
    External (_SB_.I2C8.WEEP, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (_SB_.I2C8.WRSP, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (_SB_.MUT0, UnknownObj)
    External (_SB_.MUTX, UnknownObj)
    External (CPUN, UnknownObj)
    External (FUSE, UnknownObj)
    External (PROD, UnknownObj)
    External (RPMB, UnknownObj)

    Scope (\_SB)
    {
        Device (WMI1)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BATA, Buffer (0x0100){})
            Name (WMIO, 0x55AAAA55)
            Name (IBUF, Buffer (0x0100){})
            Name (SBF0, Buffer (0x0200){})
            Name (SBF1, Buffer (0x0200){})
            Name (WRBU, Buffer (0x0100){})
            Mutex (MWMI, 0x00)
            Name (STR1, Buffer (0x80){})
            Name (STR2, Buffer (0x80){})
            Name (BLK0, Zero)
            Name (BLK1, One)
            Name (BLK2, 0x02)
            Name (BLK3, 0x03)
            Name (BLK4, 0x04)
            Name (BLK5, 0x05)
            Name (BLK6, 0x06)
            Name (BKA0, 0x00080000)
            Name (BKA1, 0x00081000)
            Name (BKA2, 0x00082000)
            Name (BKA3, 0x00083000)
            Name (BKA4, 0x00084000)
            Name (BKA5, 0x00086000)
            Name (BKA6, 0x00087000)
            Name (WRTB, Buffer (0x40){})
            Name (EE0B, Buffer (0x0200){})
            Name (EE1B, Buffer (0x0200){})
            Name (EE2B, Buffer (0x0200){})
            Name (EE3B, Buffer (0x0200){})
            Name (EE4B, Buffer (0x0200){})
            Name (EEDV, Zero)
            Name (ITMS, Zero)
            Name (UIDF, Zero)
            Name (IDEX, Zero)
            Name (CPSN, Buffer (0x80){})
            Name (EE0D, Buffer (0x0101)
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
            Name (EE1D, Buffer (0x0101)
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
            Name (EE2D, Buffer (0x0101)
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
            Name (EE3D, Buffer (0x0101)
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
            Name (EE4D, Buffer (0x0101)
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
            Method (EERB, 1, NotSerialized)
            {
                If ((Arg0 == BLK0))
                {
                    If (CondRefOf (\_SB.I2C8.NREP))
                    {
                        Local0 = Zero
                        Local1 = Zero
                        Local2 = Zero
                        Local3 = Zero
                        While ((Local0 < 0x04))
                        {
                            Local1 = ((Local0 * 0x40) + BKA0) /* \_SB_.WMI1.BKA0 */
                            Local1 = \_SB.I2C8.NREP /* External reference */
                            0x40
                            WRTB
                            While ((Local2 < 0x40))
                            {
                                Local3 = ((Local0 * 0x40) + Local2)
                                EE0D [Local3] = DerefOf (WRTB [Local2])
                                Local2++
                            }

                            Sleep (0x0A)
                            Local2 = Zero
                            Local0++
                        }
                    }

                    EE0B = EE0D /* \_SB_.WMI1.EE0D */
                    Return (0xFFFF)
                }

                If ((Arg0 == BLK1))
                {
                    If (CondRefOf (\_SB.I2C8.NREP))
                    {
                        Local0 = Zero
                        Local1 = Zero
                        Local2 = Zero
                        Local3 = Zero
                        While ((Local0 < 0x04))
                        {
                            Local1 = ((Local0 * 0x40) + BKA1) /* \_SB_.WMI1.BKA1 */
                            Local1 = \_SB.I2C8.NREP /* External reference */
                            0x40
                            WRTB
                            While ((Local2 < 0x40))
                            {
                                Local3 = ((Local0 * 0x40) + Local2)
                                EE1D [Local3] = DerefOf (WRTB [Local2])
                                Local2++
                            }

                            Sleep (0x0A)
                            Local2 = Zero
                            Local0++
                        }
                    }

                    EE1B = EE1D /* \_SB_.WMI1.EE1D */
                    Return (0xFFFF)
                }

                If ((Arg0 == BLK2))
                {
                    If (CondRefOf (\_SB.I2C8.NREP))
                    {
                        Local0 = Zero
                        Local1 = Zero
                        Local2 = Zero
                        Local3 = Zero
                        While ((Local0 < 0x04))
                        {
                            Local1 = ((Local0 * 0x40) + BKA2) /* \_SB_.WMI1.BKA2 */
                            Local1 = \_SB.I2C8.NREP /* External reference */
                            0x40
                            WRTB
                            While ((Local2 < 0x40))
                            {
                                Local3 = ((Local0 * 0x40) + Local2)
                                EE2D [Local3] = DerefOf (WRTB [Local2])
                                Local2++
                            }

                            Sleep (0x0A)
                            Local2 = Zero
                            Local0++
                        }
                    }

                    EE2B = EE2D /* \_SB_.WMI1.EE2D */
                    Return (0xFFFF)
                }

                If ((Arg0 == BLK3))
                {
                    If (CondRefOf (\_SB.I2C8.NREP))
                    {
                        Local0 = Zero
                        Local1 = Zero
                        Local2 = Zero
                        Local3 = Zero
                        While ((Local0 < 0x04))
                        {
                            Local1 = ((Local0 * 0x40) + BKA3) /* \_SB_.WMI1.BKA3 */
                            Local1 = \_SB.I2C8.NREP /* External reference */
                            0x40
                            WRTB
                            While ((Local2 < 0x40))
                            {
                                Local3 = ((Local0 * 0x40) + Local2)
                                EE3D [Local3] = DerefOf (WRTB [Local2])
                                Local2++
                            }

                            Sleep (0x0A)
                            Local2 = Zero
                            Local0++
                        }
                    }

                    EE3B = EE3D /* \_SB_.WMI1.EE3D */
                    Return (0xFFFF)
                }

                If ((Arg0 == BLK4))
                {
                    If (CondRefOf (\_SB.I2C8.NREP))
                    {
                        Local0 = Zero
                        Local1 = Zero
                        Local2 = Zero
                        Local3 = Zero
                        While ((Local0 < 0x04))
                        {
                            Local1 = ((Local0 * 0x40) + BKA4) /* \_SB_.WMI1.BKA4 */
                            Local1 = \_SB.I2C8.NREP /* External reference */
                            0x40
                            WRTB
                            While ((Local2 < 0x40))
                            {
                                Local3 = ((Local0 * 0x40) + Local2)
                                EE4D [Local3] = DerefOf (WRTB [Local2])
                                Local2++
                            }

                            Sleep (0x0A)
                            Local2 = Zero
                            Local0++
                        }
                    }

                    EE4B = EE4D /* \_SB_.WMI1.EE4D */
                    Return (0xFFFF)
                }
            }

            Method (EEWB, 1, NotSerialized)
            {
                If ((Arg0 == BLK0))
                {
                    Acquire (\_SB.MUTX, 0xFFFF)
                    If ((\_SB.ECOK == One))
                    {
                        Acquire (\_SB.MUT0, 0xFFFF)
                        \_SB.I2C8.ERSE (BKA0)
                        If (CondRefOf (\_SB.I2C8.WEEP))
                        {
                            Local0 = Zero
                            Local1 = Zero
                            Local2 = Zero
                            Local3 = Zero
                            Local4 = Zero
                            While ((Local0 < 0x04))
                            {
                                Local1 = ((Local0 * 0x40) + BKA0) /* \_SB_.WMI1.BKA0 */
                                While ((Local2 < 0x40))
                                {
                                    Local3 = ((Local0 * 0x40) + Local2)
                                    WRTB [Local2] = DerefOf (EE0B [Local3])
                                    Local2++
                                }

                                Local2 = Zero
                                \_SB.I2C8.WEEP (Local1, WRTB, 0x40)
                                Local0++
                            }

                            Release (\_SB.MUT0)
                            Release (\_SB.MUTX)
                            Return (0xFFFF)
                        }

                        Release (\_SB.MUT0)
                    }

                    Release (\_SB.MUTX)
                }

                If ((Arg0 == BLK1))
                {
                    Acquire (\_SB.MUTX, 0xFFFF)
                    If ((\_SB.ECOK == One))
                    {
                        Acquire (\_SB.MUT0, 0xFFFF)
                        \_SB.I2C8.ERSE (BKA1)
                        Local0 = Zero
                        Local1 = Zero
                        Local2 = Zero
                        Local3 = Zero
                        Local4 = Zero
                        While ((Local0 < 0x04))
                        {
                            Local1 = ((Local0 * 0x40) + BKA1) /* \_SB_.WMI1.BKA1 */
                            While ((Local2 < 0x40))
                            {
                                Local3 = ((Local0 * 0x40) + Local2)
                                WRTB [Local2] = DerefOf (EE1B [Local3])
                                Local2++
                            }

                            Local2 = Zero
                            \_SB.I2C8.WEEP (Local1, WRTB, 0x40)
                            Sleep (0x0A)
                            Local0++
                        }

                        \_SB.I2C8.ERSE (BKA5)
                        Local0 = Zero
                        Local1 = Zero
                        Local2 = Zero
                        Local3 = Zero
                        Local4 = Zero
                        While ((Local0 < 0x04))
                        {
                            Local1 = ((Local0 * 0x40) + BKA5) /* \_SB_.WMI1.BKA5 */
                            While ((Local2 < 0x40))
                            {
                                Local3 = ((Local0 * 0x40) + Local2)
                                WRTB [Local2] = DerefOf (EE1B [Local3])
                                Local2++
                            }

                            Local2 = Zero
                            \_SB.I2C8.WEEP (Local1, WRTB, 0x40)
                            Sleep (0x0A)
                            Local0++
                        }

                        Release (\_SB.MUT0)
                        Release (\_SB.MUTX)
                        Return (0xFFFF)
                    }

                    Release (\_SB.MUTX)
                }

                If ((Arg0 == BLK2))
                {
                    Acquire (\_SB.MUTX, 0xFFFF)
                    If ((\_SB.ECOK == One))
                    {
                        Acquire (\_SB.MUT0, 0xFFFF)
                        \_SB.I2C8.ERSE (BKA2)
                        If (CondRefOf (\_SB.I2C8.WEEP))
                        {
                            Local0 = Zero
                            Local1 = Zero
                            Local2 = Zero
                            Local3 = Zero
                            Local4 = Zero
                            While ((Local0 < 0x04))
                            {
                                Local1 = ((Local0 * 0x40) + BKA2) /* \_SB_.WMI1.BKA2 */
                                While ((Local2 < 0x40))
                                {
                                    Local3 = ((Local0 * 0x40) + Local2)
                                    WRTB [Local2] = DerefOf (EE2B [Local3])
                                    Local2++
                                }

                                Local2 = Zero
                                \_SB.I2C8.WEEP (Local1, WRTB, 0x40)
                                Local0++
                            }

                            Release (\_SB.MUT0)
                            Release (\_SB.MUTX)
                            Return (0xFFFF)
                        }

                        Release (\_SB.MUT0)
                    }

                    Release (\_SB.MUTX)
                }

                If ((Arg0 == BLK3))
                {
                    Acquire (\_SB.MUTX, 0xFFFF)
                    If ((\_SB.ECOK == One))
                    {
                        Acquire (\_SB.MUT0, 0xFFFF)
                        \_SB.I2C8.ERSE (BKA3)
                        If (CondRefOf (\_SB.I2C8.WEEP))
                        {
                            Local0 = Zero
                            Local1 = Zero
                            Local2 = Zero
                            Local3 = Zero
                            Local4 = Zero
                            While ((Local0 < 0x04))
                            {
                                Local1 = ((Local0 * 0x40) + BKA3) /* \_SB_.WMI1.BKA3 */
                                While ((Local2 < 0x40))
                                {
                                    Local3 = ((Local0 * 0x40) + Local2)
                                    WRTB [Local2] = DerefOf (EE3B [Local3])
                                    Local2++
                                }

                                Local2 = Zero
                                \_SB.I2C8.WEEP (Local1, WRTB, 0x40)
                                Local0++
                            }

                            Release (\_SB.MUT0)
                            Release (\_SB.MUTX)
                            Return (0xFFFF)
                        }

                        Release (\_SB.MUT0)
                    }

                    Release (\_SB.MUTX)
                }

                If ((Arg0 == BLK4))
                {
                    Acquire (\_SB.MUTX, 0xFFFF)
                    If ((\_SB.ECOK == One))
                    {
                        Acquire (\_SB.MUT0, 0xFFFF)
                        \_SB.I2C8.ERSE (BKA4)
                        Local0 = Zero
                        Local1 = Zero
                        Local2 = Zero
                        Local3 = Zero
                        Local4 = Zero
                        While ((Local0 < 0x04))
                        {
                            Local1 = ((Local0 * 0x40) + BKA4) /* \_SB_.WMI1.BKA4 */
                            While ((Local2 < 0x40))
                            {
                                Local3 = ((Local0 * 0x40) + Local2)
                                WRTB [Local2] = DerefOf (EE4B [Local3])
                                Local2++
                            }

                            Local2 = Zero
                            \_SB.I2C8.WEEP (Local1, WRTB, 0x40)
                            Local0++
                        }

                        \_SB.I2C8.ERSE (BKA6)
                        Local0 = Zero
                        Local1 = Zero
                        Local2 = Zero
                        Local3 = Zero
                        Local4 = Zero
                        While ((Local0 < 0x04))
                        {
                            Local1 = ((Local0 * 0x40) + BKA6) /* \_SB_.WMI1.BKA6 */
                            While ((Local2 < 0x40))
                            {
                                Local3 = ((Local0 * 0x40) + Local2)
                                WRTB [Local2] = DerefOf (EE4B [Local3])
                                Local2++
                            }

                            Local2 = Zero
                            \_SB.I2C8.WEEP (Local1, WRTB, 0x40)
                            Sleep (0x0A)
                            Local0++
                        }

                        Release (\_SB.MUT0)
                        Release (\_SB.MUTX)
                        Return (0xFFFF)
                    }

                    Release (\_SB.MUTX)
                }
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

                Return (One)
            }

            Method (GITM, 3, NotSerialized)
            {
                Local0 = Zero
                Local1 = SizeOf (ITM0)
                While ((Local0 < Local1))
                {
                    Local2 = DerefOf (DerefOf (ITM0 [Local0]) [One])
                    If (SCMP (Local2, Arg0, Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Local3 = DerefOf (DerefOf (ITM0 [Local0]) [Zero])
                        }

                        If ((Arg2 == One))
                        {
                            Local3 = DerefOf (DerefOf (ITM0 [Local0]) [0x02])
                        }

                        Return (Local3)
                    }

                    Local0++
                }

                Return (0xFFFF)
            }

            Name (_WDG, Buffer (0xA0)
            {
                /* 0000 */  0x76, 0x37, 0xA0, 0xC3, 0xAC, 0x51, 0xAA, 0x49,  // v7...Q.I
                /* 0008 */  0xAD, 0x0F, 0xF2, 0xF7, 0xD6, 0x2C, 0x3F, 0x3C,  // .....,?<
                /* 0010 */  0x41, 0x44, 0x01, 0x05, 0x79, 0xF3, 0x14, 0x9C,  // AD..y...
                /* 0018 */  0x84, 0x27, 0xE7, 0x4A, 0x88, 0x55, 0xA5, 0x64,  // .'.J.U.d
                /* 0020 */  0xFA, 0xE7, 0xDD, 0x1D, 0x41, 0x32, 0x01, 0x06,  // ....A2..
                /* 0028 */  0xD4, 0xC0, 0xDC, 0x4B, 0xFA, 0x1F, 0x03, 0x45,  // ...K...E
                /* 0030 */  0xB6, 0x70, 0x49, 0xBE, 0xED, 0x79, 0xE5, 0xE7,  // .pI..y..
                /* 0038 */  0x41, 0x33, 0x01, 0x06, 0x21, 0x54, 0x46, 0x56,  // A3..!TFV
                /* 0040 */  0xD1, 0xAF, 0x37, 0x12, 0xD5, 0x54, 0xD4, 0x5A,  // ..7..T.Z
                /* 0048 */  0x79, 0x12, 0x54, 0x66, 0x41, 0x34, 0x01, 0x06,  // y.TfA4..
                /* 0050 */  0xB1, 0x39, 0x5D, 0x9B, 0x01, 0x90, 0x54, 0x16,  // .9]...T.
                /* 0058 */  0xD2, 0x15, 0xAE, 0x65, 0xF6, 0x22, 0x54, 0xC1,  // ...e."T.
                /* 0060 */  0x41, 0x35, 0x01, 0x06, 0xB1, 0x1A, 0xE5, 0xE3,  // A5......
                /* 0068 */  0x27, 0xFE, 0x99, 0x46, 0xB4, 0xA0, 0x86, 0xCC,  // '..F....
                /* 0070 */  0x38, 0x4D, 0x58, 0xA7, 0x41, 0x36, 0x01, 0x06,  // 8MX.A6..
                /* 0078 */  0xDE, 0x23, 0xE3, 0x60, 0x8E, 0x1A, 0x8B, 0x43,  // .#.`...C
                /* 0080 */  0x84, 0xE2, 0x26, 0x21, 0x74, 0xF1, 0xC9, 0xD3,  // ..&!t...
                /* 0088 */  0x41, 0x37, 0x01, 0x06, 0x21, 0x12, 0x90, 0x05,  // A7..!...
                /* 0090 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                /* 0098 */  0xC9, 0x06, 0x29, 0x10, 0x43, 0x41, 0x01, 0x00   // ..).CA..
            })
            Name (ITM0, Package (0x18)
            {
                Package (0x04)
                {
                    0xFF, 
                    "MfgDone", 
                    0x02, 
                    Zero
                }, 

                Package (0x04)
                {
                    Zero, 
                    "PN", 
                    One, 
                    One
                }, 

                Package (0x04)
                {
                    0x20, 
                    "VersionPC", 
                    One, 
                    0x02
                }, 

                Package (0x04)
                {
                    0x30, 
                    "VersionBd", 
                    One, 
                    0x03
                }, 

                Package (0x04)
                {
                    0x40, 
                    "UUID", 
                    One, 
                    0x04
                }, 

                Package (0x04)
                {
                    0x60, 
                    "SKUNT1", 
                    One, 
                    0x05
                }, 

                Package (0x04)
                {
                    0x70, 
                    "SKUNT3", 
                    One, 
                    0x06
                }, 

                Package (0x04)
                {
                    0x80, 
                    "SNPC", 
                    One, 
                    0x07
                }, 

                Package (0x04)
                {
                    0x90, 
                    "SNBd", 
                    One, 
                    0x08
                }, 

                Package (0x04)
                {
                    0xA0, 
                    "ATPC", 
                    One, 
                    0x09
                }, 

                Package (0x04)
                {
                    0xB0, 
                    "ATBd", 
                    One, 
                    0x0A
                }, 

                Package (0x04)
                {
                    0xC0, 
                    "OEMS1", 
                    One, 
                    0x0B
                }, 

                Package (0x04)
                {
                    0xD0, 
                    "OEMS2", 
                    One, 
                    0x0C
                }, 

                Package (0x04)
                {
                    0xE0, 
                    "OEMS3", 
                    One, 
                    0x0D
                }, 

                Package (0x04)
                {
                    Zero, 
                    "Signature", 
                    Zero, 
                    0x0E
                }, 

                Package (0x04)
                {
                    0x08, 
                    "ECFlash", 
                    Zero, 
                    0x0F
                }, 

                Package (0x04)
                {
                    0xF9, 
                    "BackFlash", 
                    0x02, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x09, 
                    "SPKIDL", 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0A, 
                    "SPKIDR", 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0B, 
                    "FGID", 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0C, 
                    "FuseCheck", 
                    Zero, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x0D, 
                    "RPMBCheck", 
                    Zero, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x0E, 
                    "TestRPMBCheck", 
                    Zero, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x0F, 
                    "CPUSN", 
                    Zero, 
                    0x17
                }
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
                Else
                {
                    Return (Zero)
                }
            }

            Method (TASC, 1, NotSerialized)
            {
                If ((Arg0 <= 0x09))
                {
                    Return ((Arg0 + 0x30))
                }
                Else
                {
                    Local0 = (Arg0 - 0x0A)
                    Return ((Local0 + 0x41))
                }
            }

            Method (WMA2, 3, Serialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = SizeOf (Arg2)
                SBF0 = Arg2
                If (((Local0 <= Zero) || (Local0 >= 0x0200)))
                {
                    Release (MWMI)
                    Return ("WriteSmbiosSetting:: parameter error")
                }

                Local1 = Zero
                While ((Local1 <= Local0))
                {
                    Local2 = DerefOf (SBF0 [Local1])
                    If (((Local2 == 0x2C) || ((Local2 == 0x3A) || ((Local2 == 
                        0x2F) || (Local2 == 0x3B)))))
                    {
                        Break
                    }

                    Local1++
                }

                Local2 = Zero
                Local1++
                Local3 = Buffer (Local1){}
                Local1--
                While ((Local2 < Local1))
                {
                    Local3 [Local2] = DerefOf (SBF0 [Local2])
                    Local2++
                }

                If (SCMP ("MfgDone", Local3, Zero))
                {
                    Local0--
                }

                If (SCMP ("ECFlash", Local3, Zero))
                {
                    Local0--
                }

                If (SCMP ("BackFlash", Local3, Zero))
                {
                    Local0--
                }

                Local1++
                Local2 = Local1
                While ((Local2 <= Local0))
                {
                    SBF1 [Local5 = (Local2 - Local1)] = DerefOf (SBF0 [Local2]
                        )
                    Local2++
                }

                Local2 = "UUID"
                If (SCMP (Local2, Local3, Zero))
                {
                    If ((Local5 >= 0x40))
                    {
                        Release (MWMI)
                        Return ("WriteSmbiosSetting::UUID input string size over 63 bytes")
                    }
                    ElseIf ((Local5 >= 0x20))
                    {
                        UIDF = One
                        EEDV = One
                        ITMS = Local5
                        Local5 = 0x1F
                    }
                }
                ElseIf ((Local5 >= 0x20))
                {
                    Release (MWMI)
                    Return ("WriteSmbiosSetting::DATA size over 31 bytes")
                }
                ElseIf ((Local5 >= 0x10))
                {
                    EEDV = One
                    ITMS = Local5
                    Local5 = 0x0F
                }

                Local2 = "MfgDone"
                If (SCMP (Local2, Local3, Zero))
                {
                    Local4 = THEX (DerefOf (SBF1 [Zero]))
                    SBF1 [Zero] = Local4
                }

                Local2 = "ECFlash"
                If (SCMP (Local2, Local3, Zero))
                {
                    Local4 = THEX (DerefOf (SBF1 [Zero]))
                    SBF1 [Zero] = Local4
                }

                Local2 = "BackFlash"
                If (SCMP (Local2, Local3, Zero))
                {
                    Local4 = THEX (DerefOf (SBF1 [Zero]))
                    SBF1 [Zero] = Local4
                }

                Local2 = GITM (Local3, Zero, One)
                If ((Local2 == 0xFFFF))
                {
                    Release (MWMI)
                    Return ("WriteSmbiosSetting::get item address not found or not match, Example: ProductName:abcde0123")
                }

                If ((Local2 == BLK1))
                {
                    Local6 = EERB (BLK1)
                    If ((Local6 != 0xFFFF))
                    {
                        Release (MWMI)
                        Return ("WriteSmbiosSetting::Read eeprom not ready")
                    }

                    Local6 = EERB (BLK4)
                    If ((Local6 != 0xFFFF))
                    {
                        Release (MWMI)
                        Return ("WriteSmbiosSetting::Read eeprom not ready")
                    }
                }
                Else
                {
                    Local6 = EERB (Local2)
                    If ((Local6 != 0xFFFF))
                    {
                        Release (MWMI)
                        Return ("WriteSmbiosSetting::Read eeprom not ready")
                    }
                }

                Local3 = GITM (Local3, One, Zero)
                If ((Local2 == Zero))
                {
                    Local4 = Zero
                    While ((Local4 <= Local5))
                    {
                        EE0B [Local6 = (Local4 + Local3)] = DerefOf (SBF1 [Local4]
                            )
                        Local4++
                    }
                }

                If ((Local2 == One))
                {
                    Local4 = Zero
                    While ((Local4 <= Local5))
                    {
                        EE1B [Local6 = (Local4 + Local3)] = DerefOf (SBF1 [Local4]
                            )
                        Local4++
                    }

                    If ((EEDV == One))
                    {
                        IDEX = Zero
                        While ((Local4 <= ITMS))
                        {
                            EE4B [Local6 = (IDEX + Local3)] = DerefOf (SBF1 [Local4]
                                )
                            Local4++
                            IDEX++
                        }
                    }
                }

                If ((Local2 == 0x02))
                {
                    Local4 = Zero
                    While ((Local4 <= Local5))
                    {
                        EE2B [Local6 = (Local4 + Local3)] = DerefOf (SBF1 [Local4]
                            )
                        Local4++
                    }
                }

                If ((Local2 == 0x03))
                {
                    Local4 = Zero
                    While ((Local4 <= Local5))
                    {
                        EE3B [Local6 = (Local4 + Local3)] = DerefOf (SBF1 [Local4]
                            )
                        Local4++
                    }
                }

                If ((Local2 == One))
                {
                    If ((EEDV == Zero))
                    {
                        Local6 = EEWB (BLK1)
                    }
                    Else
                    {
                        Local6 = EEWB (BLK1)
                        If ((Local6 != 0xFFFF))
                        {
                            Release (MWMI)
                            Return ("WriteSmbiosSetting::write eeprom not ready")
                        }

                        Local6 = EEWB (BLK4)
                        EEDV = Zero
                    }
                }
                Else
                {
                    Local6 = EEWB (Local2)
                }

                If ((Local6 != 0xFFFF))
                {
                    Release (MWMI)
                    Return ("WriteSmbiosSetting::write eeprom not ready")
                }

                Release (MWMI)
                Return ("WriteSmbiosSetting::set smbios finish")
            }

            Method (WMA3, 3, Serialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = SizeOf (Arg2)
                SBF0 = Arg2
                If (((Local0 <= Zero) || (Local0 >= 0x0200)))
                {
                    Release (MWMI)
                    Return ("ReadSmbiosSetting:: parameter error")
                }

                Local1 = Zero
                While ((Local1 <= Local0))
                {
                    Local2 = DerefOf (SBF0 [Local1])
                    If ((Local2 == Zero))
                    {
                        Break
                    }

                    Local1++
                }

                Local2 = Zero
                Local1++
                Local3 = Buffer (Local1){}
                Local1--
                While ((Local2 < Local1))
                {
                    Local3 [Local2] = DerefOf (SBF0 [Local2])
                    Local2++
                }

                Local2 = GITM (Local3, Zero, One)
                If ((Local2 == 0xFFFF))
                {
                    Release (MWMI)
                    Return ("ReadSmbiosSetting::get item address not found or not match, Example: ProductName")
                }

                If ((Local2 == One))
                {
                    Local6 = EERB (BLK1)
                    If ((Local6 != 0xFFFF))
                    {
                        Release (MWMI)
                        Return ("WriteSmbiosSetting::Read eeprom not ready")
                    }

                    Local6 = EERB (BLK4)
                    If ((Local6 != 0xFFFF))
                    {
                        Release (MWMI)
                        Return ("WriteSmbiosSetting::Read eeprom not ready")
                    }
                }
                Else
                {
                    Local6 = EERB (Local2)
                    If ((Local6 != 0xFFFF))
                    {
                        Release (MWMI)
                        Return ("WriteSmbiosSetting::Read eeprom not ready")
                    }
                }

                Local4 = "UUID"
                If (SCMP (Local4, Local3, Zero))
                {
                    UIDF = One
                }

                Local4 = "MfgDone"
                If (SCMP (Local4, Local3, Zero))
                {
                    Release (MWMI)
                    Return ("WORNING:: NOT SUPPORT TO CHECK MfgDone")
                }

                Local4 = "ECFlash"
                If (SCMP (Local4, Local3, Zero))
                {
                    Release (MWMI)
                    Return ("WORNING:: NOT SUPPORT TO CHECK ECFlash")
                }

                Local4 = "BackFlash"
                If (SCMP (Local4, Local3, Zero))
                {
                    Release (MWMI)
                    Return ("WORNING:: NOT SUPPORT TO CHECK BackFlash")
                }

                Local4 = "SPKIDL"
                If (SCMP (Local4, Local3, Zero))
                {
                    If ((\_SB.GIO0.PS18 == One))
                    {
                        Release (MWMI)
                        Return ("0x01")
                    }

                    Release (MWMI)
                    Return ("0x00")
                }

                Local4 = "SPKIDR"
                If (SCMP (Local4, Local3, Zero))
                {
                    If ((\_SB.GIO0.PS7C == One))
                    {
                        Release (MWMI)
                        Return ("0x01")
                    }

                    Release (MWMI)
                    Return ("0x00")
                }

                Local4 = "FGID"
                If (SCMP (Local4, Local3, Zero))
                {
                    If ((\_SB.GIO0.FSTA == One))
                    {
                        Release (MWMI)
                        Return ("ELAN7002")
                    }
                    Else
                    {
                        Release (MWMI)
                        Return ("GXFP61A2")
                    }
                }

                Local4 = "FuseCheck"
                If (SCMP (Local4, Local3, Zero))
                {
                    If ((FUSE == One))
                    {
                        Release (MWMI)
                        Return ("DUT has been fused")
                    }
                    Else
                    {
                        Release (MWMI)
                        Return ("NOT FUSED!!!")
                    }
                }

                Local4 = "RPMBCheck"
                If (SCMP (Local4, Local3, Zero))
                {
                    If ((RPMB == One))
                    {
                        Release (MWMI)
                        Return ("DUT has been RPMB")
                    }
                    Else
                    {
                        Release (MWMI)
                        Return ("NOT RPMB!!!")
                    }
                }

                Local4 = "TestRPMBCheck"
                If (SCMP (Local4, Local3, Zero))
                {
                    If ((PROD == One))
                    {
                        Release (MWMI)
                        Return ("DUT has been RPMB with Test Key")
                    }
                    Else
                    {
                        Release (MWMI)
                        Return ("NOT RPMB (Test Key)!!!")
                    }
                }

                Local4 = "CPUSN"
                If (SCMP (Local4, Local3, Zero))
                {
                    Release (MWMI)
                    ToHexString (CPUN, CPSN) /* \_SB_.WMI1.CPSN */
                    Return (ToString (CPSN, Ones))
                }

                Local7 = GITM (Local3, One, Zero)
                If ((Local2 == Zero))
                {
                    Local4 = Zero
                    While ((Local4 <= 0x40))
                    {
                        SBF1 [Local4] = DerefOf (EE0B [Local6 = (Local4 + Local7)]
                            )
                        Local4++
                    }
                }

                If ((Local2 == One))
                {
                    If ((UIDF == One))
                    {
                        Local4 = Zero
                        While ((Local4 <= 0x1F))
                        {
                            SBF1 [Local4] = DerefOf (EE1B [Local6 = (Local4 + Local7)]
                                )
                            Local4++
                        }

                        SBF1 [Local4] = Zero
                        UIDF = Zero
                    }
                    Else
                    {
                        Local4 = Zero
                        While ((Local4 <= 0x0F))
                        {
                            SBF1 [Local4] = DerefOf (EE1B [Local6 = (Local4 + Local7)]
                                )
                            Local4++
                        }

                        IDEX = Zero
                        While ((Local4 <= 0x1F))
                        {
                            SBF1 [Local4] = DerefOf (EE4B [Local6 = (IDEX + Local7)]
                                )
                            Local4++
                            IDEX++
                        }
                    }
                }

                If ((Local2 == 0x02))
                {
                    Local4 = Zero
                    While ((Local4 <= 0x40))
                    {
                        SBF1 [Local4] = DerefOf (EE2B [Local6 = (Local4 + Local7)]
                            )
                        Local4++
                    }
                }

                If ((Local2 == 0x03))
                {
                    Local4 = Zero
                    While ((Local4 <= 0x40))
                    {
                        SBF1 [Local4] = DerefOf (EE3B [Local6 = (Local4 + Local7)]
                            )
                        Local4++
                    }
                }

                Release (MWMI)
                Return (ToString (SBF1, Ones, SBF1) /* \_SB_.WMI1.SBF1 */)
            }

            Method (WMA4, 3, Serialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = SizeOf (Arg2)
                If (((Local0 <= Zero) || (Local0 >= 0x0100)))
                {
                    Release (MWMI)
                    Return ("Invalid parameter for read eeprom1")
                }

                IBUF = Arg2
                If ((((DerefOf (IBUF [Zero]) != 0x30) || 
                    (DerefOf (IBUF [One]) != 0x58)) && ((DerefOf (IBUF [
                    Zero]) != 0x30) || (DerefOf (IBUF [One]) != 0x78))))
                {
                    Release (MWMI)
                    Return ("Invalid parameter for read eeprom2")
                }

                Local1 = THEX (DerefOf (IBUF [0x02]))
                Local2 = 0x03
                While ((Local2 < Local0))
                {
                    Local1 = ((Local1 * 0x10) + THEX (DerefOf (IBUF [Local2])))
                    Local2++
                }

                If (((Local1 >= Zero) && (Local1 <= 0x00100000)))
                {
                    Local1 = \_SB.I2C8.NREP /* External reference */
                    0x10
                    Local0
                    Concatenate (Arg2, " address new read eeprom data is:", Local1)
                    Local2 = Zero
                    BATA = Zero
                    While ((Local2 < 0x10))
                    {
                        ToHexString (DerefOf (Local0 [Local2]), BATA) /* \_SB_.WMI1.BATA */
                        Concatenate (Local1, ToString (BATA, Ones, Local3), Local1)
                        Concatenate (Local1, " ", Local1)
                        Local2++
                    }

                    Release (MWMI)
                    Return (Local1)
                }

                Release (MWMI)
                Return ("Invalid parameter for new read eeprom")
            }

            Method (WMA5, 3, Serialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = SizeOf (Arg2)
                If (((Local0 <= Zero) || (Local0 >= 0x0100)))
                {
                    Release (MWMI)
                    Return ("Invalid parameter for new write eeprom")
                }

                IBUF = Arg2
                If ((((DerefOf (IBUF [Zero]) != 0x30) || 
                    (DerefOf (IBUF [One]) != 0x58)) && ((DerefOf (IBUF [
                    Zero]) != 0x30) || (DerefOf (IBUF [One]) != 0x78))))
                {
                    Release (MWMI)
                    Return ("Invalid parameter for new write eeprom")
                }

                Local1 = Zero
                While ((Local1 < Local0))
                {
                    If ((DerefOf (IBUF [Local1]) == 0x2C))
                    {
                        Break
                    }

                    Local1++
                }

                Local3 = THEX (DerefOf (IBUF [0x02]))
                Local4 = 0x03
                While ((Local4 < Local1))
                {
                    Local3 = ((Local3 * 0x10) + THEX (DerefOf (IBUF [Local4])))
                    Local4++
                }

                Local6 = (Local0 - Local1)
                Divide (Local6, 0x05, Local2, Local7)
                Local5 = Zero
                While ((Local5 < Local7))
                {
                    WRBU [Local5] = ((THEX (DerefOf (IBUF [(
                        ((Local5 * 0x05) + Local1) + 0x03)])) * 0x10) + THEX (
                        DerefOf (IBUF [(((Local5 * 0x05) + Local1) + 0x04)]
                        )))
                    Local5++
                }

                If (((Local3 >= 0x00080000) && (Local3 <= 0x00084000)))
                {
                    \_SB.I2C8.NWEP (Local3, WRBU, Local7)
                    Release (MWMI)
                    Return ("finish new write eeprom")
                }

                Release (MWMI)
                Return ("Invalid parameter for new write eeprom")
            }

            Method (WMA6, 3, Serialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = SizeOf (Arg2)
                If (((Local0 <= Zero) || (Local0 >= 0x0A)))
                {
                    Release (MWMI)
                    Return ("Invalid parameter for read ec space")
                }

                IBUF = Arg2
                If ((((DerefOf (IBUF [Zero]) != 0x30) || 
                    (DerefOf (IBUF [One]) != 0x58)) && ((DerefOf (IBUF [
                    Zero]) != 0x30) || (DerefOf (IBUF [One]) != 0x78))))
                {
                    If ((((DerefOf (IBUF [0x05]) != 0x30) || 
                        (DerefOf (IBUF [0x06]) != 0x58)) && ((DerefOf (IBUF [
                        0x05]) != 0x30) || (DerefOf (IBUF [0x06]) != 0x78))))
                    {
                        Release (MWMI)
                        Return ("Invalid parameter for read ec space")
                    }
                    Else
                    {
                        Release (MWMI)
                        Return ("Invalid parameter for read ec space")
                    }
                }

                Local1 = THEX (DerefOf (IBUF [0x02]))
                Local2 = 0x03
                While ((Local2 < 0x04))
                {
                    Local1 = ((Local1 * 0x10) + THEX (DerefOf (IBUF [Local2])))
                    Local2++
                }

                Local3 = THEX (DerefOf (IBUF [0x07]))
                Local4 = 0x08
                While ((Local4 < Local0))
                {
                    Local3 = ((Local3 * 0x10) + THEX (DerefOf (IBUF [Local4])))
                    Local4++
                }

                If (((Local1 >= Zero) && (Local1 <= 0xFF)))
                {
                    Local1 = \_SB.I2C8.RESP /* External reference */
                    Local3
                    Local0
                    Concatenate (Arg2, " address ec space data is:", Local1)
                    Local2 = Zero
                    BATA = Zero
                    While ((Local2 < Local3))
                    {
                        ToHexString (DerefOf (Local0 [Local2]), BATA) /* \_SB_.WMI1.BATA */
                        Concatenate (Local1, ToString (BATA, Ones, Local5), Local1)
                        Concatenate (Local1, " ", Local1)
                        Local2++
                    }

                    Release (MWMI)
                    Return (Local1)
                }

                Release (MWMI)
                Return ("Invalid parameter for read ec space")
            }

            Method (WMA7, 3, Serialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = SizeOf (Arg2)
                If (((Local0 <= Zero) || (Local0 >= 0x0100)))
                {
                    Release (MWMI)
                    Return ("Invalid parameter for write ec space")
                }

                IBUF = Arg2
                If ((((DerefOf (IBUF [Zero]) != 0x30) || 
                    (DerefOf (IBUF [One]) != 0x58)) && ((DerefOf (IBUF [
                    Zero]) != 0x30) || (DerefOf (IBUF [One]) != 0x78))))
                {
                    Release (MWMI)
                    Return ("Invalid parameter for write ec space")
                }

                Local1 = Zero
                While ((Local1 < Local0))
                {
                    If ((DerefOf (IBUF [Local1]) == 0x2C))
                    {
                        Break
                    }

                    Local1++
                }

                Local3 = THEX (DerefOf (IBUF [0x02]))
                Local4 = 0x03
                While ((Local4 < Local1))
                {
                    Local3 = ((Local3 * 0x10) + THEX (DerefOf (IBUF [Local4])))
                    Local4++
                }

                Local6 = (Local0 - Local1)
                Divide (Local6, 0x05, Local2, Local7)
                Local5 = Zero
                While ((Local5 < Local7))
                {
                    WRBU [Local5] = ((THEX (DerefOf (IBUF [(
                        ((Local5 * 0x05) + Local1) + 0x03)])) * 0x10) + THEX (
                        DerefOf (IBUF [(((Local5 * 0x05) + Local1) + 0x04)]
                        )))
                    Local5++
                }

                If (((Local3 >= Zero) && (Local3 <= 0xFF)))
                {
                    \_SB.I2C8.WRSP (Local3, WRBU, Local7)
                    Release (MWMI)
                    Return ("finish write ec space")
                }

                Release (MWMI)
                Return ("Invalid parameter for write ec space")
            }

            Name (WQCA, Buffer (0x07B0)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0xA0, 0x07, 0x00, 0x00, 0x1E, 0x36, 0x00, 0x00,  // .....6..
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0xA8, 0x58, 0x9A, 0x00, 0x01, 0x06, 0x18, 0x42,  // .X.....B
                /* 0020 */  0x10, 0x13, 0x10, 0x8A, 0x0C, 0x21, 0x02, 0x0B,  // .....!..
                /* 0028 */  0x83, 0x50, 0x48, 0x18, 0x14, 0xA0, 0x45, 0x41,  // .PH...EA
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,  // .....!..
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,  // ..p.@...
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,  // (r."....
                /* 0048 */  0x31, 0x0C, 0x88, 0x14, 0x40, 0x48, 0x28, 0x84,  // 1...@H(.
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,  // D.S!p.._
                /* 0058 */  0x01, 0x08, 0x1D, 0x0A, 0x90, 0x29, 0xC0, 0xA0,  // .....)..
                /* 0060 */  0x00, 0xA7, 0x08, 0x22, 0xE8, 0x55, 0x80, 0x69,  // ...".U.i
                /* 0068 */  0x01, 0xBA, 0x05, 0x78, 0xC6, 0x97, 0xE5, 0x11,  // ...x....
                /* 0070 */  0x48, 0x34, 0x9E, 0x14, 0x0A, 0x30, 0x29, 0xC0,  // H4...0).
                /* 0078 */  0x27, 0x9C, 0x2C, 0x0A, 0x90, 0x0D, 0x25, 0xDB,  // '.,...%.
                /* 0080 */  0x10, 0x02, 0x3C, 0x0E, 0x26, 0x70, 0x10, 0x28,  // ..<.&p.(
                /* 0088 */  0x31, 0x83, 0x40, 0xE9, 0x9C, 0x83, 0x6C, 0x02,  // 1.@...l.
                /* 0090 */  0x0B, 0xFA, 0x64, 0xA2, 0x9C, 0x47, 0x94, 0x04,  // ..d..G..
                /* 0098 */  0x47, 0xD5, 0x37, 0x82, 0xC0, 0xCB, 0x15, 0xE0,  // G.7.....
                /* 00A0 */  0x7D, 0x04, 0x1A, 0x49, 0x02, 0xC3, 0xF3, 0x50,  // }..I...P
                /* 00A8 */  0x12, 0x40, 0x58, 0x98, 0x55, 0x2A, 0x06, 0x0C,  // .@X.U*..
                /* 00B0 */  0xCA, 0x03, 0x88, 0xE4, 0x8C, 0x14, 0x05, 0xEC,  // ........
                /* 00B8 */  0x81, 0x9D, 0xC6, 0x41, 0x1D, 0x26, 0x93, 0x04,  // ...A.&..
                /* 00C0 */  0x87, 0x1A, 0xA4, 0x25, 0x0A, 0x30, 0x3F, 0x2E,  // ...%.0?.
                /* 00C8 */  0x8D, 0xF7, 0x40, 0x3C, 0xBE, 0x90, 0xEC, 0x0F,  // ..@<....
                /* 00D0 */  0xA0, 0xA1, 0x20, 0x46, 0xEE, 0x49, 0x9D, 0x92,  // .. F.I..
                /* 00D8 */  0xB5, 0x23, 0x4A, 0xF2, 0x14, 0x05, 0x93, 0xC0,  // .#J.....
                /* 00E0 */  0xA3, 0x60, 0x68, 0x9C, 0xA0, 0x2C, 0x08, 0x39,  // .`h..,.9
                /* 00E8 */  0x18, 0x26, 0x0A, 0xF0, 0x24, 0x3C, 0xC3, 0xE2,  // .&..$<..
                /* 00F0 */  0x05, 0x08, 0x9F, 0x2F, 0x39, 0x09, 0xC4, 0x48,  // .../9..H
                /* 00F8 */  0xE0, 0x13, 0x81, 0x4F, 0x01, 0x38, 0x58, 0x8F,  // ...O.8X.
                /* 0100 */  0x28, 0x5C, 0xC0, 0xF3, 0x39, 0x86, 0xC8, 0x71,  // (\..9..q
                /* 0108 */  0x0F, 0x36, 0xC6, 0x51, 0x44, 0x4E, 0xD0, 0x23,  // .6.QDN.#
                /* 0110 */  0x98, 0x70, 0x0A, 0xBA, 0x03, 0x68, 0x60, 0x41,  // .p...h`A
                /* 0118 */  0xDE, 0x03, 0x8C, 0x78, 0x6E, 0x27, 0x1E, 0xCB,  // ...xn'..
                /* 0120 */  0x98, 0x3E, 0x0D, 0xF8, 0xFF, 0x4F, 0xE0, 0x93,  // .>...O..
                /* 0128 */  0xC0, 0x41, 0x60, 0x64, 0x80, 0x13, 0xAB, 0xE3,  // .A`d....
                /* 0130 */  0xD2, 0x2C, 0x12, 0xD8, 0xFD, 0x19, 0x40, 0xCE,  // .,....@.
                /* 0138 */  0x2E, 0x01, 0x3A, 0x30, 0xC4, 0xE8, 0x0D, 0x41,  // ..:0...A
                /* 0140 */  0xDA, 0x04, 0xD8, 0x12, 0x60, 0x4D, 0x80, 0xB1,  // ....`M..
                /* 0148 */  0x93, 0x00, 0x41, 0x39, 0xD5, 0xE6, 0x50, 0x84,  // ..A9..P.
                /* 0150 */  0x10, 0x25, 0x44, 0xE0, 0x90, 0x35, 0xA2, 0x08,  // .%D..5..
                /* 0158 */  0xA2, 0x32, 0x08, 0xA1, 0x06, 0x0A, 0x1B, 0x25,  // .2.....%
                /* 0160 */  0xBE, 0x71, 0x42, 0x04, 0x69, 0x7F, 0x10, 0x64,  // .qB.i..d
                /* 0168 */  0xDC, 0xB8, 0x03, 0x80, 0x6F, 0x0C, 0xC7, 0x76,  // ....o..v
                /* 0170 */  0x7A, 0x07, 0xF6, 0xA8, 0x60, 0x02, 0xCF, 0xFA,  // z...`...
                /* 0178 */  0xC0, 0x1E, 0x0E, 0x4E, 0xE1, 0x70, 0xA3, 0xC6,  // ...N.p..
                /* 0180 */  0x38, 0x8F, 0x04, 0x8E, 0xFE, 0x84, 0x90, 0x06,  // 8.......
                /* 0188 */  0x10, 0x45, 0x82, 0x47, 0x1D, 0x17, 0x7C, 0x34,  // .E.G..|4
                /* 0190 */  0xF0, 0xD0, 0x8E, 0xDB, 0x73, 0x3C, 0x81, 0x20,  // ....s<. 
                /* 0198 */  0x87, 0x70, 0x04, 0x8F, 0x0C, 0xCF, 0x04, 0x1E,  // .p......
                /* 01A0 */  0x03, 0xBB, 0x3C, 0xF8, 0x14, 0xE0, 0x43, 0x02,  // ..<...C.
                /* 01A8 */  0xDE, 0x35, 0xA0, 0x86, 0xFC, 0x6C, 0xC0, 0xE6,  // .5...l..
                /* 01B0 */  0x1D, 0x0E, 0x33, 0x5E, 0x4F, 0x3C, 0xDC, 0x09,  // ..3^O<..
                /* 01B8 */  0x3C, 0x1A, 0x3C, 0x62, 0xF0, 0xE3, 0x86, 0x07,  // <.<b....
                /* 01C0 */  0x87, 0x1B, 0xE2, 0xC9, 0x1C, 0x59, 0xA9, 0x02,  // .....Y..
                /* 01C8 */  0xCC, 0xDE, 0x08, 0x74, 0x92, 0xF0, 0x79, 0x83,  // ...t..y.
                /* 01D0 */  0x9D, 0x01, 0x30, 0xF2, 0x07, 0x81, 0x1A, 0x99,  // ..0.....
                /* 01D8 */  0xA1, 0x3D, 0xEE, 0xD7, 0x0E, 0x43, 0x3E, 0x2A,  // .=...C>*
                /* 01E0 */  0x1C, 0x16, 0x13, 0x7B, 0xEE, 0xA0, 0xE3, 0x01,  // ...{....
                /* 01E8 */  0xFF, 0x75, 0xE4, 0x41, 0xC3, 0xD3, 0xF7, 0x7C,  // .u.A...|
                /* 01F0 */  0x4D, 0x30, 0xEC, 0xC0, 0xD1, 0x03, 0x31, 0x74,  // M0....1t
                /* 01F8 */  0xEB, 0xC3, 0xD0, 0x34, 0x7C, 0x01, 0xF1, 0x79,  // ...4|..y
                /* 0200 */  0x01, 0xC6, 0xFF, 0xFF, 0x14, 0xE0, 0x91, 0xFB,  // ........
                /* 0208 */  0x98, 0xE2, 0x03, 0x05, 0x3F, 0x5D, 0xF8, 0x40,  // ....?].@
                /* 0210 */  0xC1, 0x4E, 0x08, 0xAF, 0x0F, 0x86, 0x38, 0x9C,  // .N....8.
                /* 0218 */  0xB3, 0xF2, 0x79, 0xC2, 0xB7, 0x06, 0x9F, 0x27,  // ..y....'
                /* 0220 */  0xC0, 0x35, 0xB4, 0x13, 0x3A, 0x1B, 0xFC, 0x29,  // .5..:..)
                /* 0228 */  0x00, 0x7C, 0x83, 0xF7, 0x09, 0x06, 0x9C, 0xB7,  // .|......
                /* 0230 */  0x0D, 0xCC, 0xCD, 0xC1, 0x9A, 0xA7, 0xA5, 0x51,  // .......Q
                /* 0238 */  0x86, 0xF2, 0xC8, 0xF8, 0x19, 0x06, 0xFC, 0x30,  // .......0
                /* 0240 */  0x07, 0x80, 0x39, 0x49, 0x78, 0x00, 0x1C, 0xFC,  // ..9Ix...
                /* 0248 */  0x01, 0xE4, 0x14, 0xAD, 0x74, 0x62, 0xC8, 0xA3,  // ....tb..
                /* 0250 */  0x0E, 0xD8, 0x86, 0xC1, 0x73, 0x3E, 0x37, 0x7C,  // ....s>7|
                /* 0258 */  0x34, 0xF0, 0x7B, 0x40, 0x01, 0x1F, 0x06, 0x14,  // 4.{@....
                /* 0260 */  0xC6, 0x47, 0x1B, 0xE0, 0xF1, 0xFF, 0x3F, 0xDA,  // .G....?.
                /* 0268 */  0x00, 0x37, 0xC1, 0x67, 0x07, 0xD0, 0x1C, 0x1C,  // .7.g....
                /* 0270 */  0xD8, 0xD1, 0x06, 0x0F, 0x74, 0xE4, 0x46, 0x0A,  // ....t.F.
                /* 0278 */  0x73, 0xF2, 0x91, 0xE2, 0x3C, 0x5F, 0xC0, 0xC0,  // s...<_..
                /* 0280 */  0x7B, 0xBC, 0x81, 0x39, 0x86, 0x17, 0x9A, 0xF7,  // {..9....
                /* 0288 */  0x99, 0x18, 0xAF, 0x33, 0xC7, 0x15, 0xE1, 0x65,  // ...3...e
                /* 0290 */  0xE2, 0xB1, 0xE6, 0x9D, 0xE6, 0x25, 0xC6, 0xE2,  // .....%..
                /* 0298 */  0x6E, 0x37, 0x64, 0x1A, 0x11, 0x1E, 0x1A, 0xA2,  // n7d.....
                /* 02A0 */  0x04, 0x0C, 0xF9, 0x6E, 0xE3, 0x03, 0x8E, 0x01,  // ...n....
                /* 02A8 */  0x43, 0x04, 0x7A, 0x39, 0x88, 0x17, 0xE8, 0x41,  // C.z9...A
                /* 02B0 */  0x27, 0x6A, 0x90, 0x48, 0x51, 0x9E, 0x6E, 0xC0,  // 'j.HQ.n.
                /* 02B8 */  0x2B, 0xE7, 0xA1, 0x22, 0x0B, 0xA7, 0x1B, 0x40,  // +.."...@
                /* 02C0 */  0xD1, 0xFF, 0xFF, 0x74, 0x03, 0xFC, 0xCF, 0x29,  // ...t...)
                /* 02C8 */  0x60, 0x3D, 0x33, 0xB0, 0xC3, 0x03, 0xEE, 0xDE,  // `=3.....
                /* 02D0 */  0x80, 0x3F, 0xA7, 0x00, 0x6E, 0xD2, 0x3F, 0x01,  // .?..n.?.
                /* 02D8 */  0x74, 0xF0, 0x70, 0x72, 0x10, 0xD9, 0x78, 0x04,  // t.pr..x.
                /* 02E0 */  0x98, 0x40, 0x87, 0x13, 0xEB, 0x01, 0xD2, 0x34,  // .@.....4
                /* 02E8 */  0xC1, 0x30, 0x00, 0xD1, 0x6B, 0x00, 0x3E, 0x14,  // .0..k.>.
                /* 02F0 */  0x38, 0x37, 0x89, 0x92, 0x0F, 0x8C, 0xC2, 0x39,  // 87.....9
                /* 02F8 */  0xEB, 0x79, 0x84, 0x82, 0x18, 0xD0, 0x41, 0x0E,  // .y....A.
                /* 0300 */  0x14, 0xE8, 0xA3, 0x8A, 0xCF, 0x23, 0x6F, 0x21,  // .....#o!
                /* 0308 */  0x3E, 0x4D, 0xB0, 0xFF, 0xFF, 0x48, 0xD8, 0x19,  // >M...H..
                /* 0310 */  0x84, 0x1D, 0x27, 0x3C, 0x76, 0x1F, 0x14, 0xF8,  // ..'<v...
                /* 0318 */  0x77, 0xC6, 0xB3, 0x31, 0xBA, 0xD5, 0x1C, 0x57,  // w..1...W
                /* 0320 */  0x50, 0x60, 0x3E, 0x8A, 0x70, 0x82, 0xBA, 0xEE,  // P`>.p...
                /* 0328 */  0x12, 0x20, 0xD3, 0x77, 0x58, 0x00, 0x05, 0x90,  // . .wX...
                /* 0330 */  0xEF, 0x05, 0x3E, 0x09, 0x3C, 0x1B, 0xB0, 0x31,  // ..>.<..1
                /* 0338 */  0x3C, 0x0C, 0x18, 0xCD, 0xE8, 0x3C, 0xFC, 0x64,  // <....<.d
                /* 0340 */  0x51, 0x71, 0x27, 0x4B, 0x41, 0x3C, 0x59, 0x47,  // Qq'KA<YG
                /* 0348 */  0x99, 0x2C, 0x7A, 0x26, 0xBE, 0x59, 0x78, 0x46,  // .,z&.YxF
                /* 0350 */  0xAF, 0x5C, 0x9E, 0xA3, 0x27, 0xEC, 0x9B, 0x08,  // .\..'...
                /* 0358 */  0xAC, 0x1B, 0x43, 0xC8, 0x27, 0x03, 0x4F, 0xC3,  // ..C.'.O.
                /* 0360 */  0x70, 0x9E, 0x2C, 0x87, 0xF3, 0x64, 0xF9, 0x58,  // p.,..d.X
                /* 0368 */  0x7C, 0x11, 0x01, 0xDF, 0x9D, 0x02, 0x37, 0x5B,  // |.....7[
                /* 0370 */  0x30, 0xC2, 0x63, 0x02, 0x8E, 0x8A, 0xDE, 0x88,  // 0.c.....
                /* 0378 */  0x3C, 0x3C, 0x7E, 0x39, 0xF0, 0x7C, 0x9E, 0x11,  // <<~9.|..
                /* 0380 */  0x8E, 0xF2, 0x51, 0x02, 0x87, 0xF1, 0x54, 0xE2,  // ..Q...T.
                /* 0388 */  0x21, 0xFA, 0x72, 0x04, 0x6B, 0x22, 0x27, 0xED,  // !.r.k"'.
                /* 0390 */  0xDB, 0xC2, 0xFF, 0xFF, 0x64, 0x83, 0xBE, 0xA7,  // ....d...
                /* 0398 */  0x61, 0x2E, 0x47, 0xC0, 0x2F, 0xD7, 0x1D, 0x8B,  // a.G./...
                /* 03A0 */  0x06, 0x59, 0x8B, 0x82, 0xAD, 0x8A, 0xC2, 0xF8,  // .Y......
                /* 03A8 */  0x8E, 0x05, 0x38, 0xBA, 0x1A, 0x1C, 0x37, 0x58,  // ..8...7X
                /* 03B0 */  0x4E, 0x07, 0x2F, 0x3D, 0x6C, 0xC0, 0x41, 0x22,  // N./=l.A"
                /* 03B8 */  0x44, 0x3B, 0x16, 0xCF, 0x22, 0xCE, 0x19, 0xFB,  // D;.."...
                /* 03C0 */  0x44, 0xE7, 0xEB, 0x15, 0xFC, 0x03, 0xD4, 0x5B,  // D......[
                /* 03C8 */  0xC3, 0x03, 0xD5, 0x1B, 0x95, 0x2F, 0xA3, 0xC6,  // ...../..
                /* 03D0 */  0x79, 0xAE, 0x7A, 0xB1, 0x0A, 0xF2, 0x78, 0x15,  // y.z...x.
                /* 03D8 */  0xE9, 0xF5, 0xCA, 0xD3, 0x38, 0x8A, 0x38, 0x51,  // ....8.8Q
                /* 03E0 */  0x02, 0x45, 0x78, 0x24, 0x8D, 0xF0, 0x7A, 0x65,  // .Ex$..ze
                /* 03E8 */  0x8C, 0xE7, 0x2C, 0x03, 0x47, 0x39, 0xBD, 0xC7,  // ..,.G9..
                /* 03F0 */  0x51, 0x23, 0x1C, 0xC0, 0x31, 0xB0, 0xEB, 0x15,  // Q#..1...
                /* 03F8 */  0x18, 0xFE, 0xFF, 0xD7, 0x2B, 0x18, 0x82, 0xAE,  // ....+...
                /* 0400 */  0x57, 0x00, 0x4D, 0x2E, 0x4E, 0xB8, 0xEB, 0x15,  // W.M.N...
                /* 0408 */  0x98, 0x90, 0x0E, 0xD0, 0x40, 0x06, 0x3C, 0xFD,  // ....@.<.
                /* 0410 */  0xA3, 0x78, 0x7B, 0xF0, 0x2C, 0xDF, 0xAF, 0x80,  // .x{.,...
                /* 0418 */  0xF9, 0xFF, 0xFF, 0x7E, 0x05, 0xC6, 0xD4, 0xF7,  // ...~....
                /* 0420 */  0x2B, 0x9A, 0xF8, 0x7E, 0x85, 0xBA, 0xBF, 0x5A,  // +..~...Z
                /* 0428 */  0x11, 0x90, 0xE6, 0x09, 0x96, 0x0B, 0x16, 0xC0,  // ........
                /* 0430 */  0xC5, 0xFF, 0xFF, 0x05, 0x0B, 0xF8, 0xC6, 0xBA,  // ........
                /* 0438 */  0x60, 0x01, 0xBD, 0x9B, 0x11, 0x78, 0xAE, 0x16,  // `....x..
                /* 0440 */  0x98, 0x0F, 0x46, 0xC0, 0x67, 0x0B, 0xCC, 0xD1,  // ..F.g...
                /* 0448 */  0x08, 0x97, 0xEA, 0x6E, 0x05, 0x28, 0xFE, 0xFF,  // ...n.(..
                /* 0450 */  0xDF, 0xAD, 0x30, 0x33, 0x86, 0x77, 0xB7, 0x82,  // ..03.w..
                /* 0458 */  0x3D, 0xC4, 0x57, 0x97, 0x28, 0x6F, 0x0C, 0x11,  // =.W.(o..
                /* 0460 */  0x5E, 0x22, 0x82, 0x3C, 0x59, 0xF9, 0x3C, 0xF5,  // ^".<Y.<.
                /* 0468 */  0x4A, 0xF5, 0x4C, 0xE5, 0xBB, 0x95, 0xAF, 0x55,  // J.L....U
                /* 0470 */  0xB1, 0xDE, 0xB0, 0x1E, 0x85, 0x7D, 0xB1, 0x7A,  // .....}.z
                /* 0478 */  0xAD, 0x7A, 0x23, 0x36, 0xD4, 0x9B, 0x54, 0x9C,  // .z#6..T.
                /* 0480 */  0xA7, 0x62, 0xE3, 0xBE, 0x67, 0x19, 0x24, 0xE4,  // .b..g.$.
                /* 0488 */  0xDB, 0x95, 0xEF, 0x56, 0x00, 0xEF, 0xFE, 0xFF,  // ...V....
                /* 0490 */  0x77, 0x2B, 0xD8, 0xF7, 0x06, 0x7E, 0x47, 0x82,  // w+...~G.
                /* 0498 */  0x7D, 0xB7, 0x02, 0xDC, 0x64, 0xBE, 0x5B, 0xD1,  // }...d.[.
                /* 04A0 */  0xBC, 0x67, 0x61, 0x28, 0xF3, 0x04, 0xC7, 0xD5,  // .ga(....
                /* 04A8 */  0x0A, 0xF0, 0xFB, 0xFF, 0xBF, 0x5A, 0x01, 0x6C,  // .....Z.l
                /* 04B0 */  0xBD, 0xC4, 0xC2, 0xCB, 0x78, 0xB5, 0xA2, 0x61,  // ....x..a
                /* 04B8 */  0x96, 0xA1, 0x78, 0x0B, 0xA2, 0x30, 0xBE, 0x5A,  // ..x..0.Z
                /* 04C0 */  0x81, 0xE1, 0xFF, 0x7F, 0xB5, 0x02, 0x0C, 0x9C,  // ........
                /* 04C8 */  0x07, 0x0E, 0x19, 0x2C, 0x77, 0x98, 0x60, 0x4F,  // ...,w.`O
                /* 04D0 */  0x2F, 0x67, 0xFB, 0x20, 0x0C, 0xFE, 0xBB, 0x2F,  // /g. .../
                /* 04D8 */  0x83, 0x08, 0x12, 0xE3, 0x35, 0xF8, 0xDD, 0xEA,  // ....5...
                /* 04E0 */  0xA9, 0xEA, 0x1C, 0x82, 0x1F, 0x44, 0x14, 0x43,  // .....D.C
                /* 04E8 */  0x44, 0x7A, 0x1B, 0x36, 0x4A, 0xA0, 0xF7, 0x60,  // Dz.6J..`
                /* 04F0 */  0x1F, 0xB2, 0x8C, 0xF2, 0x88, 0x65, 0xC8, 0x77,  // .....e.w
                /* 04F8 */  0x2B, 0x03, 0x1A, 0xCB, 0xF8, 0x11, 0x5E, 0xAE,  // +.....^.
                /* 0500 */  0xC0, 0x2B, 0xE9, 0x72, 0x05, 0xC8, 0xF8, 0xFF,  // .+.r....
                /* 0508 */  0x5F, 0xAE, 0x00, 0x33, 0x67, 0x7A, 0xDC, 0xE5,  // _..3gz..
                /* 0510 */  0x0A, 0x4C, 0x37, 0x07, 0x76, 0x72, 0xE0, 0xC3,  // .L7.vr..
                /* 0518 */  0x78, 0x71, 0xC0, 0x9C, 0x84, 0x01, 0x57, 0xD9,  // xq....W.
                /* 0520 */  0x6F, 0x57, 0x34, 0xF7, 0xED, 0x0A, 0x75, 0x0A,  // oW4...u.
                /* 0528 */  0xB1, 0x26, 0x20, 0x4D, 0x14, 0x4C, 0xF7, 0x2B,  // .& M.L.+
                /* 0530 */  0x70, 0xFC, 0xFF, 0xEF, 0x57, 0x00, 0xAF, 0xA3,  // p...W...
                /* 0538 */  0xDD, 0xAF, 0x40, 0xF3, 0xFF, 0xBF, 0x5F, 0x81,  // ..@..._.
                /* 0540 */  0xF7, 0x76, 0x04, 0x9C, 0x52, 0xDE, 0xB0, 0x50,  // .v..R..P
                /* 0548 */  0x01, 0x6F, 0x58, 0x80, 0xDE, 0x5B, 0x1A, 0x38,  // .oX..[.8
                /* 0550 */  0x6E, 0x58, 0x70, 0xCF, 0x50, 0x0F, 0x3F, 0xAF,  // nXp.P.?.
                /* 0558 */  0x54, 0xC7, 0xF7, 0x6E, 0x15, 0xC5, 0xE7, 0x2B,  // T..n...+
                /* 0560 */  0x83, 0x3C, 0x4B, 0x44, 0x78, 0xC3, 0x62, 0xF7,  // .<KDx.b.
                /* 0568 */  0x2C, 0x76, 0xBE, 0xF2, 0x45, 0xCB, 0x30, 0x4F,  // ,v..E.0O
                /* 0570 */  0x5A, 0x1E, 0x49, 0x2C, 0x4F, 0x23, 0x46, 0xA8,  // Z.I,O#F.
                /* 0578 */  0x37, 0x2C, 0x36, 0xAF, 0x70, 0xFF, 0xFF, 0x37,  // 7,6.p..7
                /* 0580 */  0x2C, 0xF0, 0x8A, 0xBA, 0x61, 0x01, 0x34, 0x41,  // ,...a.4A
                /* 0588 */  0xF7, 0x0D, 0x0B, 0xBC, 0x27, 0x07, 0xCC, 0x4D,  // ....'..M
                /* 0590 */  0x09, 0xF6, 0x15, 0x0B, 0xDC, 0xFF, 0xFF, 0x2B,  // .......+
                /* 0598 */  0x16, 0x60, 0x60, 0xA6, 0x60, 0xB9, 0x62, 0x01,  // .``.`.b.
                /* 05A0 */  0xBC, 0xFA, 0xFF, 0x5F, 0xB1, 0x00, 0xC6, 0x5C,  // ..._...\
                /* 05A8 */  0x8F, 0xC0, 0x91, 0xE0, 0x8A, 0x45, 0x43, 0x2C,  // .....EC,
                /* 05B0 */  0x44, 0x71, 0x96, 0x44, 0x61, 0x7C, 0xC5, 0x02,  // Dq.Da|..
                /* 05B8 */  0x8C, 0xFC, 0xFF, 0xAF, 0x58, 0x30, 0x2E, 0x0B,  // ....X0..
                /* 05C0 */  0x1E, 0x34, 0x38, 0x2E, 0x69, 0x98, 0x21, 0x3C,  // .48.i.!<
                /* 05C8 */  0x25, 0xC4, 0x78, 0x3B, 0x78, 0x12, 0xF1, 0x61,  // %.x;x..a
                /* 05D0 */  0xC9, 0xD7, 0x2B, 0xD8, 0xB8, 0x4F, 0x57, 0x21,  // ..+..OW!
                /* 05D8 */  0x1E, 0xA8, 0x9E, 0xA7, 0x9E, 0x16, 0x1E, 0x5F,  // ......._
                /* 05E0 */  0x1E, 0xAE, 0xAC, 0x11, 0x48, 0x97, 0xAA, 0xB7,  // ....H...
                /* 05E8 */  0x61, 0x5F, 0x83, 0x7D, 0x90, 0x8A, 0x10, 0x25,  // a_.}...%
                /* 05F0 */  0x5A, 0x98, 0x80, 0x4F, 0x13, 0x51, 0x8A, 0x83,  // Z..O.Q..
                /* 05F8 */  0xD2, 0x40, 0x22, 0xC4, 0x8E, 0x12, 0xEA, 0x08,  // .@".....
                /* 0600 */  0xA2, 0x07, 0x89, 0x16, 0xF7, 0xF5, 0x0A, 0xBC,  // ........
                /* 0608 */  0x52, 0xAE, 0x57, 0x00, 0x19, 0xFE, 0xFF, 0xD7,  // R.W.....
                /* 0610 */  0x2B, 0x98, 0x58, 0xAF, 0x57, 0xE0, 0x3C, 0xD6,  // +.X.W.<.
                /* 0618 */  0x62, 0x40, 0x5F, 0x1A, 0x70, 0x37, 0x2B, 0xC0,  // b@_.p7+.
                /* 0620 */  0x4E, 0xD2, 0x9B, 0x15, 0x4D, 0x79, 0xB3, 0x42,  // N...My.B
                /* 0628 */  0x8D, 0xCC, 0x4A, 0x80, 0x34, 0x49, 0x78, 0x97,  // ..J.4Ix.
                /* 0630 */  0x2A, 0xC0, 0xE2, 0xFF, 0xFF, 0x52, 0x05, 0x70,  // *....R.p
                /* 0638 */  0xE6, 0xFA, 0xE2, 0x4B, 0x15, 0x70, 0xBB, 0x10,  // ...K.p..
                /* 0640 */  0x01, 0x87, 0x14, 0x17, 0x2A, 0xD0, 0xFC, 0xFF,  // ....*...
                /* 0648 */  0x2F, 0x54, 0x80, 0xBB, 0x2B, 0x99, 0x8F, 0x64,  // /T..+..d
                /* 0650 */  0xEC, 0x42, 0x05, 0xB6, 0x43, 0xD4, 0xEB, 0xC3,  // .B..C...
                /* 0658 */  0x1B, 0x95, 0x4F, 0x53, 0x21, 0x22, 0x45, 0x79,  // ..OS!"Ey
                /* 0660 */  0xF9, 0xF5, 0x5D, 0xE1, 0x2D, 0x2A, 0x8A, 0xC7,  // ..].-*..
                /* 0668 */  0xF9, 0x28, 0xE5, 0x33, 0xCF, 0xE3, 0x94, 0x61,  // .(.3...a
                /* 0670 */  0x1E, 0xAB, 0x8C, 0x12, 0xE2, 0xE9, 0xD7, 0x90,  // ........
                /* 0678 */  0x4F, 0x53, 0x91, 0x9E, 0xAD, 0x82, 0x1C, 0xCB,  // OS......
                /* 0680 */  0x2B, 0x54, 0xF0, 0xA0, 0x2F, 0x54, 0x80, 0xC3,  // +T../T..
                /* 0688 */  0xFF, 0xFF, 0x85, 0x0A, 0x30, 0x7A, 0x88, 0xC5,  // ....0z..
                /* 0690 */  0x5D, 0x8E, 0xB0, 0x17, 0x2A, 0xC0, 0x4D, 0xDA,  // ]...*.M.
                /* 0698 */  0x0B, 0x15, 0xBD, 0x52, 0xF9, 0x42, 0xC5, 0x47,  // ...R.B.G
                /* 06A0 */  0x62, 0x2D, 0x40, 0x9A, 0x24, 0xCC, 0x1B, 0x15,  // b-@.$...
                /* 06A8 */  0x30, 0xF8, 0xFF, 0xDF, 0xA8, 0x00, 0xE6, 0x86,  // 0.......
                /* 06B0 */  0xBA, 0x51, 0x01, 0x89, 0xFF, 0xFF, 0x8D, 0x0A,  // .Q......
                /* 06B8 */  0xA6, 0xC8, 0x1B, 0x11, 0xA8, 0x0E, 0xBD, 0xFC,  // ........
                /* 06C0 */  0x48, 0x04, 0x83, 0xA0, 0x42, 0x9B, 0x3E, 0x35,  // H...B.>5
                /* 06C8 */  0x1A, 0xB5, 0x6A, 0x50, 0xA6, 0x46, 0x99, 0x06,  // ..jP.F..
                /* 06D0 */  0xB5, 0xFA, 0x54, 0x6A, 0xCC, 0xD8, 0x01, 0xF5,  // ..Tj....
                /* 06D8 */  0xE8, 0x75, 0xBB, 0xA0, 0x82, 0xD6, 0xA4, 0x41,  // .u.....A
                /* 06E0 */  0xF9, 0x62, 0x65, 0x10, 0x4B, 0x97, 0x00, 0xC2,  // .be.K...
                /* 06E8 */  0xC2, 0xFE, 0x7B, 0x04, 0xE8, 0xA8, 0x7F, 0x2B,  // ..{....+
                /* 06F0 */  0x01, 0x59, 0xE8, 0x92, 0x04, 0x62, 0x51, 0x2A,  // .Y...bQ*
                /* 06F8 */  0x20, 0x1A, 0x19, 0x85, 0x41, 0x04, 0x64, 0x35,  //  ...A.d5
                /* 0700 */  0xCB, 0x15, 0x90, 0xB5, 0x81, 0x08, 0xC8, 0x99,  // ........
                /* 0708 */  0x7E, 0x33, 0x02, 0x77, 0x0E, 0x1D, 0x40, 0x4C,  // ~3.w..@L
                /* 0710 */  0x85, 0x0F, 0x10, 0x96, 0xFA, 0x29, 0x20, 0x50,  // .....) P
                /* 0718 */  0x4B, 0xA0, 0x10, 0x90, 0xE3, 0x82, 0x08, 0xC8,  // K.......
                /* 0720 */  0xE1, 0x81, 0xA8, 0x54, 0x27, 0xE0, 0x4C, 0x9E,  // ...T'.L.
                /* 0728 */  0x15, 0x20, 0x16, 0x0E, 0x84, 0x46, 0xF1, 0x02,  // . ...F..
                /* 0730 */  0xCA, 0x72, 0x81, 0x08, 0xC8, 0x19, 0x96, 0x2C,  // .r.....,
                /* 0738 */  0x20, 0x27, 0x02, 0x11, 0x90, 0xF3, 0x9B, 0xB9,  //  '......
                /* 0740 */  0xE7, 0x53, 0x37, 0x40, 0x4C, 0xF5, 0xD3, 0x41,  // .S7@L..A
                /* 0748 */  0x20, 0x56, 0xAA, 0x07, 0x94, 0xC9, 0x06, 0x11,  //  V......
                /* 0750 */  0x90, 0x25, 0xFA, 0x01, 0x62, 0x82, 0x41, 0x04,  // .%..b.A.
                /* 0758 */  0xE4, 0x88, 0x17, 0x15, 0x81, 0x3B, 0x9A, 0x22,  // .....;."
                /* 0760 */  0x20, 0x26, 0xCC, 0xD1, 0x89, 0x82, 0x5A, 0x1A,  //  &....Z.
                /* 0768 */  0x24, 0x05, 0x11, 0x90, 0x75, 0x68, 0x02, 0x62,  // $...uh.b
                /* 0770 */  0xAA, 0x40, 0x04, 0xE4, 0x1C, 0x9E, 0xC0, 0x99,  // .@......
                /* 0778 */  0x6E, 0x53, 0xC3, 0xA4, 0x20, 0x34, 0x97, 0x2B,  // nS.. 4.+
                /* 0780 */  0x50, 0x16, 0x12, 0x44, 0x40, 0x0E, 0xF4, 0x54,  // P..D@..T
                /* 0788 */  0x10, 0x90, 0xE3, 0x81, 0x08, 0xC8, 0x42, 0x9E,  // ......B.
                /* 0790 */  0x25, 0x02, 0x77, 0x70, 0x5F, 0x40, 0x4C, 0xF6,  // %.wp_@L.
                /* 0798 */  0xEB, 0x42, 0x20, 0x96, 0xA6, 0xEC, 0xFF, 0x0F,  // .B .....
                /* 07A0 */  0xCA, 0x74, 0x82, 0x08, 0xC8, 0x9A, 0x5E, 0x59,  // .t....^Y
                /* 07A8 */  0x3A, 0x08, 0x10, 0x10, 0x01, 0xF9, 0xFF, 0x0F   // :.......
            })
        }
    }
}

