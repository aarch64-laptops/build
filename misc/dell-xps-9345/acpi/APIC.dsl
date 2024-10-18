/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240927 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of apic.dat
 *
 * ACPI Data Table [APIC]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "APIC"    [Multiple APIC Description Table (MADT)]
[004h 0004 004h]                Table Length : 00000419
[008h 0008 001h]                    Revision : 05
[009h 0009 001h]                    Checksum : B3
[00Ah 0010 006h]                      Oem ID : "QCOM  "
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00008380
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 004h]          Local Apic Address : 00000000
[028h 0040 004h]       Flags (decoded below) : 00000000
                         PC-AT Compatibility : 0

[02Ch 0044 001h]               Subtable Type : 0B [Generic Interrupt Controller]
[02Dh 0045 001h]                      Length : 50
[02Eh 0046 002h]                    Reserved : 0000
[030h 0048 004h]        CPU Interface Number : 00000000
[034h 0052 004h]               Processor UID : 00000000
[038h 0056 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
          Performance Interrupt Trigger Mode : 0
          Virtual GIC Interrupt Trigger Mode : 0
[03Ch 0060 004h]    Parking Protocol Version : 00000000
[040h 0064 004h]       Performance Interrupt : 00000017
[044h 0068 008h]              Parked Address : 0000000000000000
[04Ch 0076 008h]                Base Address : 0000000000000000
[054h 0084 008h]    Virtual GIC Base Address : 0000000000000000
[05Ch 0092 008h] Hypervisor GIC Base Address : 0000000000000000
[064h 0100 004h]       Virtual GIC Interrupt : 00000019
[068h 0104 008h]  Redistributor Base Address : 0000000017080000
[070h 0112 008h]                   ARM MPIDR : 0000000000000000
[078h 0120 001h]            Efficiency Class : 00
[079h 0121 001h]                    Reserved : 00
[07Ah 0122 002h]      SPE Overflow Interrupt : 0000
[07Ch 0124 002h]              TRBE Interrupt : 500B

[07Ch 0124 001h]               Subtable Type : 0B [Generic Interrupt Controller]
[07Dh 0125 001h]                      Length : 50
[07Eh 0126 002h]                    Reserved : 0000
[080h 0128 004h]        CPU Interface Number : 00000001
[084h 0132 004h]               Processor UID : 00000001
[088h 0136 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
          Performance Interrupt Trigger Mode : 0
          Virtual GIC Interrupt Trigger Mode : 0
[08Ch 0140 004h]    Parking Protocol Version : 00000000
[090h 0144 004h]       Performance Interrupt : 00000017
[094h 0148 008h]              Parked Address : 0000000000000000
[09Ch 0156 008h]                Base Address : 0000000000000000
[0A4h 0164 008h]    Virtual GIC Base Address : 0000000000000000
[0ACh 0172 008h] Hypervisor GIC Base Address : 0000000000000000
[0B4h 0180 004h]       Virtual GIC Interrupt : 00000019
[0B8h 0184 008h]  Redistributor Base Address : 00000000170C0000
[0C0h 0192 008h]                   ARM MPIDR : 0000000000000100
[0C8h 0200 001h]            Efficiency Class : 00
[0C9h 0201 001h]                    Reserved : 00
[0CAh 0202 002h]      SPE Overflow Interrupt : 0000
[0CCh 0204 002h]              TRBE Interrupt : 500B

[0CCh 0204 001h]               Subtable Type : 0B [Generic Interrupt Controller]
[0CDh 0205 001h]                      Length : 50
[0CEh 0206 002h]                    Reserved : 0000
[0D0h 0208 004h]        CPU Interface Number : 00000002
[0D4h 0212 004h]               Processor UID : 00000002
[0D8h 0216 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
          Performance Interrupt Trigger Mode : 0
          Virtual GIC Interrupt Trigger Mode : 0
[0DCh 0220 004h]    Parking Protocol Version : 00000000
[0E0h 0224 004h]       Performance Interrupt : 00000017
[0E4h 0228 008h]              Parked Address : 0000000000000000
[0ECh 0236 008h]                Base Address : 0000000000000000
[0F4h 0244 008h]    Virtual GIC Base Address : 0000000000000000
[0FCh 0252 008h] Hypervisor GIC Base Address : 0000000000000000
[104h 0260 004h]       Virtual GIC Interrupt : 00000019
[108h 0264 008h]  Redistributor Base Address : 0000000017100000
[110h 0272 008h]                   ARM MPIDR : 0000000000000200
[118h 0280 001h]            Efficiency Class : 00
[119h 0281 001h]                    Reserved : 00
[11Ah 0282 002h]      SPE Overflow Interrupt : 0000
[11Ch 0284 002h]              TRBE Interrupt : 500B

[11Ch 0284 001h]               Subtable Type : 0B [Generic Interrupt Controller]
[11Dh 0285 001h]                      Length : 50
[11Eh 0286 002h]                    Reserved : 0000
[120h 0288 004h]        CPU Interface Number : 00000003
[124h 0292 004h]               Processor UID : 00000003
[128h 0296 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
          Performance Interrupt Trigger Mode : 0
          Virtual GIC Interrupt Trigger Mode : 0
[12Ch 0300 004h]    Parking Protocol Version : 00000000
[130h 0304 004h]       Performance Interrupt : 00000017
[134h 0308 008h]              Parked Address : 0000000000000000
[13Ch 0316 008h]                Base Address : 0000000000000000
[144h 0324 008h]    Virtual GIC Base Address : 0000000000000000
[14Ch 0332 008h] Hypervisor GIC Base Address : 0000000000000000
[154h 0340 004h]       Virtual GIC Interrupt : 00000019
[158h 0344 008h]  Redistributor Base Address : 0000000017140000
[160h 0352 008h]                   ARM MPIDR : 0000000000000300
[168h 0360 001h]            Efficiency Class : 00
[169h 0361 001h]                    Reserved : 00
[16Ah 0362 002h]      SPE Overflow Interrupt : 0000
[16Ch 0364 002h]              TRBE Interrupt : 500B

[16Ch 0364 001h]               Subtable Type : 0B [Generic Interrupt Controller]
[16Dh 0365 001h]                      Length : 50
[16Eh 0366 002h]                    Reserved : 0000
[170h 0368 004h]        CPU Interface Number : 00000004
[174h 0372 004h]               Processor UID : 00000004
[178h 0376 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
          Performance Interrupt Trigger Mode : 0
          Virtual GIC Interrupt Trigger Mode : 0
[17Ch 0380 004h]    Parking Protocol Version : 00000000
[180h 0384 004h]       Performance Interrupt : 00000017
[184h 0388 008h]              Parked Address : 0000000000000000
[18Ch 0396 008h]                Base Address : 0000000000000000
[194h 0404 008h]    Virtual GIC Base Address : 0000000000000000
[19Ch 0412 008h] Hypervisor GIC Base Address : 0000000000000000
[1A4h 0420 004h]       Virtual GIC Interrupt : 00000019
[1A8h 0424 008h]  Redistributor Base Address : 0000000017180000
[1B0h 0432 008h]                   ARM MPIDR : 0000000000010000
[1B8h 0440 001h]            Efficiency Class : 01
[1B9h 0441 001h]                    Reserved : 00
[1BAh 0442 002h]      SPE Overflow Interrupt : 0000
[1BCh 0444 002h]              TRBE Interrupt : 500B

[1BCh 0444 001h]               Subtable Type : 0B [Generic Interrupt Controller]
[1BDh 0445 001h]                      Length : 50
[1BEh 0446 002h]                    Reserved : 0000
[1C0h 0448 004h]        CPU Interface Number : 00000005
[1C4h 0452 004h]               Processor UID : 00000005
[1C8h 0456 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
          Performance Interrupt Trigger Mode : 0
          Virtual GIC Interrupt Trigger Mode : 0
[1CCh 0460 004h]    Parking Protocol Version : 00000000
[1D0h 0464 004h]       Performance Interrupt : 00000017
[1D4h 0468 008h]              Parked Address : 0000000000000000
[1DCh 0476 008h]                Base Address : 0000000000000000
[1E4h 0484 008h]    Virtual GIC Base Address : 0000000000000000
[1ECh 0492 008h] Hypervisor GIC Base Address : 0000000000000000
[1F4h 0500 004h]       Virtual GIC Interrupt : 00000019
[1F8h 0504 008h]  Redistributor Base Address : 00000000171C0000
[200h 0512 008h]                   ARM MPIDR : 0000000000010100
[208h 0520 001h]            Efficiency Class : 01
[209h 0521 001h]                    Reserved : 00
[20Ah 0522 002h]      SPE Overflow Interrupt : 0000
[20Ch 0524 002h]              TRBE Interrupt : 500B

[20Ch 0524 001h]               Subtable Type : 0B [Generic Interrupt Controller]
[20Dh 0525 001h]                      Length : 50
[20Eh 0526 002h]                    Reserved : 0000
[210h 0528 004h]        CPU Interface Number : 00000006
[214h 0532 004h]               Processor UID : 00000006
[218h 0536 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
          Performance Interrupt Trigger Mode : 0
          Virtual GIC Interrupt Trigger Mode : 0
[21Ch 0540 004h]    Parking Protocol Version : 00000000
[220h 0544 004h]       Performance Interrupt : 00000017
[224h 0548 008h]              Parked Address : 0000000000000000
[22Ch 0556 008h]                Base Address : 0000000000000000
[234h 0564 008h]    Virtual GIC Base Address : 0000000000000000
[23Ch 0572 008h] Hypervisor GIC Base Address : 0000000000000000
[244h 0580 004h]       Virtual GIC Interrupt : 00000019
[248h 0584 008h]  Redistributor Base Address : 0000000017200000
[250h 0592 008h]                   ARM MPIDR : 0000000000010200
[258h 0600 001h]            Efficiency Class : 01
[259h 0601 001h]                    Reserved : 00
[25Ah 0602 002h]      SPE Overflow Interrupt : 0000
[25Ch 0604 002h]              TRBE Interrupt : 500B

[25Ch 0604 001h]               Subtable Type : 0B [Generic Interrupt Controller]
[25Dh 0605 001h]                      Length : 50
[25Eh 0606 002h]                    Reserved : 0000
[260h 0608 004h]        CPU Interface Number : 00000007
[264h 0612 004h]               Processor UID : 00000007
[268h 0616 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
          Performance Interrupt Trigger Mode : 0
          Virtual GIC Interrupt Trigger Mode : 0
[26Ch 0620 004h]    Parking Protocol Version : 00000000
[270h 0624 004h]       Performance Interrupt : 00000017
[274h 0628 008h]              Parked Address : 0000000000000000
[27Ch 0636 008h]                Base Address : 0000000000000000
[284h 0644 008h]    Virtual GIC Base Address : 0000000000000000
[28Ch 0652 008h] Hypervisor GIC Base Address : 0000000000000000
[294h 0660 004h]       Virtual GIC Interrupt : 00000019
[298h 0664 008h]  Redistributor Base Address : 0000000017240000
[2A0h 0672 008h]                   ARM MPIDR : 0000000000010300
[2A8h 0680 001h]            Efficiency Class : 01
[2A9h 0681 001h]                    Reserved : 00
[2AAh 0682 002h]      SPE Overflow Interrupt : 0000
[2ACh 0684 002h]              TRBE Interrupt : 500B

[2ACh 0684 001h]               Subtable Type : 0B [Generic Interrupt Controller]
[2ADh 0685 001h]                      Length : 50
[2AEh 0686 002h]                    Reserved : 0000
[2B0h 0688 004h]        CPU Interface Number : 00000008
[2B4h 0692 004h]               Processor UID : 00000008
[2B8h 0696 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
          Performance Interrupt Trigger Mode : 0
          Virtual GIC Interrupt Trigger Mode : 0
[2BCh 0700 004h]    Parking Protocol Version : 00000000
[2C0h 0704 004h]       Performance Interrupt : 00000017
[2C4h 0708 008h]              Parked Address : 0000000000000000
[2CCh 0716 008h]                Base Address : 0000000000000000
[2D4h 0724 008h]    Virtual GIC Base Address : 0000000000000000
[2DCh 0732 008h] Hypervisor GIC Base Address : 0000000000000000
[2E4h 0740 004h]       Virtual GIC Interrupt : 00000019
[2E8h 0744 008h]  Redistributor Base Address : 0000000017280000
[2F0h 0752 008h]                   ARM MPIDR : 0000000000020000
[2F8h 0760 001h]            Efficiency Class : 01
[2F9h 0761 001h]                    Reserved : 00
[2FAh 0762 002h]      SPE Overflow Interrupt : 0000
[2FCh 0764 002h]              TRBE Interrupt : 500B

[2FCh 0764 001h]               Subtable Type : 0B [Generic Interrupt Controller]
[2FDh 0765 001h]                      Length : 50
[2FEh 0766 002h]                    Reserved : 0000
[300h 0768 004h]        CPU Interface Number : 00000009
[304h 0772 004h]               Processor UID : 00000009
[308h 0776 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
          Performance Interrupt Trigger Mode : 0
          Virtual GIC Interrupt Trigger Mode : 0
[30Ch 0780 004h]    Parking Protocol Version : 00000000
[310h 0784 004h]       Performance Interrupt : 00000017
[314h 0788 008h]              Parked Address : 0000000000000000
[31Ch 0796 008h]                Base Address : 0000000000000000
[324h 0804 008h]    Virtual GIC Base Address : 0000000000000000
[32Ch 0812 008h] Hypervisor GIC Base Address : 0000000000000000
[334h 0820 004h]       Virtual GIC Interrupt : 00000019
[338h 0824 008h]  Redistributor Base Address : 00000000172C0000
[340h 0832 008h]                   ARM MPIDR : 0000000000020100
[348h 0840 001h]            Efficiency Class : 01
[349h 0841 001h]                    Reserved : 00
[34Ah 0842 002h]      SPE Overflow Interrupt : 0000
[34Ch 0844 002h]              TRBE Interrupt : 500B

[34Ch 0844 001h]               Subtable Type : 0B [Generic Interrupt Controller]
[34Dh 0845 001h]                      Length : 50
[34Eh 0846 002h]                    Reserved : 0000
[350h 0848 004h]        CPU Interface Number : 0000000A
[354h 0852 004h]               Processor UID : 0000000A
[358h 0856 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
          Performance Interrupt Trigger Mode : 0
          Virtual GIC Interrupt Trigger Mode : 0
[35Ch 0860 004h]    Parking Protocol Version : 00000000
[360h 0864 004h]       Performance Interrupt : 00000017
[364h 0868 008h]              Parked Address : 0000000000000000
[36Ch 0876 008h]                Base Address : 0000000000000000
[374h 0884 008h]    Virtual GIC Base Address : 0000000000000000
[37Ch 0892 008h] Hypervisor GIC Base Address : 0000000000000000
[384h 0900 004h]       Virtual GIC Interrupt : 00000019
[388h 0904 008h]  Redistributor Base Address : 0000000017300000
[390h 0912 008h]                   ARM MPIDR : 0000000000020200
[398h 0920 001h]            Efficiency Class : 01
[399h 0921 001h]                    Reserved : 00
[39Ah 0922 002h]      SPE Overflow Interrupt : 0000
[39Ch 0924 002h]              TRBE Interrupt : 500B

[39Ch 0924 001h]               Subtable Type : 0B [Generic Interrupt Controller]
[39Dh 0925 001h]                      Length : 50
[39Eh 0926 002h]                    Reserved : 0000
[3A0h 0928 004h]        CPU Interface Number : 0000000B
[3A4h 0932 004h]               Processor UID : 0000000B
[3A8h 0936 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
          Performance Interrupt Trigger Mode : 0
          Virtual GIC Interrupt Trigger Mode : 0
[3ACh 0940 004h]    Parking Protocol Version : 00000000
[3B0h 0944 004h]       Performance Interrupt : 00000017
[3B4h 0948 008h]              Parked Address : 0000000000000000
[3BCh 0956 008h]                Base Address : 0000000000000000
[3C4h 0964 008h]    Virtual GIC Base Address : 0000000000000000
[3CCh 0972 008h] Hypervisor GIC Base Address : 0000000000000000
[3D4h 0980 004h]       Virtual GIC Interrupt : 00000019
[3D8h 0984 008h]  Redistributor Base Address : 0000000017340000
[3E0h 0992 008h]                   ARM MPIDR : 0000000000020300
[3E8h 1000 001h]            Efficiency Class : 01
[3E9h 1001 001h]                    Reserved : 00
[3EAh 1002 002h]      SPE Overflow Interrupt : 0000
[3ECh 1004 002h]              TRBE Interrupt : 190C

[3ECh 1004 001h]               Subtable Type : 0C [Generic Interrupt Distributor]
[3EDh 1005 001h]                      Length : 19
[3EEh 1006 002h]                    Reserved : 0000
[3F0h 1008 004h]       Local GIC Hardware ID : 00000000
[3F4h 1012 008h]                Base Address : 0000000017000000
[3FCh 1020 004h]              Interrupt Base : 00000000
[400h 1024 001h]                     Version : 04
[401h 1025 003h]                    Reserved : 000000

[405h 1029 001h]               Subtable Type : 0F [Generic Interrupt Translator]
[406h 1030 001h]                      Length : 14
[408h 1032 002h]                    Reserved : 0000
[409h 1033 004h]              Translation ID : 00000000
[40Dh 1037 008h]                Base Address : 0000000017040000
[415h 1045 004h]                    Reserved : 00000000

Raw Table Data: Length 1049 (0x419)

    0000: 41 50 49 43 19 04 00 00 05 B3 51 43 4F 4D 20 20  // APIC......QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 83 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 00 00 00 00 00 00 00 00 0B 50 00 00  // .............P..
    0030: 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  // ................
    0040: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0050: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0060: 00 00 00 00 19 00 00 00 00 00 08 17 00 00 00 00  // ................
    0070: 00 00 00 00 00 00 00 00 00 00 00 00 0B 50 00 00  // .............P..
    0080: 01 00 00 00 01 00 00 00 01 00 00 00 00 00 00 00  // ................
    0090: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    00A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    00B0: 00 00 00 00 19 00 00 00 00 00 0C 17 00 00 00 00  // ................
    00C0: 00 01 00 00 00 00 00 00 00 00 00 00 0B 50 00 00  // .............P..
    00D0: 02 00 00 00 02 00 00 00 01 00 00 00 00 00 00 00  // ................
    00E0: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    00F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0100: 00 00 00 00 19 00 00 00 00 00 10 17 00 00 00 00  // ................
    0110: 00 02 00 00 00 00 00 00 00 00 00 00 0B 50 00 00  // .............P..
    0120: 03 00 00 00 03 00 00 00 01 00 00 00 00 00 00 00  // ................
    0130: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0140: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0150: 00 00 00 00 19 00 00 00 00 00 14 17 00 00 00 00  // ................
    0160: 00 03 00 00 00 00 00 00 00 00 00 00 0B 50 00 00  // .............P..
    0170: 04 00 00 00 04 00 00 00 01 00 00 00 00 00 00 00  // ................
    0180: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0190: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    01A0: 00 00 00 00 19 00 00 00 00 00 18 17 00 00 00 00  // ................
    01B0: 00 00 01 00 00 00 00 00 01 00 00 00 0B 50 00 00  // .............P..
    01C0: 05 00 00 00 05 00 00 00 01 00 00 00 00 00 00 00  // ................
    01D0: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    01E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    01F0: 00 00 00 00 19 00 00 00 00 00 1C 17 00 00 00 00  // ................
    0200: 00 01 01 00 00 00 00 00 01 00 00 00 0B 50 00 00  // .............P..
    0210: 06 00 00 00 06 00 00 00 01 00 00 00 00 00 00 00  // ................
    0220: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0230: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0240: 00 00 00 00 19 00 00 00 00 00 20 17 00 00 00 00  // .......... .....
    0250: 00 02 01 00 00 00 00 00 01 00 00 00 0B 50 00 00  // .............P..
    0260: 07 00 00 00 07 00 00 00 01 00 00 00 00 00 00 00  // ................
    0270: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0280: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0290: 00 00 00 00 19 00 00 00 00 00 24 17 00 00 00 00  // ..........$.....
    02A0: 00 03 01 00 00 00 00 00 01 00 00 00 0B 50 00 00  // .............P..
    02B0: 08 00 00 00 08 00 00 00 01 00 00 00 00 00 00 00  // ................
    02C0: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    02D0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    02E0: 00 00 00 00 19 00 00 00 00 00 28 17 00 00 00 00  // ..........(.....
    02F0: 00 00 02 00 00 00 00 00 01 00 00 00 0B 50 00 00  // .............P..
    0300: 09 00 00 00 09 00 00 00 01 00 00 00 00 00 00 00  // ................
    0310: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0320: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0330: 00 00 00 00 19 00 00 00 00 00 2C 17 00 00 00 00  // ..........,.....
    0340: 00 01 02 00 00 00 00 00 01 00 00 00 0B 50 00 00  // .............P..
    0350: 0A 00 00 00 0A 00 00 00 01 00 00 00 00 00 00 00  // ................
    0360: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0370: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0380: 00 00 00 00 19 00 00 00 00 00 30 17 00 00 00 00  // ..........0.....
    0390: 00 02 02 00 00 00 00 00 01 00 00 00 0B 50 00 00  // .............P..
    03A0: 0B 00 00 00 0B 00 00 00 01 00 00 00 00 00 00 00  // ................
    03B0: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    03C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    03D0: 00 00 00 00 19 00 00 00 00 00 34 17 00 00 00 00  // ..........4.....
    03E0: 00 03 02 00 00 00 00 00 01 00 00 00 0C 19 00 00  // ................
    03F0: 00 00 00 00 00 00 00 17 00 00 00 00 00 00 00 00  // ................
    0400: 04 00 00 00 00 0F 14 00 00 00 00 00 00 00 00 04  // ................
    0410: 17 00 00 00 00 00 00 00 00                       // .........
