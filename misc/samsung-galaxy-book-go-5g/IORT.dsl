/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180105 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembly of IORT.dat, Sat Apr  1 09:20:42 2023
 *
 * ACPI Data Table [IORT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "IORT"    [IO Remapping Table]
[004h 0004   4]                 Table Length : 00001943
[008h 0008   1]                     Revision : 00
[009h 0009   1]                     Checksum : 7A
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00008180
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   4]                   Node Count : 0000001A
[028h 0040   4]                  Node Offset : 00000030
[02Ch 0044   4]                     Reserved : 00000000

[030h 0048   1]                         Type : 03
[031h 0049   2]                       Length : 0494
[033h 0051   1]                     Revision : 00
[034h 0052   4]                     Reserved : 00000000
[038h 0056   4]                Mapping Count : 00000000
[03Ch 0060   4]               Mapping Offset : 00000000

[040h 0064   8]                 Base Address : 0000000015000000
[048h 0072   8]                         Span : 0000000000100000
[050h 0080   4]                        Model : 00000003
[054h 0084   4]        Flags (decoded below) : 00000000
                               DVM Supported : 0
                               Coherent Walk : 0
[058h 0088   4]      Global Interrupt Offset : 0000003C
[05Ch 0092   4]      Context Interrupt Count : 00000080
[060h 0096   4]     Context Interrupt Offset : 0000004C
[064h 0100   4]          PMU Interrupt Count : 00000009
[068h 0104   4]         PMU Interrupt Offset : 0000044C

[06Ch 0108   4]                      NSgIrpt : 00000061
[070h 0112   4] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[074h 0116   4]                   NSgCfgIrpt : 00000000
[078h 0120   4] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[07Ch 0124   8]            Context Interrupt : 0000000100000081
[084h 0132   8]            Context Interrupt : 0000000100000082
[08Ch 0140   8]            Context Interrupt : 0000000100000083
[094h 0148   8]            Context Interrupt : 0000000100000084
[09Ch 0156   8]            Context Interrupt : 0000000100000085
[0A4h 0164   8]            Context Interrupt : 0000000100000086
[0ACh 0172   8]            Context Interrupt : 0000000100000087
[0B4h 0180   8]            Context Interrupt : 0000000100000088
[0BCh 0188   8]            Context Interrupt : 0000000100000089
[0C4h 0196   8]            Context Interrupt : 000000010000008A
[0CCh 0204   8]            Context Interrupt : 000000010000008B
[0D4h 0212   8]            Context Interrupt : 000000010000008C
[0DCh 0220   8]            Context Interrupt : 000000010000008D
[0E4h 0228   8]            Context Interrupt : 000000010000008E
[0ECh 0236   8]            Context Interrupt : 000000010000008F
[0F4h 0244   8]            Context Interrupt : 0000000100000090
[0FCh 0252   8]            Context Interrupt : 0000000100000091
[104h 0260   8]            Context Interrupt : 0000000100000092
[10Ch 0268   8]            Context Interrupt : 0000000100000093
[114h 0276   8]            Context Interrupt : 0000000100000094
[11Ch 0284   8]            Context Interrupt : 0000000100000095
[124h 0292   8]            Context Interrupt : 0000000100000096
[12Ch 0300   8]            Context Interrupt : 00000001000000D5
[134h 0308   8]            Context Interrupt : 00000001000000D6
[13Ch 0316   8]            Context Interrupt : 00000001000000D7
[144h 0324   8]            Context Interrupt : 00000001000000D8
[14Ch 0332   8]            Context Interrupt : 00000001000000D9
[154h 0340   8]            Context Interrupt : 00000001000000DA
[15Ch 0348   8]            Context Interrupt : 00000001000000DB
[164h 0356   8]            Context Interrupt : 00000001000000DC
[16Ch 0364   8]            Context Interrupt : 00000001000000DD
[174h 0372   8]            Context Interrupt : 00000001000000DE
[17Ch 0380   8]            Context Interrupt : 00000001000000DF
[184h 0388   8]            Context Interrupt : 00000001000000E0
[18Ch 0396   8]            Context Interrupt : 000000010000015B
[194h 0404   8]            Context Interrupt : 000000010000015C
[19Ch 0412   8]            Context Interrupt : 000000010000015D
[1A4h 0420   8]            Context Interrupt : 000000010000015E
[1ACh 0428   8]            Context Interrupt : 000000010000015F
[1B4h 0436   8]            Context Interrupt : 0000000100000160
[1BCh 0444   8]            Context Interrupt : 0000000100000161
[1C4h 0452   8]            Context Interrupt : 0000000100000162
[1CCh 0460   8]            Context Interrupt : 0000000100000163
[1D4h 0468   8]            Context Interrupt : 0000000100000164
[1DCh 0476   8]            Context Interrupt : 0000000100000165
[1E4h 0484   8]            Context Interrupt : 0000000100000166
[1ECh 0492   8]            Context Interrupt : 0000000100000167
[1F4h 0500   8]            Context Interrupt : 0000000100000168
[1FCh 0508   8]            Context Interrupt : 0000000100000169
[204h 0516   8]            Context Interrupt : 000000010000016A
[20Ch 0524   8]            Context Interrupt : 000000010000016B
[214h 0532   8]            Context Interrupt : 000000010000016C
[21Ch 0540   8]            Context Interrupt : 000000010000016D
[224h 0548   8]            Context Interrupt : 000000010000016E
[22Ch 0556   8]            Context Interrupt : 000000010000016F
[234h 0564   8]            Context Interrupt : 0000000100000170
[23Ch 0572   8]            Context Interrupt : 0000000100000171
[244h 0580   8]            Context Interrupt : 0000000100000172
[24Ch 0588   8]            Context Interrupt : 0000000100000173
[254h 0596   8]            Context Interrupt : 0000000100000174
[25Ch 0604   8]            Context Interrupt : 0000000100000175
[264h 0612   8]            Context Interrupt : 0000000100000176
[26Ch 0620   8]            Context Interrupt : 0000000100000177
[274h 0628   8]            Context Interrupt : 0000000100000178
[27Ch 0636   8]            Context Interrupt : 0000000100000179
[284h 0644   8]            Context Interrupt : 00000001000001AB
[28Ch 0652   8]            Context Interrupt : 00000001000001AC
[294h 0660   8]            Context Interrupt : 00000001000001AD
[29Ch 0668   8]            Context Interrupt : 00000001000001AE
[2A4h 0676   8]            Context Interrupt : 00000001000001AF
[2ACh 0684   8]            Context Interrupt : 00000001000001B0
[2B4h 0692   8]            Context Interrupt : 00000001000001B1
[2BCh 0700   8]            Context Interrupt : 00000001000001B2
[2C4h 0708   8]            Context Interrupt : 00000001000001B3
[2CCh 0716   8]            Context Interrupt : 00000001000001B4
[2D4h 0724   8]            Context Interrupt : 00000001000001B5
[2DCh 0732   8]            Context Interrupt : 00000001000001B6
[2E4h 0740   8]            Context Interrupt : 00000001000001B7
[2ECh 0748   8]            Context Interrupt : 00000001000001B8
[2F4h 0756   8]            Context Interrupt : 00000001000001B9
[2FCh 0764   8]            Context Interrupt : 00000001000001BA
[304h 0772   8]            Context Interrupt : 00000001000001BB
[30Ch 0780   8]            Context Interrupt : 00000001000001BC
[314h 0788   8]            Context Interrupt : 00000001000001BD
[31Ch 0796   8]            Context Interrupt : 00000001000002A0
[324h 0804   8]            Context Interrupt : 00000001000002A1
[32Ch 0812   8]            Context Interrupt : 00000001000002A2
[334h 0820   8]            Context Interrupt : 00000001000002A3
[33Ch 0828   8]            Context Interrupt : 00000001000002E2
[344h 0836   8]            Context Interrupt : 00000001000002E3
[34Ch 0844   8]            Context Interrupt : 00000001000002E4
[354h 0852   8]            Context Interrupt : 00000001000002E5
[35Ch 0860   8]            Context Interrupt : 00000001000002E6
[364h 0868   8]            Context Interrupt : 00000001000002E7
[36Ch 0876   8]            Context Interrupt : 00000001000002E8
[374h 0884   8]            Context Interrupt : 00000001000002E9
[37Ch 0892   8]            Context Interrupt : 00000001000002EA
[384h 0900   8]            Context Interrupt : 00000001000002EB
[38Ch 0908   8]            Context Interrupt : 0000000100000320
[394h 0916   8]            Context Interrupt : 0000000100000321
[39Ch 0924   8]            Context Interrupt : 0000000100000322
[3A4h 0932   8]            Context Interrupt : 0000000100000323
[3ACh 0940   8]            Context Interrupt : 0000000100000324
[3B4h 0948   8]            Context Interrupt : 0000000100000325
[3BCh 0956   8]            Context Interrupt : 0000000100000326
[3C4h 0964   8]            Context Interrupt : 0000000100000327
[3CCh 0972   8]            Context Interrupt : 0000000100000328
[3D4h 0980   8]            Context Interrupt : 0000000100000329
[3DCh 0988   8]            Context Interrupt : 000000010000032A
[3E4h 0996   8]            Context Interrupt : 000000010000032B
[3ECh 1004   8]            Context Interrupt : 000000010000032C
[3F4h 1012   8]            Context Interrupt : 000000010000032D
[3FCh 1020   8]            Context Interrupt : 000000010000032E
[404h 1028   8]            Context Interrupt : 000000010000032F
[40Ch 1036   8]            Context Interrupt : 0000000100000330
[414h 1044   8]            Context Interrupt : 0000000100000331
[41Ch 1052   8]            Context Interrupt : 0000000100000332
[424h 1060   8]            Context Interrupt : 0000000100000333
[42Ch 1068   8]            Context Interrupt : 0000000100000334
[434h 1076   8]            Context Interrupt : 0000000100000335
[43Ch 1084   8]            Context Interrupt : 0000000100000336
[444h 1092   8]            Context Interrupt : 0000000100000337
[44Ch 1100   8]            Context Interrupt : 0000000100000338
[454h 1108   8]            Context Interrupt : 0000000100000339
[45Ch 1116   8]            Context Interrupt : 000000010000033A
[464h 1124   8]            Context Interrupt : 000000010000033B
[46Ch 1132   8]            Context Interrupt : 000000010000033C
[474h 1140   8]            Context Interrupt : 000000010000033D
[47Ch 1148   8]                PMU Interrupt : 0000000100000064
[484h 1156   8]                PMU Interrupt : 0000000100000065
[48Ch 1164   8]                PMU Interrupt : 0000000100000066
[494h 1172   8]                PMU Interrupt : 0000000100000067
[49Ch 1180   8]                PMU Interrupt : 0000000100000068
[4A4h 1188   8]                PMU Interrupt : 0000000100000069
[4ACh 1196   8]                PMU Interrupt : 000000010000007E
[4B4h 1204   8]                PMU Interrupt : 000000010000007F
[4BCh 1212   8]                PMU Interrupt : 0000000100000080

[4C4h 1220   1]                         Type : 03
[4C5h 1221   2]                       Length : 00AC
[4C7h 1223   1]                     Revision : 00
[4C8h 1224   4]                     Reserved : 00000000
[4CCh 1228   4]                Mapping Count : 00000000
[4D0h 1232   4]               Mapping Offset : 00000000

[4D4h 1236   8]                 Base Address : 0000000002CA0000
[4DCh 1244   8]                         Span : 0000000000010000
[4E4h 1252   4]                        Model : 00000003
[4E8h 1256   4]        Flags (decoded below) : 00000000
                               DVM Supported : 0
                               Coherent Walk : 0
[4ECh 1260   4]      Global Interrupt Offset : 0000003C
[4F0h 1264   4]      Context Interrupt Count : 00000008
[4F4h 1268   4]     Context Interrupt Offset : 0000004C
[4F8h 1272   4]          PMU Interrupt Count : 00000004
[4FCh 1276   4]         PMU Interrupt Offset : 0000008C

[500h 1280   4]                      NSgIrpt : 000002C1
[504h 1284   4] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[508h 1288   4]                   NSgCfgIrpt : 00000000
[50Ch 1292   4] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[510h 1296   8]            Context Interrupt : 00000001000002C8
[518h 1304   8]            Context Interrupt : 00000001000002C9
[520h 1312   8]            Context Interrupt : 00000001000002CA
[528h 1320   8]            Context Interrupt : 00000001000002CB
[530h 1328   8]            Context Interrupt : 00000001000002CC
[538h 1336   8]            Context Interrupt : 00000001000002CD
[540h 1344   8]            Context Interrupt : 00000001000002CE
[548h 1352   8]            Context Interrupt : 00000001000002CF
[550h 1360   8]                PMU Interrupt : 00000001000002C4
[558h 1368   8]                PMU Interrupt : 00000001000002C5
[560h 1376   8]                PMU Interrupt : 00000001000002C6
[568h 1384   8]                PMU Interrupt : 00000001000002C7

[570h 1392   1]                         Type : 02
[571h 1393   2]                       Length : 0070
[573h 1395   1]                     Revision : 00
[574h 1396   4]                     Reserved : 00000000
[578h 1400   4]                Mapping Count : 00000004
[57Ch 1404   4]               Mapping Offset : 00000020

[580h 1408   8]            Memory Properties : [IORT Memory Access Properties]
[580h 1408   4]              Cache Coherency : 00000001
[584h 1412   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[585h 1413   2]                     Reserved : 0000
[587h 1415   1] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[588h 1416   4]                ATS Attribute : 00000001
[58Ch 1420   4]           PCI Segment Number : 00000000

[590h 1424   4]                   Input base : 87030000
[594h 1428   4]                     ID Count : 0000007F
[598h 1432   4]                  Output Base : 00001C80
[59Ch 1436   4]             Output Reference : 00000030
[5A0h 1440   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5A4h 1444   4]                   Input base : 87030080
[5A8h 1448   4]                     ID Count : 0000007F
[5ACh 1452   4]                  Output Base : 00001D00
[5B0h 1456   4]             Output Reference : 00000030
[5B4h 1460   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5B8h 1464   4]                   Input base : 87030100
[5BCh 1468   4]                     ID Count : 0000007F
[5C0h 1472   4]                  Output Base : 00001D80
[5C4h 1476   4]             Output Reference : 00000030
[5C8h 1480   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5CCh 1484   4]                   Input base : 87030180
[5D0h 1488   4]                     ID Count : 0000007F
[5D4h 1492   4]                  Output Base : 00001E00
[5D8h 1496   4]             Output Reference : 00000030
[5DCh 1500   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5E0h 1504   1]                         Type : 01
[5E1h 1505   2]                       Length : 0439
[5E3h 1507   1]                     Revision : 00
[5E4h 1508   4]                     Reserved : 00000000
[5E8h 1512   4]                Mapping Count : 00000033
[5ECh 1516   4]               Mapping Offset : 0000003D

[5F0h 1520   4]                   Node Flags : 00000000
[5F4h 1524   8]            Memory Properties : [IORT Memory Access Properties]
[5F4h 1524   4]              Cache Coherency : 00000000
[5F8h 1528   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[5F9h 1529   2]                     Reserved : 0000
[5FBh 1531   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[5FCh 1532   1]            Memory Size Limit : 28
[5FDh 1533  10]                  Device Name : "\_SB.GPU0"
[607h 1543 1042]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 0A 03 00 00 00 00 02 00 \
    00 00 C4 04 00 00 00 00 00 00 01 00 0A 03 00 00 \
    00 00 02 04 00 00 C4 04 00 00 00 00 00 00 02 00 \
    0A 03 00 00 00 00 02 08 00 00 C4 04 00 00 00 00 \
    00 00 03 00 0A 03 00 00 00 00 02 0C 00 00 C4 04 \
    00 00 00 00 00 00 00 00 03 03 01 00 00 00 00 00 \
    00 00 C4 04 00 00 00 00 00 00 02 00 03 03 01 00 \
    00 00 00 04 00 00 C4 04 00 00 00 00 00 00 04 00 \
    03 03 01 00 00 00 00 08 00 00 C4 04 00 00 00 00 \
    00 00 06 00 03 03 01 00 00 00 00 0C 00 00 C4 04 \
    00 00 00 00 00 00 0C 00 03 03 00 00 00 00 04 00 \
    00 00 C4 04 00 00 00 00 00 00 0D 00 03 03 00 00 \
    00 00 04 04 00 00 C4 04 00 00 00 00 00 00 0E 00 \
    03 03 00 00 00 00 04 08 00 00 C4 04 00 00 00 00 \
    00 00 0F 00 03 03 00 00 00 00 04 0C 00 00 C4 04 \
    00 00 00 00 00 00 08 00 03 03 00 00 00 00 05 00 \
    00 00 C4 04 00 00 00 00 00 00 09 00 03 03 00 00 \
    00 00 05 04 00 00 C4 04 00 00 00 00 00 00 0A 00 \
    03 03 00 00 00 00 05 08 00 00 C4 04 00 00 00 00 \
    00 00 0B 00 03 03 00 00 00 00 05 0C 00 00 C4 04 \
    00 00 00 00 00 00 00 00 03 00 00 00 00 00 00 08 \
    00 00 30 00 00 00 00 00 00 00 00 00 0A 00 00 00 \
    00 00 01 08 00 00 30 00 00 00 00 00 00 00 01 00 \
    03 00 00 00 00 00 20 08 00 00 30 00 00 00 00 00 \
    00 00 01 00 0A 00 00 00 00 00 21 08 00 00 30 00 \
    00 00 00 00 00 00 02 00 03 00 00 00 00 00 00 0C \
    00 00 30 00 00 00 00 00 00 00 02 00 0A 00 00 00 \
    00 00 01 0C 00 00 30 00 00 00 00 00 00 00 03 00 \
    03 00 00 00 00 00 20 0C 00 00 30 00 00 00 00 00 \
    00 00 03 00 0A 00 00 00 00 00 21 0C 00 00 30 00 \
    00 00 00 00 00 00 00 00 03 06 00 00 00 00 40 20 \
    00 00 30 00 00 00 00 00 00 00 00 00 0A 06 00 00 \
    00 00 41 20 00 00 30 00 00 00 00 00 00 00 10 00 \
    03 03 00 00 00 00 07 00 00 00 C4 04 00 00 00 00 \
    00 00 11 00 03 03 00 00 00 00 09 00 00 00 C4 04 \
    00 00 00 00 00 00 12 00 03 03 00 00 00 00 07 04 \
    00 00 C4 04 00 00 00 00 00 00 13 00 03 03 00 00 \
    00 00 09 04 00 00 C4 04 00 00 00 00 00 00 14 00 \
    03 03 00 00 00 00 07 08 00 00 C4 04 00 00 00 00 \
    00 00 15 00 03 03 00 00 00 00 09 08 00 00 C4 04 \
    00 00 00 00 00 00 16 00 03 03 00 00 00 00 07 0C \
    00 00 C4 04 00 00 00 00 00 00 17 00 03 03 00 00 \
    00 00 09 0C 00 00 C4 04 00 00 00 00 00 00 00 00 \
    03 0C 03 00 00 00 04 05 00 00 30 00 00 00 00 00 \
    00 00 04 00 03 0C 00 00 00 00 12 05 00 00 30 00 \
    00 00 00 00 00 00 05 00 03 0C 00 00 00 00 1F 05 \
    00 00 30 00 00 00 00 00 00 00 06 00 03 0C 05 00 \
    00 00 14 05 00 00 30 00 00 00 00 00 00 00 00 00 \
    09 0C 00 00 00 00 13 05 00 00 30 00 00 00 00 00 \
    00 00 01 00 09 0C 00 00 00 00 1E 05 00 00 30 00 \
    00 00 00 00 00 00 02 00 09 0C 01 00 00 00 1C 05 \
    00 00 30 00 00 00 00 00 00 00 00 00 03 04 00 00 \
    00 00 00 23 00 00 30 00 00 00 00 00 00 00 01 00 \
    03 04 00 00 00 00 20 23 00 00 30 00 00 00 00 00 \
    00 00 02 00 03 04 00 00 00 00 40 23 00 00 30 00 \
    00 00 00 00 00 00 00 00 09 04 00 00 00 00 01 23 \
    00 00 30 00 00 00 00 00 00 00 01 00 09 04 00 00 \
    00 00 05 23 00 00 30 00 00 00 00 00 00 00 00 00 \
    0A 04 00 00 00 00 03 23 00 00 30 00 00 00 00 00 \
    00 00 01 00 0A 04 00 00 00 00 23 23 00 00 30 00 \
    00 00 00 00 00 00 00 00 0B 04 00 00 00 00 04 23 \
    00 00 30 00 00 00 00 00 00 00 01 00 0B 04 00 00 \
    00 00 24 23 00 00 30 00 00 00 00 00 00 00 02 00 \
    0B 04 00 00 00 00 44 23 00 00 30 00 00 00 00 00 \
    00 00 

[61Dh 1565   4]                   Input base : 030A0000
[621h 1569   4]                     ID Count : 00000000
[625h 1573   4]                  Output Base : 00000002
[629h 1577   4]             Output Reference : 000004C4
[62Dh 1581   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[631h 1585   4]                   Input base : 030A0001
[635h 1589   4]                     ID Count : 00000000
[639h 1593   4]                  Output Base : 00000402
[63Dh 1597   4]             Output Reference : 000004C4
[641h 1601   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[645h 1605   4]                   Input base : 030A0002
[649h 1609   4]                     ID Count : 00000000
[64Dh 1613   4]                  Output Base : 00000802
[651h 1617   4]             Output Reference : 000004C4
[655h 1621   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[659h 1625   4]                   Input base : 030A0003
[65Dh 1629   4]                     ID Count : 00000000
[661h 1633   4]                  Output Base : 00000C02
[665h 1637   4]             Output Reference : 000004C4
[669h 1641   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[66Dh 1645   4]                   Input base : 03030000
[671h 1649   4]                     ID Count : 00000001
[675h 1653   4]                  Output Base : 00000000
[679h 1657   4]             Output Reference : 000004C4
[67Dh 1661   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[681h 1665   4]                   Input base : 03030002
[685h 1669   4]                     ID Count : 00000001
[689h 1673   4]                  Output Base : 00000400
[68Dh 1677   4]             Output Reference : 000004C4
[691h 1681   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[695h 1685   4]                   Input base : 03030004
[699h 1689   4]                     ID Count : 00000001
[69Dh 1693   4]                  Output Base : 00000800
[6A1h 1697   4]             Output Reference : 000004C4
[6A5h 1701   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[6A9h 1705   4]                   Input base : 03030006
[6ADh 1709   4]                     ID Count : 00000001
[6B1h 1713   4]                  Output Base : 00000C00
[6B5h 1717   4]             Output Reference : 000004C4
[6B9h 1721   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[6BDh 1725   4]                   Input base : 0303000C
[6C1h 1729   4]                     ID Count : 00000000
[6C5h 1733   4]                  Output Base : 00000004
[6C9h 1737   4]             Output Reference : 000004C4
[6CDh 1741   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[6D1h 1745   4]                   Input base : 0303000D
[6D5h 1749   4]                     ID Count : 00000000
[6D9h 1753   4]                  Output Base : 00000404
[6DDh 1757   4]             Output Reference : 000004C4
[6E1h 1761   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[6E5h 1765   4]                   Input base : 0303000E
[6E9h 1769   4]                     ID Count : 00000000
[6EDh 1773   4]                  Output Base : 00000804
[6F1h 1777   4]             Output Reference : 000004C4
[6F5h 1781   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[6F9h 1785   4]                   Input base : 0303000F
[6FDh 1789   4]                     ID Count : 00000000
[701h 1793   4]                  Output Base : 00000C04
[705h 1797   4]             Output Reference : 000004C4
[709h 1801   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[70Dh 1805   4]                   Input base : 03030008
[711h 1809   4]                     ID Count : 00000000
[715h 1813   4]                  Output Base : 00000005
[719h 1817   4]             Output Reference : 000004C4
[71Dh 1821   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[721h 1825   4]                   Input base : 03030009
[725h 1829   4]                     ID Count : 00000000
[729h 1833   4]                  Output Base : 00000405
[72Dh 1837   4]             Output Reference : 000004C4
[731h 1841   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[735h 1845   4]                   Input base : 0303000A
[739h 1849   4]                     ID Count : 00000000
[73Dh 1853   4]                  Output Base : 00000805
[741h 1857   4]             Output Reference : 000004C4
[745h 1861   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[749h 1865   4]                   Input base : 0303000B
[74Dh 1869   4]                     ID Count : 00000000
[751h 1873   4]                  Output Base : 00000C05
[755h 1877   4]             Output Reference : 000004C4
[759h 1881   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[75Dh 1885   4]                   Input base : 00030000
[761h 1889   4]                     ID Count : 00000000
[765h 1893   4]                  Output Base : 00000800
[769h 1897   4]             Output Reference : 00000030
[76Dh 1901   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[771h 1905   4]                   Input base : 000A0000
[775h 1909   4]                     ID Count : 00000000
[779h 1913   4]                  Output Base : 00000801
[77Dh 1917   4]             Output Reference : 00000030
[781h 1921   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[785h 1925   4]                   Input base : 00030001
[789h 1929   4]                     ID Count : 00000000
[78Dh 1933   4]                  Output Base : 00000820
[791h 1937   4]             Output Reference : 00000030
[795h 1941   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[799h 1945   4]                   Input base : 000A0001
[79Dh 1949   4]                     ID Count : 00000000
[7A1h 1953   4]                  Output Base : 00000821
[7A5h 1957   4]             Output Reference : 00000030
[7A9h 1961   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7ADh 1965   4]                   Input base : 00030002
[7B1h 1969   4]                     ID Count : 00000000
[7B5h 1973   4]                  Output Base : 00000C00
[7B9h 1977   4]             Output Reference : 00000030
[7BDh 1981   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7C1h 1985   4]                   Input base : 000A0002
[7C5h 1989   4]                     ID Count : 00000000
[7C9h 1993   4]                  Output Base : 00000C01
[7CDh 1997   4]             Output Reference : 00000030
[7D1h 2001   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7D5h 2005   4]                   Input base : 00030003
[7D9h 2009   4]                     ID Count : 00000000
[7DDh 2013   4]                  Output Base : 00000C20
[7E1h 2017   4]             Output Reference : 00000030
[7E5h 2021   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7E9h 2025   4]                   Input base : 000A0003
[7EDh 2029   4]                     ID Count : 00000000
[7F1h 2033   4]                  Output Base : 00000C21
[7F5h 2037   4]             Output Reference : 00000030
[7F9h 2041   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7FDh 2045   4]                   Input base : 06030000
[801h 2049   4]                     ID Count : 00000000
[805h 2053   4]                  Output Base : 00002040
[809h 2057   4]             Output Reference : 00000030
[80Dh 2061   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[811h 2065   4]                   Input base : 060A0000
[815h 2069   4]                     ID Count : 00000000
[819h 2073   4]                  Output Base : 00002041
[81Dh 2077   4]             Output Reference : 00000030
[821h 2081   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[825h 2085   4]                   Input base : 03030010
[829h 2089   4]                     ID Count : 00000000
[82Dh 2093   4]                  Output Base : 00000007
[831h 2097   4]             Output Reference : 000004C4
[835h 2101   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[839h 2105   4]                   Input base : 03030011
[83Dh 2109   4]                     ID Count : 00000000
[841h 2113   4]                  Output Base : 00000009
[845h 2117   4]             Output Reference : 000004C4
[849h 2121   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[84Dh 2125   4]                   Input base : 03030012
[851h 2129   4]                     ID Count : 00000000
[855h 2133   4]                  Output Base : 00000407
[859h 2137   4]             Output Reference : 000004C4
[85Dh 2141   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[861h 2145   4]                   Input base : 03030013
[865h 2149   4]                     ID Count : 00000000
[869h 2153   4]                  Output Base : 00000409
[86Dh 2157   4]             Output Reference : 000004C4
[871h 2161   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[875h 2165   4]                   Input base : 03030014
[879h 2169   4]                     ID Count : 00000000
[87Dh 2173   4]                  Output Base : 00000807
[881h 2177   4]             Output Reference : 000004C4
[885h 2181   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[889h 2185   4]                   Input base : 03030015
[88Dh 2189   4]                     ID Count : 00000000
[891h 2193   4]                  Output Base : 00000809
[895h 2197   4]             Output Reference : 000004C4
[899h 2201   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[89Dh 2205   4]                   Input base : 03030016
[8A1h 2209   4]                     ID Count : 00000000
[8A5h 2213   4]                  Output Base : 00000C07
[8A9h 2217   4]             Output Reference : 000004C4
[8ADh 2221   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[8B1h 2225   4]                   Input base : 03030017
[8B5h 2229   4]                     ID Count : 00000000
[8B9h 2233   4]                  Output Base : 00000C09
[8BDh 2237   4]             Output Reference : 000004C4
[8C1h 2241   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[8C5h 2245   4]                   Input base : 0C030000
[8C9h 2249   4]                     ID Count : 00000003
[8CDh 2253   4]                  Output Base : 00000504
[8D1h 2257   4]             Output Reference : 00000030
[8D5h 2261   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[8D9h 2265   4]                   Input base : 0C030004
[8DDh 2269   4]                     ID Count : 00000000
[8E1h 2273   4]                  Output Base : 00000512
[8E5h 2277   4]             Output Reference : 00000030
[8E9h 2281   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[8EDh 2285   4]                   Input base : 0C030005
[8F1h 2289   4]                     ID Count : 00000000
[8F5h 2293   4]                  Output Base : 0000051F
[8F9h 2297   4]             Output Reference : 00000030
[8FDh 2301   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[901h 2305   4]                   Input base : 0C030006
[905h 2309   4]                     ID Count : 00000005
[909h 2313   4]                  Output Base : 00000514
[90Dh 2317   4]             Output Reference : 00000030
[911h 2321   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[915h 2325   4]                   Input base : 0C090000
[919h 2329   4]                     ID Count : 00000000
[91Dh 2333   4]                  Output Base : 00000513
[921h 2337   4]             Output Reference : 00000030
[925h 2341   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[929h 2345   4]                   Input base : 0C090001
[92Dh 2349   4]                     ID Count : 00000000
[931h 2353   4]                  Output Base : 0000051E
[935h 2357   4]             Output Reference : 00000030
[939h 2361   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[93Dh 2365   4]                   Input base : 0C090002
[941h 2369   4]                     ID Count : 00000001
[945h 2373   4]                  Output Base : 0000051C
[949h 2377   4]             Output Reference : 00000030
[94Dh 2381   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[951h 2385   4]                   Input base : 04030000
[955h 2389   4]                     ID Count : 00000000
[959h 2393   4]                  Output Base : 00002300
[95Dh 2397   4]             Output Reference : 00000030
[961h 2401   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[965h 2405   4]                   Input base : 04030001
[969h 2409   4]                     ID Count : 00000000
[96Dh 2413   4]                  Output Base : 00002320
[971h 2417   4]             Output Reference : 00000030
[975h 2421   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[979h 2425   4]                   Input base : 04030002
[97Dh 2429   4]                     ID Count : 00000000
[981h 2433   4]                  Output Base : 00002340
[985h 2437   4]             Output Reference : 00000030
[989h 2441   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[98Dh 2445   4]                   Input base : 04090000
[991h 2449   4]                     ID Count : 00000000
[995h 2453   4]                  Output Base : 00002301
[999h 2457   4]             Output Reference : 00000030
[99Dh 2461   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9A1h 2465   4]                   Input base : 04090001
[9A5h 2469   4]                     ID Count : 00000000
[9A9h 2473   4]                  Output Base : 00002305
[9ADh 2477   4]             Output Reference : 00000030
[9B1h 2481   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9B5h 2485   4]                   Input base : 040A0000
[9B9h 2489   4]                     ID Count : 00000000
[9BDh 2493   4]                  Output Base : 00002303
[9C1h 2497   4]             Output Reference : 00000030
[9C5h 2501   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9C9h 2505   4]                   Input base : 040A0001
[9CDh 2509   4]                     ID Count : 00000000
[9D1h 2513   4]                  Output Base : 00002323
[9D5h 2517   4]             Output Reference : 00000030
[9D9h 2521   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9DDh 2525   4]                   Input base : 040B0000
[9E1h 2529   4]                     ID Count : 00000000
[9E5h 2533   4]                  Output Base : 00002304
[9E9h 2537   4]             Output Reference : 00000030
[9EDh 2541   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9F1h 2545   4]                   Input base : 040B0001
[9F5h 2549   4]                     ID Count : 00000000
[9F9h 2553   4]                  Output Base : 00002324
[9FDh 2557   4]             Output Reference : 00000030
[A01h 2561   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A05h 2565   4]                   Input base : 040B0002
[A09h 2569   4]                     ID Count : 00000000
[A0Dh 2573   4]                  Output Base : 00002344
[A11h 2577   4]             Output Reference : 00000030
[A15h 2581   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A19h 2585   1]                         Type : 01
[A1Ah 2586   2]                       Length : 0065
[A1Ch 2588   1]                     Revision : 00
[A1Dh 2589   4]                     Reserved : 00000000
[A21h 2593   4]                Mapping Count : 00000002
[A25h 2597   4]               Mapping Offset : 0000003D

[A29h 2601   4]                   Node Flags : 00000000
[A2Dh 2605   8]            Memory Properties : [IORT Memory Access Properties]
[A2Dh 2605   4]              Cache Coherency : 00000000
[A31h 2609   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[A32h 2610   2]                     Reserved : 0000
[A34h 2612   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[A35h 2613   1]            Memory Size Limit : 24
[A36h 2614  10]                  Device Name : "\_SB.JPGE"
[A40h 2624  62]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 02 00 00 00 00 00 21 \
    00 00 30 00 00 00 00 00 00 00 01 00 03 02 00 00 \
    00 00 20 21 00 00 30 00 00 00 00 00 00 00 

[A56h 2646   4]                   Input base : 02030000
[A5Ah 2650   4]                     ID Count : 00000000
[A5Eh 2654   4]                  Output Base : 00002100
[A62h 2658   4]             Output Reference : 00000030
[A66h 2662   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A6Ah 2666   4]                   Input base : 02030001
[A6Eh 2670   4]                     ID Count : 00000000
[A72h 2674   4]                  Output Base : 00002120
[A76h 2678   4]             Output Reference : 00000030
[A7Ah 2682   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A7Eh 2686   1]                         Type : 01
[A7Fh 2687   2]                       Length : 04B1
[A81h 2689   1]                     Revision : 00
[A82h 2690   4]                     Reserved : 00000000
[A86h 2694   4]                Mapping Count : 00000039
[A8Ah 2698   4]               Mapping Offset : 0000003D

[A8Eh 2702   4]                   Node Flags : 00000000
[A92h 2706   8]            Memory Properties : [IORT Memory Access Properties]
[A92h 2706   4]              Cache Coherency : 00000000
[A96h 2710   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[A97h 2711   2]                     Reserved : 0000
[A99h 2713   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[A9Ah 2714   1]            Memory Size Limit : 24
[A9Bh 2715  10]                  Device Name : "\_SB.ARPC"
[AA5h 2725 1162]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 10 00 03 17 00 00 00 00 23 1B \
    00 00 30 00 00 00 00 00 00 00 11 00 03 17 00 00 \
    00 00 24 1B 00 00 30 00 00 00 00 00 00 00 12 00 \
    03 17 00 00 00 00 25 1B 00 00 30 00 00 00 00 00 \
    00 00 00 00 03 17 00 00 00 00 01 14 00 00 30 00 \
    00 00 00 00 00 00 01 00 03 17 00 00 00 00 21 14 \
    00 00 30 00 00 00 00 00 00 00 02 00 03 17 00 00 \
    00 00 41 14 00 00 30 00 00 00 00 00 00 00 03 00 \
    03 17 00 00 00 00 01 10 00 00 30 00 00 00 00 00 \
    00 00 04 00 03 17 00 00 00 00 21 10 00 00 30 00 \
    00 00 00 00 00 00 05 00 03 17 00 00 00 00 41 10 \
    00 00 30 00 00 00 00 00 00 00 06 00 03 17 00 00 \
    00 00 02 14 00 00 30 00 00 00 00 00 00 00 07 00 \
    03 17 00 00 00 00 22 14 00 00 30 00 00 00 00 00 \
    00 00 08 00 03 17 00 00 00 00 42 14 00 00 30 00 \
    00 00 00 00 00 00 09 00 03 17 00 00 00 00 02 10 \
    00 00 30 00 00 00 00 00 00 00 0A 00 03 17 00 00 \
    00 00 22 10 00 00 30 00 00 00 00 00 00 00 0B 00 \
    03 17 00 00 00 00 42 10 00 00 30 00 00 00 00 00 \
    00 00 13 00 03 17 00 00 00 00 03 14 00 00 30 00 \
    00 00 00 00 00 00 14 00 03 17 00 00 00 00 23 14 \
    00 00 30 00 00 00 00 00 00 00 15 00 03 17 00 00 \
    00 00 43 14 00 00 30 00 00 00 00 00 00 00 16 00 \
    03 17 00 00 00 00 03 10 00 00 30 00 00 00 00 00 \
    00 00 17 00 03 17 00 00 00 00 23 10 00 00 30 00 \
    00 00 00 00 00 00 18 00 03 17 00 00 00 00 43 10 \
    00 00 30 00 00 00 00 00 00 00 19 00 03 17 00 00 \
    00 00 04 14 00 00 30 00 00 00 00 00 00 00 1A 00 \
    03 17 00 00 00 00 24 14 00 00 30 00 00 00 00 00 \
    00 00 1B 00 03 17 00 00 00 00 44 14 00 00 30 00 \
    00 00 00 00 00 00 1C 00 03 17 00 00 00 00 04 10 \
    00 00 30 00 00 00 00 00 00 00 1D 00 03 17 00 00 \
    00 00 24 10 00 00 30 00 00 00 00 00 00 00 1E 00 \
    03 17 00 00 00 00 44 10 00 00 30 00 00 00 00 00 \
    00 00 1F 00 03 17 00 00 00 00 05 14 00 00 30 00 \
    00 00 00 00 00 00 20 00 03 17 00 00 00 00 25 14 \
    00 00 30 00 00 00 00 00 00 00 21 00 03 17 00 00 \
    00 00 45 14 00 00 30 00 00 00 00 00 00 00 22 00 \
    03 17 00 00 00 00 05 10 00 00 30 00 00 00 00 00 \
    00 00 23 00 03 17 00 00 00 00 25 10 00 00 30 00 \
    00 00 00 00 00 00 24 00 03 17 00 00 00 00 45 10 \
    00 00 30 00 00 00 00 00 00 00 25 00 03 17 00 00 \
    00 00 26 14 00 00 30 00 00 00 00 00 00 00 26 00 \
    03 17 00 00 00 00 06 10 00 00 30 00 00 00 00 00 \
    00 00 27 00 03 17 00 00 00 00 46 14 00 00 30 00 \
    00 00 00 00 00 00 28 00 03 17 00 00 00 00 26 10 \
    00 00 30 00 00 00 00 00 00 00 29 00 03 17 00 00 \
    00 00 06 14 00 00 30 00 00 00 00 00 00 00 2A 00 \
    03 17 00 00 00 00 46 10 00 00 30 00 00 00 00 00 \
    00 00 2B 00 03 17 00 00 00 00 07 14 00 00 30 00 \
    00 00 00 00 00 00 2C 00 03 17 00 00 00 00 27 14 \
    00 00 30 00 00 00 00 00 00 00 2D 00 03 17 00 00 \
    00 00 47 14 00 00 30 00 00 00 00 00 00 00 2E 00 \
    03 17 00 00 00 00 07 10 00 00 30 00 00 00 00 00 \
    00 00 2F 00 03 17 00 00 00 00 27 10 00 00 30 00 \
    00 00 00 00 00 00 30 00 03 17 00 00 00 00 47 10 \
    00 00 30 00 00 00 00 00 00 00 31 00 03 17 00 00 \
    00 00 08 14 00 00 30 00 00 00 00 00 00 00 32 00 \
    03 17 00 00 00 00 28 14 00 00 30 00 00 00 00 00 \
    00 00 33 00 03 17 00 00 00 00 48 14 00 00 30 00 \
    00 00 00 00 00 00 34 00 03 17 00 00 00 00 08 10 \
    00 00 30 00 00 00 00 00 00 00 35 00 03 17 00 00 \
    00 00 28 10 00 00 30 00 00 00 00 00 00 00 36 00 \
    03 17 00 00 00 00 48 10 00 00 30 00 00 00 00 00 \
    00 00 00 00 0A 17 00 00 00 00 09 14 00 00 30 00 \
    00 00 00 00 00 00 01 00 0A 17 00 00 00 00 29 14 \
    00 00 30 00 00 00 00 00 00 00 02 00 0A 17 00 00 \
    00 00 49 14 00 00 30 00 00 00 00 00 00 00 03 00 \
    0A 17 00 00 00 00 09 10 00 00 30 00 00 00 00 00 \
    00 00 04 00 0A 17 00 00 00 00 29 10 00 00 30 00 \
    00 00 00 00 00 00 05 00 0A 17 00 00 00 00 49 10 \
    00 00 30 00 00 00 00 00 00 00 

[ABBh 2747   4]                   Input base : 17030010
[ABFh 2751   4]                     ID Count : 00000000
[AC3h 2755   4]                  Output Base : 00001B23
[AC7h 2759   4]             Output Reference : 00000030
[ACBh 2763   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[ACFh 2767   4]                   Input base : 17030011
[AD3h 2771   4]                     ID Count : 00000000
[AD7h 2775   4]                  Output Base : 00001B24
[ADBh 2779   4]             Output Reference : 00000030
[ADFh 2783   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AE3h 2787   4]                   Input base : 17030012
[AE7h 2791   4]                     ID Count : 00000000
[AEBh 2795   4]                  Output Base : 00001B25
[AEFh 2799   4]             Output Reference : 00000030
[AF3h 2803   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AF7h 2807   4]                   Input base : 17030000
[AFBh 2811   4]                     ID Count : 00000000
[AFFh 2815   4]                  Output Base : 00001401
[B03h 2819   4]             Output Reference : 00000030
[B07h 2823   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B0Bh 2827   4]                   Input base : 17030001
[B0Fh 2831   4]                     ID Count : 00000000
[B13h 2835   4]                  Output Base : 00001421
[B17h 2839   4]             Output Reference : 00000030
[B1Bh 2843   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B1Fh 2847   4]                   Input base : 17030002
[B23h 2851   4]                     ID Count : 00000000
[B27h 2855   4]                  Output Base : 00001441
[B2Bh 2859   4]             Output Reference : 00000030
[B2Fh 2863   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B33h 2867   4]                   Input base : 17030003
[B37h 2871   4]                     ID Count : 00000000
[B3Bh 2875   4]                  Output Base : 00001001
[B3Fh 2879   4]             Output Reference : 00000030
[B43h 2883   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B47h 2887   4]                   Input base : 17030004
[B4Bh 2891   4]                     ID Count : 00000000
[B4Fh 2895   4]                  Output Base : 00001021
[B53h 2899   4]             Output Reference : 00000030
[B57h 2903   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B5Bh 2907   4]                   Input base : 17030005
[B5Fh 2911   4]                     ID Count : 00000000
[B63h 2915   4]                  Output Base : 00001041
[B67h 2919   4]             Output Reference : 00000030
[B6Bh 2923   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B6Fh 2927   4]                   Input base : 17030006
[B73h 2931   4]                     ID Count : 00000000
[B77h 2935   4]                  Output Base : 00001402
[B7Bh 2939   4]             Output Reference : 00000030
[B7Fh 2943   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B83h 2947   4]                   Input base : 17030007
[B87h 2951   4]                     ID Count : 00000000
[B8Bh 2955   4]                  Output Base : 00001422
[B8Fh 2959   4]             Output Reference : 00000030
[B93h 2963   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B97h 2967   4]                   Input base : 17030008
[B9Bh 2971   4]                     ID Count : 00000000
[B9Fh 2975   4]                  Output Base : 00001442
[BA3h 2979   4]             Output Reference : 00000030
[BA7h 2983   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BABh 2987   4]                   Input base : 17030009
[BAFh 2991   4]                     ID Count : 00000000
[BB3h 2995   4]                  Output Base : 00001002
[BB7h 2999   4]             Output Reference : 00000030
[BBBh 3003   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BBFh 3007   4]                   Input base : 1703000A
[BC3h 3011   4]                     ID Count : 00000000
[BC7h 3015   4]                  Output Base : 00001022
[BCBh 3019   4]             Output Reference : 00000030
[BCFh 3023   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BD3h 3027   4]                   Input base : 1703000B
[BD7h 3031   4]                     ID Count : 00000000
[BDBh 3035   4]                  Output Base : 00001042
[BDFh 3039   4]             Output Reference : 00000030
[BE3h 3043   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BE7h 3047   4]                   Input base : 17030013
[BEBh 3051   4]                     ID Count : 00000000
[BEFh 3055   4]                  Output Base : 00001403
[BF3h 3059   4]             Output Reference : 00000030
[BF7h 3063   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BFBh 3067   4]                   Input base : 17030014
[BFFh 3071   4]                     ID Count : 00000000
[C03h 3075   4]                  Output Base : 00001423
[C07h 3079   4]             Output Reference : 00000030
[C0Bh 3083   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C0Fh 3087   4]                   Input base : 17030015
[C13h 3091   4]                     ID Count : 00000000
[C17h 3095   4]                  Output Base : 00001443
[C1Bh 3099   4]             Output Reference : 00000030
[C1Fh 3103   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C23h 3107   4]                   Input base : 17030016
[C27h 3111   4]                     ID Count : 00000000
[C2Bh 3115   4]                  Output Base : 00001003
[C2Fh 3119   4]             Output Reference : 00000030
[C33h 3123   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C37h 3127   4]                   Input base : 17030017
[C3Bh 3131   4]                     ID Count : 00000000
[C3Fh 3135   4]                  Output Base : 00001023
[C43h 3139   4]             Output Reference : 00000030
[C47h 3143   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C4Bh 3147   4]                   Input base : 17030018
[C4Fh 3151   4]                     ID Count : 00000000
[C53h 3155   4]                  Output Base : 00001043
[C57h 3159   4]             Output Reference : 00000030
[C5Bh 3163   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C5Fh 3167   4]                   Input base : 17030019
[C63h 3171   4]                     ID Count : 00000000
[C67h 3175   4]                  Output Base : 00001404
[C6Bh 3179   4]             Output Reference : 00000030
[C6Fh 3183   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C73h 3187   4]                   Input base : 1703001A
[C77h 3191   4]                     ID Count : 00000000
[C7Bh 3195   4]                  Output Base : 00001424
[C7Fh 3199   4]             Output Reference : 00000030
[C83h 3203   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C87h 3207   4]                   Input base : 1703001B
[C8Bh 3211   4]                     ID Count : 00000000
[C8Fh 3215   4]                  Output Base : 00001444
[C93h 3219   4]             Output Reference : 00000030
[C97h 3223   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C9Bh 3227   4]                   Input base : 1703001C
[C9Fh 3231   4]                     ID Count : 00000000
[CA3h 3235   4]                  Output Base : 00001004
[CA7h 3239   4]             Output Reference : 00000030
[CABh 3243   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[CAFh 3247   4]                   Input base : 1703001D
[CB3h 3251   4]                     ID Count : 00000000
[CB7h 3255   4]                  Output Base : 00001024
[CBBh 3259   4]             Output Reference : 00000030
[CBFh 3263   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[CC3h 3267   4]                   Input base : 1703001E
[CC7h 3271   4]                     ID Count : 00000000
[CCBh 3275   4]                  Output Base : 00001044
[CCFh 3279   4]             Output Reference : 00000030
[CD3h 3283   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[CD7h 3287   4]                   Input base : 1703001F
[CDBh 3291   4]                     ID Count : 00000000
[CDFh 3295   4]                  Output Base : 00001405
[CE3h 3299   4]             Output Reference : 00000030
[CE7h 3303   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[CEBh 3307   4]                   Input base : 17030020
[CEFh 3311   4]                     ID Count : 00000000
[CF3h 3315   4]                  Output Base : 00001425
[CF7h 3319   4]             Output Reference : 00000030
[CFBh 3323   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[CFFh 3327   4]                   Input base : 17030021
[D03h 3331   4]                     ID Count : 00000000
[D07h 3335   4]                  Output Base : 00001445
[D0Bh 3339   4]             Output Reference : 00000030
[D0Fh 3343   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D13h 3347   4]                   Input base : 17030022
[D17h 3351   4]                     ID Count : 00000000
[D1Bh 3355   4]                  Output Base : 00001005
[D1Fh 3359   4]             Output Reference : 00000030
[D23h 3363   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D27h 3367   4]                   Input base : 17030023
[D2Bh 3371   4]                     ID Count : 00000000
[D2Fh 3375   4]                  Output Base : 00001025
[D33h 3379   4]             Output Reference : 00000030
[D37h 3383   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D3Bh 3387   4]                   Input base : 17030024
[D3Fh 3391   4]                     ID Count : 00000000
[D43h 3395   4]                  Output Base : 00001045
[D47h 3399   4]             Output Reference : 00000030
[D4Bh 3403   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D4Fh 3407   4]                   Input base : 17030025
[D53h 3411   4]                     ID Count : 00000000
[D57h 3415   4]                  Output Base : 00001426
[D5Bh 3419   4]             Output Reference : 00000030
[D5Fh 3423   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D63h 3427   4]                   Input base : 17030026
[D67h 3431   4]                     ID Count : 00000000
[D6Bh 3435   4]                  Output Base : 00001006
[D6Fh 3439   4]             Output Reference : 00000030
[D73h 3443   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D77h 3447   4]                   Input base : 17030027
[D7Bh 3451   4]                     ID Count : 00000000
[D7Fh 3455   4]                  Output Base : 00001446
[D83h 3459   4]             Output Reference : 00000030
[D87h 3463   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D8Bh 3467   4]                   Input base : 17030028
[D8Fh 3471   4]                     ID Count : 00000000
[D93h 3475   4]                  Output Base : 00001026
[D97h 3479   4]             Output Reference : 00000030
[D9Bh 3483   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D9Fh 3487   4]                   Input base : 17030029
[DA3h 3491   4]                     ID Count : 00000000
[DA7h 3495   4]                  Output Base : 00001406
[DABh 3499   4]             Output Reference : 00000030
[DAFh 3503   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DB3h 3507   4]                   Input base : 1703002A
[DB7h 3511   4]                     ID Count : 00000000
[DBBh 3515   4]                  Output Base : 00001046
[DBFh 3519   4]             Output Reference : 00000030
[DC3h 3523   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DC7h 3527   4]                   Input base : 1703002B
[DCBh 3531   4]                     ID Count : 00000000
[DCFh 3535   4]                  Output Base : 00001407
[DD3h 3539   4]             Output Reference : 00000030
[DD7h 3543   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DDBh 3547   4]                   Input base : 1703002C
[DDFh 3551   4]                     ID Count : 00000000
[DE3h 3555   4]                  Output Base : 00001427
[DE7h 3559   4]             Output Reference : 00000030
[DEBh 3563   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DEFh 3567   4]                   Input base : 1703002D
[DF3h 3571   4]                     ID Count : 00000000
[DF7h 3575   4]                  Output Base : 00001447
[DFBh 3579   4]             Output Reference : 00000030
[DFFh 3583   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E03h 3587   4]                   Input base : 1703002E
[E07h 3591   4]                     ID Count : 00000000
[E0Bh 3595   4]                  Output Base : 00001007
[E0Fh 3599   4]             Output Reference : 00000030
[E13h 3603   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E17h 3607   4]                   Input base : 1703002F
[E1Bh 3611   4]                     ID Count : 00000000
[E1Fh 3615   4]                  Output Base : 00001027
[E23h 3619   4]             Output Reference : 00000030
[E27h 3623   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E2Bh 3627   4]                   Input base : 17030030
[E2Fh 3631   4]                     ID Count : 00000000
[E33h 3635   4]                  Output Base : 00001047
[E37h 3639   4]             Output Reference : 00000030
[E3Bh 3643   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E3Fh 3647   4]                   Input base : 17030031
[E43h 3651   4]                     ID Count : 00000000
[E47h 3655   4]                  Output Base : 00001408
[E4Bh 3659   4]             Output Reference : 00000030
[E4Fh 3663   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E53h 3667   4]                   Input base : 17030032
[E57h 3671   4]                     ID Count : 00000000
[E5Bh 3675   4]                  Output Base : 00001428
[E5Fh 3679   4]             Output Reference : 00000030
[E63h 3683   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E67h 3687   4]                   Input base : 17030033
[E6Bh 3691   4]                     ID Count : 00000000
[E6Fh 3695   4]                  Output Base : 00001448
[E73h 3699   4]             Output Reference : 00000030
[E77h 3703   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E7Bh 3707   4]                   Input base : 17030034
[E7Fh 3711   4]                     ID Count : 00000000
[E83h 3715   4]                  Output Base : 00001008
[E87h 3719   4]             Output Reference : 00000030
[E8Bh 3723   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E8Fh 3727   4]                   Input base : 17030035
[E93h 3731   4]                     ID Count : 00000000
[E97h 3735   4]                  Output Base : 00001028
[E9Bh 3739   4]             Output Reference : 00000030
[E9Fh 3743   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[EA3h 3747   4]                   Input base : 17030036
[EA7h 3751   4]                     ID Count : 00000000
[EABh 3755   4]                  Output Base : 00001048
[EAFh 3759   4]             Output Reference : 00000030
[EB3h 3763   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[EB7h 3767   4]                   Input base : 170A0000
[EBBh 3771   4]                     ID Count : 00000000
[EBFh 3775   4]                  Output Base : 00001409
[EC3h 3779   4]             Output Reference : 00000030
[EC7h 3783   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[ECBh 3787   4]                   Input base : 170A0001
[ECFh 3791   4]                     ID Count : 00000000
[ED3h 3795   4]                  Output Base : 00001429
[ED7h 3799   4]             Output Reference : 00000030
[EDBh 3803   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[EDFh 3807   4]                   Input base : 170A0002
[EE3h 3811   4]                     ID Count : 00000000
[EE7h 3815   4]                  Output Base : 00001449
[EEBh 3819   4]             Output Reference : 00000030
[EEFh 3823   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[EF3h 3827   4]                   Input base : 170A0003
[EF7h 3831   4]                     ID Count : 00000000
[EFBh 3835   4]                  Output Base : 00001009
[EFFh 3839   4]             Output Reference : 00000030
[F03h 3843   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[F07h 3847   4]                   Input base : 170A0004
[F0Bh 3851   4]                     ID Count : 00000000
[F0Fh 3855   4]                  Output Base : 00001029
[F13h 3859   4]             Output Reference : 00000030
[F17h 3863   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[F1Bh 3867   4]                   Input base : 170A0005
[F1Fh 3871   4]                     ID Count : 00000000
[F23h 3875   4]                  Output Base : 00001049
[F27h 3879   4]             Output Reference : 00000030
[F2Bh 3883   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[F2Fh 3887   1]                         Type : 01
[F30h 3888   2]                       Length : 0051
[F32h 3890   1]                     Revision : 00
[F33h 3891   4]                     Reserved : 00000000
[F37h 3895   4]                Mapping Count : 00000001
[F3Bh 3899   4]               Mapping Offset : 0000003D

[F3Fh 3903   4]                   Node Flags : 00000000
[F43h 3907   8]            Memory Properties : [IORT Memory Access Properties]
[F43h 3907   4]              Cache Coherency : 00000000
[F47h 3911   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[F48h 3912   2]                     Reserved : 0000
[F4Ah 3914   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[F4Bh 3915   1]            Memory Size Limit : 24
[F4Ch 3916   9]                  Device Name : "\_SB.IPA"
[F55h 3925  43]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 03 0B 02 00 00 00 20 \
    05 00 00 30 00 00 00 00 00 00 00 

[F6Ch 3948   4]                   Input base : 0B030000
[F70h 3952   4]                     ID Count : 00000002
[F74h 3956   4]                  Output Base : 00000520
[F78h 3960   4]             Output Reference : 00000030
[F7Ch 3964   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[F80h 3968   1]                         Type : 01
[F81h 3969   2]                       Length : 0051
[F83h 3971   1]                     Revision : 00
[F84h 3972   4]                     Reserved : 00000000
[F88h 3976   4]                Mapping Count : 00000001
[F8Ch 3980   4]               Mapping Offset : 0000003D

[F90h 3984   4]                   Node Flags : 00000000
[F94h 3988   8]            Memory Properties : [IORT Memory Access Properties]
[F94h 3988   4]              Cache Coherency : 00000000
[F98h 3992   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[F99h 3993   2]                     Reserved : 0000
[F9Bh 3995   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[F9Ch 3996   1]            Memory Size Limit : 24
[F9Dh 3997  10]                  Device Name : "\_SB.USBA"
[FA7h 4007  42]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 0A 00 03 07 00 00 00 00 2F 1B \
    00 00 30 00 00 00 00 00 00 00 

[FBDh 4029   4]                   Input base : 0703000A
[FC1h 4033   4]                     ID Count : 00000000
[FC5h 4037   4]                  Output Base : 00001B2F
[FC9h 4041   4]             Output Reference : 00000030
[FCDh 4045   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[FD1h 4049   1]                         Type : 01
[FD2h 4050   2]                       Length : 008D
[FD4h 4052   1]                     Revision : 00
[FD5h 4053   4]                     Reserved : 00000000
[FD9h 4057   4]                Mapping Count : 00000004
[FDDh 4061   4]               Mapping Offset : 0000003D

[FE1h 4065   4]                   Node Flags : 00000000
[FE5h 4069   8]            Memory Properties : [IORT Memory Access Properties]
[FE5h 4069   4]              Cache Coherency : 00000000
[FE9h 4073   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[FEAh 4074   2]                     Reserved : 0000
[FECh 4076   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[FEDh 4077   1]            Memory Size Limit : 24
[FEEh 4078  10]                  Device Name : "\_SB.NPU0"
[FF8h 4088 102]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 18 00 00 00 00 81 10 \
    00 00 30 00 00 00 00 00 00 00 01 00 03 18 00 00 \
    00 00 81 14 00 00 30 00 00 00 00 00 00 00 00 00 \
    0A 18 00 00 00 00 84 10 00 00 30 00 00 00 00 00 \
    00 00 01 00 0A 18 00 00 00 00 84 14 00 00 30 00 \
    00 00 00 00 00 00 

[100Eh 4110   4]                   Input base : 18030000
[1012h 4114   4]                     ID Count : 00000000
[1016h 4118   4]                  Output Base : 00001081
[101Ah 4122   4]             Output Reference : 00000030
[101Eh 4126   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1022h 4130   4]                   Input base : 18030001
[1026h 4134   4]                     ID Count : 00000000
[102Ah 4138   4]                  Output Base : 00001481
[102Eh 4142   4]             Output Reference : 00000030
[1032h 4146   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1036h 4150   4]                   Input base : 180A0000
[103Ah 4154   4]                     ID Count : 00000000
[103Eh 4158   4]                  Output Base : 00001084
[1042h 4162   4]             Output Reference : 00000030
[1046h 4166   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[104Ah 4170   4]                   Input base : 180A0001
[104Eh 4174   4]                     ID Count : 00000000
[1052h 4178   4]                  Output Base : 00001484
[1056h 4182   4]             Output Reference : 00000030
[105Ah 4186   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[105Eh 4190   1]                         Type : 01
[105Fh 4191   2]                       Length : 0065
[1061h 4193   1]                     Revision : 00
[1062h 4194   4]                     Reserved : 00000000
[1066h 4198   4]                Mapping Count : 00000002
[106Ah 4202   4]               Mapping Offset : 0000003D

[106Eh 4206   4]                   Node Flags : 00000000
[1072h 4210   8]            Memory Properties : [IORT Memory Access Properties]
[1072h 4210   4]              Cache Coherency : 00000000
[1076h 4214   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1077h 4215   2]                     Reserved : 0000
[1079h 4217   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[107Ah 4218   1]            Memory Size Limit : 24
[107Bh 4219  10]                  Device Name : "\_SB.QDSS"
[1085h 4229  62]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 89 00 00 00 00 A0 04 \
    00 00 30 00 00 00 00 00 00 00 01 00 03 89 00 00 \
    00 00 E0 05 00 00 30 00 00 00 00 00 00 00 

[109Bh 4251   4]                   Input base : 89030000
[109Fh 4255   4]                     ID Count : 00000000
[10A3h 4259   4]                  Output Base : 000004A0
[10A7h 4263   4]             Output Reference : 00000030
[10ABh 4267   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[10AFh 4271   4]                   Input base : 89030001
[10B3h 4275   4]                     ID Count : 00000000
[10B7h 4279   4]                  Output Base : 000005E0
[10BBh 4283   4]             Output Reference : 00000030
[10BFh 4287   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[10C3h 4291   1]                         Type : 01
[10C4h 4292   2]                       Length : 00B5
[10C6h 4294   1]                     Revision : 00
[10C7h 4295   4]                     Reserved : 00000000
[10CBh 4299   4]                Mapping Count : 00000006
[10CFh 4303   4]               Mapping Offset : 0000003D

[10D3h 4307   4]                   Node Flags : 00000000
[10D7h 4311   8]            Memory Properties : [IORT Memory Access Properties]
[10D7h 4311   4]              Cache Coherency : 00000000
[10DBh 4315   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[10DCh 4316   2]                     Reserved : 0000
[10DEh 4318   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[10DFh 4319   1]            Memory Size Limit : 24
[10E0h 4320  20]                  Device Name : "\_SB.ADSP.SLM1.ADCM"
[10F4h 4340 132]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 07 \
    00 00 00 00 21 1B 00 00 30 00 00 00 00 00 00 00 \
    01 00 03 07 00 00 00 00 46 1B 00 00 30 00 00 00 \
    00 00 00 00 02 00 03 07 04 00 00 00 4D 1B 00 00 \
    30 00 00 00 00 00 00 00 0B 00 03 07 00 00 00 00 \
    53 1B 00 00 30 00 00 00 00 00 00 00 0C 00 03 07 \
    00 00 00 00 58 1B 00 00 30 00 00 00 00 00 00 00 \
    0D 00 03 07 02 00 00 00 5C 1B 00 00 30 00 00 00 \
    00 00 00 00 

[1100h 4352   4]                   Input base : 07030000
[1104h 4356   4]                     ID Count : 00000000
[1108h 4360   4]                  Output Base : 00001B21
[110Ch 4364   4]             Output Reference : 00000030
[1110h 4368   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1114h 4372   4]                   Input base : 07030001
[1118h 4376   4]                     ID Count : 00000000
[111Ch 4380   4]                  Output Base : 00001B46
[1120h 4384   4]             Output Reference : 00000030
[1124h 4388   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1128h 4392   4]                   Input base : 07030002
[112Ch 4396   4]                     ID Count : 00000004
[1130h 4400   4]                  Output Base : 00001B4D
[1134h 4404   4]             Output Reference : 00000030
[1138h 4408   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[113Ch 4412   4]                   Input base : 0703000B
[1140h 4416   4]                     ID Count : 00000000
[1144h 4420   4]                  Output Base : 00001B53
[1148h 4424   4]             Output Reference : 00000030
[114Ch 4428   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1150h 4432   4]                   Input base : 0703000C
[1154h 4436   4]                     ID Count : 00000000
[1158h 4440   4]                  Output Base : 00001B58
[115Ch 4444   4]             Output Reference : 00000030
[1160h 4448   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1164h 4452   4]                   Input base : 0703000D
[1168h 4456   4]                     ID Count : 00000002
[116Ch 4460   4]                  Output Base : 00001B5C
[1170h 4464   4]             Output Reference : 00000030
[1174h 4468   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1178h 4472   1]                         Type : 01
[1179h 4473   2]                       Length : 0051
[117Bh 4475   1]                     Revision : 00
[117Ch 4476   4]                     Reserved : 00000000
[1180h 4480   4]                Mapping Count : 00000001
[1184h 4484   4]               Mapping Offset : 0000003D

[1188h 4488   4]                   Node Flags : 00000000
[118Ch 4492   8]            Memory Properties : [IORT Memory Access Properties]
[118Ch 4492   4]              Cache Coherency : 00000000
[1190h 4496   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1191h 4497   2]                     Reserved : 0000
[1193h 4499   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1194h 4500   1]            Memory Size Limit : 24
[1195h 4501  11]                  Device Name : "\_SB.QSPI0"
[11A0h 4512  41]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 03 14 00 00 00 00 60 07 00 \
    00 30 00 00 00 00 00 00 00 

[11B5h 4533   4]                   Input base : 14030000
[11B9h 4537   4]                     ID Count : 00000000
[11BDh 4541   4]                  Output Base : 00000760
[11C1h 4545   4]             Output Reference : 00000030
[11C5h 4549   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[11C9h 4553   1]                         Type : 01
[11CAh 4554   2]                       Length : 0051
[11CCh 4556   1]                     Revision : 00
[11CDh 4557   4]                     Reserved : 00000000
[11D1h 4561   4]                Mapping Count : 00000001
[11D5h 4565   4]               Mapping Offset : 0000003D

[11D9h 4569   4]                   Node Flags : 00000000
[11DDh 4573   8]            Memory Properties : [IORT Memory Access Properties]
[11DDh 4573   4]              Cache Coherency : 00000000
[11E1h 4577   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[11E2h 4578   2]                     Reserved : 0000
[11E4h 4580   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[11E5h 4581   1]            Memory Size Limit : 24
[11E6h 4582  11]                  Device Name : "\_SB.QSPI1"
[11F1h 4593  41]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 01 00 03 14 00 00 00 00 E0 07 00 \
    00 30 00 00 00 00 00 00 00 

[1206h 4614   4]                   Input base : 14030001
[120Ah 4618   4]                     ID Count : 00000000
[120Eh 4622   4]                  Output Base : 000007E0
[1212h 4626   4]             Output Reference : 00000030
[1216h 4630   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[121Ah 4634   1]                         Type : 01
[121Bh 4635   2]                       Length : 00B5
[121Dh 4637   1]                     Revision : 00
[121Eh 4638   4]                     Reserved : 00000000
[1222h 4642   4]                Mapping Count : 00000006
[1226h 4646   4]               Mapping Offset : 0000003D

[122Ah 4650   4]                   Node Flags : 00000000
[122Eh 4654   8]            Memory Properties : [IORT Memory Access Properties]
[122Eh 4654   4]              Cache Coherency : 00000000
[1232h 4658   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1233h 4659   2]                     Reserved : 0000
[1235h 4661   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1236h 4662   1]            Memory Size Limit : 24
[1237h 4663   9]                  Device Name : "\_SB.QUP"
[1240h 4672 143]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 03 13 00 00 00 00 D6 \
    04 00 00 30 00 00 00 00 00 00 00 01 00 03 13 00 \
    00 00 00 C3 04 00 00 30 00 00 00 00 00 00 00 00 \
    00 03 10 00 00 00 00 03 06 00 00 30 00 00 00 00 \
    00 00 00 01 00 03 10 00 00 00 00 16 06 00 00 30 \
    00 00 00 00 00 00 00 00 00 03 12 00 00 00 00 A3 \
    07 00 00 30 00 00 00 00 00 00 00 01 00 03 12 00 \
    00 00 00 B6 07 00 00 30 00 00 00 00 00 00 00 

[1257h 4695   4]                   Input base : 13030000
[125Bh 4699   4]                     ID Count : 00000000
[125Fh 4703   4]                  Output Base : 000004D6
[1263h 4707   4]             Output Reference : 00000030
[1267h 4711   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[126Bh 4715   4]                   Input base : 13030001
[126Fh 4719   4]                     ID Count : 00000000
[1273h 4723   4]                  Output Base : 000004C3
[1277h 4727   4]             Output Reference : 00000030
[127Bh 4731   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[127Fh 4735   4]                   Input base : 10030000
[1283h 4739   4]                     ID Count : 00000000
[1287h 4743   4]                  Output Base : 00000603
[128Bh 4747   4]             Output Reference : 00000030
[128Fh 4751   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1293h 4755   4]                   Input base : 10030001
[1297h 4759   4]                     ID Count : 00000000
[129Bh 4763   4]                  Output Base : 00000616
[129Fh 4767   4]             Output Reference : 00000030
[12A3h 4771   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[12A7h 4775   4]                   Input base : 12030000
[12ABh 4779   4]                     ID Count : 00000000
[12AFh 4783   4]                  Output Base : 000007A3
[12B3h 4787   4]             Output Reference : 00000030
[12B7h 4791   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[12BBh 4795   4]                   Input base : 12030001
[12BFh 4799   4]                     ID Count : 00000000
[12C3h 4803   4]                  Output Base : 000007B6
[12C7h 4807   4]             Output Reference : 00000030
[12CBh 4811   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[12CFh 4815   1]                         Type : 01
[12D0h 4816   2]                       Length : 0065
[12D2h 4818   1]                     Revision : 00
[12D3h 4819   4]                     Reserved : 00000000
[12D7h 4823   4]                Mapping Count : 00000002
[12DBh 4827   4]               Mapping Offset : 0000003D

[12DFh 4831   4]                   Node Flags : 00000000
[12E3h 4835   8]            Memory Properties : [IORT Memory Access Properties]
[12E3h 4835   4]              Cache Coherency : 00000000
[12E7h 4839   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[12E8h 4840   2]                     Reserved : 0000
[12EAh 4842   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[12EBh 4843   1]            Memory Size Limit : 24
[12ECh 4844  10]                  Device Name : "\_SB.SDC2"
[12F6h 4854  62]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 86 00 00 00 00 A0 06 \
    00 00 30 00 00 00 00 00 00 00 01 00 03 86 00 00 \
    00 00 C0 06 00 00 30 00 00 00 00 00 00 00 

[130Ch 4876   4]                   Input base : 86030000
[1310h 4880   4]                     ID Count : 00000000
[1314h 4884   4]                  Output Base : 000006A0
[1318h 4888   4]             Output Reference : 00000030
[131Ch 4892   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1320h 4896   4]                   Input base : 86030001
[1324h 4900   4]                     ID Count : 00000000
[1328h 4904   4]                  Output Base : 000006C0
[132Ch 4908   4]             Output Reference : 00000030
[1330h 4912   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1334h 4916   1]                         Type : 01
[1335h 4917   2]                       Length : 0065
[1337h 4919   1]                     Revision : 00
[1338h 4920   4]                     Reserved : 00000000
[133Ch 4924   4]                Mapping Count : 00000002
[1340h 4928   4]               Mapping Offset : 0000003D

[1344h 4932   4]                   Node Flags : 00000000
[1348h 4936   8]            Memory Properties : [IORT Memory Access Properties]
[1348h 4936   4]              Cache Coherency : 00000000
[134Ch 4940   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[134Dh 4941   2]                     Reserved : 0000
[134Fh 4943   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1350h 4944   1]            Memory Size Limit : 24
[1351h 4945  10]                  Device Name : "\_SB.SEN1"
[135Bh 4955  62]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 85 00 00 00 00 E3 04 \
    00 00 30 00 00 00 00 00 00 00 01 00 03 85 02 00 \
    00 00 A1 05 00 00 30 00 00 00 00 00 00 00 

[1371h 4977   4]                   Input base : 85030000
[1375h 4981   4]                     ID Count : 00000000
[1379h 4985   4]                  Output Base : 000004E3
[137Dh 4989   4]             Output Reference : 00000030
[1381h 4993   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1385h 4997   4]                   Input base : 85030001
[1389h 5001   4]                     ID Count : 00000002
[138Dh 5005   4]                  Output Base : 000005A1
[1391h 5009   4]             Output Reference : 00000030
[1395h 5013   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1399h 5017   1]                         Type : 01
[139Ah 5018   2]                       Length : 0051
[139Ch 5020   1]                     Revision : 00
[139Dh 5021   4]                     Reserved : 00000000
[13A1h 5025   4]                Mapping Count : 00000001
[13A5h 5029   4]               Mapping Offset : 0000003D

[13A9h 5033   4]                   Node Flags : 00000000
[13ADh 5037   8]            Memory Properties : [IORT Memory Access Properties]
[13ADh 5037   4]              Cache Coherency : 00000000
[13B1h 5041   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[13B2h 5042   2]                     Reserved : 0000
[13B4h 5044   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[13B5h 5045   1]            Memory Size Limit : 24
[13B6h 5046  10]                  Device Name : "\_SB.TSC5"
[13C0h 5056  42]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 88 0F 00 00 00 20 06 \
    00 00 30 00 00 00 00 00 00 00 

[13D6h 5078   4]                   Input base : 88030000
[13DAh 5082   4]                     ID Count : 0000000F
[13DEh 5086   4]                  Output Base : 00000620
[13E2h 5090   4]             Output Reference : 00000030
[13E6h 5094   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[13EAh 5098   1]                         Type : 01
[13EBh 5099   2]                       Length : 0079
[13EDh 5101   1]                     Revision : 00
[13EEh 5102   4]                     Reserved : 00000000
[13F2h 5106   4]                Mapping Count : 00000003
[13F6h 5110   4]               Mapping Offset : 0000003D

[13FAh 5114   4]                   Node Flags : 00000000
[13FEh 5118   8]            Memory Properties : [IORT Memory Access Properties]
[13FEh 5118   4]              Cache Coherency : 00000001
[1402h 5122   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1403h 5123   2]                     Reserved : 0000
[1405h 5125   1] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[1406h 5126   1]            Memory Size Limit : 24
[1407h 5127  10]                  Device Name : "\_SB.UFS0"
[1411h 5137  82]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 81 00 00 00 00 00 00 \
    00 00 30 00 00 00 00 00 00 00 01 00 03 81 00 00 \
    00 00 E0 02 00 00 30 00 00 00 00 00 00 00 02 00 \
    03 81 00 00 00 00 00 03 00 00 30 00 00 00 00 00 \
    00 00 

[1427h 5159   4]                   Input base : 81030000
[142Bh 5163   4]                     ID Count : 00000000
[142Fh 5167   4]                  Output Base : 00000000
[1433h 5171   4]             Output Reference : 00000030
[1437h 5175   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[143Bh 5179   4]                   Input base : 81030001
[143Fh 5183   4]                     ID Count : 00000000
[1443h 5187   4]                  Output Base : 000002E0
[1447h 5191   4]             Output Reference : 00000030
[144Bh 5195   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[144Fh 5199   4]                   Input base : 81030002
[1453h 5203   4]                     ID Count : 00000000
[1457h 5207   4]                  Output Base : 00000300
[145Bh 5211   4]             Output Reference : 00000030
[145Fh 5215   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1463h 5219   1]                         Type : 01
[1464h 5220   2]                       Length : 0051
[1466h 5222   1]                     Revision : 00
[1467h 5223   4]                     Reserved : 00000000
[146Bh 5227   4]                Mapping Count : 00000001
[146Fh 5231   4]               Mapping Offset : 0000003D

[1473h 5235   4]                   Node Flags : 00000000
[1477h 5239   8]            Memory Properties : [IORT Memory Access Properties]
[1477h 5239   4]              Cache Coherency : 00000000
[147Bh 5243   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[147Ch 5244   2]                     Reserved : 0000
[147Eh 5246   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[147Fh 5247   1]            Memory Size Limit : 24
[1480h 5248  10]                  Device Name : "\_SB.URS0"
[148Ah 5258  42]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 80 00 00 00 00 40 01 \
    00 00 30 00 00 00 00 00 00 00 

[14A0h 5280   4]                   Input base : 80030000
[14A4h 5284   4]                     ID Count : 00000000
[14A8h 5288   4]                  Output Base : 00000140
[14ACh 5292   4]             Output Reference : 00000030
[14B0h 5296   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[14B4h 5300   1]                         Type : 01
[14B5h 5301   2]                       Length : 0051
[14B7h 5303   1]                     Revision : 00
[14B8h 5304   4]                     Reserved : 00000000
[14BCh 5308   4]                Mapping Count : 00000001
[14C0h 5312   4]               Mapping Offset : 0000003D

[14C4h 5316   4]                   Node Flags : 00000000
[14C8h 5320   8]            Memory Properties : [IORT Memory Access Properties]
[14C8h 5320   4]              Cache Coherency : 00000000
[14CCh 5324   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[14CDh 5325   2]                     Reserved : 0000
[14CFh 5327   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[14D0h 5328   1]            Memory Size Limit : 24
[14D1h 5329  10]                  Device Name : "\_SB.USB0"
[14DBh 5339  42]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 80 00 00 00 00 40 01 \
    00 00 30 00 00 00 00 00 00 00 

[14F1h 5361   4]                   Input base : 80030000
[14F5h 5365   4]                     ID Count : 00000000
[14F9h 5369   4]                  Output Base : 00000140
[14FDh 5373   4]             Output Reference : 00000030
[1501h 5377   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1505h 5381   1]                         Type : 01
[1506h 5382   2]                       Length : 0051
[1508h 5384   1]                     Revision : 00
[1509h 5385   4]                     Reserved : 00000000
[150Dh 5389   4]                Mapping Count : 00000001
[1511h 5393   4]               Mapping Offset : 0000003D

[1515h 5397   4]                   Node Flags : 00000000
[1519h 5401   8]            Memory Properties : [IORT Memory Access Properties]
[1519h 5401   4]              Cache Coherency : 00000000
[151Dh 5405   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[151Eh 5406   2]                     Reserved : 0000
[1520h 5408   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1521h 5409   1]            Memory Size Limit : 24
[1522h 5410  10]                  Device Name : "\_SB.URS1"
[152Ch 5420  42]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 01 00 03 80 00 00 00 00 60 01 \
    00 00 30 00 00 00 00 00 00 00 

[1542h 5442   4]                   Input base : 80030001
[1546h 5446   4]                     ID Count : 00000000
[154Ah 5450   4]                  Output Base : 00000160
[154Eh 5454   4]             Output Reference : 00000030
[1552h 5458   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1556h 5462   1]                         Type : 01
[1557h 5463   2]                       Length : 0051
[1559h 5465   1]                     Revision : 00
[155Ah 5466   4]                     Reserved : 00000000
[155Eh 5470   4]                Mapping Count : 00000001
[1562h 5474   4]               Mapping Offset : 0000003D

[1566h 5478   4]                   Node Flags : 00000000
[156Ah 5482   8]            Memory Properties : [IORT Memory Access Properties]
[156Ah 5482   4]              Cache Coherency : 00000000
[156Eh 5486   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[156Fh 5487   2]                     Reserved : 0000
[1571h 5489   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1572h 5490   1]            Memory Size Limit : 24
[1573h 5491  10]                  Device Name : "\_SB.USB1"
[157Dh 5501  42]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 01 00 03 80 00 00 00 00 60 01 \
    00 00 30 00 00 00 00 00 00 00 

[1593h 5523   4]                   Input base : 80030001
[1597h 5527   4]                     ID Count : 00000000
[159Bh 5531   4]                  Output Base : 00000160
[159Fh 5535   4]             Output Reference : 00000030
[15A3h 5539   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[15A7h 5543   1]                         Type : 01
[15A8h 5544   2]                       Length : 0051
[15AAh 5546   1]                     Revision : 00
[15ABh 5547   4]                     Reserved : 00000000
[15AFh 5551   4]                Mapping Count : 00000001
[15B3h 5555   4]               Mapping Offset : 0000003D

[15B7h 5559   4]                   Node Flags : 00000000
[15BBh 5563   8]            Memory Properties : [IORT Memory Access Properties]
[15BBh 5563   4]              Cache Coherency : 00000000
[15BFh 5567   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[15C0h 5568   2]                     Reserved : 0000
[15C2h 5570   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[15C3h 5571   1]            Memory Size Limit : 24
[15C4h 5572  10]                  Device Name : "\_SB.URS2"
[15CEh 5582  42]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 02 00 03 80 00 00 00 00 60 00 \
    00 00 30 00 00 00 00 00 00 00 

[15E4h 5604   4]                   Input base : 80030002
[15E8h 5608   4]                     ID Count : 00000000
[15ECh 5612   4]                  Output Base : 00000060
[15F0h 5616   4]             Output Reference : 00000030
[15F4h 5620   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[15F8h 5624   1]                         Type : 01
[15F9h 5625   2]                       Length : 0051
[15FBh 5627   1]                     Revision : 00
[15FCh 5628   4]                     Reserved : 00000000
[1600h 5632   4]                Mapping Count : 00000001
[1604h 5636   4]               Mapping Offset : 0000003D

[1608h 5640   4]                   Node Flags : 00000000
[160Ch 5644   8]            Memory Properties : [IORT Memory Access Properties]
[160Ch 5644   4]              Cache Coherency : 00000000
[1610h 5648   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1611h 5649   2]                     Reserved : 0000
[1613h 5651   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1614h 5652   1]            Memory Size Limit : 24
[1615h 5653  10]                  Device Name : "\_SB.USB2"
[161Fh 5663  42]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 02 00 03 80 00 00 00 00 60 00 \
    00 00 30 00 00 00 00 00 00 00 

[1635h 5685   4]                   Input base : 80030002
[1639h 5689   4]                     ID Count : 00000000
[163Dh 5693   4]                  Output Base : 00000060
[1641h 5697   4]             Output Reference : 00000030
[1645h 5701   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1649h 5705   1]                         Type : 01
[164Ah 5706   2]                       Length : 02A9
[164Ch 5708   1]                     Revision : 00
[164Dh 5709   4]                     Reserved : 00000000
[1651h 5713   4]                Mapping Count : 0000001F
[1655h 5717   4]               Mapping Offset : 0000003D

[1659h 5721   4]                   Node Flags : 00000000
[165Dh 5725   8]            Memory Properties : [IORT Memory Access Properties]
[165Dh 5725   4]              Cache Coherency : 00000000
[1661h 5729   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1662h 5730   2]                     Reserved : 0000
[1664h 5732   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1665h 5733   1]            Memory Size Limit : 24
[1666h 5734  15]                  Device Name : "\_SB.GPU0.AVS0"
[1675h 5749 637]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 03 01 00 00 00 00 C0 20 00 00 30 00 00 \
    00 00 00 00 00 01 00 03 01 00 00 00 00 C0 23 00 \
    00 30 00 00 00 00 00 00 00 02 00 03 01 00 00 00 \
    00 00 20 00 00 30 00 00 00 00 00 00 00 03 00 03 \
    01 00 00 00 00 40 21 00 00 30 00 00 00 00 00 00 \
    00 04 00 03 01 00 00 00 00 60 21 00 00 30 00 00 \
    00 00 00 00 00 05 00 03 01 00 00 00 00 42 20 00 \
    00 30 00 00 00 00 00 00 00 06 00 03 01 00 00 00 \
    00 00 0A 00 00 30 00 00 00 00 00 00 00 07 00 03 \
    01 00 00 00 00 20 0A 00 00 30 00 00 00 00 00 00 \
    00 08 00 03 01 00 00 00 00 40 0A 00 00 30 00 00 \
    00 00 00 00 00 09 00 03 01 00 00 00 00 60 0A 00 \
    00 30 00 00 00 00 00 00 00 0A 00 03 01 00 00 00 \
    00 80 0A 00 00 30 00 00 00 00 00 00 00 0B 00 03 \
    01 00 00 00 00 A0 0A 00 00 30 00 00 00 00 00 00 \
    00 0C 00 03 01 00 00 00 00 C0 0A 00 00 30 00 00 \
    00 00 00 00 00 0D 00 03 01 00 00 00 00 E0 0A 00 \
    00 30 00 00 00 00 00 00 00 0E 00 03 01 00 00 00 \
    00 00 0E 00 00 30 00 00 00 00 00 00 00 0F 00 03 \
    01 00 00 00 00 20 0E 00 00 30 00 00 00 00 00 00 \
    00 10 00 03 01 00 00 00 00 40 0E 00 00 30 00 00 \
    00 00 00 00 00 11 00 03 01 00 00 00 00 60 0E 00 \
    00 30 00 00 00 00 00 00 00 12 00 03 01 00 00 00 \
    00 80 0E 00 00 30 00 00 00 00 00 00 00 13 00 03 \
    01 00 00 00 00 A0 0E 00 00 30 00 00 00 00 00 00 \
    00 14 00 03 01 00 00 00 00 C0 0E 00 00 30 00 00 \
    00 00 00 00 00 15 00 03 01 00 00 00 00 E0 0E 00 \
    00 30 00 00 00 00 00 00 00 16 00 03 01 00 00 00 \
    00 80 20 00 00 30 00 00 00 00 00 00 00 17 00 03 \
    01 00 00 00 00 A0 20 00 00 30 00 00 00 00 00 00 \
    00 18 00 03 01 00 00 00 00 80 23 00 00 30 00 00 \
    00 00 00 00 00 19 00 03 01 00 00 00 00 A0 23 00 \
    00 30 00 00 00 00 00 00 00 1A 00 03 01 00 00 00 \
    00 E0 20 00 00 30 00 00 00 00 00 00 00 1B 00 03 \
    01 00 00 00 00 E0 23 00 00 30 00 00 00 00 00 00 \
    00 00 00 0D 01 00 00 00 00 29 10 00 00 30 00 00 \
    00 00 00 00 00 01 00 0D 01 00 00 00 00 31 10 00 \
    00 30 00 00 00 00 00 00 00 02 00 0D 01 00 00 00 \
    00 39 10 00 00 30 00 00 00 00 00 00 00 

[1686h 5766   4]                   Input base : 01030000
[168Ah 5770   4]                     ID Count : 00000000
[168Eh 5774   4]                  Output Base : 000020C0
[1692h 5778   4]             Output Reference : 00000030
[1696h 5782   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[169Ah 5786   4]                   Input base : 01030001
[169Eh 5790   4]                     ID Count : 00000000
[16A2h 5794   4]                  Output Base : 000023C0
[16A6h 5798   4]             Output Reference : 00000030
[16AAh 5802   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[16AEh 5806   4]                   Input base : 01030002
[16B2h 5810   4]                     ID Count : 00000000
[16B6h 5814   4]                  Output Base : 00002000
[16BAh 5818   4]             Output Reference : 00000030
[16BEh 5822   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[16C2h 5826   4]                   Input base : 01030003
[16C6h 5830   4]                     ID Count : 00000000
[16CAh 5834   4]                  Output Base : 00002140
[16CEh 5838   4]             Output Reference : 00000030
[16D2h 5842   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[16D6h 5846   4]                   Input base : 01030004
[16DAh 5850   4]                     ID Count : 00000000
[16DEh 5854   4]                  Output Base : 00002160
[16E2h 5858   4]             Output Reference : 00000030
[16E6h 5862   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[16EAh 5866   4]                   Input base : 01030005
[16EEh 5870   4]                     ID Count : 00000000
[16F2h 5874   4]                  Output Base : 00002042
[16F6h 5878   4]             Output Reference : 00000030
[16FAh 5882   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[16FEh 5886   4]                   Input base : 01030006
[1702h 5890   4]                     ID Count : 00000000
[1706h 5894   4]                  Output Base : 00000A00
[170Ah 5898   4]             Output Reference : 00000030
[170Eh 5902   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1712h 5906   4]                   Input base : 01030007
[1716h 5910   4]                     ID Count : 00000000
[171Ah 5914   4]                  Output Base : 00000A20
[171Eh 5918   4]             Output Reference : 00000030
[1722h 5922   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1726h 5926   4]                   Input base : 01030008
[172Ah 5930   4]                     ID Count : 00000000
[172Eh 5934   4]                  Output Base : 00000A40
[1732h 5938   4]             Output Reference : 00000030
[1736h 5942   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[173Ah 5946   4]                   Input base : 01030009
[173Eh 5950   4]                     ID Count : 00000000
[1742h 5954   4]                  Output Base : 00000A60
[1746h 5958   4]             Output Reference : 00000030
[174Ah 5962   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[174Eh 5966   4]                   Input base : 0103000A
[1752h 5970   4]                     ID Count : 00000000
[1756h 5974   4]                  Output Base : 00000A80
[175Ah 5978   4]             Output Reference : 00000030
[175Eh 5982   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1762h 5986   4]                   Input base : 0103000B
[1766h 5990   4]                     ID Count : 00000000
[176Ah 5994   4]                  Output Base : 00000AA0
[176Eh 5998   4]             Output Reference : 00000030
[1772h 6002   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1776h 6006   4]                   Input base : 0103000C
[177Ah 6010   4]                     ID Count : 00000000
[177Eh 6014   4]                  Output Base : 00000AC0
[1782h 6018   4]             Output Reference : 00000030
[1786h 6022   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[178Ah 6026   4]                   Input base : 0103000D
[178Eh 6030   4]                     ID Count : 00000000
[1792h 6034   4]                  Output Base : 00000AE0
[1796h 6038   4]             Output Reference : 00000030
[179Ah 6042   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[179Eh 6046   4]                   Input base : 0103000E
[17A2h 6050   4]                     ID Count : 00000000
[17A6h 6054   4]                  Output Base : 00000E00
[17AAh 6058   4]             Output Reference : 00000030
[17AEh 6062   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[17B2h 6066   4]                   Input base : 0103000F
[17B6h 6070   4]                     ID Count : 00000000
[17BAh 6074   4]                  Output Base : 00000E20
[17BEh 6078   4]             Output Reference : 00000030
[17C2h 6082   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[17C6h 6086   4]                   Input base : 01030010
[17CAh 6090   4]                     ID Count : 00000000
[17CEh 6094   4]                  Output Base : 00000E40
[17D2h 6098   4]             Output Reference : 00000030
[17D6h 6102   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[17DAh 6106   4]                   Input base : 01030011
[17DEh 6110   4]                     ID Count : 00000000
[17E2h 6114   4]                  Output Base : 00000E60
[17E6h 6118   4]             Output Reference : 00000030
[17EAh 6122   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[17EEh 6126   4]                   Input base : 01030012
[17F2h 6130   4]                     ID Count : 00000000
[17F6h 6134   4]                  Output Base : 00000E80
[17FAh 6138   4]             Output Reference : 00000030
[17FEh 6142   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1802h 6146   4]                   Input base : 01030013
[1806h 6150   4]                     ID Count : 00000000
[180Ah 6154   4]                  Output Base : 00000EA0
[180Eh 6158   4]             Output Reference : 00000030
[1812h 6162   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1816h 6166   4]                   Input base : 01030014
[181Ah 6170   4]                     ID Count : 00000000
[181Eh 6174   4]                  Output Base : 00000EC0
[1822h 6178   4]             Output Reference : 00000030
[1826h 6182   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[182Ah 6186   4]                   Input base : 01030015
[182Eh 6190   4]                     ID Count : 00000000
[1832h 6194   4]                  Output Base : 00000EE0
[1836h 6198   4]             Output Reference : 00000030
[183Ah 6202   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[183Eh 6206   4]                   Input base : 01030016
[1842h 6210   4]                     ID Count : 00000000
[1846h 6214   4]                  Output Base : 00002080
[184Ah 6218   4]             Output Reference : 00000030
[184Eh 6222   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1852h 6226   4]                   Input base : 01030017
[1856h 6230   4]                     ID Count : 00000000
[185Ah 6234   4]                  Output Base : 000020A0
[185Eh 6238   4]             Output Reference : 00000030
[1862h 6242   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1866h 6246   4]                   Input base : 01030018
[186Ah 6250   4]                     ID Count : 00000000
[186Eh 6254   4]                  Output Base : 00002380
[1872h 6258   4]             Output Reference : 00000030
[1876h 6262   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[187Ah 6266   4]                   Input base : 01030019
[187Eh 6270   4]                     ID Count : 00000000
[1882h 6274   4]                  Output Base : 000023A0
[1886h 6278   4]             Output Reference : 00000030
[188Ah 6282   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[188Eh 6286   4]                   Input base : 0103001A
[1892h 6290   4]                     ID Count : 00000000
[1896h 6294   4]                  Output Base : 000020E0
[189Ah 6298   4]             Output Reference : 00000030
[189Eh 6302   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[18A2h 6306   4]                   Input base : 0103001B
[18A6h 6310   4]                     ID Count : 00000000
[18AAh 6314   4]                  Output Base : 000023E0
[18AEh 6318   4]             Output Reference : 00000030
[18B2h 6322   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[18B6h 6326   4]                   Input base : 010D0000
[18BAh 6330   4]                     ID Count : 00000000
[18BEh 6334   4]                  Output Base : 00001029
[18C2h 6338   4]             Output Reference : 00000030
[18C6h 6342   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[18CAh 6346   4]                   Input base : 010D0001
[18CEh 6350   4]                     ID Count : 00000000
[18D2h 6354   4]                  Output Base : 00001031
[18D6h 6358   4]             Output Reference : 00000030
[18DAh 6362   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[18DEh 6366   4]                   Input base : 010D0002
[18E2h 6370   4]                     ID Count : 00000000
[18E6h 6374   4]                  Output Base : 00001039
[18EAh 6378   4]             Output Reference : 00000030
[18EEh 6382   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[18F2h 6386   1]                         Type : 01
[18F3h 6387   2]                       Length : 0051
[18F5h 6389   1]                     Revision : 00
[18F6h 6390   4]                     Reserved : 00000000
[18FAh 6394   4]                Mapping Count : 00000001
[18FEh 6398   4]               Mapping Offset : 0000003D

[1902h 6402   4]                   Node Flags : 00000000
[1906h 6406   8]            Memory Properties : [IORT Memory Access Properties]
[1906h 6406   4]              Cache Coherency : 00000000
[190Ah 6410   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[190Bh 6411   2]                     Reserved : 0000
[190Dh 6413   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[190Eh 6414   1]            Memory Size Limit : 24
[190Fh 6415  15]                  Device Name : "\_SB.AMSS.QWLN"
[191Eh 6430  37]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 03 11 01 00 00 00 40 06 00 00 30 00 00 \
    00 00 00 00 00 

[192Fh 6447   4]                   Input base : 11030000
[1933h 6451   4]                     ID Count : 00000001
[1937h 6455   4]                  Output Base : 00000640
[193Bh 6459   4]             Output Reference : 00000030
[193Fh 6463   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

Raw Table Data: Length 6467 (0x1943)

  0000: 49 4F 52 54 43 19 00 00 00 7A 51 43 4F 4D 20 20  // IORTC....zQCOM  
  0010: 51 43 4F 4D 45 44 4B 32 80 81 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
  0020: 01 00 00 00 1A 00 00 00 30 00 00 00 00 00 00 00  // ........0.......
  0030: 03 94 04 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  0040: 00 00 00 15 00 00 00 00 00 00 10 00 00 00 00 00  // ................
  0050: 03 00 00 00 00 00 00 00 3C 00 00 00 80 00 00 00  // ........<.......
  0060: 4C 00 00 00 09 00 00 00 4C 04 00 00 61 00 00 00  // L.......L...a...
  0070: 00 00 00 00 00 00 00 00 00 00 00 00 81 00 00 00  // ................
  0080: 01 00 00 00 82 00 00 00 01 00 00 00 83 00 00 00  // ................
  0090: 01 00 00 00 84 00 00 00 01 00 00 00 85 00 00 00  // ................
  00A0: 01 00 00 00 86 00 00 00 01 00 00 00 87 00 00 00  // ................
  00B0: 01 00 00 00 88 00 00 00 01 00 00 00 89 00 00 00  // ................
  00C0: 01 00 00 00 8A 00 00 00 01 00 00 00 8B 00 00 00  // ................
  00D0: 01 00 00 00 8C 00 00 00 01 00 00 00 8D 00 00 00  // ................
  00E0: 01 00 00 00 8E 00 00 00 01 00 00 00 8F 00 00 00  // ................
  00F0: 01 00 00 00 90 00 00 00 01 00 00 00 91 00 00 00  // ................
  0100: 01 00 00 00 92 00 00 00 01 00 00 00 93 00 00 00  // ................
  0110: 01 00 00 00 94 00 00 00 01 00 00 00 95 00 00 00  // ................
  0120: 01 00 00 00 96 00 00 00 01 00 00 00 D5 00 00 00  // ................
  0130: 01 00 00 00 D6 00 00 00 01 00 00 00 D7 00 00 00  // ................
  0140: 01 00 00 00 D8 00 00 00 01 00 00 00 D9 00 00 00  // ................
  0150: 01 00 00 00 DA 00 00 00 01 00 00 00 DB 00 00 00  // ................
  0160: 01 00 00 00 DC 00 00 00 01 00 00 00 DD 00 00 00  // ................
  0170: 01 00 00 00 DE 00 00 00 01 00 00 00 DF 00 00 00  // ................
  0180: 01 00 00 00 E0 00 00 00 01 00 00 00 5B 01 00 00  // ............[...
  0190: 01 00 00 00 5C 01 00 00 01 00 00 00 5D 01 00 00  // ....\.......]...
  01A0: 01 00 00 00 5E 01 00 00 01 00 00 00 5F 01 00 00  // ....^......._...
  01B0: 01 00 00 00 60 01 00 00 01 00 00 00 61 01 00 00  // ....`.......a...
  01C0: 01 00 00 00 62 01 00 00 01 00 00 00 63 01 00 00  // ....b.......c...
  01D0: 01 00 00 00 64 01 00 00 01 00 00 00 65 01 00 00  // ....d.......e...
  01E0: 01 00 00 00 66 01 00 00 01 00 00 00 67 01 00 00  // ....f.......g...
  01F0: 01 00 00 00 68 01 00 00 01 00 00 00 69 01 00 00  // ....h.......i...
  0200: 01 00 00 00 6A 01 00 00 01 00 00 00 6B 01 00 00  // ....j.......k...
  0210: 01 00 00 00 6C 01 00 00 01 00 00 00 6D 01 00 00  // ....l.......m...
  0220: 01 00 00 00 6E 01 00 00 01 00 00 00 6F 01 00 00  // ....n.......o...
  0230: 01 00 00 00 70 01 00 00 01 00 00 00 71 01 00 00  // ....p.......q...
  0240: 01 00 00 00 72 01 00 00 01 00 00 00 73 01 00 00  // ....r.......s...
  0250: 01 00 00 00 74 01 00 00 01 00 00 00 75 01 00 00  // ....t.......u...
  0260: 01 00 00 00 76 01 00 00 01 00 00 00 77 01 00 00  // ....v.......w...
  0270: 01 00 00 00 78 01 00 00 01 00 00 00 79 01 00 00  // ....x.......y...
  0280: 01 00 00 00 AB 01 00 00 01 00 00 00 AC 01 00 00  // ................
  0290: 01 00 00 00 AD 01 00 00 01 00 00 00 AE 01 00 00  // ................
  02A0: 01 00 00 00 AF 01 00 00 01 00 00 00 B0 01 00 00  // ................
  02B0: 01 00 00 00 B1 01 00 00 01 00 00 00 B2 01 00 00  // ................
  02C0: 01 00 00 00 B3 01 00 00 01 00 00 00 B4 01 00 00  // ................
  02D0: 01 00 00 00 B5 01 00 00 01 00 00 00 B6 01 00 00  // ................
  02E0: 01 00 00 00 B7 01 00 00 01 00 00 00 B8 01 00 00  // ................
  02F0: 01 00 00 00 B9 01 00 00 01 00 00 00 BA 01 00 00  // ................
  0300: 01 00 00 00 BB 01 00 00 01 00 00 00 BC 01 00 00  // ................
  0310: 01 00 00 00 BD 01 00 00 01 00 00 00 A0 02 00 00  // ................
  0320: 01 00 00 00 A1 02 00 00 01 00 00 00 A2 02 00 00  // ................
  0330: 01 00 00 00 A3 02 00 00 01 00 00 00 E2 02 00 00  // ................
  0340: 01 00 00 00 E3 02 00 00 01 00 00 00 E4 02 00 00  // ................
  0350: 01 00 00 00 E5 02 00 00 01 00 00 00 E6 02 00 00  // ................
  0360: 01 00 00 00 E7 02 00 00 01 00 00 00 E8 02 00 00  // ................
  0370: 01 00 00 00 E9 02 00 00 01 00 00 00 EA 02 00 00  // ................
  0380: 01 00 00 00 EB 02 00 00 01 00 00 00 20 03 00 00  // ............ ...
  0390: 01 00 00 00 21 03 00 00 01 00 00 00 22 03 00 00  // ....!......."...
  03A0: 01 00 00 00 23 03 00 00 01 00 00 00 24 03 00 00  // ....#.......$...
  03B0: 01 00 00 00 25 03 00 00 01 00 00 00 26 03 00 00  // ....%.......&...
  03C0: 01 00 00 00 27 03 00 00 01 00 00 00 28 03 00 00  // ....'.......(...
  03D0: 01 00 00 00 29 03 00 00 01 00 00 00 2A 03 00 00  // ....).......*...
  03E0: 01 00 00 00 2B 03 00 00 01 00 00 00 2C 03 00 00  // ....+.......,...
  03F0: 01 00 00 00 2D 03 00 00 01 00 00 00 2E 03 00 00  // ....-...........
  0400: 01 00 00 00 2F 03 00 00 01 00 00 00 30 03 00 00  // ..../.......0...
  0410: 01 00 00 00 31 03 00 00 01 00 00 00 32 03 00 00  // ....1.......2...
  0420: 01 00 00 00 33 03 00 00 01 00 00 00 34 03 00 00  // ....3.......4...
  0430: 01 00 00 00 35 03 00 00 01 00 00 00 36 03 00 00  // ....5.......6...
  0440: 01 00 00 00 37 03 00 00 01 00 00 00 38 03 00 00  // ....7.......8...
  0450: 01 00 00 00 39 03 00 00 01 00 00 00 3A 03 00 00  // ....9.......:...
  0460: 01 00 00 00 3B 03 00 00 01 00 00 00 3C 03 00 00  // ....;.......<...
  0470: 01 00 00 00 3D 03 00 00 01 00 00 00 64 00 00 00  // ....=.......d...
  0480: 01 00 00 00 65 00 00 00 01 00 00 00 66 00 00 00  // ....e.......f...
  0490: 01 00 00 00 67 00 00 00 01 00 00 00 68 00 00 00  // ....g.......h...
  04A0: 01 00 00 00 69 00 00 00 01 00 00 00 7E 00 00 00  // ....i.......~...
  04B0: 01 00 00 00 7F 00 00 00 01 00 00 00 80 00 00 00  // ................
  04C0: 01 00 00 00 03 AC 00 00 00 00 00 00 00 00 00 00  // ................
  04D0: 00 00 00 00 00 00 CA 02 00 00 00 00 00 00 01 00  // ................
  04E0: 00 00 00 00 03 00 00 00 00 00 00 00 3C 00 00 00  // ............<...
  04F0: 08 00 00 00 4C 00 00 00 04 00 00 00 8C 00 00 00  // ....L...........
  0500: C1 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  0510: C8 02 00 00 01 00 00 00 C9 02 00 00 01 00 00 00  // ................
  0520: CA 02 00 00 01 00 00 00 CB 02 00 00 01 00 00 00  // ................
  0530: CC 02 00 00 01 00 00 00 CD 02 00 00 01 00 00 00  // ................
  0540: CE 02 00 00 01 00 00 00 CF 02 00 00 01 00 00 00  // ................
  0550: C4 02 00 00 01 00 00 00 C5 02 00 00 01 00 00 00  // ................
  0560: C6 02 00 00 01 00 00 00 C7 02 00 00 01 00 00 00  // ................
  0570: 02 70 00 00 00 00 00 00 04 00 00 00 20 00 00 00  // .p.......... ...
  0580: 01 00 00 00 00 00 00 01 01 00 00 00 00 00 00 00  // ................
  0590: 00 00 03 87 7F 00 00 00 80 1C 00 00 30 00 00 00  // ............0...
  05A0: 00 00 00 00 80 00 03 87 7F 00 00 00 00 1D 00 00  // ................
  05B0: 30 00 00 00 00 00 00 00 00 01 03 87 7F 00 00 00  // 0...............
  05C0: 80 1D 00 00 30 00 00 00 00 00 00 00 80 01 03 87  // ....0...........
  05D0: 7F 00 00 00 00 1E 00 00 30 00 00 00 00 00 00 00  // ........0.......
  05E0: 01 39 04 00 00 00 00 00 33 00 00 00 3D 00 00 00  // .9......3...=...
  05F0: 00 00 00 00 00 00 00 00 00 00 00 00 28 5C 5F 53  // ............(\_S
  0600: 42 2E 47 50 55 30 00 00 00 00 00 00 00 00 00 00  // B.GPU0..........
  0610: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0A  // ................
  0620: 03 00 00 00 00 02 00 00 00 C4 04 00 00 00 00 00  // ................
  0630: 00 01 00 0A 03 00 00 00 00 02 04 00 00 C4 04 00  // ................
  0640: 00 00 00 00 00 02 00 0A 03 00 00 00 00 02 08 00  // ................
  0650: 00 C4 04 00 00 00 00 00 00 03 00 0A 03 00 00 00  // ................
  0660: 00 02 0C 00 00 C4 04 00 00 00 00 00 00 00 00 03  // ................
  0670: 03 01 00 00 00 00 00 00 00 C4 04 00 00 00 00 00  // ................
  0680: 00 02 00 03 03 01 00 00 00 00 04 00 00 C4 04 00  // ................
  0690: 00 00 00 00 00 04 00 03 03 01 00 00 00 00 08 00  // ................
  06A0: 00 C4 04 00 00 00 00 00 00 06 00 03 03 01 00 00  // ................
  06B0: 00 00 0C 00 00 C4 04 00 00 00 00 00 00 0C 00 03  // ................
  06C0: 03 00 00 00 00 04 00 00 00 C4 04 00 00 00 00 00  // ................
  06D0: 00 0D 00 03 03 00 00 00 00 04 04 00 00 C4 04 00  // ................
  06E0: 00 00 00 00 00 0E 00 03 03 00 00 00 00 04 08 00  // ................
  06F0: 00 C4 04 00 00 00 00 00 00 0F 00 03 03 00 00 00  // ................
  0700: 00 04 0C 00 00 C4 04 00 00 00 00 00 00 08 00 03  // ................
  0710: 03 00 00 00 00 05 00 00 00 C4 04 00 00 00 00 00  // ................
  0720: 00 09 00 03 03 00 00 00 00 05 04 00 00 C4 04 00  // ................
  0730: 00 00 00 00 00 0A 00 03 03 00 00 00 00 05 08 00  // ................
  0740: 00 C4 04 00 00 00 00 00 00 0B 00 03 03 00 00 00  // ................
  0750: 00 05 0C 00 00 C4 04 00 00 00 00 00 00 00 00 03  // ................
  0760: 00 00 00 00 00 00 08 00 00 30 00 00 00 00 00 00  // .........0......
  0770: 00 00 00 0A 00 00 00 00 00 01 08 00 00 30 00 00  // .............0..
  0780: 00 00 00 00 00 01 00 03 00 00 00 00 00 20 08 00  // ............. ..
  0790: 00 30 00 00 00 00 00 00 00 01 00 0A 00 00 00 00  // .0..............
  07A0: 00 21 08 00 00 30 00 00 00 00 00 00 00 02 00 03  // .!...0..........
  07B0: 00 00 00 00 00 00 0C 00 00 30 00 00 00 00 00 00  // .........0......
  07C0: 00 02 00 0A 00 00 00 00 00 01 0C 00 00 30 00 00  // .............0..
  07D0: 00 00 00 00 00 03 00 03 00 00 00 00 00 20 0C 00  // ............. ..
  07E0: 00 30 00 00 00 00 00 00 00 03 00 0A 00 00 00 00  // .0..............
  07F0: 00 21 0C 00 00 30 00 00 00 00 00 00 00 00 00 03  // .!...0..........
  0800: 06 00 00 00 00 40 20 00 00 30 00 00 00 00 00 00  // .....@ ..0......
  0810: 00 00 00 0A 06 00 00 00 00 41 20 00 00 30 00 00  // .........A ..0..
  0820: 00 00 00 00 00 10 00 03 03 00 00 00 00 07 00 00  // ................
  0830: 00 C4 04 00 00 00 00 00 00 11 00 03 03 00 00 00  // ................
  0840: 00 09 00 00 00 C4 04 00 00 00 00 00 00 12 00 03  // ................
  0850: 03 00 00 00 00 07 04 00 00 C4 04 00 00 00 00 00  // ................
  0860: 00 13 00 03 03 00 00 00 00 09 04 00 00 C4 04 00  // ................
  0870: 00 00 00 00 00 14 00 03 03 00 00 00 00 07 08 00  // ................
  0880: 00 C4 04 00 00 00 00 00 00 15 00 03 03 00 00 00  // ................
  0890: 00 09 08 00 00 C4 04 00 00 00 00 00 00 16 00 03  // ................
  08A0: 03 00 00 00 00 07 0C 00 00 C4 04 00 00 00 00 00  // ................
  08B0: 00 17 00 03 03 00 00 00 00 09 0C 00 00 C4 04 00  // ................
  08C0: 00 00 00 00 00 00 00 03 0C 03 00 00 00 04 05 00  // ................
  08D0: 00 30 00 00 00 00 00 00 00 04 00 03 0C 00 00 00  // .0..............
  08E0: 00 12 05 00 00 30 00 00 00 00 00 00 00 05 00 03  // .....0..........
  08F0: 0C 00 00 00 00 1F 05 00 00 30 00 00 00 00 00 00  // .........0......
  0900: 00 06 00 03 0C 05 00 00 00 14 05 00 00 30 00 00  // .............0..
  0910: 00 00 00 00 00 00 00 09 0C 00 00 00 00 13 05 00  // ................
  0920: 00 30 00 00 00 00 00 00 00 01 00 09 0C 00 00 00  // .0..............
  0930: 00 1E 05 00 00 30 00 00 00 00 00 00 00 02 00 09  // .....0..........
  0940: 0C 01 00 00 00 1C 05 00 00 30 00 00 00 00 00 00  // .........0......
  0950: 00 00 00 03 04 00 00 00 00 00 23 00 00 30 00 00  // ..........#..0..
  0960: 00 00 00 00 00 01 00 03 04 00 00 00 00 20 23 00  // ............. #.
  0970: 00 30 00 00 00 00 00 00 00 02 00 03 04 00 00 00  // .0..............
  0980: 00 40 23 00 00 30 00 00 00 00 00 00 00 00 00 09  // .@#..0..........
  0990: 04 00 00 00 00 01 23 00 00 30 00 00 00 00 00 00  // ......#..0......
  09A0: 00 01 00 09 04 00 00 00 00 05 23 00 00 30 00 00  // ..........#..0..
  09B0: 00 00 00 00 00 00 00 0A 04 00 00 00 00 03 23 00  // ..............#.
  09C0: 00 30 00 00 00 00 00 00 00 01 00 0A 04 00 00 00  // .0..............
  09D0: 00 23 23 00 00 30 00 00 00 00 00 00 00 00 00 0B  // .##..0..........
  09E0: 04 00 00 00 00 04 23 00 00 30 00 00 00 00 00 00  // ......#..0......
  09F0: 00 01 00 0B 04 00 00 00 00 24 23 00 00 30 00 00  // .........$#..0..
  0A00: 00 00 00 00 00 02 00 0B 04 00 00 00 00 44 23 00  // .............D#.
  0A10: 00 30 00 00 00 00 00 00 00 01 65 00 00 00 00 00  // .0........e.....
  0A20: 00 02 00 00 00 3D 00 00 00 00 00 00 00 00 00 00  // .....=..........
  0A30: 00 00 00 00 00 24 5C 5F 53 42 2E 4A 50 47 45 00  // .....$\_SB.JPGE.
  0A40: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  0A50: 00 00 00 00 00 00 00 00 03 02 00 00 00 00 00 21  // ...............!
  0A60: 00 00 30 00 00 00 00 00 00 00 01 00 03 02 00 00  // ..0.............
  0A70: 00 00 20 21 00 00 30 00 00 00 00 00 00 00 01 B1  // .. !..0.........
  0A80: 04 00 00 00 00 00 39 00 00 00 3D 00 00 00 00 00  // ......9...=.....
  0A90: 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E  // ..........$\_SB.
  0AA0: 41 52 50 43 00 00 00 00 00 00 00 00 00 00 00 00  // ARPC............
  0AB0: 00 00 00 00 00 00 00 00 00 00 00 10 00 03 17 00  // ................
  0AC0: 00 00 00 23 1B 00 00 30 00 00 00 00 00 00 00 11  // ...#...0........
  0AD0: 00 03 17 00 00 00 00 24 1B 00 00 30 00 00 00 00  // .......$...0....
  0AE0: 00 00 00 12 00 03 17 00 00 00 00 25 1B 00 00 30  // ...........%...0
  0AF0: 00 00 00 00 00 00 00 00 00 03 17 00 00 00 00 01  // ................
  0B00: 14 00 00 30 00 00 00 00 00 00 00 01 00 03 17 00  // ...0............
  0B10: 00 00 00 21 14 00 00 30 00 00 00 00 00 00 00 02  // ...!...0........
  0B20: 00 03 17 00 00 00 00 41 14 00 00 30 00 00 00 00  // .......A...0....
  0B30: 00 00 00 03 00 03 17 00 00 00 00 01 10 00 00 30  // ...............0
  0B40: 00 00 00 00 00 00 00 04 00 03 17 00 00 00 00 21  // ...............!
  0B50: 10 00 00 30 00 00 00 00 00 00 00 05 00 03 17 00  // ...0............
  0B60: 00 00 00 41 10 00 00 30 00 00 00 00 00 00 00 06  // ...A...0........
  0B70: 00 03 17 00 00 00 00 02 14 00 00 30 00 00 00 00  // ...........0....
  0B80: 00 00 00 07 00 03 17 00 00 00 00 22 14 00 00 30  // ..........."...0
  0B90: 00 00 00 00 00 00 00 08 00 03 17 00 00 00 00 42  // ...............B
  0BA0: 14 00 00 30 00 00 00 00 00 00 00 09 00 03 17 00  // ...0............
  0BB0: 00 00 00 02 10 00 00 30 00 00 00 00 00 00 00 0A  // .......0........
  0BC0: 00 03 17 00 00 00 00 22 10 00 00 30 00 00 00 00  // ......."...0....
  0BD0: 00 00 00 0B 00 03 17 00 00 00 00 42 10 00 00 30  // ...........B...0
  0BE0: 00 00 00 00 00 00 00 13 00 03 17 00 00 00 00 03  // ................
  0BF0: 14 00 00 30 00 00 00 00 00 00 00 14 00 03 17 00  // ...0............
  0C00: 00 00 00 23 14 00 00 30 00 00 00 00 00 00 00 15  // ...#...0........
  0C10: 00 03 17 00 00 00 00 43 14 00 00 30 00 00 00 00  // .......C...0....
  0C20: 00 00 00 16 00 03 17 00 00 00 00 03 10 00 00 30  // ...............0
  0C30: 00 00 00 00 00 00 00 17 00 03 17 00 00 00 00 23  // ...............#
  0C40: 10 00 00 30 00 00 00 00 00 00 00 18 00 03 17 00  // ...0............
  0C50: 00 00 00 43 10 00 00 30 00 00 00 00 00 00 00 19  // ...C...0........
  0C60: 00 03 17 00 00 00 00 04 14 00 00 30 00 00 00 00  // ...........0....
  0C70: 00 00 00 1A 00 03 17 00 00 00 00 24 14 00 00 30  // ...........$...0
  0C80: 00 00 00 00 00 00 00 1B 00 03 17 00 00 00 00 44  // ...............D
  0C90: 14 00 00 30 00 00 00 00 00 00 00 1C 00 03 17 00  // ...0............
  0CA0: 00 00 00 04 10 00 00 30 00 00 00 00 00 00 00 1D  // .......0........
  0CB0: 00 03 17 00 00 00 00 24 10 00 00 30 00 00 00 00  // .......$...0....
  0CC0: 00 00 00 1E 00 03 17 00 00 00 00 44 10 00 00 30  // ...........D...0
  0CD0: 00 00 00 00 00 00 00 1F 00 03 17 00 00 00 00 05  // ................
  0CE0: 14 00 00 30 00 00 00 00 00 00 00 20 00 03 17 00  // ...0....... ....
  0CF0: 00 00 00 25 14 00 00 30 00 00 00 00 00 00 00 21  // ...%...0.......!
  0D00: 00 03 17 00 00 00 00 45 14 00 00 30 00 00 00 00  // .......E...0....
  0D10: 00 00 00 22 00 03 17 00 00 00 00 05 10 00 00 30  // ..."...........0
  0D20: 00 00 00 00 00 00 00 23 00 03 17 00 00 00 00 25  // .......#.......%
  0D30: 10 00 00 30 00 00 00 00 00 00 00 24 00 03 17 00  // ...0.......$....
  0D40: 00 00 00 45 10 00 00 30 00 00 00 00 00 00 00 25  // ...E...0.......%
  0D50: 00 03 17 00 00 00 00 26 14 00 00 30 00 00 00 00  // .......&...0....
  0D60: 00 00 00 26 00 03 17 00 00 00 00 06 10 00 00 30  // ...&...........0
  0D70: 00 00 00 00 00 00 00 27 00 03 17 00 00 00 00 46  // .......'.......F
  0D80: 14 00 00 30 00 00 00 00 00 00 00 28 00 03 17 00  // ...0.......(....
  0D90: 00 00 00 26 10 00 00 30 00 00 00 00 00 00 00 29  // ...&...0.......)
  0DA0: 00 03 17 00 00 00 00 06 14 00 00 30 00 00 00 00  // ...........0....
  0DB0: 00 00 00 2A 00 03 17 00 00 00 00 46 10 00 00 30  // ...*.......F...0
  0DC0: 00 00 00 00 00 00 00 2B 00 03 17 00 00 00 00 07  // .......+........
  0DD0: 14 00 00 30 00 00 00 00 00 00 00 2C 00 03 17 00  // ...0.......,....
  0DE0: 00 00 00 27 14 00 00 30 00 00 00 00 00 00 00 2D  // ...'...0.......-
  0DF0: 00 03 17 00 00 00 00 47 14 00 00 30 00 00 00 00  // .......G...0....
  0E00: 00 00 00 2E 00 03 17 00 00 00 00 07 10 00 00 30  // ...............0
  0E10: 00 00 00 00 00 00 00 2F 00 03 17 00 00 00 00 27  // ......./.......'
  0E20: 10 00 00 30 00 00 00 00 00 00 00 30 00 03 17 00  // ...0.......0....
  0E30: 00 00 00 47 10 00 00 30 00 00 00 00 00 00 00 31  // ...G...0.......1
  0E40: 00 03 17 00 00 00 00 08 14 00 00 30 00 00 00 00  // ...........0....
  0E50: 00 00 00 32 00 03 17 00 00 00 00 28 14 00 00 30  // ...2.......(...0
  0E60: 00 00 00 00 00 00 00 33 00 03 17 00 00 00 00 48  // .......3.......H
  0E70: 14 00 00 30 00 00 00 00 00 00 00 34 00 03 17 00  // ...0.......4....
  0E80: 00 00 00 08 10 00 00 30 00 00 00 00 00 00 00 35  // .......0.......5
  0E90: 00 03 17 00 00 00 00 28 10 00 00 30 00 00 00 00  // .......(...0....
  0EA0: 00 00 00 36 00 03 17 00 00 00 00 48 10 00 00 30  // ...6.......H...0
  0EB0: 00 00 00 00 00 00 00 00 00 0A 17 00 00 00 00 09  // ................
  0EC0: 14 00 00 30 00 00 00 00 00 00 00 01 00 0A 17 00  // ...0............
  0ED0: 00 00 00 29 14 00 00 30 00 00 00 00 00 00 00 02  // ...)...0........
  0EE0: 00 0A 17 00 00 00 00 49 14 00 00 30 00 00 00 00  // .......I...0....
  0EF0: 00 00 00 03 00 0A 17 00 00 00 00 09 10 00 00 30  // ...............0
  0F00: 00 00 00 00 00 00 00 04 00 0A 17 00 00 00 00 29  // ...............)
  0F10: 10 00 00 30 00 00 00 00 00 00 00 05 00 0A 17 00  // ...0............
  0F20: 00 00 00 49 10 00 00 30 00 00 00 00 00 00 00 01  // ...I...0........
  0F30: 51 00 00 00 00 00 00 01 00 00 00 3D 00 00 00 00  // Q..........=....
  0F40: 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42  // ...........$\_SB
  0F50: 2E 49 50 41 00 00 00 00 00 00 00 00 00 00 00 00  // .IPA............
  0F60: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 0B  // ................
  0F70: 02 00 00 00 20 05 00 00 30 00 00 00 00 00 00 00  // .... ...0.......
  0F80: 01 51 00 00 00 00 00 00 01 00 00 00 3D 00 00 00  // .Q..........=...
  0F90: 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53  // ............$\_S
  0FA0: 42 2E 55 53 42 41 00 00 00 00 00 00 00 00 00 00  // B.USBA..........
  0FB0: 00 00 00 00 00 00 00 00 00 00 00 00 00 0A 00 03  // ................
  0FC0: 07 00 00 00 00 2F 1B 00 00 30 00 00 00 00 00 00  // ...../...0......
  0FD0: 00 01 8D 00 00 00 00 00 00 04 00 00 00 3D 00 00  // .............=..
  0FE0: 00 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F  // .............$\_
  0FF0: 53 42 2E 4E 50 55 30 00 00 00 00 00 00 00 00 00  // SB.NPU0.........
  1000: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  1010: 03 18 00 00 00 00 81 10 00 00 30 00 00 00 00 00  // ..........0.....
  1020: 00 00 01 00 03 18 00 00 00 00 81 14 00 00 30 00  // ..............0.
  1030: 00 00 00 00 00 00 00 00 0A 18 00 00 00 00 84 10  // ................
  1040: 00 00 30 00 00 00 00 00 00 00 01 00 0A 18 00 00  // ..0.............
  1050: 00 00 84 14 00 00 30 00 00 00 00 00 00 00 01 65  // ......0........e
  1060: 00 00 00 00 00 00 02 00 00 00 3D 00 00 00 00 00  // ..........=.....
  1070: 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E  // ..........$\_SB.
  1080: 51 44 53 53 00 00 00 00 00 00 00 00 00 00 00 00  // QDSS............
  1090: 00 00 00 00 00 00 00 00 00 00 00 00 00 03 89 00  // ................
  10A0: 00 00 00 A0 04 00 00 30 00 00 00 00 00 00 00 01  // .......0........
  10B0: 00 03 89 00 00 00 00 E0 05 00 00 30 00 00 00 00  // ...........0....
  10C0: 00 00 00 01 B5 00 00 00 00 00 00 06 00 00 00 3D  // ...............=
  10D0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24  // ...............$
  10E0: 5C 5F 53 42 2E 41 44 53 50 2E 53 4C 4D 31 2E 41  // \_SB.ADSP.SLM1.A
  10F0: 44 43 4D 00 00 00 00 00 00 00 00 00 00 00 00 00  // DCM.............
  1100: 00 00 03 07 00 00 00 00 21 1B 00 00 30 00 00 00  // ........!...0...
  1110: 00 00 00 00 01 00 03 07 00 00 00 00 46 1B 00 00  // ............F...
  1120: 30 00 00 00 00 00 00 00 02 00 03 07 04 00 00 00  // 0...............
  1130: 4D 1B 00 00 30 00 00 00 00 00 00 00 0B 00 03 07  // M...0...........
  1140: 00 00 00 00 53 1B 00 00 30 00 00 00 00 00 00 00  // ....S...0.......
  1150: 0C 00 03 07 00 00 00 00 58 1B 00 00 30 00 00 00  // ........X...0...
  1160: 00 00 00 00 0D 00 03 07 02 00 00 00 5C 1B 00 00  // ............\...
  1170: 30 00 00 00 00 00 00 00 01 51 00 00 00 00 00 00  // 0........Q......
  1180: 01 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00  // ....=...........
  1190: 00 00 00 00 24 5C 5F 53 42 2E 51 53 50 49 30 00  // ....$\_SB.QSPI0.
  11A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  11B0: 00 00 00 00 00 00 00 03 14 00 00 00 00 60 07 00  // .............`..
  11C0: 00 30 00 00 00 00 00 00 00 01 51 00 00 00 00 00  // .0........Q.....
  11D0: 00 01 00 00 00 3D 00 00 00 00 00 00 00 00 00 00  // .....=..........
  11E0: 00 00 00 00 00 24 5C 5F 53 42 2E 51 53 50 49 31  // .....$\_SB.QSPI1
  11F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  1200: 00 00 00 00 00 00 01 00 03 14 00 00 00 00 E0 07  // ................
  1210: 00 00 30 00 00 00 00 00 00 00 01 B5 00 00 00 00  // ..0.............
  1220: 00 00 06 00 00 00 3D 00 00 00 00 00 00 00 00 00  // ......=.........
  1230: 00 00 00 00 00 00 24 5C 5F 53 42 2E 51 55 50 00  // ......$\_SB.QUP.
  1240: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  1250: 00 00 00 00 00 00 00 00 00 03 13 00 00 00 00 D6  // ................
  1260: 04 00 00 30 00 00 00 00 00 00 00 01 00 03 13 00  // ...0............
  1270: 00 00 00 C3 04 00 00 30 00 00 00 00 00 00 00 00  // .......0........
  1280: 00 03 10 00 00 00 00 03 06 00 00 30 00 00 00 00  // ...........0....
  1290: 00 00 00 01 00 03 10 00 00 00 00 16 06 00 00 30  // ...............0
  12A0: 00 00 00 00 00 00 00 00 00 03 12 00 00 00 00 A3  // ................
  12B0: 07 00 00 30 00 00 00 00 00 00 00 01 00 03 12 00  // ...0............
  12C0: 00 00 00 B6 07 00 00 30 00 00 00 00 00 00 00 01  // .......0........
  12D0: 65 00 00 00 00 00 00 02 00 00 00 3D 00 00 00 00  // e..........=....
  12E0: 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42  // ...........$\_SB
  12F0: 2E 53 44 43 32 00 00 00 00 00 00 00 00 00 00 00  // .SDC2...........
  1300: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 86  // ................
  1310: 00 00 00 00 A0 06 00 00 30 00 00 00 00 00 00 00  // ........0.......
  1320: 01 00 03 86 00 00 00 00 C0 06 00 00 30 00 00 00  // ............0...
  1330: 00 00 00 00 01 65 00 00 00 00 00 00 02 00 00 00  // .....e..........
  1340: 3D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // =...............
  1350: 24 5C 5F 53 42 2E 53 45 4E 31 00 00 00 00 00 00  // $\_SB.SEN1......
  1360: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  1370: 00 00 00 03 85 00 00 00 00 E3 04 00 00 30 00 00  // .............0..
  1380: 00 00 00 00 00 01 00 03 85 02 00 00 00 A1 05 00  // ................
  1390: 00 30 00 00 00 00 00 00 00 01 51 00 00 00 00 00  // .0........Q.....
  13A0: 00 01 00 00 00 3D 00 00 00 00 00 00 00 00 00 00  // .....=..........
  13B0: 00 00 00 00 00 24 5C 5F 53 42 2E 54 53 43 35 00  // .....$\_SB.TSC5.
  13C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  13D0: 00 00 00 00 00 00 00 00 03 88 0F 00 00 00 20 06  // .............. .
  13E0: 00 00 30 00 00 00 00 00 00 00 01 79 00 00 00 00  // ..0........y....
  13F0: 00 00 03 00 00 00 3D 00 00 00 00 00 00 00 01 00  // ......=.........
  1400: 00 00 00 00 00 01 24 5C 5F 53 42 2E 55 46 53 30  // ......$\_SB.UFS0
  1410: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  1420: 00 00 00 00 00 00 00 00 00 03 81 00 00 00 00 00  // ................
  1430: 00 00 00 30 00 00 00 00 00 00 00 01 00 03 81 00  // ...0............
  1440: 00 00 00 E0 02 00 00 30 00 00 00 00 00 00 00 02  // .......0........
  1450: 00 03 81 00 00 00 00 00 03 00 00 30 00 00 00 00  // ...........0....
  1460: 00 00 00 01 51 00 00 00 00 00 00 01 00 00 00 3D  // ....Q..........=
  1470: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24  // ...............$
  1480: 5C 5F 53 42 2E 55 52 53 30 00 00 00 00 00 00 00  // \_SB.URS0.......
  1490: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  14A0: 00 00 03 80 00 00 00 00 40 01 00 00 30 00 00 00  // ........@...0...
  14B0: 00 00 00 00 01 51 00 00 00 00 00 00 01 00 00 00  // .....Q..........
  14C0: 3D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // =...............
  14D0: 24 5C 5F 53 42 2E 55 53 42 30 00 00 00 00 00 00  // $\_SB.USB0......
  14E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  14F0: 00 00 00 03 80 00 00 00 00 40 01 00 00 30 00 00  // .........@...0..
  1500: 00 00 00 00 00 01 51 00 00 00 00 00 00 01 00 00  // ......Q.........
  1510: 00 3D 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // .=..............
  1520: 00 24 5C 5F 53 42 2E 55 52 53 31 00 00 00 00 00  // .$\_SB.URS1.....
  1530: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  1540: 00 00 01 00 03 80 00 00 00 00 60 01 00 00 30 00  // ..........`...0.
  1550: 00 00 00 00 00 00 01 51 00 00 00 00 00 00 01 00  // .......Q........
  1560: 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00 00  // ..=.............
  1570: 00 00 24 5C 5F 53 42 2E 55 53 42 31 00 00 00 00  // ..$\_SB.USB1....
  1580: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  1590: 00 00 00 01 00 03 80 00 00 00 00 60 01 00 00 30  // ...........`...0
  15A0: 00 00 00 00 00 00 00 01 51 00 00 00 00 00 00 01  // ........Q.......
  15B0: 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00  // ...=............
  15C0: 00 00 00 24 5C 5F 53 42 2E 55 52 53 32 00 00 00  // ...$\_SB.URS2...
  15D0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  15E0: 00 00 00 00 02 00 03 80 00 00 00 00 60 00 00 00  // ............`...
  15F0: 30 00 00 00 00 00 00 00 01 51 00 00 00 00 00 00  // 0........Q......
  1600: 01 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00  // ....=...........
  1610: 00 00 00 00 24 5C 5F 53 42 2E 55 53 42 32 00 00  // ....$\_SB.USB2..
  1620: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  1630: 00 00 00 00 00 02 00 03 80 00 00 00 00 60 00 00  // .............`..
  1640: 00 30 00 00 00 00 00 00 00 01 A9 02 00 00 00 00  // .0..............
  1650: 00 1F 00 00 00 3D 00 00 00 00 00 00 00 00 00 00  // .....=..........
  1660: 00 00 00 00 00 24 5C 5F 53 42 2E 47 50 55 30 2E  // .....$\_SB.GPU0.
  1670: 41 56 53 30 00 00 00 00 00 00 00 00 00 00 00 00  // AVS0............
  1680: 00 00 00 00 00 00 00 00 03 01 00 00 00 00 C0 20  // ............... 
  1690: 00 00 30 00 00 00 00 00 00 00 01 00 03 01 00 00  // ..0.............
  16A0: 00 00 C0 23 00 00 30 00 00 00 00 00 00 00 02 00  // ...#..0.........
  16B0: 03 01 00 00 00 00 00 20 00 00 30 00 00 00 00 00  // ....... ..0.....
  16C0: 00 00 03 00 03 01 00 00 00 00 40 21 00 00 30 00  // ..........@!..0.
  16D0: 00 00 00 00 00 00 04 00 03 01 00 00 00 00 60 21  // ..............`!
  16E0: 00 00 30 00 00 00 00 00 00 00 05 00 03 01 00 00  // ..0.............
  16F0: 00 00 42 20 00 00 30 00 00 00 00 00 00 00 06 00  // ..B ..0.........
  1700: 03 01 00 00 00 00 00 0A 00 00 30 00 00 00 00 00  // ..........0.....
  1710: 00 00 07 00 03 01 00 00 00 00 20 0A 00 00 30 00  // .......... ...0.
  1720: 00 00 00 00 00 00 08 00 03 01 00 00 00 00 40 0A  // ..............@.
  1730: 00 00 30 00 00 00 00 00 00 00 09 00 03 01 00 00  // ..0.............
  1740: 00 00 60 0A 00 00 30 00 00 00 00 00 00 00 0A 00  // ..`...0.........
  1750: 03 01 00 00 00 00 80 0A 00 00 30 00 00 00 00 00  // ..........0.....
  1760: 00 00 0B 00 03 01 00 00 00 00 A0 0A 00 00 30 00  // ..............0.
  1770: 00 00 00 00 00 00 0C 00 03 01 00 00 00 00 C0 0A  // ................
  1780: 00 00 30 00 00 00 00 00 00 00 0D 00 03 01 00 00  // ..0.............
  1790: 00 00 E0 0A 00 00 30 00 00 00 00 00 00 00 0E 00  // ......0.........
  17A0: 03 01 00 00 00 00 00 0E 00 00 30 00 00 00 00 00  // ..........0.....
  17B0: 00 00 0F 00 03 01 00 00 00 00 20 0E 00 00 30 00  // .......... ...0.
  17C0: 00 00 00 00 00 00 10 00 03 01 00 00 00 00 40 0E  // ..............@.
  17D0: 00 00 30 00 00 00 00 00 00 00 11 00 03 01 00 00  // ..0.............
  17E0: 00 00 60 0E 00 00 30 00 00 00 00 00 00 00 12 00  // ..`...0.........
  17F0: 03 01 00 00 00 00 80 0E 00 00 30 00 00 00 00 00  // ..........0.....
  1800: 00 00 13 00 03 01 00 00 00 00 A0 0E 00 00 30 00  // ..............0.
  1810: 00 00 00 00 00 00 14 00 03 01 00 00 00 00 C0 0E  // ................
  1820: 00 00 30 00 00 00 00 00 00 00 15 00 03 01 00 00  // ..0.............
  1830: 00 00 E0 0E 00 00 30 00 00 00 00 00 00 00 16 00  // ......0.........
  1840: 03 01 00 00 00 00 80 20 00 00 30 00 00 00 00 00  // ....... ..0.....
  1850: 00 00 17 00 03 01 00 00 00 00 A0 20 00 00 30 00  // ........... ..0.
  1860: 00 00 00 00 00 00 18 00 03 01 00 00 00 00 80 23  // ...............#
  1870: 00 00 30 00 00 00 00 00 00 00 19 00 03 01 00 00  // ..0.............
  1880: 00 00 A0 23 00 00 30 00 00 00 00 00 00 00 1A 00  // ...#..0.........
  1890: 03 01 00 00 00 00 E0 20 00 00 30 00 00 00 00 00  // ....... ..0.....
  18A0: 00 00 1B 00 03 01 00 00 00 00 E0 23 00 00 30 00  // ...........#..0.
  18B0: 00 00 00 00 00 00 00 00 0D 01 00 00 00 00 29 10  // ..............).
  18C0: 00 00 30 00 00 00 00 00 00 00 01 00 0D 01 00 00  // ..0.............
  18D0: 00 00 31 10 00 00 30 00 00 00 00 00 00 00 02 00  // ..1...0.........
  18E0: 0D 01 00 00 00 00 39 10 00 00 30 00 00 00 00 00  // ......9...0.....
  18F0: 00 00 01 51 00 00 00 00 00 00 01 00 00 00 3D 00  // ...Q..........=.
  1900: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24 5C  // ..............$\
  1910: 5F 53 42 2E 41 4D 53 53 2E 51 57 4C 4E 00 00 00  // _SB.AMSS.QWLN...
  1920: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  1930: 00 03 11 01 00 00 00 40 06 00 00 30 00 00 00 00  // .......@...0....
  1940: 00 00 00                                         // ...
