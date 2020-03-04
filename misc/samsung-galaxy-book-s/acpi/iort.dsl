/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181213 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembly of iort.dat, Wed Mar  4 23:52:10 2020
 *
 * ACPI Data Table [IORT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "IORT"    [IO Remapping Table]
[004h 0004   4]                 Table Length : 0000169C
[008h 0008   1]                     Revision : 00
[009h 0009   1]                     Checksum : 3A
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00008180
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   4]                   Node Count : 0000001B
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
[590h 1424   1]            Memory Size Limit : 00
[591h 1425   3]                     Reserved : 870300

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
[A7Fh 2687   2]                       Length : 00B5
[A81h 2689   1]                     Revision : 00
[A82h 2690   4]                     Reserved : 00000000
[A86h 2694   4]                Mapping Count : 00000006
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
[A9Bh 2715  10]                  Device Name : "\_SB.CDSP"
[AA5h 2725 142]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 0A 83 00 00 00 00 29 10 \
    00 00 30 00 00 00 00 00 00 00 01 00 0A 83 00 00 \
    00 00 29 14 00 00 30 00 00 00 00 00 00 00 00 00 \
    03 84 07 00 00 00 01 10 00 00 30 00 00 00 00 00 \
    00 00 00 00 0A 84 00 00 00 00 09 10 00 00 30 00 \
    00 00 00 00 00 00 08 00 03 84 07 00 00 00 01 14 \
    00 00 30 00 00 00 00 00 00 00 01 00 0A 84 00 00 \
    00 00 09 14 00 00 30 00 00 00 00 00 00 00 

[ABBh 2747   4]                   Input base : 830A0000
[ABFh 2751   4]                     ID Count : 00000000
[AC3h 2755   4]                  Output Base : 00001029
[AC7h 2759   4]             Output Reference : 00000030
[ACBh 2763   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[ACFh 2767   4]                   Input base : 830A0001
[AD3h 2771   4]                     ID Count : 00000000
[AD7h 2775   4]                  Output Base : 00001429
[ADBh 2779   4]             Output Reference : 00000030
[ADFh 2783   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AE3h 2787   4]                   Input base : 84030000
[AE7h 2791   4]                     ID Count : 00000007
[AEBh 2795   4]                  Output Base : 00001001
[AEFh 2799   4]             Output Reference : 00000030
[AF3h 2803   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AF7h 2807   4]                   Input base : 840A0000
[AFBh 2811   4]                     ID Count : 00000000
[AFFh 2815   4]                  Output Base : 00001009
[B03h 2819   4]             Output Reference : 00000030
[B07h 2823   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B0Bh 2827   4]                   Input base : 84030008
[B0Fh 2831   4]                     ID Count : 00000007
[B13h 2835   4]                  Output Base : 00001401
[B17h 2839   4]             Output Reference : 00000030
[B1Bh 2843   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B1Fh 2847   4]                   Input base : 840A0001
[B23h 2851   4]                     ID Count : 00000000
[B27h 2855   4]                  Output Base : 00001409
[B2Bh 2859   4]             Output Reference : 00000030
[B2Fh 2863   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B33h 2867   1]                         Type : 01
[B34h 2868   2]                       Length : 0155
[B36h 2870   1]                     Revision : 00
[B37h 2871   4]                     Reserved : 00000000
[B3Bh 2875   4]                Mapping Count : 0000000E
[B3Fh 2879   4]               Mapping Offset : 0000003D

[B43h 2883   4]                   Node Flags : 00000000
[B47h 2887   8]            Memory Properties : [IORT Memory Access Properties]
[B47h 2887   4]              Cache Coherency : 00000000
[B4Bh 2891   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[B4Ch 2892   2]                     Reserved : 0000
[B4Eh 2894   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[B4Fh 2895   1]            Memory Size Limit : 24
[B50h 2896  10]                  Device Name : "\_SB.ARPC"
[B5Ah 2906 302]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 10 00 03 17 00 00 00 00 23 1B \
    00 00 30 00 00 00 00 00 00 00 11 00 03 17 00 00 \
    00 00 24 1B 00 00 30 00 00 00 00 00 00 00 12 00 \
    03 17 00 00 00 00 25 1B 00 00 30 00 00 00 00 00 \
    00 00 00 00 03 17 00 00 00 00 41 14 00 00 30 00 \
    00 00 00 00 00 00 01 00 03 17 00 00 00 00 42 14 \
    00 00 30 00 00 00 00 00 00 00 02 00 03 17 00 00 \
    00 00 43 14 00 00 30 00 00 00 00 00 00 00 03 00 \
    03 17 00 00 00 00 44 14 00 00 30 00 00 00 00 00 \
    00 00 04 00 03 17 00 00 00 00 45 14 00 00 30 00 \
    00 00 00 00 00 00 05 00 03 17 00 00 00 00 46 14 \
    00 00 30 00 00 00 00 00 00 00 06 00 03 17 00 00 \
    00 00 47 14 00 00 30 00 00 00 00 00 00 00 07 00 \
    03 17 00 00 00 00 48 14 00 00 30 00 00 00 00 00 \
    00 00 08 00 03 17 07 00 00 00 41 10 00 00 30 00 \
    00 00 00 00 00 00 00 00 0A 17 00 00 00 00 49 14 \
    00 00 30 00 00 00 00 00 00 00 01 00 0A 17 00 00 \
    00 00 49 10 00 00 30 00 00 00 00 00 00 00 

[B70h 2928   4]                   Input base : 17030010
[B74h 2932   4]                     ID Count : 00000000
[B78h 2936   4]                  Output Base : 00001B23
[B7Ch 2940   4]             Output Reference : 00000030
[B80h 2944   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B84h 2948   4]                   Input base : 17030011
[B88h 2952   4]                     ID Count : 00000000
[B8Ch 2956   4]                  Output Base : 00001B24
[B90h 2960   4]             Output Reference : 00000030
[B94h 2964   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B98h 2968   4]                   Input base : 17030012
[B9Ch 2972   4]                     ID Count : 00000000
[BA0h 2976   4]                  Output Base : 00001B25
[BA4h 2980   4]             Output Reference : 00000030
[BA8h 2984   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BACh 2988   4]                   Input base : 17030000
[BB0h 2992   4]                     ID Count : 00000000
[BB4h 2996   4]                  Output Base : 00001441
[BB8h 3000   4]             Output Reference : 00000030
[BBCh 3004   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BC0h 3008   4]                   Input base : 17030001
[BC4h 3012   4]                     ID Count : 00000000
[BC8h 3016   4]                  Output Base : 00001442
[BCCh 3020   4]             Output Reference : 00000030
[BD0h 3024   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BD4h 3028   4]                   Input base : 17030002
[BD8h 3032   4]                     ID Count : 00000000
[BDCh 3036   4]                  Output Base : 00001443
[BE0h 3040   4]             Output Reference : 00000030
[BE4h 3044   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BE8h 3048   4]                   Input base : 17030003
[BECh 3052   4]                     ID Count : 00000000
[BF0h 3056   4]                  Output Base : 00001444
[BF4h 3060   4]             Output Reference : 00000030
[BF8h 3064   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BFCh 3068   4]                   Input base : 17030004
[C00h 3072   4]                     ID Count : 00000000
[C04h 3076   4]                  Output Base : 00001445
[C08h 3080   4]             Output Reference : 00000030
[C0Ch 3084   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C10h 3088   4]                   Input base : 17030005
[C14h 3092   4]                     ID Count : 00000000
[C18h 3096   4]                  Output Base : 00001446
[C1Ch 3100   4]             Output Reference : 00000030
[C20h 3104   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C24h 3108   4]                   Input base : 17030006
[C28h 3112   4]                     ID Count : 00000000
[C2Ch 3116   4]                  Output Base : 00001447
[C30h 3120   4]             Output Reference : 00000030
[C34h 3124   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C38h 3128   4]                   Input base : 17030007
[C3Ch 3132   4]                     ID Count : 00000000
[C40h 3136   4]                  Output Base : 00001448
[C44h 3140   4]             Output Reference : 00000030
[C48h 3144   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C4Ch 3148   4]                   Input base : 17030008
[C50h 3152   4]                     ID Count : 00000007
[C54h 3156   4]                  Output Base : 00001041
[C58h 3160   4]             Output Reference : 00000030
[C5Ch 3164   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C60h 3168   4]                   Input base : 170A0000
[C64h 3172   4]                     ID Count : 00000000
[C68h 3176   4]                  Output Base : 00001449
[C6Ch 3180   4]             Output Reference : 00000030
[C70h 3184   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C74h 3188   4]                   Input base : 170A0001
[C78h 3192   4]                     ID Count : 00000000
[C7Ch 3196   4]                  Output Base : 00001049
[C80h 3200   4]             Output Reference : 00000030
[C84h 3204   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C88h 3208   1]                         Type : 01
[C89h 3209   2]                       Length : 0051
[C8Bh 3211   1]                     Revision : 00
[C8Ch 3212   4]                     Reserved : 00000000
[C90h 3216   4]                Mapping Count : 00000001
[C94h 3220   4]               Mapping Offset : 0000003D

[C98h 3224   4]                   Node Flags : 00000000
[C9Ch 3228   8]            Memory Properties : [IORT Memory Access Properties]
[C9Ch 3228   4]              Cache Coherency : 00000000
[CA0h 3232   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[CA1h 3233   2]                     Reserved : 0000
[CA3h 3235   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[CA4h 3236   1]            Memory Size Limit : 24
[CA5h 3237   9]                  Device Name : "\_SB.IPA"
[CAEh 3246  43]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 03 0B 02 00 00 00 20 \
    05 00 00 30 00 00 00 00 00 00 00 

[CC5h 3269   4]                   Input base : 0B030000
[CC9h 3273   4]                     ID Count : 00000002
[CCDh 3277   4]                  Output Base : 00000520
[CD1h 3281   4]             Output Reference : 00000030
[CD5h 3285   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[CD9h 3289   1]                         Type : 01
[CDAh 3290   2]                       Length : 0051
[CDCh 3292   1]                     Revision : 00
[CDDh 3293   4]                     Reserved : 00000000
[CE1h 3297   4]                Mapping Count : 00000001
[CE5h 3301   4]               Mapping Offset : 0000003D

[CE9h 3305   4]                   Node Flags : 00000000
[CEDh 3309   8]            Memory Properties : [IORT Memory Access Properties]
[CEDh 3309   4]              Cache Coherency : 00000000
[CF1h 3313   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[CF2h 3314   2]                     Reserved : 0000
[CF4h 3316   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[CF5h 3317   1]            Memory Size Limit : 24
[CF6h 3318  10]                  Device Name : "\_SB.USBA"
[D00h 3328  42]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 0A 00 03 07 00 00 00 00 2F 1B \
    00 00 30 00 00 00 00 00 00 00 

[D16h 3350   4]                   Input base : 0703000A
[D1Ah 3354   4]                     ID Count : 00000000
[D1Eh 3358   4]                  Output Base : 00001B2F
[D22h 3362   4]             Output Reference : 00000030
[D26h 3366   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D2Ah 3370   1]                         Type : 01
[D2Bh 3371   2]                       Length : 008D
[D2Dh 3373   1]                     Revision : 00
[D2Eh 3374   4]                     Reserved : 00000000
[D32h 3378   4]                Mapping Count : 00000004
[D36h 3382   4]               Mapping Offset : 0000003D

[D3Ah 3386   4]                   Node Flags : 00000000
[D3Eh 3390   8]            Memory Properties : [IORT Memory Access Properties]
[D3Eh 3390   4]              Cache Coherency : 00000000
[D42h 3394   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[D43h 3395   2]                     Reserved : 0000
[D45h 3397   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[D46h 3398   1]            Memory Size Limit : 24
[D47h 3399  10]                  Device Name : "\_SB.NPU0"
[D51h 3409 102]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 18 00 00 00 00 81 10 \
    00 00 30 00 00 00 00 00 00 00 01 00 03 18 00 00 \
    00 00 81 14 00 00 30 00 00 00 00 00 00 00 00 00 \
    0A 18 00 00 00 00 84 10 00 00 30 00 00 00 00 00 \
    00 00 01 00 0A 18 00 00 00 00 84 14 00 00 30 00 \
    00 00 00 00 00 00 

[D67h 3431   4]                   Input base : 18030000
[D6Bh 3435   4]                     ID Count : 00000000
[D6Fh 3439   4]                  Output Base : 00001081
[D73h 3443   4]             Output Reference : 00000030
[D77h 3447   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D7Bh 3451   4]                   Input base : 18030001
[D7Fh 3455   4]                     ID Count : 00000000
[D83h 3459   4]                  Output Base : 00001481
[D87h 3463   4]             Output Reference : 00000030
[D8Bh 3467   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D8Fh 3471   4]                   Input base : 180A0000
[D93h 3475   4]                     ID Count : 00000000
[D97h 3479   4]                  Output Base : 00001084
[D9Bh 3483   4]             Output Reference : 00000030
[D9Fh 3487   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DA3h 3491   4]                   Input base : 180A0001
[DA7h 3495   4]                     ID Count : 00000000
[DABh 3499   4]                  Output Base : 00001484
[DAFh 3503   4]             Output Reference : 00000030
[DB3h 3507   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DB7h 3511   1]                         Type : 01
[DB8h 3512   2]                       Length : 0065
[DBAh 3514   1]                     Revision : 00
[DBBh 3515   4]                     Reserved : 00000000
[DBFh 3519   4]                Mapping Count : 00000002
[DC3h 3523   4]               Mapping Offset : 0000003D

[DC7h 3527   4]                   Node Flags : 00000000
[DCBh 3531   8]            Memory Properties : [IORT Memory Access Properties]
[DCBh 3531   4]              Cache Coherency : 00000000
[DCFh 3535   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[DD0h 3536   2]                     Reserved : 0000
[DD2h 3538   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[DD3h 3539   1]            Memory Size Limit : 24
[DD4h 3540  10]                  Device Name : "\_SB.QDSS"
[DDEh 3550  62]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 89 00 00 00 00 A0 04 \
    00 00 30 00 00 00 00 00 00 00 01 00 03 89 00 00 \
    00 00 E0 05 00 00 30 00 00 00 00 00 00 00 

[DF4h 3572   4]                   Input base : 89030000
[DF8h 3576   4]                     ID Count : 00000000
[DFCh 3580   4]                  Output Base : 000004A0
[E00h 3584   4]             Output Reference : 00000030
[E04h 3588   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E08h 3592   4]                   Input base : 89030001
[E0Ch 3596   4]                     ID Count : 00000000
[E10h 3600   4]                  Output Base : 000005E0
[E14h 3604   4]             Output Reference : 00000030
[E18h 3608   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E1Ch 3612   1]                         Type : 01
[E1Dh 3613   2]                       Length : 00B5
[E1Fh 3615   1]                     Revision : 00
[E20h 3616   4]                     Reserved : 00000000
[E24h 3620   4]                Mapping Count : 00000006
[E28h 3624   4]               Mapping Offset : 0000003D

[E2Ch 3628   4]                   Node Flags : 00000000
[E30h 3632   8]            Memory Properties : [IORT Memory Access Properties]
[E30h 3632   4]              Cache Coherency : 00000000
[E34h 3636   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[E35h 3637   2]                     Reserved : 0000
[E37h 3639   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[E38h 3640   1]            Memory Size Limit : 24
[E39h 3641  20]                  Device Name : "\_SB.ADSP.SLM1.ADCM"
[E4Dh 3661 132]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 07 \
    00 00 00 00 21 1B 00 00 30 00 00 00 00 00 00 00 \
    01 00 03 07 00 00 00 00 46 1B 00 00 30 00 00 00 \
    00 00 00 00 02 00 03 07 04 00 00 00 4D 1B 00 00 \
    30 00 00 00 00 00 00 00 0B 00 03 07 00 00 00 00 \
    53 1B 00 00 30 00 00 00 00 00 00 00 0C 00 03 07 \
    00 00 00 00 58 1B 00 00 30 00 00 00 00 00 00 00 \
    0D 00 03 07 02 00 00 00 5C 1B 00 00 30 00 00 00 \
    00 00 00 00 

[E59h 3673   4]                   Input base : 07030000
[E5Dh 3677   4]                     ID Count : 00000000
[E61h 3681   4]                  Output Base : 00001B21
[E65h 3685   4]             Output Reference : 00000030
[E69h 3689   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E6Dh 3693   4]                   Input base : 07030001
[E71h 3697   4]                     ID Count : 00000000
[E75h 3701   4]                  Output Base : 00001B46
[E79h 3705   4]             Output Reference : 00000030
[E7Dh 3709   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E81h 3713   4]                   Input base : 07030002
[E85h 3717   4]                     ID Count : 00000004
[E89h 3721   4]                  Output Base : 00001B4D
[E8Dh 3725   4]             Output Reference : 00000030
[E91h 3729   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E95h 3733   4]                   Input base : 0703000B
[E99h 3737   4]                     ID Count : 00000000
[E9Dh 3741   4]                  Output Base : 00001B53
[EA1h 3745   4]             Output Reference : 00000030
[EA5h 3749   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[EA9h 3753   4]                   Input base : 0703000C
[EADh 3757   4]                     ID Count : 00000000
[EB1h 3761   4]                  Output Base : 00001B58
[EB5h 3765   4]             Output Reference : 00000030
[EB9h 3769   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[EBDh 3773   4]                   Input base : 0703000D
[EC1h 3777   4]                     ID Count : 00000002
[EC5h 3781   4]                  Output Base : 00001B5C
[EC9h 3785   4]             Output Reference : 00000030
[ECDh 3789   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[ED1h 3793   1]                         Type : 01
[ED2h 3794   2]                       Length : 0051
[ED4h 3796   1]                     Revision : 00
[ED5h 3797   4]                     Reserved : 00000000
[ED9h 3801   4]                Mapping Count : 00000001
[EDDh 3805   4]               Mapping Offset : 0000003D

[EE1h 3809   4]                   Node Flags : 00000000
[EE5h 3813   8]            Memory Properties : [IORT Memory Access Properties]
[EE5h 3813   4]              Cache Coherency : 00000000
[EE9h 3817   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[EEAh 3818   2]                     Reserved : 0000
[EECh 3820   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[EEDh 3821   1]            Memory Size Limit : 24
[EEEh 3822  11]                  Device Name : "\_SB.QSPI0"
[EF9h 3833  41]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 03 14 00 00 00 00 60 07 00 \
    00 30 00 00 00 00 00 00 00 

[F0Eh 3854   4]                   Input base : 14030000
[F12h 3858   4]                     ID Count : 00000000
[F16h 3862   4]                  Output Base : 00000760
[F1Ah 3866   4]             Output Reference : 00000030
[F1Eh 3870   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[F22h 3874   1]                         Type : 01
[F23h 3875   2]                       Length : 0051
[F25h 3877   1]                     Revision : 00
[F26h 3878   4]                     Reserved : 00000000
[F2Ah 3882   4]                Mapping Count : 00000001
[F2Eh 3886   4]               Mapping Offset : 0000003D

[F32h 3890   4]                   Node Flags : 00000000
[F36h 3894   8]            Memory Properties : [IORT Memory Access Properties]
[F36h 3894   4]              Cache Coherency : 00000000
[F3Ah 3898   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[F3Bh 3899   2]                     Reserved : 0000
[F3Dh 3901   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[F3Eh 3902   1]            Memory Size Limit : 24
[F3Fh 3903  11]                  Device Name : "\_SB.QSPI1"
[F4Ah 3914  41]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 01 00 03 14 00 00 00 00 E0 07 00 \
    00 30 00 00 00 00 00 00 00 

[F5Fh 3935   4]                   Input base : 14030001
[F63h 3939   4]                     ID Count : 00000000
[F67h 3943   4]                  Output Base : 000007E0
[F6Bh 3947   4]             Output Reference : 00000030
[F6Fh 3951   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[F73h 3955   1]                         Type : 01
[F74h 3956   2]                       Length : 00B5
[F76h 3958   1]                     Revision : 00
[F77h 3959   4]                     Reserved : 00000000
[F7Bh 3963   4]                Mapping Count : 00000006
[F7Fh 3967   4]               Mapping Offset : 0000003D

[F83h 3971   4]                   Node Flags : 00000000
[F87h 3975   8]            Memory Properties : [IORT Memory Access Properties]
[F87h 3975   4]              Cache Coherency : 00000000
[F8Bh 3979   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[F8Ch 3980   2]                     Reserved : 0000
[F8Eh 3982   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[F8Fh 3983   1]            Memory Size Limit : 24
[F90h 3984   9]                  Device Name : "\_SB.QUP"
[F99h 3993 143]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 03 13 00 00 00 00 D6 \
    04 00 00 30 00 00 00 00 00 00 00 01 00 03 13 00 \
    00 00 00 C3 04 00 00 30 00 00 00 00 00 00 00 00 \
    00 03 10 00 00 00 00 03 06 00 00 30 00 00 00 00 \
    00 00 00 01 00 03 10 00 00 00 00 16 06 00 00 30 \
    00 00 00 00 00 00 00 00 00 03 12 00 00 00 00 A3 \
    07 00 00 30 00 00 00 00 00 00 00 01 00 03 12 00 \
    00 00 00 B6 07 00 00 30 00 00 00 00 00 00 00 

[FB0h 4016   4]                   Input base : 13030000
[FB4h 4020   4]                     ID Count : 00000000
[FB8h 4024   4]                  Output Base : 000004D6
[FBCh 4028   4]             Output Reference : 00000030
[FC0h 4032   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[FC4h 4036   4]                   Input base : 13030001
[FC8h 4040   4]                     ID Count : 00000000
[FCCh 4044   4]                  Output Base : 000004C3
[FD0h 4048   4]             Output Reference : 00000030
[FD4h 4052   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[FD8h 4056   4]                   Input base : 10030000
[FDCh 4060   4]                     ID Count : 00000000
[FE0h 4064   4]                  Output Base : 00000603
[FE4h 4068   4]             Output Reference : 00000030
[FE8h 4072   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[FECh 4076   4]                   Input base : 10030001
[FF0h 4080   4]                     ID Count : 00000000
[FF4h 4084   4]                  Output Base : 00000616
[FF8h 4088   4]             Output Reference : 00000030
[FFCh 4092   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1000h 4096   4]                   Input base : 12030000
[1004h 4100   4]                     ID Count : 00000000
[1008h 4104   4]                  Output Base : 000007A3
[100Ch 4108   4]             Output Reference : 00000030
[1010h 4112   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1014h 4116   4]                   Input base : 12030001
[1018h 4120   4]                     ID Count : 00000000
[101Ch 4124   4]                  Output Base : 000007B6
[1020h 4128   4]             Output Reference : 00000030
[1024h 4132   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1028h 4136   1]                         Type : 01
[1029h 4137   2]                       Length : 0065
[102Bh 4139   1]                     Revision : 00
[102Ch 4140   4]                     Reserved : 00000000
[1030h 4144   4]                Mapping Count : 00000002
[1034h 4148   4]               Mapping Offset : 0000003D

[1038h 4152   4]                   Node Flags : 00000000
[103Ch 4156   8]            Memory Properties : [IORT Memory Access Properties]
[103Ch 4156   4]              Cache Coherency : 00000000
[1040h 4160   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1041h 4161   2]                     Reserved : 0000
[1043h 4163   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1044h 4164   1]            Memory Size Limit : 24
[1045h 4165  10]                  Device Name : "\_SB.SDC2"
[104Fh 4175  62]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 86 00 00 00 00 A0 06 \
    00 00 30 00 00 00 00 00 00 00 01 00 03 86 00 00 \
    00 00 C0 06 00 00 30 00 00 00 00 00 00 00 

[1065h 4197   4]                   Input base : 86030000
[1069h 4201   4]                     ID Count : 00000000
[106Dh 4205   4]                  Output Base : 000006A0
[1071h 4209   4]             Output Reference : 00000030
[1075h 4213   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1079h 4217   4]                   Input base : 86030001
[107Dh 4221   4]                     ID Count : 00000000
[1081h 4225   4]                  Output Base : 000006C0
[1085h 4229   4]             Output Reference : 00000030
[1089h 4233   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[108Dh 4237   1]                         Type : 01
[108Eh 4238   2]                       Length : 0065
[1090h 4240   1]                     Revision : 00
[1091h 4241   4]                     Reserved : 00000000
[1095h 4245   4]                Mapping Count : 00000002
[1099h 4249   4]               Mapping Offset : 0000003D

[109Dh 4253   4]                   Node Flags : 00000000
[10A1h 4257   8]            Memory Properties : [IORT Memory Access Properties]
[10A1h 4257   4]              Cache Coherency : 00000000
[10A5h 4261   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[10A6h 4262   2]                     Reserved : 0000
[10A8h 4264   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[10A9h 4265   1]            Memory Size Limit : 24
[10AAh 4266  10]                  Device Name : "\_SB.SEN1"
[10B4h 4276  62]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 85 00 00 00 00 E3 04 \
    00 00 30 00 00 00 00 00 00 00 01 00 03 85 02 00 \
    00 00 A1 05 00 00 30 00 00 00 00 00 00 00 

[10CAh 4298   4]                   Input base : 85030000
[10CEh 4302   4]                     ID Count : 00000000
[10D2h 4306   4]                  Output Base : 000004E3
[10D6h 4310   4]             Output Reference : 00000030
[10DAh 4314   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[10DEh 4318   4]                   Input base : 85030001
[10E2h 4322   4]                     ID Count : 00000002
[10E6h 4326   4]                  Output Base : 000005A1
[10EAh 4330   4]             Output Reference : 00000030
[10EEh 4334   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[10F2h 4338   1]                         Type : 01
[10F3h 4339   2]                       Length : 0051
[10F5h 4341   1]                     Revision : 00
[10F6h 4342   4]                     Reserved : 00000000
[10FAh 4346   4]                Mapping Count : 00000001
[10FEh 4350   4]               Mapping Offset : 0000003D

[1102h 4354   4]                   Node Flags : 00000000
[1106h 4358   8]            Memory Properties : [IORT Memory Access Properties]
[1106h 4358   4]              Cache Coherency : 00000000
[110Ah 4362   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[110Bh 4363   2]                     Reserved : 0000
[110Dh 4365   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[110Eh 4366   1]            Memory Size Limit : 24
[110Fh 4367  10]                  Device Name : "\_SB.TSC5"
[1119h 4377  42]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 88 0F 00 00 00 20 06 \
    00 00 30 00 00 00 00 00 00 00 

[112Fh 4399   4]                   Input base : 88030000
[1133h 4403   4]                     ID Count : 0000000F
[1137h 4407   4]                  Output Base : 00000620
[113Bh 4411   4]             Output Reference : 00000030
[113Fh 4415   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1143h 4419   1]                         Type : 01
[1144h 4420   2]                       Length : 0079
[1146h 4422   1]                     Revision : 00
[1147h 4423   4]                     Reserved : 00000000
[114Bh 4427   4]                Mapping Count : 00000003
[114Fh 4431   4]               Mapping Offset : 0000003D

[1153h 4435   4]                   Node Flags : 00000000
[1157h 4439   8]            Memory Properties : [IORT Memory Access Properties]
[1157h 4439   4]              Cache Coherency : 00000001
[115Bh 4443   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[115Ch 4444   2]                     Reserved : 0000
[115Eh 4446   1] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[115Fh 4447   1]            Memory Size Limit : 24
[1160h 4448  10]                  Device Name : "\_SB.UFS0"
[116Ah 4458  82]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 81 00 00 00 00 00 00 \
    00 00 30 00 00 00 00 00 00 00 01 00 03 81 00 00 \
    00 00 E0 02 00 00 30 00 00 00 00 00 00 00 02 00 \
    03 81 00 00 00 00 00 03 00 00 30 00 00 00 00 00 \
    00 00 

[1180h 4480   4]                   Input base : 81030000
[1184h 4484   4]                     ID Count : 00000000
[1188h 4488   4]                  Output Base : 00000000
[118Ch 4492   4]             Output Reference : 00000030
[1190h 4496   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1194h 4500   4]                   Input base : 81030001
[1198h 4504   4]                     ID Count : 00000000
[119Ch 4508   4]                  Output Base : 000002E0
[11A0h 4512   4]             Output Reference : 00000030
[11A4h 4516   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[11A8h 4520   4]                   Input base : 81030002
[11ACh 4524   4]                     ID Count : 00000000
[11B0h 4528   4]                  Output Base : 00000300
[11B4h 4532   4]             Output Reference : 00000030
[11B8h 4536   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[11BCh 4540   1]                         Type : 01
[11BDh 4541   2]                       Length : 0051
[11BFh 4543   1]                     Revision : 00
[11C0h 4544   4]                     Reserved : 00000000
[11C4h 4548   4]                Mapping Count : 00000001
[11C8h 4552   4]               Mapping Offset : 0000003D

[11CCh 4556   4]                   Node Flags : 00000000
[11D0h 4560   8]            Memory Properties : [IORT Memory Access Properties]
[11D0h 4560   4]              Cache Coherency : 00000000
[11D4h 4564   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[11D5h 4565   2]                     Reserved : 0000
[11D7h 4567   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[11D8h 4568   1]            Memory Size Limit : 24
[11D9h 4569  10]                  Device Name : "\_SB.URS0"
[11E3h 4579  42]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 80 00 00 00 00 40 01 \
    00 00 30 00 00 00 00 00 00 00 

[11F9h 4601   4]                   Input base : 80030000
[11FDh 4605   4]                     ID Count : 00000000
[1201h 4609   4]                  Output Base : 00000140
[1205h 4613   4]             Output Reference : 00000030
[1209h 4617   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[120Dh 4621   1]                         Type : 01
[120Eh 4622   2]                       Length : 0051
[1210h 4624   1]                     Revision : 00
[1211h 4625   4]                     Reserved : 00000000
[1215h 4629   4]                Mapping Count : 00000001
[1219h 4633   4]               Mapping Offset : 0000003D

[121Dh 4637   4]                   Node Flags : 00000000
[1221h 4641   8]            Memory Properties : [IORT Memory Access Properties]
[1221h 4641   4]              Cache Coherency : 00000000
[1225h 4645   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1226h 4646   2]                     Reserved : 0000
[1228h 4648   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1229h 4649   1]            Memory Size Limit : 24
[122Ah 4650  10]                  Device Name : "\_SB.USB0"
[1234h 4660  42]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 03 80 00 00 00 00 40 01 \
    00 00 30 00 00 00 00 00 00 00 

[124Ah 4682   4]                   Input base : 80030000
[124Eh 4686   4]                     ID Count : 00000000
[1252h 4690   4]                  Output Base : 00000140
[1256h 4694   4]             Output Reference : 00000030
[125Ah 4698   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[125Eh 4702   1]                         Type : 01
[125Fh 4703   2]                       Length : 0051
[1261h 4705   1]                     Revision : 00
[1262h 4706   4]                     Reserved : 00000000
[1266h 4710   4]                Mapping Count : 00000001
[126Ah 4714   4]               Mapping Offset : 0000003D

[126Eh 4718   4]                   Node Flags : 00000000
[1272h 4722   8]            Memory Properties : [IORT Memory Access Properties]
[1272h 4722   4]              Cache Coherency : 00000000
[1276h 4726   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1277h 4727   2]                     Reserved : 0000
[1279h 4729   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[127Ah 4730   1]            Memory Size Limit : 24
[127Bh 4731  10]                  Device Name : "\_SB.URS1"
[1285h 4741  42]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 01 00 03 80 00 00 00 00 60 01 \
    00 00 30 00 00 00 00 00 00 00 

[129Bh 4763   4]                   Input base : 80030001
[129Fh 4767   4]                     ID Count : 00000000
[12A3h 4771   4]                  Output Base : 00000160
[12A7h 4775   4]             Output Reference : 00000030
[12ABh 4779   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[12AFh 4783   1]                         Type : 01
[12B0h 4784   2]                       Length : 0051
[12B2h 4786   1]                     Revision : 00
[12B3h 4787   4]                     Reserved : 00000000
[12B7h 4791   4]                Mapping Count : 00000001
[12BBh 4795   4]               Mapping Offset : 0000003D

[12BFh 4799   4]                   Node Flags : 00000000
[12C3h 4803   8]            Memory Properties : [IORT Memory Access Properties]
[12C3h 4803   4]              Cache Coherency : 00000000
[12C7h 4807   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[12C8h 4808   2]                     Reserved : 0000
[12CAh 4810   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[12CBh 4811   1]            Memory Size Limit : 24
[12CCh 4812  10]                  Device Name : "\_SB.USB1"
[12D6h 4822  42]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 01 00 03 80 00 00 00 00 60 01 \
    00 00 30 00 00 00 00 00 00 00 

[12ECh 4844   4]                   Input base : 80030001
[12F0h 4848   4]                     ID Count : 00000000
[12F4h 4852   4]                  Output Base : 00000160
[12F8h 4856   4]             Output Reference : 00000030
[12FCh 4860   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1300h 4864   1]                         Type : 01
[1301h 4865   2]                       Length : 0051
[1303h 4867   1]                     Revision : 00
[1304h 4868   4]                     Reserved : 00000000
[1308h 4872   4]                Mapping Count : 00000001
[130Ch 4876   4]               Mapping Offset : 0000003D

[1310h 4880   4]                   Node Flags : 00000000
[1314h 4884   8]            Memory Properties : [IORT Memory Access Properties]
[1314h 4884   4]              Cache Coherency : 00000000
[1318h 4888   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1319h 4889   2]                     Reserved : 0000
[131Bh 4891   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[131Ch 4892   1]            Memory Size Limit : 24
[131Dh 4893  10]                  Device Name : "\_SB.URS2"
[1327h 4903  42]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 02 00 03 80 00 00 00 00 60 00 \
    00 00 30 00 00 00 00 00 00 00 

[133Dh 4925   4]                   Input base : 80030002
[1341h 4929   4]                     ID Count : 00000000
[1345h 4933   4]                  Output Base : 00000060
[1349h 4937   4]             Output Reference : 00000030
[134Dh 4941   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1351h 4945   1]                         Type : 01
[1352h 4946   2]                       Length : 0051
[1354h 4948   1]                     Revision : 00
[1355h 4949   4]                     Reserved : 00000000
[1359h 4953   4]                Mapping Count : 00000001
[135Dh 4957   4]               Mapping Offset : 0000003D

[1361h 4961   4]                   Node Flags : 00000000
[1365h 4965   8]            Memory Properties : [IORT Memory Access Properties]
[1365h 4965   4]              Cache Coherency : 00000000
[1369h 4969   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[136Ah 4970   2]                     Reserved : 0000
[136Ch 4972   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[136Dh 4973   1]            Memory Size Limit : 24
[136Eh 4974  10]                  Device Name : "\_SB.USB2"
[1378h 4984  42]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 02 00 03 80 00 00 00 00 60 00 \
    00 00 30 00 00 00 00 00 00 00 

[138Eh 5006   4]                   Input base : 80030002
[1392h 5010   4]                     ID Count : 00000000
[1396h 5014   4]                  Output Base : 00000060
[139Ah 5018   4]             Output Reference : 00000030
[139Eh 5022   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[13A2h 5026   1]                         Type : 01
[13A3h 5027   2]                       Length : 02A9
[13A5h 5029   1]                     Revision : 00
[13A6h 5030   4]                     Reserved : 00000000
[13AAh 5034   4]                Mapping Count : 0000001F
[13AEh 5038   4]               Mapping Offset : 0000003D

[13B2h 5042   4]                   Node Flags : 00000000
[13B6h 5046   8]            Memory Properties : [IORT Memory Access Properties]
[13B6h 5046   4]              Cache Coherency : 00000000
[13BAh 5050   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[13BBh 5051   2]                     Reserved : 0000
[13BDh 5053   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[13BEh 5054   1]            Memory Size Limit : 24
[13BFh 5055  15]                  Device Name : "\_SB.GPU0.AVS0"
[13CEh 5070 637]                      Padding : \
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

[13DFh 5087   4]                   Input base : 01030000
[13E3h 5091   4]                     ID Count : 00000000
[13E7h 5095   4]                  Output Base : 000020C0
[13EBh 5099   4]             Output Reference : 00000030
[13EFh 5103   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[13F3h 5107   4]                   Input base : 01030001
[13F7h 5111   4]                     ID Count : 00000000
[13FBh 5115   4]                  Output Base : 000023C0
[13FFh 5119   4]             Output Reference : 00000030
[1403h 5123   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1407h 5127   4]                   Input base : 01030002
[140Bh 5131   4]                     ID Count : 00000000
[140Fh 5135   4]                  Output Base : 00002000
[1413h 5139   4]             Output Reference : 00000030
[1417h 5143   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[141Bh 5147   4]                   Input base : 01030003
[141Fh 5151   4]                     ID Count : 00000000
[1423h 5155   4]                  Output Base : 00002140
[1427h 5159   4]             Output Reference : 00000030
[142Bh 5163   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[142Fh 5167   4]                   Input base : 01030004
[1433h 5171   4]                     ID Count : 00000000
[1437h 5175   4]                  Output Base : 00002160
[143Bh 5179   4]             Output Reference : 00000030
[143Fh 5183   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1443h 5187   4]                   Input base : 01030005
[1447h 5191   4]                     ID Count : 00000000
[144Bh 5195   4]                  Output Base : 00002042
[144Fh 5199   4]             Output Reference : 00000030
[1453h 5203   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1457h 5207   4]                   Input base : 01030006
[145Bh 5211   4]                     ID Count : 00000000
[145Fh 5215   4]                  Output Base : 00000A00
[1463h 5219   4]             Output Reference : 00000030
[1467h 5223   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[146Bh 5227   4]                   Input base : 01030007
[146Fh 5231   4]                     ID Count : 00000000
[1473h 5235   4]                  Output Base : 00000A20
[1477h 5239   4]             Output Reference : 00000030
[147Bh 5243   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[147Fh 5247   4]                   Input base : 01030008
[1483h 5251   4]                     ID Count : 00000000
[1487h 5255   4]                  Output Base : 00000A40
[148Bh 5259   4]             Output Reference : 00000030
[148Fh 5263   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1493h 5267   4]                   Input base : 01030009
[1497h 5271   4]                     ID Count : 00000000
[149Bh 5275   4]                  Output Base : 00000A60
[149Fh 5279   4]             Output Reference : 00000030
[14A3h 5283   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[14A7h 5287   4]                   Input base : 0103000A
[14ABh 5291   4]                     ID Count : 00000000
[14AFh 5295   4]                  Output Base : 00000A80
[14B3h 5299   4]             Output Reference : 00000030
[14B7h 5303   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[14BBh 5307   4]                   Input base : 0103000B
[14BFh 5311   4]                     ID Count : 00000000
[14C3h 5315   4]                  Output Base : 00000AA0
[14C7h 5319   4]             Output Reference : 00000030
[14CBh 5323   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[14CFh 5327   4]                   Input base : 0103000C
[14D3h 5331   4]                     ID Count : 00000000
[14D7h 5335   4]                  Output Base : 00000AC0
[14DBh 5339   4]             Output Reference : 00000030
[14DFh 5343   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[14E3h 5347   4]                   Input base : 0103000D
[14E7h 5351   4]                     ID Count : 00000000
[14EBh 5355   4]                  Output Base : 00000AE0
[14EFh 5359   4]             Output Reference : 00000030
[14F3h 5363   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[14F7h 5367   4]                   Input base : 0103000E
[14FBh 5371   4]                     ID Count : 00000000
[14FFh 5375   4]                  Output Base : 00000E00
[1503h 5379   4]             Output Reference : 00000030
[1507h 5383   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[150Bh 5387   4]                   Input base : 0103000F
[150Fh 5391   4]                     ID Count : 00000000
[1513h 5395   4]                  Output Base : 00000E20
[1517h 5399   4]             Output Reference : 00000030
[151Bh 5403   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[151Fh 5407   4]                   Input base : 01030010
[1523h 5411   4]                     ID Count : 00000000
[1527h 5415   4]                  Output Base : 00000E40
[152Bh 5419   4]             Output Reference : 00000030
[152Fh 5423   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1533h 5427   4]                   Input base : 01030011
[1537h 5431   4]                     ID Count : 00000000
[153Bh 5435   4]                  Output Base : 00000E60
[153Fh 5439   4]             Output Reference : 00000030
[1543h 5443   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1547h 5447   4]                   Input base : 01030012
[154Bh 5451   4]                     ID Count : 00000000
[154Fh 5455   4]                  Output Base : 00000E80
[1553h 5459   4]             Output Reference : 00000030
[1557h 5463   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[155Bh 5467   4]                   Input base : 01030013
[155Fh 5471   4]                     ID Count : 00000000
[1563h 5475   4]                  Output Base : 00000EA0
[1567h 5479   4]             Output Reference : 00000030
[156Bh 5483   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[156Fh 5487   4]                   Input base : 01030014
[1573h 5491   4]                     ID Count : 00000000
[1577h 5495   4]                  Output Base : 00000EC0
[157Bh 5499   4]             Output Reference : 00000030
[157Fh 5503   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1583h 5507   4]                   Input base : 01030015
[1587h 5511   4]                     ID Count : 00000000
[158Bh 5515   4]                  Output Base : 00000EE0
[158Fh 5519   4]             Output Reference : 00000030
[1593h 5523   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1597h 5527   4]                   Input base : 01030016
[159Bh 5531   4]                     ID Count : 00000000
[159Fh 5535   4]                  Output Base : 00002080
[15A3h 5539   4]             Output Reference : 00000030
[15A7h 5543   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[15ABh 5547   4]                   Input base : 01030017
[15AFh 5551   4]                     ID Count : 00000000
[15B3h 5555   4]                  Output Base : 000020A0
[15B7h 5559   4]             Output Reference : 00000030
[15BBh 5563   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[15BFh 5567   4]                   Input base : 01030018
[15C3h 5571   4]                     ID Count : 00000000
[15C7h 5575   4]                  Output Base : 00002380
[15CBh 5579   4]             Output Reference : 00000030
[15CFh 5583   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[15D3h 5587   4]                   Input base : 01030019
[15D7h 5591   4]                     ID Count : 00000000
[15DBh 5595   4]                  Output Base : 000023A0
[15DFh 5599   4]             Output Reference : 00000030
[15E3h 5603   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[15E7h 5607   4]                   Input base : 0103001A
[15EBh 5611   4]                     ID Count : 00000000
[15EFh 5615   4]                  Output Base : 000020E0
[15F3h 5619   4]             Output Reference : 00000030
[15F7h 5623   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[15FBh 5627   4]                   Input base : 0103001B
[15FFh 5631   4]                     ID Count : 00000000
[1603h 5635   4]                  Output Base : 000023E0
[1607h 5639   4]             Output Reference : 00000030
[160Bh 5643   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[160Fh 5647   4]                   Input base : 010D0000
[1613h 5651   4]                     ID Count : 00000000
[1617h 5655   4]                  Output Base : 00001029
[161Bh 5659   4]             Output Reference : 00000030
[161Fh 5663   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1623h 5667   4]                   Input base : 010D0001
[1627h 5671   4]                     ID Count : 00000000
[162Bh 5675   4]                  Output Base : 00001031
[162Fh 5679   4]             Output Reference : 00000030
[1633h 5683   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1637h 5687   4]                   Input base : 010D0002
[163Bh 5691   4]                     ID Count : 00000000
[163Fh 5695   4]                  Output Base : 00001039
[1643h 5699   4]             Output Reference : 00000030
[1647h 5703   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[164Bh 5707   1]                         Type : 01
[164Ch 5708   2]                       Length : 0051
[164Eh 5710   1]                     Revision : 00
[164Fh 5711   4]                     Reserved : 00000000
[1653h 5715   4]                Mapping Count : 00000001
[1657h 5719   4]               Mapping Offset : 0000003D

[165Bh 5723   4]                   Node Flags : 00000000
[165Fh 5727   8]            Memory Properties : [IORT Memory Access Properties]
[165Fh 5727   4]              Cache Coherency : 00000000
[1663h 5731   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1664h 5732   2]                     Reserved : 0000
[1666h 5734   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1667h 5735   1]            Memory Size Limit : 24
[1668h 5736  15]                  Device Name : "\_SB.AMSS.QWLN"
[1677h 5751  37]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 03 11 01 00 00 00 40 06 00 00 30 00 00 \
    00 00 00 00 00 

[1688h 5768   4]                   Input base : 11030000
[168Ch 5772   4]                     ID Count : 00000001
[1690h 5776   4]                  Output Base : 00000640
[1694h 5780   4]             Output Reference : 00000030
[1698h 5784   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

Raw Table Data: Length 5788 (0x169C)

    0000: 49 4F 52 54 9C 16 00 00 00 3A 51 43 4F 4D 20 20  // IORT.....:QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 81 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 1B 00 00 00 30 00 00 00 00 00 00 00  // ........0.......
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
    0A70: 00 00 20 21 00 00 30 00 00 00 00 00 00 00 01 B5  // .. !..0.........
    0A80: 00 00 00 00 00 00 06 00 00 00 3D 00 00 00 00 00  // ..........=.....
    0A90: 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E  // ..........$\_SB.
    0AA0: 43 44 53 50 00 00 00 00 00 00 00 00 00 00 00 00  // CDSP............
    0AB0: 00 00 00 00 00 00 00 00 00 00 00 00 00 0A 83 00  // ................
    0AC0: 00 00 00 29 10 00 00 30 00 00 00 00 00 00 00 01  // ...)...0........
    0AD0: 00 0A 83 00 00 00 00 29 14 00 00 30 00 00 00 00  // .......)...0....
    0AE0: 00 00 00 00 00 03 84 07 00 00 00 01 10 00 00 30  // ...............0
    0AF0: 00 00 00 00 00 00 00 00 00 0A 84 00 00 00 00 09  // ................
    0B00: 10 00 00 30 00 00 00 00 00 00 00 08 00 03 84 07  // ...0............
    0B10: 00 00 00 01 14 00 00 30 00 00 00 00 00 00 00 01  // .......0........
    0B20: 00 0A 84 00 00 00 00 09 14 00 00 30 00 00 00 00  // ...........0....
    0B30: 00 00 00 01 55 01 00 00 00 00 00 0E 00 00 00 3D  // ....U..........=
    0B40: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24  // ...............$
    0B50: 5C 5F 53 42 2E 41 52 50 43 00 00 00 00 00 00 00  // \_SB.ARPC.......
    0B60: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0B70: 10 00 03 17 00 00 00 00 23 1B 00 00 30 00 00 00  // ........#...0...
    0B80: 00 00 00 00 11 00 03 17 00 00 00 00 24 1B 00 00  // ............$...
    0B90: 30 00 00 00 00 00 00 00 12 00 03 17 00 00 00 00  // 0...............
    0BA0: 25 1B 00 00 30 00 00 00 00 00 00 00 00 00 03 17  // %...0...........
    0BB0: 00 00 00 00 41 14 00 00 30 00 00 00 00 00 00 00  // ....A...0.......
    0BC0: 01 00 03 17 00 00 00 00 42 14 00 00 30 00 00 00  // ........B...0...
    0BD0: 00 00 00 00 02 00 03 17 00 00 00 00 43 14 00 00  // ............C...
    0BE0: 30 00 00 00 00 00 00 00 03 00 03 17 00 00 00 00  // 0...............
    0BF0: 44 14 00 00 30 00 00 00 00 00 00 00 04 00 03 17  // D...0...........
    0C00: 00 00 00 00 45 14 00 00 30 00 00 00 00 00 00 00  // ....E...0.......
    0C10: 05 00 03 17 00 00 00 00 46 14 00 00 30 00 00 00  // ........F...0...
    0C20: 00 00 00 00 06 00 03 17 00 00 00 00 47 14 00 00  // ............G...
    0C30: 30 00 00 00 00 00 00 00 07 00 03 17 00 00 00 00  // 0...............
    0C40: 48 14 00 00 30 00 00 00 00 00 00 00 08 00 03 17  // H...0...........
    0C50: 07 00 00 00 41 10 00 00 30 00 00 00 00 00 00 00  // ....A...0.......
    0C60: 00 00 0A 17 00 00 00 00 49 14 00 00 30 00 00 00  // ........I...0...
    0C70: 00 00 00 00 01 00 0A 17 00 00 00 00 49 10 00 00  // ............I...
    0C80: 30 00 00 00 00 00 00 00 01 51 00 00 00 00 00 00  // 0........Q......
    0C90: 01 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00  // ....=...........
    0CA0: 00 00 00 00 24 5C 5F 53 42 2E 49 50 41 00 00 00  // ....$\_SB.IPA...
    0CB0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0CC0: 00 00 00 00 00 00 00 03 0B 02 00 00 00 20 05 00  // ............. ..
    0CD0: 00 30 00 00 00 00 00 00 00 01 51 00 00 00 00 00  // .0........Q.....
    0CE0: 00 01 00 00 00 3D 00 00 00 00 00 00 00 00 00 00  // .....=..........
    0CF0: 00 00 00 00 00 24 5C 5F 53 42 2E 55 53 42 41 00  // .....$\_SB.USBA.
    0D00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0D10: 00 00 00 00 00 00 0A 00 03 07 00 00 00 00 2F 1B  // ............../.
    0D20: 00 00 30 00 00 00 00 00 00 00 01 8D 00 00 00 00  // ..0.............
    0D30: 00 00 04 00 00 00 3D 00 00 00 00 00 00 00 00 00  // ......=.........
    0D40: 00 00 00 00 00 00 24 5C 5F 53 42 2E 4E 50 55 30  // ......$\_SB.NPU0
    0D50: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0D60: 00 00 00 00 00 00 00 00 00 03 18 00 00 00 00 81  // ................
    0D70: 10 00 00 30 00 00 00 00 00 00 00 01 00 03 18 00  // ...0............
    0D80: 00 00 00 81 14 00 00 30 00 00 00 00 00 00 00 00  // .......0........
    0D90: 00 0A 18 00 00 00 00 84 10 00 00 30 00 00 00 00  // ...........0....
    0DA0: 00 00 00 01 00 0A 18 00 00 00 00 84 14 00 00 30  // ...............0
    0DB0: 00 00 00 00 00 00 00 01 65 00 00 00 00 00 00 02  // ........e.......
    0DC0: 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00  // ...=............
    0DD0: 00 00 00 24 5C 5F 53 42 2E 51 44 53 53 00 00 00  // ...$\_SB.QDSS...
    0DE0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0DF0: 00 00 00 00 00 00 03 89 00 00 00 00 A0 04 00 00  // ................
    0E00: 30 00 00 00 00 00 00 00 01 00 03 89 00 00 00 00  // 0...............
    0E10: E0 05 00 00 30 00 00 00 00 00 00 00 01 B5 00 00  // ....0...........
    0E20: 00 00 00 00 06 00 00 00 3D 00 00 00 00 00 00 00  // ........=.......
    0E30: 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E 41 44  // ........$\_SB.AD
    0E40: 53 50 2E 53 4C 4D 31 2E 41 44 43 4D 00 00 00 00  // SP.SLM1.ADCM....
    0E50: 00 00 00 00 00 00 00 00 00 00 00 03 07 00 00 00  // ................
    0E60: 00 21 1B 00 00 30 00 00 00 00 00 00 00 01 00 03  // .!...0..........
    0E70: 07 00 00 00 00 46 1B 00 00 30 00 00 00 00 00 00  // .....F...0......
    0E80: 00 02 00 03 07 04 00 00 00 4D 1B 00 00 30 00 00  // .........M...0..
    0E90: 00 00 00 00 00 0B 00 03 07 00 00 00 00 53 1B 00  // .............S..
    0EA0: 00 30 00 00 00 00 00 00 00 0C 00 03 07 00 00 00  // .0..............
    0EB0: 00 58 1B 00 00 30 00 00 00 00 00 00 00 0D 00 03  // .X...0..........
    0EC0: 07 02 00 00 00 5C 1B 00 00 30 00 00 00 00 00 00  // .....\...0......
    0ED0: 00 01 51 00 00 00 00 00 00 01 00 00 00 3D 00 00  // ..Q..........=..
    0EE0: 00 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F  // .............$\_
    0EF0: 53 42 2E 51 53 50 49 30 00 00 00 00 00 00 00 00  // SB.QSPI0........
    0F00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0F10: 03 14 00 00 00 00 60 07 00 00 30 00 00 00 00 00  // ......`...0.....
    0F20: 00 00 01 51 00 00 00 00 00 00 01 00 00 00 3D 00  // ...Q..........=.
    0F30: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24 5C  // ..............$\
    0F40: 5F 53 42 2E 51 53 50 49 31 00 00 00 00 00 00 00  // _SB.QSPI1.......
    0F50: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01  // ................
    0F60: 00 03 14 00 00 00 00 E0 07 00 00 30 00 00 00 00  // ...........0....
    0F70: 00 00 00 01 B5 00 00 00 00 00 00 06 00 00 00 3D  // ...............=
    0F80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24  // ...............$
    0F90: 5C 5F 53 42 2E 51 55 50 00 00 00 00 00 00 00 00  // \_SB.QUP........
    0FA0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0FB0: 00 00 03 13 00 00 00 00 D6 04 00 00 30 00 00 00  // ............0...
    0FC0: 00 00 00 00 01 00 03 13 00 00 00 00 C3 04 00 00  // ................
    0FD0: 30 00 00 00 00 00 00 00 00 00 03 10 00 00 00 00  // 0...............
    0FE0: 03 06 00 00 30 00 00 00 00 00 00 00 01 00 03 10  // ....0...........
    0FF0: 00 00 00 00 16 06 00 00 30 00 00 00 00 00 00 00  // ........0.......
    1000: 00 00 03 12 00 00 00 00 A3 07 00 00 30 00 00 00  // ............0...
    1010: 00 00 00 00 01 00 03 12 00 00 00 00 B6 07 00 00  // ................
    1020: 30 00 00 00 00 00 00 00 01 65 00 00 00 00 00 00  // 0........e......
    1030: 02 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00  // ....=...........
    1040: 00 00 00 00 24 5C 5F 53 42 2E 53 44 43 32 00 00  // ....$\_SB.SDC2..
    1050: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1060: 00 00 00 00 00 00 00 03 86 00 00 00 00 A0 06 00  // ................
    1070: 00 30 00 00 00 00 00 00 00 01 00 03 86 00 00 00  // .0..............
    1080: 00 C0 06 00 00 30 00 00 00 00 00 00 00 01 65 00  // .....0........e.
    1090: 00 00 00 00 00 02 00 00 00 3D 00 00 00 00 00 00  // .........=......
    10A0: 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E 53  // .........$\_SB.S
    10B0: 45 4E 31 00 00 00 00 00 00 00 00 00 00 00 00 00  // EN1.............
    10C0: 00 00 00 00 00 00 00 00 00 00 00 00 03 85 00 00  // ................
    10D0: 00 00 E3 04 00 00 30 00 00 00 00 00 00 00 01 00  // ......0.........
    10E0: 03 85 02 00 00 00 A1 05 00 00 30 00 00 00 00 00  // ..........0.....
    10F0: 00 00 01 51 00 00 00 00 00 00 01 00 00 00 3D 00  // ...Q..........=.
    1100: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24 5C  // ..............$\
    1110: 5F 53 42 2E 54 53 43 35 00 00 00 00 00 00 00 00  // _SB.TSC5........
    1120: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1130: 00 03 88 0F 00 00 00 20 06 00 00 30 00 00 00 00  // ....... ...0....
    1140: 00 00 00 01 79 00 00 00 00 00 00 03 00 00 00 3D  // ....y..........=
    1150: 00 00 00 00 00 00 00 01 00 00 00 00 00 00 01 24  // ...............$
    1160: 5C 5F 53 42 2E 55 46 53 30 00 00 00 00 00 00 00  // \_SB.UFS0.......
    1170: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1180: 00 00 03 81 00 00 00 00 00 00 00 00 30 00 00 00  // ............0...
    1190: 00 00 00 00 01 00 03 81 00 00 00 00 E0 02 00 00  // ................
    11A0: 30 00 00 00 00 00 00 00 02 00 03 81 00 00 00 00  // 0...............
    11B0: 00 03 00 00 30 00 00 00 00 00 00 00 01 51 00 00  // ....0........Q..
    11C0: 00 00 00 00 01 00 00 00 3D 00 00 00 00 00 00 00  // ........=.......
    11D0: 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E 55 52  // ........$\_SB.UR
    11E0: 53 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // S0..............
    11F0: 00 00 00 00 00 00 00 00 00 00 00 03 80 00 00 00  // ................
    1200: 00 40 01 00 00 30 00 00 00 00 00 00 00 01 51 00  // .@...0........Q.
    1210: 00 00 00 00 00 01 00 00 00 3D 00 00 00 00 00 00  // .........=......
    1220: 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E 55  // .........$\_SB.U
    1230: 53 42 30 00 00 00 00 00 00 00 00 00 00 00 00 00  // SB0.............
    1240: 00 00 00 00 00 00 00 00 00 00 00 00 03 80 00 00  // ................
    1250: 00 00 40 01 00 00 30 00 00 00 00 00 00 00 01 51  // ..@...0........Q
    1260: 00 00 00 00 00 00 01 00 00 00 3D 00 00 00 00 00  // ..........=.....
    1270: 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E  // ..........$\_SB.
    1280: 55 52 53 31 00 00 00 00 00 00 00 00 00 00 00 00  // URS1............
    1290: 00 00 00 00 00 00 00 00 00 00 00 01 00 03 80 00  // ................
    12A0: 00 00 00 60 01 00 00 30 00 00 00 00 00 00 00 01  // ...`...0........
    12B0: 51 00 00 00 00 00 00 01 00 00 00 3D 00 00 00 00  // Q..........=....
    12C0: 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42  // ...........$\_SB
    12D0: 2E 55 53 42 31 00 00 00 00 00 00 00 00 00 00 00  // .USB1...........
    12E0: 00 00 00 00 00 00 00 00 00 00 00 00 01 00 03 80  // ................
    12F0: 00 00 00 00 60 01 00 00 30 00 00 00 00 00 00 00  // ....`...0.......
    1300: 01 51 00 00 00 00 00 00 01 00 00 00 3D 00 00 00  // .Q..........=...
    1310: 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53  // ............$\_S
    1320: 42 2E 55 52 53 32 00 00 00 00 00 00 00 00 00 00  // B.URS2..........
    1330: 00 00 00 00 00 00 00 00 00 00 00 00 00 02 00 03  // ................
    1340: 80 00 00 00 00 60 00 00 00 30 00 00 00 00 00 00  // .....`...0......
    1350: 00 01 51 00 00 00 00 00 00 01 00 00 00 3D 00 00  // ..Q..........=..
    1360: 00 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F  // .............$\_
    1370: 53 42 2E 55 53 42 32 00 00 00 00 00 00 00 00 00  // SB.USB2.........
    1380: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 02 00  // ................
    1390: 03 80 00 00 00 00 60 00 00 00 30 00 00 00 00 00  // ......`...0.....
    13A0: 00 00 01 A9 02 00 00 00 00 00 1F 00 00 00 3D 00  // ..............=.
    13B0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24 5C  // ..............$\
    13C0: 5F 53 42 2E 47 50 55 30 2E 41 56 53 30 00 00 00  // _SB.GPU0.AVS0...
    13D0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    13E0: 00 03 01 00 00 00 00 C0 20 00 00 30 00 00 00 00  // ........ ..0....
    13F0: 00 00 00 01 00 03 01 00 00 00 00 C0 23 00 00 30  // ............#..0
    1400: 00 00 00 00 00 00 00 02 00 03 01 00 00 00 00 00  // ................
    1410: 20 00 00 30 00 00 00 00 00 00 00 03 00 03 01 00  //  ..0............
    1420: 00 00 00 40 21 00 00 30 00 00 00 00 00 00 00 04  // ...@!..0........
    1430: 00 03 01 00 00 00 00 60 21 00 00 30 00 00 00 00  // .......`!..0....
    1440: 00 00 00 05 00 03 01 00 00 00 00 42 20 00 00 30  // ...........B ..0
    1450: 00 00 00 00 00 00 00 06 00 03 01 00 00 00 00 00  // ................
    1460: 0A 00 00 30 00 00 00 00 00 00 00 07 00 03 01 00  // ...0............
    1470: 00 00 00 20 0A 00 00 30 00 00 00 00 00 00 00 08  // ... ...0........
    1480: 00 03 01 00 00 00 00 40 0A 00 00 30 00 00 00 00  // .......@...0....
    1490: 00 00 00 09 00 03 01 00 00 00 00 60 0A 00 00 30  // ...........`...0
    14A0: 00 00 00 00 00 00 00 0A 00 03 01 00 00 00 00 80  // ................
    14B0: 0A 00 00 30 00 00 00 00 00 00 00 0B 00 03 01 00  // ...0............
    14C0: 00 00 00 A0 0A 00 00 30 00 00 00 00 00 00 00 0C  // .......0........
    14D0: 00 03 01 00 00 00 00 C0 0A 00 00 30 00 00 00 00  // ...........0....
    14E0: 00 00 00 0D 00 03 01 00 00 00 00 E0 0A 00 00 30  // ...............0
    14F0: 00 00 00 00 00 00 00 0E 00 03 01 00 00 00 00 00  // ................
    1500: 0E 00 00 30 00 00 00 00 00 00 00 0F 00 03 01 00  // ...0............
    1510: 00 00 00 20 0E 00 00 30 00 00 00 00 00 00 00 10  // ... ...0........
    1520: 00 03 01 00 00 00 00 40 0E 00 00 30 00 00 00 00  // .......@...0....
    1530: 00 00 00 11 00 03 01 00 00 00 00 60 0E 00 00 30  // ...........`...0
    1540: 00 00 00 00 00 00 00 12 00 03 01 00 00 00 00 80  // ................
    1550: 0E 00 00 30 00 00 00 00 00 00 00 13 00 03 01 00  // ...0............
    1560: 00 00 00 A0 0E 00 00 30 00 00 00 00 00 00 00 14  // .......0........
    1570: 00 03 01 00 00 00 00 C0 0E 00 00 30 00 00 00 00  // ...........0....
    1580: 00 00 00 15 00 03 01 00 00 00 00 E0 0E 00 00 30  // ...............0
    1590: 00 00 00 00 00 00 00 16 00 03 01 00 00 00 00 80  // ................
    15A0: 20 00 00 30 00 00 00 00 00 00 00 17 00 03 01 00  //  ..0............
    15B0: 00 00 00 A0 20 00 00 30 00 00 00 00 00 00 00 18  // .... ..0........
    15C0: 00 03 01 00 00 00 00 80 23 00 00 30 00 00 00 00  // ........#..0....
    15D0: 00 00 00 19 00 03 01 00 00 00 00 A0 23 00 00 30  // ............#..0
    15E0: 00 00 00 00 00 00 00 1A 00 03 01 00 00 00 00 E0  // ................
    15F0: 20 00 00 30 00 00 00 00 00 00 00 1B 00 03 01 00  //  ..0............
    1600: 00 00 00 E0 23 00 00 30 00 00 00 00 00 00 00 00  // ....#..0........
    1610: 00 0D 01 00 00 00 00 29 10 00 00 30 00 00 00 00  // .......)...0....
    1620: 00 00 00 01 00 0D 01 00 00 00 00 31 10 00 00 30  // ...........1...0
    1630: 00 00 00 00 00 00 00 02 00 0D 01 00 00 00 00 39  // ...............9
    1640: 10 00 00 30 00 00 00 00 00 00 00 01 51 00 00 00  // ...0........Q...
    1650: 00 00 00 01 00 00 00 3D 00 00 00 00 00 00 00 00  // .......=........
    1660: 00 00 00 00 00 00 00 24 5C 5F 53 42 2E 41 4D 53  // .......$\_SB.AMS
    1670: 53 2E 51 57 4C 4E 00 00 00 00 00 00 00 00 00 00  // S.QWLN..........
    1680: 00 00 00 00 00 00 00 00 00 00 03 11 01 00 00 00  // ................
    1690: 40 06 00 00 30 00 00 00 00 00 00 00              // @...0.......
