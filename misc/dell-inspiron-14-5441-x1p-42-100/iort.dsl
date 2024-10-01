/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of iort.dat, Tue Oct  1 20:38:53 2024
 *
 * ACPI Data Table [IORT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "IORT"    [IO Remapping Table]
[004h 0004   4]                 Table Length : 000014F6
[008h 0008   1]                     Revision : 00
[009h 0009   1]                     Checksum : 6D
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00008380
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   4]                   Node Count : 0000001E
[028h 0040   4]                  Node Offset : 00000030
[02Ch 0044   4]                     Reserved : 00000000

[030h 0048   1]                         Type : 03
[031h 0049   2]                       Length : 034C
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
[05Ch 0092   4]      Context Interrupt Count : 00000060
[060h 0096   4]     Context Interrupt Offset : 0000004C
[064h 0100   4]          PMU Interrupt Count : 00000000
[068h 0104   4]         PMU Interrupt Offset : 00000000

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
[2FCh 0764   8]            Context Interrupt : 00000001000001C2
[304h 0772   8]            Context Interrupt : 00000001000001C3
[30Ch 0780   8]            Context Interrupt : 00000001000001BC
[314h 0788   8]            Context Interrupt : 00000001000001C5
[31Ch 0796   8]            Context Interrupt : 00000001000002E3
[324h 0804   8]            Context Interrupt : 00000001000001C7
[32Ch 0812   8]            Context Interrupt : 00000001000001C8
[334h 0820   8]            Context Interrupt : 00000001000001C9
[33Ch 0828   8]            Context Interrupt : 00000001000002D2
[344h 0836   8]            Context Interrupt : 00000001000002D3
[34Ch 0844   8]            Context Interrupt : 00000001000002D4
[354h 0852   8]            Context Interrupt : 00000001000002D5
[35Ch 0860   8]            Context Interrupt : 00000001000002D6
[364h 0868   8]            Context Interrupt : 00000001000002D7
[36Ch 0876   8]            Context Interrupt : 00000001000002D8
[374h 0884   8]            Context Interrupt : 00000001000002D9

[37Ch 0892   1]                         Type : 03
[37Dh 0893   2]                       Length : 0114
[37Fh 0895   1]                     Revision : 00
[380h 0896   4]                     Reserved : 00000000
[384h 0900   4]                Mapping Count : 00000000
[388h 0904   4]               Mapping Offset : 00000000

[38Ch 0908   8]                 Base Address : 0000000003DA0000
[394h 0916   8]                         Span : 0000000000040000
[39Ch 0924   4]                        Model : 00000003
[3A0h 0928   4]        Flags (decoded below) : 00000000
                               DVM Supported : 0
                               Coherent Walk : 0
[3A4h 0932   4]      Global Interrupt Offset : 0000003C
[3A8h 0936   4]      Context Interrupt Count : 00000019
[3ACh 0940   4]     Context Interrupt Offset : 0000004C
[3B0h 0944   4]          PMU Interrupt Count : 00000000
[3B4h 0948   4]         PMU Interrupt Offset : 00000000

[3B8h 0952   4]                      NSgIrpt : 000002C2
[3BCh 0956   4] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[3C0h 0960   4]                   NSgCfgIrpt : 00000000
[3C4h 0964   4] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[3C8h 0968   8]            Context Interrupt : 00000001000002C6
[3D0h 0976   8]            Context Interrupt : 00000001000002C7
[3D8h 0984   8]            Context Interrupt : 00000001000002C8
[3E0h 0992   8]            Context Interrupt : 00000001000002C9
[3E8h 1000   8]            Context Interrupt : 00000001000002CA
[3F0h 1008   8]            Context Interrupt : 00000001000002CB
[3F8h 1016   8]            Context Interrupt : 00000001000002CC
[400h 1024   8]            Context Interrupt : 00000001000002CD
[408h 1032   8]            Context Interrupt : 00000001000002CE
[410h 1040   8]            Context Interrupt : 00000001000002CF
[418h 1048   8]            Context Interrupt : 00000001000002D0
[420h 1056   8]            Context Interrupt : 00000001000001C6
[428h 1064   8]            Context Interrupt : 00000001000001FC
[430h 1072   8]            Context Interrupt : 000000010000025E
[438h 1080   8]            Context Interrupt : 000000010000025F
[440h 1088   8]            Context Interrupt : 0000000100000260
[448h 1096   8]            Context Interrupt : 0000000100000261
[450h 1104   8]            Context Interrupt : 00000001000002B4
[458h 1112   8]            Context Interrupt : 00000001000002B6
[460h 1120   8]            Context Interrupt : 00000001000002B9
[468h 1128   8]            Context Interrupt : 00000001000002BA
[470h 1136   8]            Context Interrupt : 00000001000002BB
[478h 1144   8]            Context Interrupt : 00000001000002BD
[480h 1152   8]            Context Interrupt : 00000001000002BE
[488h 1160   8]            Context Interrupt : 00000001000002DC

[490h 1168   1]                         Type : 02
[491h 1169   2]                       Length : 0038
[493h 1171   1]                     Revision : 00
[494h 1172   4]                     Reserved : 00000000
[498h 1176   4]                Mapping Count : 00000001
[49Ch 1180   4]               Mapping Offset : 00000024

[4A0h 1184   8]            Memory Properties : [IORT Memory Access Properties]
[4A0h 1184   4]              Cache Coherency : 00000001
[4A4h 1188   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[4A5h 1189   2]                     Reserved : 0000
[4A7h 1191   1] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[4A8h 1192   4]                ATS Attribute : 00000000
[4ACh 1196   4]           PCI Segment Number : 00000000
[4B0h 1200   1]            Memory Size Limit : 28
[4B1h 1201   3]                     Reserved : 000000

[4B4h 1204   4]                   Input base : 00000000
[4B8h 1208   4]                     ID Count : 0000FFFF
[4BCh 1212   4]                  Output Base : 00000000
[4C0h 1216   4]             Output Reference : 00001486
[4C4h 1220   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[4C8h 1224   1]                         Type : 02
[4C9h 1225   2]                       Length : 0038
[4CBh 1227   1]                     Revision : 00
[4CCh 1228   4]                     Reserved : 00000000
[4D0h 1232   4]                Mapping Count : 00000001
[4D4h 1236   4]               Mapping Offset : 00000024

[4D8h 1240   8]            Memory Properties : [IORT Memory Access Properties]
[4D8h 1240   4]              Cache Coherency : 00000001
[4DCh 1244   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[4DDh 1245   2]                     Reserved : 0000
[4DFh 1247   1] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[4E0h 1248   4]                ATS Attribute : 00000000
[4E4h 1252   4]           PCI Segment Number : 00000001
[4E8h 1256   1]            Memory Size Limit : 28
[4E9h 1257   3]                     Reserved : 000000

[4ECh 1260   4]                   Input base : 00000000
[4F0h 1264   4]                     ID Count : 0000FFFF
[4F4h 1268   4]                  Output Base : 00010000
[4F8h 1272   4]             Output Reference : 00001486
[4FCh 1276   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[500h 1280   1]                         Type : 02
[501h 1281   2]                       Length : 0038
[503h 1283   1]                     Revision : 00
[504h 1284   4]                     Reserved : 00000000
[508h 1288   4]                Mapping Count : 00000001
[50Ch 1292   4]               Mapping Offset : 00000024

[510h 1296   8]            Memory Properties : [IORT Memory Access Properties]
[510h 1296   4]              Cache Coherency : 00000001
[514h 1300   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[515h 1301   2]                     Reserved : 0000
[517h 1303   1] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[518h 1304   4]                ATS Attribute : 00000000
[51Ch 1308   4]           PCI Segment Number : 00000002
[520h 1312   1]            Memory Size Limit : 28
[521h 1313   3]                     Reserved : 000000

[524h 1316   4]                   Input base : 00000000
[528h 1320   4]                     ID Count : 0000FFFF
[52Ch 1324   4]                  Output Base : 00020000
[530h 1328   4]             Output Reference : 00001486
[534h 1332   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[538h 1336   1]                         Type : 02
[539h 1337   2]                       Length : 0038
[53Bh 1339   1]                     Revision : 00
[53Ch 1340   4]                     Reserved : 00000000
[540h 1344   4]                Mapping Count : 00000001
[544h 1348   4]               Mapping Offset : 00000024

[548h 1352   8]            Memory Properties : [IORT Memory Access Properties]
[548h 1352   4]              Cache Coherency : 00000001
[54Ch 1356   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[54Dh 1357   2]                     Reserved : 0000
[54Fh 1359   1] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[550h 1360   4]                ATS Attribute : 00000000
[554h 1364   4]           PCI Segment Number : 00000003
[558h 1368   1]            Memory Size Limit : 28
[559h 1369   3]                     Reserved : 000000

[55Ch 1372   4]                   Input base : 00000000
[560h 1376   4]                     ID Count : 0000FFFF
[564h 1380   4]                  Output Base : 00030000
[568h 1384   4]             Output Reference : 00001486
[56Ch 1388   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[570h 1392   1]                         Type : 02
[571h 1393   2]                       Length : 0038
[573h 1395   1]                     Revision : 00
[574h 1396   4]                     Reserved : 00000000
[578h 1400   4]                Mapping Count : 00000001
[57Ch 1404   4]               Mapping Offset : 00000024

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
[588h 1416   4]                ATS Attribute : 00000000
[58Ch 1420   4]           PCI Segment Number : 00000004
[590h 1424   1]            Memory Size Limit : 28
[591h 1425   3]                     Reserved : 000000

[594h 1428   4]                   Input base : 00000000
[598h 1432   4]                     ID Count : 0000FFFF
[59Ch 1436   4]                  Output Base : 00040000
[5A0h 1440   4]             Output Reference : 00001486
[5A4h 1444   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5A8h 1448   1]                         Type : 02
[5A9h 1449   2]                       Length : 0038
[5ABh 1451   1]                     Revision : 00
[5ACh 1452   4]                     Reserved : 00000000
[5B0h 1456   4]                Mapping Count : 00000001
[5B4h 1460   4]               Mapping Offset : 00000024

[5B8h 1464   8]            Memory Properties : [IORT Memory Access Properties]
[5B8h 1464   4]              Cache Coherency : 00000001
[5BCh 1468   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[5BDh 1469   2]                     Reserved : 0000
[5BFh 1471   1] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[5C0h 1472   4]                ATS Attribute : 00000000
[5C4h 1476   4]           PCI Segment Number : 00000005
[5C8h 1480   1]            Memory Size Limit : 28
[5C9h 1481   3]                     Reserved : 000000

[5CCh 1484   4]                   Input base : 00000000
[5D0h 1488   4]                     ID Count : 0000FFFF
[5D4h 1492   4]                  Output Base : 00050000
[5D8h 1496   4]             Output Reference : 00001486
[5DCh 1500   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5E0h 1504   1]                         Type : 02
[5E1h 1505   2]                       Length : 0038
[5E3h 1507   1]                     Revision : 00
[5E4h 1508   4]                     Reserved : 00000000
[5E8h 1512   4]                Mapping Count : 00000001
[5ECh 1516   4]               Mapping Offset : 00000024

[5F0h 1520   8]            Memory Properties : [IORT Memory Access Properties]
[5F0h 1520   4]              Cache Coherency : 00000001
[5F4h 1524   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[5F5h 1525   2]                     Reserved : 0000
[5F7h 1527   1] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[5F8h 1528   4]                ATS Attribute : 00000000
[5FCh 1532   4]           PCI Segment Number : 00000006
[600h 1536   1]            Memory Size Limit : 28
[601h 1537   3]                     Reserved : 000000

[604h 1540   4]                   Input base : 00000000
[608h 1544   4]                     ID Count : 0000FFFF
[60Ch 1548   4]                  Output Base : 00060000
[610h 1552   4]             Output Reference : 00001486
[614h 1556   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[618h 1560   1]                         Type : 02
[619h 1561   2]                       Length : 0038
[61Bh 1563   1]                     Revision : 00
[61Ch 1564   4]                     Reserved : 00000000
[620h 1568   4]                Mapping Count : 00000001
[624h 1572   4]               Mapping Offset : 00000024

[628h 1576   8]            Memory Properties : [IORT Memory Access Properties]
[628h 1576   4]              Cache Coherency : 00000001
[62Ch 1580   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[62Dh 1581   2]                     Reserved : 0000
[62Fh 1583   1] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[630h 1584   4]                ATS Attribute : 00000000
[634h 1588   4]           PCI Segment Number : 00000007
[638h 1592   1]            Memory Size Limit : 28
[639h 1593   3]                     Reserved : 000000

[63Ch 1596   4]                   Input base : 00000000
[640h 1600   4]                     ID Count : 0000FFFF
[644h 1604   4]                  Output Base : 00070000
[648h 1608   4]             Output Reference : 00001486
[64Ch 1612   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[650h 1616   1]                         Type : 01
[651h 1617   2]                       Length : 0051
[653h 1619   1]                     Revision : 00
[654h 1620   4]                     Reserved : 00000000
[658h 1624   4]                Mapping Count : 00000001
[65Ch 1628   4]               Mapping Offset : 0000003D

[660h 1632   4]                   Node Flags : 00000000
[664h 1636   8]            Memory Properties : [IORT Memory Access Properties]
[664h 1636   4]              Cache Coherency : 00000000
[668h 1640   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[669h 1641   2]                     Reserved : 0000
[66Bh 1643   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[66Ch 1644   1]            Memory Size Limit : 24
[66Dh 1645  10]                  Device Name : "\_SB.SISP"
[677h 1655  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[68Dh 1677   4]                   Input base : A0030000
[691h 1681   4]                     ID Count : 00000000
[695h 1685   4]                  Output Base : 00000000
[699h 1689   4]             Output Reference : 00000030
[69Dh 1693   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[6A1h 1697   1]                         Type : 01
[6A2h 1698   2]                       Length : 01F5
[6A4h 1700   1]                     Revision : 00
[6A5h 1701   4]                     Reserved : 00000000
[6A9h 1705   4]                Mapping Count : 00000016
[6ADh 1709   4]               Mapping Offset : 0000003D

[6B1h 1713   4]                   Node Flags : 00000000
[6B5h 1717   8]            Memory Properties : [IORT Memory Access Properties]
[6B5h 1717   4]              Cache Coherency : 00000000
[6B9h 1721   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[6BAh 1722   2]                     Reserved : 0000
[6BCh 1724   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[6BDh 1725   1]            Memory Size Limit : 30
[6BEh 1726  10]                  Device Name : "\_SB.GPU0"
[6C8h 1736  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[6DEh 1758   4]                   Input base : 03030000
[6E2h 1762   4]                     ID Count : 00000000
[6E6h 1766   4]                  Output Base : 00000000
[6EAh 1770   4]             Output Reference : 0000037C
[6EEh 1774   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[6F2h 1778   4]                   Input base : 03030020
[6F6h 1782   4]                     ID Count : 00000000
[6FAh 1786   4]                  Output Base : 00000001
[6FEh 1790   4]             Output Reference : 0000037C
[702h 1794   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[706h 1798   4]                   Input base : 03030040
[70Ah 1802   4]                     ID Count : 00000000
[70Eh 1806   4]                  Output Base : 00000004
[712h 1810   4]             Output Reference : 0000037C
[716h 1814   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[71Ah 1818   4]                   Input base : 03030060
[71Eh 1822   4]                     ID Count : 00000000
[722h 1826   4]                  Output Base : 00000005
[726h 1830   4]             Output Reference : 0000037C
[72Ah 1834   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[72Eh 1838   4]                   Input base : 03030080
[732h 1842   4]                     ID Count : 00000000
[736h 1846   4]                  Output Base : 00000007
[73Ah 1850   4]             Output Reference : 0000037C
[73Eh 1854   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[742h 1858   4]                   Input base : 030A0000
[746h 1862   4]                     ID Count : 00000000
[74Ah 1866   4]                  Output Base : 00000002
[74Eh 1870   4]             Output Reference : 0000037C
[752h 1874   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[756h 1878   4]                   Input base : 00030000
[75Ah 1882   4]                     ID Count : 00000000
[75Eh 1886   4]                  Output Base : 00001C00
[762h 1890   4]             Output Reference : 00000030
[766h 1894   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[76Ah 1898   4]                   Input base : 00030001
[76Eh 1902   4]                     ID Count : 00000000
[772h 1906   4]                  Output Base : 00001C02
[776h 1910   4]             Output Reference : 00000030
[77Ah 1914   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[77Eh 1918   4]                   Input base : 000A0000
[782h 1922   4]                     ID Count : 00000000
[786h 1926   4]                  Output Base : 00001C01
[78Ah 1930   4]             Output Reference : 00000030
[78Eh 1934   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[792h 1938   4]                   Input base : 0C030000
[796h 1942   4]                     ID Count : 00000000
[79Ah 1946   4]                  Output Base : 00000480
[79Eh 1950   4]             Output Reference : 00000030
[7A2h 1954   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7A6h 1958   4]                   Input base : 0C030020
[7AAh 1962   4]                     ID Count : 00000000
[7AEh 1966   4]                  Output Base : 00000481
[7B2h 1970   4]             Output Reference : 00000030
[7B6h 1974   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7BAh 1978   4]                   Input base : 0C090000
[7BEh 1982   4]                     ID Count : 00000000
[7C2h 1986   4]                  Output Base : 00000483
[7C6h 1990   4]             Output Reference : 00000030
[7CAh 1994   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7CEh 1998   4]                   Input base : 04030000
[7D2h 2002   4]                     ID Count : 00000000
[7D6h 2006   4]                  Output Base : 00001940
[7DAh 2010   4]             Output Reference : 00000030
[7DEh 2014   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7E2h 2018   4]                   Input base : 04030020
[7E6h 2022   4]                     ID Count : 00000000
[7EAh 2026   4]                  Output Base : 00001947
[7EEh 2030   4]             Output Reference : 00000030
[7F2h 2034   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7F6h 2038   4]                   Input base : 04090000
[7FAh 2042   4]                     ID Count : 00000000
[7FEh 2046   4]                  Output Base : 00001941
[802h 2050   4]             Output Reference : 00000030
[806h 2054   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[80Ah 2058   4]                   Input base : 04090001
[80Eh 2062   4]                     ID Count : 00000000
[812h 2066   4]                  Output Base : 00001945
[816h 2070   4]             Output Reference : 00000030
[81Ah 2074   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[81Eh 2078   4]                   Input base : 040A0000
[822h 2082   4]                     ID Count : 00000000
[826h 2086   4]                  Output Base : 00001943
[82Ah 2090   4]             Output Reference : 00000030
[82Eh 2094   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[832h 2098   4]                   Input base : 040B0000
[836h 2102   4]                     ID Count : 00000000
[83Ah 2106   4]                  Output Base : 00001944
[83Eh 2110   4]             Output Reference : 00000030
[842h 2114   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[846h 2118   4]                   Input base : 1B030000
[84Ah 2122   4]                     ID Count : 00000000
[84Eh 2126   4]                  Output Base : 00001880
[852h 2130   4]             Output Reference : 00000030
[856h 2134   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[85Ah 2138   4]                   Input base : 1B090000
[85Eh 2142   4]                     ID Count : 00000000
[862h 2146   4]                  Output Base : 00001885
[866h 2150   4]             Output Reference : 00000030
[86Ah 2154   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[86Eh 2158   4]                   Input base : 1B0A0000
[872h 2162   4]                     ID Count : 00000000
[876h 2166   4]                  Output Base : 00001883
[87Ah 2170   4]             Output Reference : 00000030
[87Eh 2174   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[882h 2178   4]                   Input base : 1B0B0000
[886h 2182   4]                     ID Count : 00000000
[88Ah 2186   4]                  Output Base : 00001884
[88Eh 2190   4]             Output Reference : 00000030
[892h 2194   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[896h 2198   1]                         Type : 01
[897h 2199   2]                       Length : 0051
[899h 2201   1]                     Revision : 00
[89Ah 2202   4]                     Reserved : 00000000
[89Eh 2206   4]                Mapping Count : 00000001
[8A2h 2210   4]               Mapping Offset : 0000003D

[8A6h 2214   4]                   Node Flags : 00000000
[8AAh 2218   8]            Memory Properties : [IORT Memory Access Properties]
[8AAh 2218   4]              Cache Coherency : 00000000
[8AEh 2222   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[8AFh 2223   2]                     Reserved : 0000
[8B1h 2225   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[8B2h 2226   1]            Memory Size Limit : 24
[8B3h 2227  10]                  Device Name : "\_SB.JPGE"
[8BDh 2237  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[8D3h 2259   4]                   Input base : 02030000
[8D7h 2263   4]                     ID Count : 00000000
[8DBh 2267   4]                  Output Base : 000018E0
[8DFh 2271   4]             Output Reference : 00000030
[8E3h 2275   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[8E7h 2279   1]                         Type : 01
[8E8h 2280   2]                       Length : 03AD
[8EAh 2282   1]                     Revision : 00
[8EBh 2283   4]                     Reserved : 00000000
[8EFh 2287   4]                Mapping Count : 0000002C
[8F3h 2291   4]               Mapping Offset : 0000003D

[8F7h 2295   4]                   Node Flags : 00000000
[8FBh 2299   8]            Memory Properties : [IORT Memory Access Properties]
[8FBh 2299   4]              Cache Coherency : 00000000
[8FFh 2303   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[900h 2304   2]                     Reserved : 0000
[902h 2306   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[903h 2307   1]            Memory Size Limit : 24
[904h 2308  10]                  Device Name : "\_SB.ARPC"
[90Eh 2318  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[924h 2340   4]                   Input base : 17030000
[928h 2344   4]                     ID Count : 00000000
[92Ch 2348   4]                  Output Base : 00000C01
[930h 2352   4]             Output Reference : 00000030
[934h 2356   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[938h 2360   4]                   Input base : 17030001
[93Ch 2364   4]                     ID Count : 00000000
[940h 2368   4]                  Output Base : 00000C21
[944h 2372   4]             Output Reference : 00000030
[948h 2376   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[94Ch 2380   4]                   Input base : 17030020
[950h 2384   4]                     ID Count : 00000000
[954h 2388   4]                  Output Base : 00000C02
[958h 2392   4]             Output Reference : 00000030
[95Ch 2396   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[960h 2400   4]                   Input base : 17030021
[964h 2404   4]                     ID Count : 00000000
[968h 2408   4]                  Output Base : 00000C22
[96Ch 2412   4]             Output Reference : 00000030
[970h 2416   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[974h 2420   4]                   Input base : 17030040
[978h 2424   4]                     ID Count : 00000000
[97Ch 2428   4]                  Output Base : 00000C03
[980h 2432   4]             Output Reference : 00000030
[984h 2436   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[988h 2440   4]                   Input base : 17030041
[98Ch 2444   4]                     ID Count : 00000000
[990h 2448   4]                  Output Base : 00000C23
[994h 2452   4]             Output Reference : 00000030
[998h 2456   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[99Ch 2460   4]                   Input base : 17030060
[9A0h 2464   4]                     ID Count : 00000000
[9A4h 2468   4]                  Output Base : 00000C04
[9A8h 2472   4]             Output Reference : 00000030
[9ACh 2476   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9B0h 2480   4]                   Input base : 17030061
[9B4h 2484   4]                     ID Count : 00000000
[9B8h 2488   4]                  Output Base : 00000C24
[9BCh 2492   4]             Output Reference : 00000030
[9C0h 2496   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9C4h 2500   4]                   Input base : 17030080
[9C8h 2504   4]                     ID Count : 00000000
[9CCh 2508   4]                  Output Base : 00000C05
[9D0h 2512   4]             Output Reference : 00000030
[9D4h 2516   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9D8h 2520   4]                   Input base : 17030081
[9DCh 2524   4]                     ID Count : 00000000
[9E0h 2528   4]                  Output Base : 00000C25
[9E4h 2532   4]             Output Reference : 00000030
[9E8h 2536   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9ECh 2540   4]                   Input base : 170300A0
[9F0h 2544   4]                     ID Count : 00000000
[9F4h 2548   4]                  Output Base : 00000C06
[9F8h 2552   4]             Output Reference : 00000030
[9FCh 2556   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A00h 2560   4]                   Input base : 170300A1
[A04h 2564   4]                     ID Count : 00000000
[A08h 2568   4]                  Output Base : 00000C26
[A0Ch 2572   4]             Output Reference : 00000030
[A10h 2576   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A14h 2580   4]                   Input base : 170300C0
[A18h 2584   4]                     ID Count : 00000000
[A1Ch 2588   4]                  Output Base : 00000C27
[A20h 2592   4]             Output Reference : 00000030
[A24h 2596   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A28h 2600   4]                   Input base : 170300C1
[A2Ch 2604   4]                     ID Count : 00000000
[A30h 2608   4]                  Output Base : 00000C07
[A34h 2612   4]             Output Reference : 00000030
[A38h 2616   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A3Ch 2620   4]                   Input base : 170300E0
[A40h 2624   4]                     ID Count : 00000000
[A44h 2628   4]                  Output Base : 00000C28
[A48h 2632   4]             Output Reference : 00000030
[A4Ch 2636   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A50h 2640   4]                   Input base : 170300E1
[A54h 2644   4]                     ID Count : 00000000
[A58h 2648   4]                  Output Base : 00000C08
[A5Ch 2652   4]             Output Reference : 00000030
[A60h 2656   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A64h 2660   4]                   Input base : 17030100
[A68h 2664   4]                     ID Count : 00000000
[A6Ch 2668   4]                  Output Base : 00000C2C
[A70h 2672   4]             Output Reference : 00000030
[A74h 2676   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A78h 2680   4]                   Input base : 17030101
[A7Ch 2684   4]                     ID Count : 00000000
[A80h 2688   4]                  Output Base : 00000C0C
[A84h 2692   4]             Output Reference : 00000030
[A88h 2696   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A8Ch 2700   4]                   Input base : 17030120
[A90h 2704   4]                     ID Count : 00000000
[A94h 2708   4]                  Output Base : 00000C2D
[A98h 2712   4]             Output Reference : 00000030
[A9Ch 2716   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AA0h 2720   4]                   Input base : 17030121
[AA4h 2724   4]                     ID Count : 00000000
[AA8h 2728   4]                  Output Base : 00000C0D
[AACh 2732   4]             Output Reference : 00000030
[AB0h 2736   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AB4h 2740   4]                   Input base : 17030140
[AB8h 2744   4]                     ID Count : 00000000
[ABCh 2748   4]                  Output Base : 00000C2E
[AC0h 2752   4]             Output Reference : 00000030
[AC4h 2756   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AC8h 2760   4]                   Input base : 17030141
[ACCh 2764   4]                     ID Count : 00000000
[AD0h 2768   4]                  Output Base : 00000C0E
[AD4h 2772   4]             Output Reference : 00000030
[AD8h 2776   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[ADCh 2780   4]                   Input base : 17030160
[AE0h 2784   4]                     ID Count : 00000000
[AE4h 2788   4]                  Output Base : 00000C2F
[AE8h 2792   4]             Output Reference : 00000030
[AECh 2796   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AF0h 2800   4]                   Input base : 17030161
[AF4h 2804   4]                     ID Count : 00000000
[AF8h 2808   4]                  Output Base : 00000C0F
[AFCh 2812   4]             Output Reference : 00000030
[B00h 2816   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B04h 2820   4]                   Input base : 17030180
[B08h 2824   4]                     ID Count : 00000000
[B0Ch 2828   4]                  Output Base : 00001063
[B10h 2832   4]             Output Reference : 00000030
[B14h 2836   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B18h 2840   4]                   Input base : 17030181
[B1Ch 2844   4]                     ID Count : 00000000
[B20h 2848   4]                  Output Base : 00001003
[B24h 2852   4]             Output Reference : 00000030
[B28h 2856   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B2Ch 2860   4]                   Input base : 17030182
[B30h 2864   4]                     ID Count : 00000000
[B34h 2868   4]                  Output Base : 00001083
[B38h 2872   4]             Output Reference : 00000030
[B3Ch 2876   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B40h 2880   4]                   Input base : 170301A0
[B44h 2884   4]                     ID Count : 00000000
[B48h 2888   4]                  Output Base : 00001064
[B4Ch 2892   4]             Output Reference : 00000030
[B50h 2896   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B54h 2900   4]                   Input base : 170301A1
[B58h 2904   4]                     ID Count : 00000000
[B5Ch 2908   4]                  Output Base : 00001004
[B60h 2912   4]             Output Reference : 00000030
[B64h 2916   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B68h 2920   4]                   Input base : 170301A2
[B6Ch 2924   4]                     ID Count : 00000000
[B70h 2928   4]                  Output Base : 00001084
[B74h 2932   4]             Output Reference : 00000030
[B78h 2936   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B7Ch 2940   4]                   Input base : 170301C0
[B80h 2944   4]                     ID Count : 00000000
[B84h 2948   4]                  Output Base : 00001065
[B88h 2952   4]             Output Reference : 00000030
[B8Ch 2956   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B90h 2960   4]                   Input base : 170301C1
[B94h 2964   4]                     ID Count : 00000000
[B98h 2968   4]                  Output Base : 00001005
[B9Ch 2972   4]             Output Reference : 00000030
[BA0h 2976   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BA4h 2980   4]                   Input base : 170301C2
[BA8h 2984   4]                     ID Count : 00000000
[BACh 2988   4]                  Output Base : 00001085
[BB0h 2992   4]             Output Reference : 00000030
[BB4h 2996   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BB8h 3000   4]                   Input base : 170301E0
[BBCh 3004   4]                     ID Count : 00000000
[BC0h 3008   4]                  Output Base : 00001066
[BC4h 3012   4]             Output Reference : 00000030
[BC8h 3016   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BCCh 3020   4]                   Input base : 170301E1
[BD0h 3024   4]                     ID Count : 00000000
[BD4h 3028   4]                  Output Base : 00001006
[BD8h 3032   4]             Output Reference : 00000030
[BDCh 3036   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BE0h 3040   4]                   Input base : 170301E2
[BE4h 3044   4]                     ID Count : 00000000
[BE8h 3048   4]                  Output Base : 00001086
[BECh 3052   4]             Output Reference : 00000030
[BF0h 3056   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BF4h 3060   4]                   Input base : 17030200
[BF8h 3064   4]                     ID Count : 00000000
[BFCh 3068   4]                  Output Base : 00001067
[C00h 3072   4]             Output Reference : 00000030
[C04h 3076   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C08h 3080   4]                   Input base : 17030201
[C0Ch 3084   4]                     ID Count : 00000000
[C10h 3088   4]                  Output Base : 00001007
[C14h 3092   4]             Output Reference : 00000030
[C18h 3096   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C1Ch 3100   4]                   Input base : 17030202
[C20h 3104   4]                     ID Count : 00000000
[C24h 3108   4]                  Output Base : 00001087
[C28h 3112   4]             Output Reference : 00000030
[C2Ch 3116   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C30h 3120   4]                   Input base : 17030220
[C34h 3124   4]                     ID Count : 00000000
[C38h 3128   4]                  Output Base : 00000C0B
[C3Ch 3132   4]             Output Reference : 00000030
[C40h 3136   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C44h 3140   4]                   Input base : 170A0000
[C48h 3144   4]                     ID Count : 00000000
[C4Ch 3148   4]                  Output Base : 00000C29
[C50h 3152   4]             Output Reference : 00000030
[C54h 3156   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C58h 3160   4]                   Input base : 170A0001
[C5Ch 3164   4]                     ID Count : 00000000
[C60h 3168   4]                  Output Base : 00000C09
[C64h 3172   4]             Output Reference : 00000030
[C68h 3176   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C6Ch 3180   4]                   Input base : 16030000
[C70h 3184   4]                     ID Count : 00000000
[C74h 3188   4]                  Output Base : 000010C3
[C78h 3192   4]             Output Reference : 00000030
[C7Ch 3196   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C80h 3200   4]                   Input base : 16030020
[C84h 3204   4]                     ID Count : 00000000
[C88h 3208   4]                  Output Base : 000010D6
[C8Ch 3212   4]             Output Reference : 00000030
[C90h 3216   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C94h 3220   1]                         Type : 01
[C95h 3221   2]                       Length : 0259
[C97h 3223   1]                     Revision : 00
[C98h 3224   4]                     Reserved : 00000000
[C9Ch 3228   4]                Mapping Count : 0000001B
[CA0h 3232   4]               Mapping Offset : 0000003D

[CA4h 3236   4]                   Node Flags : 00000000
[CA8h 3240   8]            Memory Properties : [IORT Memory Access Properties]
[CA8h 3240   4]              Cache Coherency : 00000000
[CACh 3244   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[CADh 3245   2]                     Reserved : 0000
[CAFh 3247   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[CB0h 3248   1]            Memory Size Limit : 24
[CB1h 3249  10]                  Device Name : "\_SB.NSPM"
[CBBh 3259  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[CD1h 3281   4]                   Input base : 18030000
[CD5h 3285   4]                     ID Count : 00000000
[CD9h 3289   4]                  Output Base : 00000C01
[CDDh 3293   4]             Output Reference : 00000030
[CE1h 3297   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[CE5h 3301   4]                   Input base : 18030001
[CE9h 3305   4]                     ID Count : 00000000
[CEDh 3309   4]                  Output Base : 00000C21
[CF1h 3313   4]             Output Reference : 00000030
[CF5h 3317   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[CF9h 3321   4]                   Input base : 18030020
[CFDh 3325   4]                     ID Count : 00000000
[D01h 3329   4]                  Output Base : 00000C02
[D05h 3333   4]             Output Reference : 00000030
[D09h 3337   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D0Dh 3341   4]                   Input base : 18030021
[D11h 3345   4]                     ID Count : 00000000
[D15h 3349   4]                  Output Base : 00000C22
[D19h 3353   4]             Output Reference : 00000030
[D1Dh 3357   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D21h 3361   4]                   Input base : 18030040
[D25h 3365   4]                     ID Count : 00000000
[D29h 3369   4]                  Output Base : 00000C03
[D2Dh 3373   4]             Output Reference : 00000030
[D31h 3377   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D35h 3381   4]                   Input base : 18030041
[D39h 3385   4]                     ID Count : 00000000
[D3Dh 3389   4]                  Output Base : 00000C23
[D41h 3393   4]             Output Reference : 00000030
[D45h 3397   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D49h 3401   4]                   Input base : 18030060
[D4Dh 3405   4]                     ID Count : 00000000
[D51h 3409   4]                  Output Base : 00000C04
[D55h 3413   4]             Output Reference : 00000030
[D59h 3417   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D5Dh 3421   4]                   Input base : 18030061
[D61h 3425   4]                     ID Count : 00000000
[D65h 3429   4]                  Output Base : 00000C24
[D69h 3433   4]             Output Reference : 00000030
[D6Dh 3437   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D71h 3441   4]                   Input base : 18030080
[D75h 3445   4]                     ID Count : 00000000
[D79h 3449   4]                  Output Base : 00000C05
[D7Dh 3453   4]             Output Reference : 00000030
[D81h 3457   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D85h 3461   4]                   Input base : 18030081
[D89h 3465   4]                     ID Count : 00000000
[D8Dh 3469   4]                  Output Base : 00000C25
[D91h 3473   4]             Output Reference : 00000030
[D95h 3477   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D99h 3481   4]                   Input base : 180300A0
[D9Dh 3485   4]                     ID Count : 00000000
[DA1h 3489   4]                  Output Base : 00000C06
[DA5h 3493   4]             Output Reference : 00000030
[DA9h 3497   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DADh 3501   4]                   Input base : 180300A1
[DB1h 3505   4]                     ID Count : 00000000
[DB5h 3509   4]                  Output Base : 00000C26
[DB9h 3513   4]             Output Reference : 00000030
[DBDh 3517   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DC1h 3521   4]                   Input base : 180300C0
[DC5h 3525   4]                     ID Count : 00000000
[DC9h 3529   4]                  Output Base : 00000C27
[DCDh 3533   4]             Output Reference : 00000030
[DD1h 3537   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DD5h 3541   4]                   Input base : 180300C1
[DD9h 3545   4]                     ID Count : 00000000
[DDDh 3549   4]                  Output Base : 00000C07
[DE1h 3553   4]             Output Reference : 00000030
[DE5h 3557   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DE9h 3561   4]                   Input base : 180300E0
[DEDh 3565   4]                     ID Count : 00000000
[DF1h 3569   4]                  Output Base : 00000C28
[DF5h 3573   4]             Output Reference : 00000030
[DF9h 3577   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DFDh 3581   4]                   Input base : 180300E1
[E01h 3585   4]                     ID Count : 00000000
[E05h 3589   4]                  Output Base : 00000C08
[E09h 3593   4]             Output Reference : 00000030
[E0Dh 3597   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E11h 3601   4]                   Input base : 18030100
[E15h 3605   4]                     ID Count : 00000000
[E19h 3609   4]                  Output Base : 00000C2C
[E1Dh 3613   4]             Output Reference : 00000030
[E21h 3617   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E25h 3621   4]                   Input base : 18030101
[E29h 3625   4]                     ID Count : 00000000
[E2Dh 3629   4]                  Output Base : 00000C0C
[E31h 3633   4]             Output Reference : 00000030
[E35h 3637   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E39h 3641   4]                   Input base : 18030120
[E3Dh 3645   4]                     ID Count : 00000000
[E41h 3649   4]                  Output Base : 00000C2D
[E45h 3653   4]             Output Reference : 00000030
[E49h 3657   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E4Dh 3661   4]                   Input base : 18030121
[E51h 3665   4]                     ID Count : 00000000
[E55h 3669   4]                  Output Base : 00000C0D
[E59h 3673   4]             Output Reference : 00000030
[E5Dh 3677   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E61h 3681   4]                   Input base : 18030140
[E65h 3685   4]                     ID Count : 00000000
[E69h 3689   4]                  Output Base : 00000C2E
[E6Dh 3693   4]             Output Reference : 00000030
[E71h 3697   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E75h 3701   4]                   Input base : 18030141
[E79h 3705   4]                     ID Count : 00000000
[E7Dh 3709   4]                  Output Base : 00000C0E
[E81h 3713   4]             Output Reference : 00000030
[E85h 3717   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E89h 3721   4]                   Input base : 18030160
[E8Dh 3725   4]                     ID Count : 00000000
[E91h 3729   4]                  Output Base : 00000C2F
[E95h 3733   4]             Output Reference : 00000030
[E99h 3737   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E9Dh 3741   4]                   Input base : 18030161
[EA1h 3745   4]                     ID Count : 00000000
[EA5h 3749   4]                  Output Base : 00000C0F
[EA9h 3753   4]             Output Reference : 00000030
[EADh 3757   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[EB1h 3761   4]                   Input base : 18030220
[EB5h 3765   4]                     ID Count : 00000000
[EB9h 3769   4]                  Output Base : 00000C0B
[EBDh 3773   4]             Output Reference : 00000030
[EC1h 3777   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[EC5h 3781   4]                   Input base : 180A0000
[EC9h 3785   4]                     ID Count : 00000000
[ECDh 3789   4]                  Output Base : 00000C29
[ED1h 3793   4]             Output Reference : 00000030
[ED5h 3797   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[ED9h 3801   4]                   Input base : 180A0001
[EDDh 3805   4]                     ID Count : 00000000
[EE1h 3809   4]                  Output Base : 00000C09
[EE5h 3813   4]             Output Reference : 00000030
[EE9h 3817   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[EEDh 3821   1]                         Type : 01
[EEEh 3822   2]                       Length : 0051
[EF0h 3824   1]                     Revision : 00
[EF1h 3825   4]                     Reserved : 00000000
[EF5h 3829   4]                Mapping Count : 00000001
[EF9h 3833   4]               Mapping Offset : 0000003D

[EFDh 3837   4]                   Node Flags : 00000000
[F01h 3841   8]            Memory Properties : [IORT Memory Access Properties]
[F01h 3841   4]              Cache Coherency : 00000000
[F05h 3845   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[F06h 3846   2]                     Reserved : 0000
[F08h 3848   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[F09h 3849   1]            Memory Size Limit : 24
[F0Ah 3850  10]                  Device Name : "\_SB.USBA"
[F14h 3860  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[F2Ah 3882   4]                   Input base : 07030000
[F2Eh 3886   4]                     ID Count : 00000000
[F32h 3890   4]                  Output Base : 0000100B
[F36h 3894   4]             Output Reference : 00000030
[F3Ah 3898   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[F3Eh 3902   1]                         Type : 01
[F3Fh 3903   2]                       Length : 0065
[F41h 3905   1]                     Revision : 00
[F42h 3906   4]                     Reserved : 00000000
[F46h 3910   4]                Mapping Count : 00000002
[F4Ah 3914   4]               Mapping Offset : 0000003D

[F4Eh 3918   4]                   Node Flags : 00000000
[F52h 3922   8]            Memory Properties : [IORT Memory Access Properties]
[F52h 3922   4]              Cache Coherency : 00000000
[F56h 3926   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[F57h 3927   2]                     Reserved : 0000
[F59h 3929   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[F5Ah 3930   1]            Memory Size Limit : 28
[F5Bh 3931  10]                  Device Name : "\_SB.QDSS"
[F65h 3941  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[F7Bh 3963   4]                   Input base : 19030000
[F7Fh 3967   4]                     ID Count : 00000000
[F83h 3971   4]                  Output Base : 000004E0
[F87h 3975   4]             Output Reference : 00000030
[F8Bh 3979   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[F8Fh 3983   4]                   Input base : 19030020
[F93h 3987   4]                     ID Count : 00000000
[F97h 3991   4]                  Output Base : 00000500
[F9Bh 3995   4]             Output Reference : 00000030
[F9Fh 3999   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[FA3h 4003   1]                         Type : 01
[FA4h 4004   2]                       Length : 0079
[FA6h 4006   1]                     Revision : 00
[FA7h 4007   4]                     Reserved : 00000000
[FABh 4011   4]                Mapping Count : 00000003
[FAFh 4015   4]               Mapping Offset : 0000003D

[FB3h 4019   4]                   Node Flags : 00000000
[FB7h 4023   8]            Memory Properties : [IORT Memory Access Properties]
[FB7h 4023   4]              Cache Coherency : 00000000
[FBBh 4027   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[FBCh 4028   2]                     Reserved : 0000
[FBEh 4030   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[FBFh 4031   1]            Memory Size Limit : 24
[FC0h 4032  15]                  Device Name : "\_SB.ADSP.ADCM"
[FCFh 4047  17]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 

[FE0h 4064   4]                   Input base : 07030020
[FE4h 4068   4]                     ID Count : 00000000
[FE8h 4072   4]                  Output Base : 00001061
[FECh 4076   4]             Output Reference : 00000030
[FF0h 4080   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[FF4h 4084   4]                   Input base : 07030021
[FF8h 4088   4]                     ID Count : 00000000
[FFCh 4092   4]                  Output Base : 00001001
[1000h 4096   4]             Output Reference : 00000030
[1004h 4100   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1008h 4104   4]                   Input base : 07030022
[100Ch 4108   4]                     ID Count : 00000000
[1010h 4112   4]                  Output Base : 00001081
[1014h 4116   4]             Output Reference : 00000030
[1018h 4120   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[101Ch 4124   1]                         Type : 01
[101Dh 4125   2]                       Length : 0065
[101Fh 4127   1]                     Revision : 00
[1020h 4128   4]                     Reserved : 00000000
[1024h 4132   4]                Mapping Count : 00000002
[1028h 4136   4]               Mapping Offset : 0000003D

[102Ch 4140   4]                   Node Flags : 00000000
[1030h 4144   8]            Memory Properties : [IORT Memory Access Properties]
[1030h 4144   4]              Cache Coherency : 00000000
[1034h 4148   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1035h 4149   2]                     Reserved : 0000
[1037h 4151   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1038h 4152   1]            Memory Size Limit : 28
[1039h 4153  10]                  Device Name : "\_SB.SDC2"
[1043h 4163  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[1059h 4185   4]                   Input base : 86030000
[105Dh 4189   4]                     ID Count : 00000000
[1061h 4193   4]                  Output Base : 00000520
[1065h 4197   4]             Output Reference : 00000030
[1069h 4201   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[106Dh 4205   4]                   Input base : 86030020
[1071h 4209   4]                     ID Count : 00000000
[1075h 4213   4]                  Output Base : 00000160
[1079h 4217   4]             Output Reference : 00000030
[107Dh 4221   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1081h 4225   1]                         Type : 01
[1082h 4226   2]                       Length : 0051
[1084h 4228   1]                     Revision : 00
[1085h 4229   4]                     Reserved : 00000000
[1089h 4233   4]                Mapping Count : 00000001
[108Dh 4237   4]               Mapping Offset : 0000003D

[1091h 4241   4]                   Node Flags : 00000000
[1095h 4245   8]            Memory Properties : [IORT Memory Access Properties]
[1095h 4245   4]              Cache Coherency : 00000001
[1099h 4249   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[109Ah 4250   2]                     Reserved : 0000
[109Ch 4252   1] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[109Dh 4253   1]            Memory Size Limit : 28
[109Eh 4254  10]                  Device Name : "\_SB.UFS0"
[10A8h 4264  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[10BEh 4286   4]                   Input base : 81030000
[10C2h 4290   4]                     ID Count : 00000000
[10C6h 4294   4]                  Output Base : 000001A0
[10CAh 4298   4]             Output Reference : 00000030
[10CEh 4302   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[10D2h 4306   1]                         Type : 01
[10D3h 4307   2]                       Length : 0051
[10D5h 4309   1]                     Revision : 00
[10D6h 4310   4]                     Reserved : 00000000
[10DAh 4314   4]                Mapping Count : 00000001
[10DEh 4318   4]               Mapping Offset : 0000003D

[10E2h 4322   4]                   Node Flags : 00000000
[10E6h 4326   8]            Memory Properties : [IORT Memory Access Properties]
[10E6h 4326   4]              Cache Coherency : 00000000
[10EAh 4330   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[10EBh 4331   2]                     Reserved : 0000
[10EDh 4333   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[10EEh 4334   1]            Memory Size Limit : 28
[10EFh 4335  10]                  Device Name : "\_SB.URS0"
[10F9h 4345  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[110Fh 4367   4]                   Input base : 80030000
[1113h 4371   4]                     ID Count : 00000000
[1117h 4375   4]                  Output Base : 00001420
[111Bh 4379   4]             Output Reference : 00000030
[111Fh 4383   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1123h 4387   1]                         Type : 01
[1124h 4388   2]                       Length : 0051
[1126h 4390   1]                     Revision : 00
[1127h 4391   4]                     Reserved : 00000000
[112Bh 4395   4]                Mapping Count : 00000001
[112Fh 4399   4]               Mapping Offset : 0000003D

[1133h 4403   4]                   Node Flags : 00000000
[1137h 4407   8]            Memory Properties : [IORT Memory Access Properties]
[1137h 4407   4]              Cache Coherency : 00000000
[113Bh 4411   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[113Ch 4412   2]                     Reserved : 0000
[113Eh 4414   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[113Fh 4415   1]            Memory Size Limit : 28
[1140h 4416  10]                  Device Name : "\_SB.URS1"
[114Ah 4426  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[1160h 4448   4]                   Input base : 80030020
[1164h 4452   4]                     ID Count : 00000000
[1168h 4456   4]                  Output Base : 00001460
[116Ch 4460   4]             Output Reference : 00000030
[1170h 4464   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1174h 4468   1]                         Type : 01
[1175h 4469   2]                       Length : 0051
[1177h 4471   1]                     Revision : 00
[1178h 4472   4]                     Reserved : 00000000
[117Ch 4476   4]                Mapping Count : 00000001
[1180h 4480   4]               Mapping Offset : 0000003D

[1184h 4484   4]                   Node Flags : 00000000
[1188h 4488   8]            Memory Properties : [IORT Memory Access Properties]
[1188h 4488   4]              Cache Coherency : 00000000
[118Ch 4492   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[118Dh 4493   2]                     Reserved : 0000
[118Fh 4495   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1190h 4496   1]            Memory Size Limit : 28
[1191h 4497  10]                  Device Name : "\_SB.URS2"
[119Bh 4507  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[11B1h 4529   4]                   Input base : 80030040
[11B5h 4533   4]                     ID Count : 00000000
[11B9h 4537   4]                  Output Base : 000014A0
[11BDh 4541   4]             Output Reference : 00000030
[11C1h 4545   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[11C5h 4549   1]                         Type : 01
[11C6h 4550   2]                       Length : 0051
[11C8h 4552   1]                     Revision : 00
[11C9h 4553   4]                     Reserved : 00000000
[11CDh 4557   4]                Mapping Count : 00000001
[11D1h 4561   4]               Mapping Offset : 0000003D

[11D5h 4565   4]                   Node Flags : 00000000
[11D9h 4569   8]            Memory Properties : [IORT Memory Access Properties]
[11D9h 4569   4]              Cache Coherency : 00000000
[11DDh 4573   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[11DEh 4574   2]                     Reserved : 0000
[11E0h 4576   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[11E1h 4577   1]            Memory Size Limit : 28
[11E2h 4578  10]                  Device Name : "\_SB.USB3"
[11ECh 4588  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[1202h 4610   4]                   Input base : 80030060
[1206h 4614   4]                     ID Count : 00000000
[120Ah 4618   4]                  Output Base : 00001400
[120Eh 4622   4]             Output Reference : 00000030
[1212h 4626   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1216h 4630   1]                         Type : 01
[1217h 4631   2]                       Length : 0079
[1219h 4633   1]                     Revision : 00
[121Ah 4634   4]                     Reserved : 00000000
[121Eh 4638   4]                Mapping Count : 00000003
[1222h 4642   4]               Mapping Offset : 0000003D

[1226h 4646   4]                   Node Flags : 00000000
[122Ah 4650   8]            Memory Properties : [IORT Memory Access Properties]
[122Ah 4650   4]              Cache Coherency : 00000000
[122Eh 4654   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[122Fh 4655   2]                     Reserved : 0000
[1231h 4657   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1232h 4658   1]            Memory Size Limit : 28
[1233h 4659  10]                  Device Name : "\_SB.UBF0"
[123Dh 4669  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[1253h 4691   4]                   Input base : 80030080
[1257h 4695   4]                     ID Count : 00000000
[125Bh 4699   4]                  Output Base : 00001440
[125Fh 4703   4]             Output Reference : 00000030
[1263h 4707   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1267h 4711   4]                   Input base : 800300A0
[126Bh 4715   4]                     ID Count : 00000000
[126Fh 4719   4]                  Output Base : 00001480
[1273h 4723   4]             Output Reference : 00000030
[1277h 4727   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[127Bh 4731   4]                   Input base : 800300C0
[127Fh 4735   4]                     ID Count : 00000000
[1283h 4739   4]                  Output Base : 000014C0
[1287h 4743   4]             Output Reference : 00000030
[128Bh 4747   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[128Fh 4751   1]                         Type : 01
[1290h 4752   2]                       Length : 0051
[1292h 4754   1]                     Revision : 00
[1293h 4755   4]                     Reserved : 00000000
[1297h 4759   4]                Mapping Count : 00000001
[129Bh 4763   4]               Mapping Offset : 0000003D

[129Fh 4767   4]                   Node Flags : 00000000
[12A3h 4771   8]            Memory Properties : [IORT Memory Access Properties]
[12A3h 4771   4]              Cache Coherency : 00000000
[12A7h 4775   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[12A8h 4776   2]                     Reserved : 0000
[12AAh 4778   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[12ABh 4779   1]            Memory Size Limit : 28
[12ACh 4780  10]                  Device Name : "\_SB.USB4"
[12B6h 4790  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[12CCh 4812   4]                   Input base : 800300E0
[12D0h 4816   4]                     ID Count : 00000000
[12D4h 4820   4]                  Output Base : 000014E0
[12D8h 4824   4]             Output Reference : 00000030
[12DCh 4828   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[12E0h 4832   1]                         Type : 01
[12E1h 4833   2]                       Length : 012D
[12E3h 4835   1]                     Revision : 00
[12E4h 4836   4]                     Reserved : 00000000
[12E8h 4840   4]                Mapping Count : 0000000C
[12ECh 4844   4]               Mapping Offset : 0000003D

[12F0h 4848   4]                   Node Flags : 00000000
[12F4h 4852   8]            Memory Properties : [IORT Memory Access Properties]
[12F4h 4852   4]              Cache Coherency : 00000000
[12F8h 4856   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[12F9h 4857   2]                     Reserved : 0000
[12FBh 4859   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[12FCh 4860   1]            Memory Size Limit : 24
[12FDh 4861  15]                  Device Name : "\_SB.GPU0.AVS0"
[130Ch 4876  17]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 

[131Dh 4893   4]                   Input base : 01030000
[1321h 4897   4]                     ID Count : 00000000
[1325h 4901   4]                  Output Base : 000018A0
[1329h 4905   4]             Output Reference : 00000030
[132Dh 4909   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1331h 4913   4]                   Input base : 01030001
[1335h 4917   4]                     ID Count : 00000000
[1339h 4921   4]                  Output Base : 00000800
[133Dh 4925   4]             Output Reference : 00000030
[1341h 4929   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1345h 4933   4]                   Input base : 01030002
[1349h 4937   4]                     ID Count : 00000000
[134Dh 4941   4]                  Output Base : 00000860
[1351h 4945   4]             Output Reference : 00000030
[1355h 4949   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1359h 4953   4]                   Input base : 01030003
[135Dh 4957   4]                     ID Count : 00000000
[1361h 4961   4]                  Output Base : 00000840
[1365h 4965   4]             Output Reference : 00000030
[1369h 4969   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[136Dh 4973   4]                   Input base : 01030004
[1371h 4977   4]                     ID Count : 00000000
[1375h 4981   4]                  Output Base : 00000820
[1379h 4985   4]             Output Reference : 00000030
[137Dh 4989   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1381h 4993   4]                   Input base : 01030020
[1385h 4997   4]                     ID Count : 00000000
[1389h 5001   4]                  Output Base : 00001900
[138Dh 5005   4]             Output Reference : 00000030
[1391h 5009   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1395h 5013   4]                   Input base : 01030021
[1399h 5017   4]                     ID Count : 00000000
[139Dh 5021   4]                  Output Base : 00001980
[13A1h 5025   4]             Output Reference : 00000030
[13A5h 5029   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[13A9h 5033   4]                   Input base : 01030022
[13ADh 5037   4]                     ID Count : 00000000
[13B1h 5041   4]                  Output Base : 000019A0
[13B5h 5045   4]             Output Reference : 00000030
[13B9h 5049   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[13BDh 5053   4]                   Input base : 01030023
[13C1h 5057   4]                     ID Count : 00000000
[13C5h 5061   4]                  Output Base : 00001840
[13C9h 5065   4]             Output Reference : 00000030
[13CDh 5069   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[13D1h 5073   4]                   Input base : 01030024
[13D5h 5077   4]                     ID Count : 00000000
[13D9h 5081   4]                  Output Base : 00001860
[13DDh 5085   4]             Output Reference : 00000030
[13E1h 5089   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[13E5h 5093   4]                   Input base : 01030025
[13E9h 5097   4]                     ID Count : 00000000
[13EDh 5101   4]                  Output Base : 00001820
[13F1h 5105   4]             Output Reference : 00000030
[13F5h 5109   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[13F9h 5113   4]                   Input base : 01030026
[13FDh 5117   4]                     ID Count : 00000000
[1401h 5121   4]                  Output Base : 00001800
[1405h 5125   4]             Output Reference : 00000030
[1409h 5129   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[140Dh 5133   1]                         Type : 01
[140Eh 5134   2]                       Length : 0079
[1410h 5136   1]                     Revision : 00
[1411h 5137   4]                     Reserved : 00000000
[1415h 5141   4]                Mapping Count : 00000003
[1419h 5145   4]               Mapping Offset : 0000003D

[141Dh 5149   4]                   Node Flags : 00000000
[1421h 5153   8]            Memory Properties : [IORT Memory Access Properties]
[1421h 5153   4]              Cache Coherency : 00000000
[1425h 5157   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1426h 5158   2]                     Reserved : 0000
[1428h 5160   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1429h 5161   1]            Memory Size Limit : 24
[142Ah 5162  10]                  Device Name : "\_SB.EVA0"
[1434h 5172  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[144Ah 5194   4]                   Input base : 1A030000
[144Eh 5198   4]                     ID Count : 00000000
[1452h 5202   4]                  Output Base : 00001920
[1456h 5206   4]             Output Reference : 00000030
[145Ah 5210   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[145Eh 5214   4]                   Input base : 1A0A0000
[1462h 5218   4]                     ID Count : 00000000
[1466h 5222   4]                  Output Base : 00001923
[146Ah 5226   4]             Output Reference : 00000030
[146Eh 5230   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1472h 5234   4]                   Input base : 1A0B0000
[1476h 5238   4]                     ID Count : 00000000
[147Ah 5242   4]                  Output Base : 00001924
[147Eh 5246   4]             Output Reference : 00000030
[1482h 5250   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1486h 5254   1]                         Type : 04
[1487h 5255   2]                       Length : 0058
[1489h 5257   1]                     Revision : 00
[148Ah 5258   4]                     Reserved : 00000000
[148Eh 5262   4]                Mapping Count : 00000001
[1492h 5266   4]               Mapping Offset : 00000044

[1496h 5270   8]                 Base Address : 0000000015400000
[149Eh 5278   4]        Flags (decoded below) : 00000001
                             COHACC Override : 1
                               HTTU Override : 0
                      Proximity Domain Valid : 0
[14A2h 5282   4]                     Reserved : 00000000
[14A6h 5286   8]                VATOS Address : 0000000000000000
[14AEh 5294   4]                        Model : 00000000
[14B2h 5298   4]                   Event GSIV : 000000AA
[14B6h 5302   4]                     PRI GSIV : 00000000
[14BAh 5306   4]                    GERR GSIV : 000000A6
[14BEh 5310   4]                    Sync GSIV : 000000A8
[14C2h 5314   4]             Proximity Domain : 00000000
[14C6h 5318   4]      Device ID Mapping Index : 00000000

[14CAh 5322   4]                   Input base : 00000000
[14CEh 5326   4]                     ID Count : 0007FFFF
[14D2h 5330   4]                  Output Base : 00080000
[14D6h 5334   4]             Output Reference : 000014DE
[14DAh 5338   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[14DEh 5342   1]                         Type : 00
[14DFh 5343   2]                       Length : 0018
[14E1h 5345   1]                     Revision : 00
[14E2h 5346   4]                     Reserved : 00000000
[14E6h 5350   4]                Mapping Count : 00000000
[14EAh 5354   4]               Mapping Offset : 00000000

[14EEh 5358   4]                     ItsCount : 00000001
[14F2h 5362   4]                  Identifiers : 00000000

Raw Table Data: Length 5366 (0x14F6)

    0000: 49 4F 52 54 F6 14 00 00 00 6D 51 43 4F 4D 20 20  // IORT.....mQCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 83 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 1E 00 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0030: 03 4C 03 00 00 00 00 00 00 00 00 00 00 00 00 00  // .L..............
    0040: 00 00 00 15 00 00 00 00 00 00 10 00 00 00 00 00  // ................
    0050: 03 00 00 00 00 00 00 00 3C 00 00 00 60 00 00 00  // ........<...`...
    0060: 4C 00 00 00 00 00 00 00 00 00 00 00 61 00 00 00  // L...........a...
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
    02F0: 01 00 00 00 B9 01 00 00 01 00 00 00 C2 01 00 00  // ................
    0300: 01 00 00 00 C3 01 00 00 01 00 00 00 BC 01 00 00  // ................
    0310: 01 00 00 00 C5 01 00 00 01 00 00 00 E3 02 00 00  // ................
    0320: 01 00 00 00 C7 01 00 00 01 00 00 00 C8 01 00 00  // ................
    0330: 01 00 00 00 C9 01 00 00 01 00 00 00 D2 02 00 00  // ................
    0340: 01 00 00 00 D3 02 00 00 01 00 00 00 D4 02 00 00  // ................
    0350: 01 00 00 00 D5 02 00 00 01 00 00 00 D6 02 00 00  // ................
    0360: 01 00 00 00 D7 02 00 00 01 00 00 00 D8 02 00 00  // ................
    0370: 01 00 00 00 D9 02 00 00 01 00 00 00 03 14 01 00  // ................
    0380: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 DA 03  // ................
    0390: 00 00 00 00 00 00 04 00 00 00 00 00 03 00 00 00  // ................
    03A0: 00 00 00 00 3C 00 00 00 19 00 00 00 4C 00 00 00  // ....<.......L...
    03B0: 00 00 00 00 00 00 00 00 C2 02 00 00 00 00 00 00  // ................
    03C0: 00 00 00 00 00 00 00 00 C6 02 00 00 01 00 00 00  // ................
    03D0: C7 02 00 00 01 00 00 00 C8 02 00 00 01 00 00 00  // ................
    03E0: C9 02 00 00 01 00 00 00 CA 02 00 00 01 00 00 00  // ................
    03F0: CB 02 00 00 01 00 00 00 CC 02 00 00 01 00 00 00  // ................
    0400: CD 02 00 00 01 00 00 00 CE 02 00 00 01 00 00 00  // ................
    0410: CF 02 00 00 01 00 00 00 D0 02 00 00 01 00 00 00  // ................
    0420: C6 01 00 00 01 00 00 00 FC 01 00 00 01 00 00 00  // ................
    0430: 5E 02 00 00 01 00 00 00 5F 02 00 00 01 00 00 00  // ^......._.......
    0440: 60 02 00 00 01 00 00 00 61 02 00 00 01 00 00 00  // `.......a.......
    0450: B4 02 00 00 01 00 00 00 B6 02 00 00 01 00 00 00  // ................
    0460: B9 02 00 00 01 00 00 00 BA 02 00 00 01 00 00 00  // ................
    0470: BB 02 00 00 01 00 00 00 BD 02 00 00 01 00 00 00  // ................
    0480: BE 02 00 00 01 00 00 00 DC 02 00 00 01 00 00 00  // ................
    0490: 02 38 00 00 00 00 00 00 01 00 00 00 24 00 00 00  // .8..........$...
    04A0: 01 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00  // ................
    04B0: 28 00 00 00 00 00 00 00 FF FF 00 00 00 00 00 00  // (...............
    04C0: 86 14 00 00 00 00 00 00 02 38 00 00 00 00 00 00  // .........8......
    04D0: 01 00 00 00 24 00 00 00 01 00 00 00 00 00 00 01  // ....$...........
    04E0: 00 00 00 00 01 00 00 00 28 00 00 00 00 00 00 00  // ........(.......
    04F0: FF FF 00 00 00 00 01 00 86 14 00 00 00 00 00 00  // ................
    0500: 02 38 00 00 00 00 00 00 01 00 00 00 24 00 00 00  // .8..........$...
    0510: 01 00 00 00 00 00 00 01 00 00 00 00 02 00 00 00  // ................
    0520: 28 00 00 00 00 00 00 00 FF FF 00 00 00 00 02 00  // (...............
    0530: 86 14 00 00 00 00 00 00 02 38 00 00 00 00 00 00  // .........8......
    0540: 01 00 00 00 24 00 00 00 01 00 00 00 00 00 00 01  // ....$...........
    0550: 00 00 00 00 03 00 00 00 28 00 00 00 00 00 00 00  // ........(.......
    0560: FF FF 00 00 00 00 03 00 86 14 00 00 00 00 00 00  // ................
    0570: 02 38 00 00 00 00 00 00 01 00 00 00 24 00 00 00  // .8..........$...
    0580: 01 00 00 00 00 00 00 01 00 00 00 00 04 00 00 00  // ................
    0590: 28 00 00 00 00 00 00 00 FF FF 00 00 00 00 04 00  // (...............
    05A0: 86 14 00 00 00 00 00 00 02 38 00 00 00 00 00 00  // .........8......
    05B0: 01 00 00 00 24 00 00 00 01 00 00 00 00 00 00 01  // ....$...........
    05C0: 00 00 00 00 05 00 00 00 28 00 00 00 00 00 00 00  // ........(.......
    05D0: FF FF 00 00 00 00 05 00 86 14 00 00 00 00 00 00  // ................
    05E0: 02 38 00 00 00 00 00 00 01 00 00 00 24 00 00 00  // .8..........$...
    05F0: 01 00 00 00 00 00 00 01 00 00 00 00 06 00 00 00  // ................
    0600: 28 00 00 00 00 00 00 00 FF FF 00 00 00 00 06 00  // (...............
    0610: 86 14 00 00 00 00 00 00 02 38 00 00 00 00 00 00  // .........8......
    0620: 01 00 00 00 24 00 00 00 01 00 00 00 00 00 00 01  // ....$...........
    0630: 00 00 00 00 07 00 00 00 28 00 00 00 00 00 00 00  // ........(.......
    0640: FF FF 00 00 00 00 07 00 86 14 00 00 00 00 00 00  // ................
    0650: 01 51 00 00 00 00 00 00 01 00 00 00 3D 00 00 00  // .Q..........=...
    0660: 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53  // ............$\_S
    0670: 42 2E 53 49 53 50 00 00 00 00 00 00 00 00 00 00  // B.SISP..........
    0680: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03  // ................
    0690: A0 00 00 00 00 00 00 00 00 30 00 00 00 00 00 00  // .........0......
    06A0: 00 01 F5 01 00 00 00 00 00 16 00 00 00 3D 00 00  // .............=..
    06B0: 00 00 00 00 00 00 00 00 00 00 00 00 00 30 5C 5F  // .............0\_
    06C0: 53 42 2E 47 50 55 30 00 00 00 00 00 00 00 00 00  // SB.GPU0.........
    06D0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    06E0: 03 03 00 00 00 00 00 00 00 00 7C 03 00 00 00 00  // ..........|.....
    06F0: 00 00 20 00 03 03 00 00 00 00 01 00 00 00 7C 03  // .. ...........|.
    0700: 00 00 00 00 00 00 40 00 03 03 00 00 00 00 04 00  // ......@.........
    0710: 00 00 7C 03 00 00 00 00 00 00 60 00 03 03 00 00  // ..|.......`.....
    0720: 00 00 05 00 00 00 7C 03 00 00 00 00 00 00 80 00  // ......|.........
    0730: 03 03 00 00 00 00 07 00 00 00 7C 03 00 00 00 00  // ..........|.....
    0740: 00 00 00 00 0A 03 00 00 00 00 02 00 00 00 7C 03  // ..............|.
    0750: 00 00 00 00 00 00 00 00 03 00 00 00 00 00 00 1C  // ................
    0760: 00 00 30 00 00 00 00 00 00 00 01 00 03 00 00 00  // ..0.............
    0770: 00 00 02 1C 00 00 30 00 00 00 00 00 00 00 00 00  // ......0.........
    0780: 0A 00 00 00 00 00 01 1C 00 00 30 00 00 00 00 00  // ..........0.....
    0790: 00 00 00 00 03 0C 00 00 00 00 80 04 00 00 30 00  // ..............0.
    07A0: 00 00 00 00 00 00 20 00 03 0C 00 00 00 00 81 04  // ...... .........
    07B0: 00 00 30 00 00 00 00 00 00 00 00 00 09 0C 00 00  // ..0.............
    07C0: 00 00 83 04 00 00 30 00 00 00 00 00 00 00 00 00  // ......0.........
    07D0: 03 04 00 00 00 00 40 19 00 00 30 00 00 00 00 00  // ......@...0.....
    07E0: 00 00 20 00 03 04 00 00 00 00 47 19 00 00 30 00  // .. .......G...0.
    07F0: 00 00 00 00 00 00 00 00 09 04 00 00 00 00 41 19  // ..............A.
    0800: 00 00 30 00 00 00 00 00 00 00 01 00 09 04 00 00  // ..0.............
    0810: 00 00 45 19 00 00 30 00 00 00 00 00 00 00 00 00  // ..E...0.........
    0820: 0A 04 00 00 00 00 43 19 00 00 30 00 00 00 00 00  // ......C...0.....
    0830: 00 00 00 00 0B 04 00 00 00 00 44 19 00 00 30 00  // ..........D...0.
    0840: 00 00 00 00 00 00 00 00 03 1B 00 00 00 00 80 18  // ................
    0850: 00 00 30 00 00 00 00 00 00 00 00 00 09 1B 00 00  // ..0.............
    0860: 00 00 85 18 00 00 30 00 00 00 00 00 00 00 00 00  // ......0.........
    0870: 0A 1B 00 00 00 00 83 18 00 00 30 00 00 00 00 00  // ..........0.....
    0880: 00 00 00 00 0B 1B 00 00 00 00 84 18 00 00 30 00  // ..............0.
    0890: 00 00 00 00 00 00 01 51 00 00 00 00 00 00 01 00  // .......Q........
    08A0: 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00 00  // ..=.............
    08B0: 00 00 24 5C 5F 53 42 2E 4A 50 47 45 00 00 00 00  // ..$\_SB.JPGE....
    08C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    08D0: 00 00 00 00 00 03 02 00 00 00 00 E0 18 00 00 30  // ...............0
    08E0: 00 00 00 00 00 00 00 01 AD 03 00 00 00 00 00 2C  // ...............,
    08F0: 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00  // ...=............
    0900: 00 00 00 24 5C 5F 53 42 2E 41 52 50 43 00 00 00  // ...$\_SB.ARPC...
    0910: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0920: 00 00 00 00 00 00 03 17 00 00 00 00 01 0C 00 00  // ................
    0930: 30 00 00 00 00 00 00 00 01 00 03 17 00 00 00 00  // 0...............
    0940: 21 0C 00 00 30 00 00 00 00 00 00 00 20 00 03 17  // !...0....... ...
    0950: 00 00 00 00 02 0C 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0960: 21 00 03 17 00 00 00 00 22 0C 00 00 30 00 00 00  // !......."...0...
    0970: 00 00 00 00 40 00 03 17 00 00 00 00 03 0C 00 00  // ....@...........
    0980: 30 00 00 00 00 00 00 00 41 00 03 17 00 00 00 00  // 0.......A.......
    0990: 23 0C 00 00 30 00 00 00 00 00 00 00 60 00 03 17  // #...0.......`...
    09A0: 00 00 00 00 04 0C 00 00 30 00 00 00 00 00 00 00  // ........0.......
    09B0: 61 00 03 17 00 00 00 00 24 0C 00 00 30 00 00 00  // a.......$...0...
    09C0: 00 00 00 00 80 00 03 17 00 00 00 00 05 0C 00 00  // ................
    09D0: 30 00 00 00 00 00 00 00 81 00 03 17 00 00 00 00  // 0...............
    09E0: 25 0C 00 00 30 00 00 00 00 00 00 00 A0 00 03 17  // %...0...........
    09F0: 00 00 00 00 06 0C 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0A00: A1 00 03 17 00 00 00 00 26 0C 00 00 30 00 00 00  // ........&...0...
    0A10: 00 00 00 00 C0 00 03 17 00 00 00 00 27 0C 00 00  // ............'...
    0A20: 30 00 00 00 00 00 00 00 C1 00 03 17 00 00 00 00  // 0...............
    0A30: 07 0C 00 00 30 00 00 00 00 00 00 00 E0 00 03 17  // ....0...........
    0A40: 00 00 00 00 28 0C 00 00 30 00 00 00 00 00 00 00  // ....(...0.......
    0A50: E1 00 03 17 00 00 00 00 08 0C 00 00 30 00 00 00  // ............0...
    0A60: 00 00 00 00 00 01 03 17 00 00 00 00 2C 0C 00 00  // ............,...
    0A70: 30 00 00 00 00 00 00 00 01 01 03 17 00 00 00 00  // 0...............
    0A80: 0C 0C 00 00 30 00 00 00 00 00 00 00 20 01 03 17  // ....0....... ...
    0A90: 00 00 00 00 2D 0C 00 00 30 00 00 00 00 00 00 00  // ....-...0.......
    0AA0: 21 01 03 17 00 00 00 00 0D 0C 00 00 30 00 00 00  // !...........0...
    0AB0: 00 00 00 00 40 01 03 17 00 00 00 00 2E 0C 00 00  // ....@...........
    0AC0: 30 00 00 00 00 00 00 00 41 01 03 17 00 00 00 00  // 0.......A.......
    0AD0: 0E 0C 00 00 30 00 00 00 00 00 00 00 60 01 03 17  // ....0.......`...
    0AE0: 00 00 00 00 2F 0C 00 00 30 00 00 00 00 00 00 00  // ..../...0.......
    0AF0: 61 01 03 17 00 00 00 00 0F 0C 00 00 30 00 00 00  // a...........0...
    0B00: 00 00 00 00 80 01 03 17 00 00 00 00 63 10 00 00  // ............c...
    0B10: 30 00 00 00 00 00 00 00 81 01 03 17 00 00 00 00  // 0...............
    0B20: 03 10 00 00 30 00 00 00 00 00 00 00 82 01 03 17  // ....0...........
    0B30: 00 00 00 00 83 10 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0B40: A0 01 03 17 00 00 00 00 64 10 00 00 30 00 00 00  // ........d...0...
    0B50: 00 00 00 00 A1 01 03 17 00 00 00 00 04 10 00 00  // ................
    0B60: 30 00 00 00 00 00 00 00 A2 01 03 17 00 00 00 00  // 0...............
    0B70: 84 10 00 00 30 00 00 00 00 00 00 00 C0 01 03 17  // ....0...........
    0B80: 00 00 00 00 65 10 00 00 30 00 00 00 00 00 00 00  // ....e...0.......
    0B90: C1 01 03 17 00 00 00 00 05 10 00 00 30 00 00 00  // ............0...
    0BA0: 00 00 00 00 C2 01 03 17 00 00 00 00 85 10 00 00  // ................
    0BB0: 30 00 00 00 00 00 00 00 E0 01 03 17 00 00 00 00  // 0...............
    0BC0: 66 10 00 00 30 00 00 00 00 00 00 00 E1 01 03 17  // f...0...........
    0BD0: 00 00 00 00 06 10 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0BE0: E2 01 03 17 00 00 00 00 86 10 00 00 30 00 00 00  // ............0...
    0BF0: 00 00 00 00 00 02 03 17 00 00 00 00 67 10 00 00  // ............g...
    0C00: 30 00 00 00 00 00 00 00 01 02 03 17 00 00 00 00  // 0...............
    0C10: 07 10 00 00 30 00 00 00 00 00 00 00 02 02 03 17  // ....0...........
    0C20: 00 00 00 00 87 10 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0C30: 20 02 03 17 00 00 00 00 0B 0C 00 00 30 00 00 00  //  ...........0...
    0C40: 00 00 00 00 00 00 0A 17 00 00 00 00 29 0C 00 00  // ............)...
    0C50: 30 00 00 00 00 00 00 00 01 00 0A 17 00 00 00 00  // 0...............
    0C60: 09 0C 00 00 30 00 00 00 00 00 00 00 00 00 03 16  // ....0...........
    0C70: 00 00 00 00 C3 10 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0C80: 20 00 03 16 00 00 00 00 D6 10 00 00 30 00 00 00  //  ...........0...
    0C90: 00 00 00 00 01 59 02 00 00 00 00 00 1B 00 00 00  // .....Y..........
    0CA0: 3D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // =...............
    0CB0: 24 5C 5F 53 42 2E 4E 53 50 4D 00 00 00 00 00 00  // $\_SB.NSPM......
    0CC0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0CD0: 00 00 00 03 18 00 00 00 00 01 0C 00 00 30 00 00  // .............0..
    0CE0: 00 00 00 00 00 01 00 03 18 00 00 00 00 21 0C 00  // .............!..
    0CF0: 00 30 00 00 00 00 00 00 00 20 00 03 18 00 00 00  // .0....... ......
    0D00: 00 02 0C 00 00 30 00 00 00 00 00 00 00 21 00 03  // .....0.......!..
    0D10: 18 00 00 00 00 22 0C 00 00 30 00 00 00 00 00 00  // ....."...0......
    0D20: 00 40 00 03 18 00 00 00 00 03 0C 00 00 30 00 00  // .@...........0..
    0D30: 00 00 00 00 00 41 00 03 18 00 00 00 00 23 0C 00  // .....A.......#..
    0D40: 00 30 00 00 00 00 00 00 00 60 00 03 18 00 00 00  // .0.......`......
    0D50: 00 04 0C 00 00 30 00 00 00 00 00 00 00 61 00 03  // .....0.......a..
    0D60: 18 00 00 00 00 24 0C 00 00 30 00 00 00 00 00 00  // .....$...0......
    0D70: 00 80 00 03 18 00 00 00 00 05 0C 00 00 30 00 00  // .............0..
    0D80: 00 00 00 00 00 81 00 03 18 00 00 00 00 25 0C 00  // .............%..
    0D90: 00 30 00 00 00 00 00 00 00 A0 00 03 18 00 00 00  // .0..............
    0DA0: 00 06 0C 00 00 30 00 00 00 00 00 00 00 A1 00 03  // .....0..........
    0DB0: 18 00 00 00 00 26 0C 00 00 30 00 00 00 00 00 00  // .....&...0......
    0DC0: 00 C0 00 03 18 00 00 00 00 27 0C 00 00 30 00 00  // .........'...0..
    0DD0: 00 00 00 00 00 C1 00 03 18 00 00 00 00 07 0C 00  // ................
    0DE0: 00 30 00 00 00 00 00 00 00 E0 00 03 18 00 00 00  // .0..............
    0DF0: 00 28 0C 00 00 30 00 00 00 00 00 00 00 E1 00 03  // .(...0..........
    0E00: 18 00 00 00 00 08 0C 00 00 30 00 00 00 00 00 00  // .........0......
    0E10: 00 00 01 03 18 00 00 00 00 2C 0C 00 00 30 00 00  // .........,...0..
    0E20: 00 00 00 00 00 01 01 03 18 00 00 00 00 0C 0C 00  // ................
    0E30: 00 30 00 00 00 00 00 00 00 20 01 03 18 00 00 00  // .0....... ......
    0E40: 00 2D 0C 00 00 30 00 00 00 00 00 00 00 21 01 03  // .-...0.......!..
    0E50: 18 00 00 00 00 0D 0C 00 00 30 00 00 00 00 00 00  // .........0......
    0E60: 00 40 01 03 18 00 00 00 00 2E 0C 00 00 30 00 00  // .@...........0..
    0E70: 00 00 00 00 00 41 01 03 18 00 00 00 00 0E 0C 00  // .....A..........
    0E80: 00 30 00 00 00 00 00 00 00 60 01 03 18 00 00 00  // .0.......`......
    0E90: 00 2F 0C 00 00 30 00 00 00 00 00 00 00 61 01 03  // ./...0.......a..
    0EA0: 18 00 00 00 00 0F 0C 00 00 30 00 00 00 00 00 00  // .........0......
    0EB0: 00 20 02 03 18 00 00 00 00 0B 0C 00 00 30 00 00  // . ...........0..
    0EC0: 00 00 00 00 00 00 00 0A 18 00 00 00 00 29 0C 00  // .............)..
    0ED0: 00 30 00 00 00 00 00 00 00 01 00 0A 18 00 00 00  // .0..............
    0EE0: 00 09 0C 00 00 30 00 00 00 00 00 00 00 01 51 00  // .....0........Q.
    0EF0: 00 00 00 00 00 01 00 00 00 3D 00 00 00 00 00 00  // .........=......
    0F00: 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E 55  // .........$\_SB.U
    0F10: 53 42 41 00 00 00 00 00 00 00 00 00 00 00 00 00  // SBA.............
    0F20: 00 00 00 00 00 00 00 00 00 00 00 00 03 07 00 00  // ................
    0F30: 00 00 0B 10 00 00 30 00 00 00 00 00 00 00 01 65  // ......0........e
    0F40: 00 00 00 00 00 00 02 00 00 00 3D 00 00 00 00 00  // ..........=.....
    0F50: 00 00 00 00 00 00 00 00 00 00 28 5C 5F 53 42 2E  // ..........(\_SB.
    0F60: 51 44 53 53 00 00 00 00 00 00 00 00 00 00 00 00  // QDSS............
    0F70: 00 00 00 00 00 00 00 00 00 00 00 00 00 03 19 00  // ................
    0F80: 00 00 00 E0 04 00 00 30 00 00 00 00 00 00 00 20  // .......0....... 
    0F90: 00 03 19 00 00 00 00 00 05 00 00 30 00 00 00 00  // ...........0....
    0FA0: 00 00 00 01 79 00 00 00 00 00 00 03 00 00 00 3D  // ....y..........=
    0FB0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24  // ...............$
    0FC0: 5C 5F 53 42 2E 41 44 53 50 2E 41 44 43 4D 00 00  // \_SB.ADSP.ADCM..
    0FD0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0FE0: 20 00 03 07 00 00 00 00 61 10 00 00 30 00 00 00  //  .......a...0...
    0FF0: 00 00 00 00 21 00 03 07 00 00 00 00 01 10 00 00  // ....!...........
    1000: 30 00 00 00 00 00 00 00 22 00 03 07 00 00 00 00  // 0.......".......
    1010: 81 10 00 00 30 00 00 00 00 00 00 00 01 65 00 00  // ....0........e..
    1020: 00 00 00 00 02 00 00 00 3D 00 00 00 00 00 00 00  // ........=.......
    1030: 00 00 00 00 00 00 00 00 28 5C 5F 53 42 2E 53 44  // ........(\_SB.SD
    1040: 43 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // C2..............
    1050: 00 00 00 00 00 00 00 00 00 00 00 03 86 00 00 00  // ................
    1060: 00 20 05 00 00 30 00 00 00 00 00 00 00 20 00 03  // . ...0....... ..
    1070: 86 00 00 00 00 60 01 00 00 30 00 00 00 00 00 00  // .....`...0......
    1080: 00 01 51 00 00 00 00 00 00 01 00 00 00 3D 00 00  // ..Q..........=..
    1090: 00 00 00 00 00 01 00 00 00 00 00 00 01 28 5C 5F  // .............(\_
    10A0: 53 42 2E 55 46 53 30 00 00 00 00 00 00 00 00 00  // SB.UFS0.........
    10B0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    10C0: 03 81 00 00 00 00 A0 01 00 00 30 00 00 00 00 00  // ..........0.....
    10D0: 00 00 01 51 00 00 00 00 00 00 01 00 00 00 3D 00  // ...Q..........=.
    10E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 28 5C  // ..............(\
    10F0: 5F 53 42 2E 55 52 53 30 00 00 00 00 00 00 00 00  // _SB.URS0........
    1100: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1110: 00 03 80 00 00 00 00 20 14 00 00 30 00 00 00 00  // ....... ...0....
    1120: 00 00 00 01 51 00 00 00 00 00 00 01 00 00 00 3D  // ....Q..........=
    1130: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 28  // ...............(
    1140: 5C 5F 53 42 2E 55 52 53 31 00 00 00 00 00 00 00  // \_SB.URS1.......
    1150: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1160: 20 00 03 80 00 00 00 00 60 14 00 00 30 00 00 00  //  .......`...0...
    1170: 00 00 00 00 01 51 00 00 00 00 00 00 01 00 00 00  // .....Q..........
    1180: 3D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // =...............
    1190: 28 5C 5F 53 42 2E 55 52 53 32 00 00 00 00 00 00  // (\_SB.URS2......
    11A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    11B0: 00 40 00 03 80 00 00 00 00 A0 14 00 00 30 00 00  // .@...........0..
    11C0: 00 00 00 00 00 01 51 00 00 00 00 00 00 01 00 00  // ......Q.........
    11D0: 00 3D 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // .=..............
    11E0: 00 28 5C 5F 53 42 2E 55 53 42 33 00 00 00 00 00  // .(\_SB.USB3.....
    11F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1200: 00 00 60 00 03 80 00 00 00 00 00 14 00 00 30 00  // ..`...........0.
    1210: 00 00 00 00 00 00 01 79 00 00 00 00 00 00 03 00  // .......y........
    1220: 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00 00  // ..=.............
    1230: 00 00 28 5C 5F 53 42 2E 55 42 46 30 00 00 00 00  // ..(\_SB.UBF0....
    1240: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1250: 00 00 00 80 00 03 80 00 00 00 00 40 14 00 00 30  // ...........@...0
    1260: 00 00 00 00 00 00 00 A0 00 03 80 00 00 00 00 80  // ................
    1270: 14 00 00 30 00 00 00 00 00 00 00 C0 00 03 80 00  // ...0............
    1280: 00 00 00 C0 14 00 00 30 00 00 00 00 00 00 00 01  // .......0........
    1290: 51 00 00 00 00 00 00 01 00 00 00 3D 00 00 00 00  // Q..........=....
    12A0: 00 00 00 00 00 00 00 00 00 00 00 28 5C 5F 53 42  // ...........(\_SB
    12B0: 2E 55 53 42 34 00 00 00 00 00 00 00 00 00 00 00  // .USB4...........
    12C0: 00 00 00 00 00 00 00 00 00 00 00 00 E0 00 03 80  // ................
    12D0: 00 00 00 00 E0 14 00 00 30 00 00 00 00 00 00 00  // ........0.......
    12E0: 01 2D 01 00 00 00 00 00 0C 00 00 00 3D 00 00 00  // .-..........=...
    12F0: 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53  // ............$\_S
    1300: 42 2E 47 50 55 30 2E 41 56 53 30 00 00 00 00 00  // B.GPU0.AVS0.....
    1310: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03  // ................
    1320: 01 00 00 00 00 A0 18 00 00 30 00 00 00 00 00 00  // .........0......
    1330: 00 01 00 03 01 00 00 00 00 00 08 00 00 30 00 00  // .............0..
    1340: 00 00 00 00 00 02 00 03 01 00 00 00 00 60 08 00  // .............`..
    1350: 00 30 00 00 00 00 00 00 00 03 00 03 01 00 00 00  // .0..............
    1360: 00 40 08 00 00 30 00 00 00 00 00 00 00 04 00 03  // .@...0..........
    1370: 01 00 00 00 00 20 08 00 00 30 00 00 00 00 00 00  // ..... ...0......
    1380: 00 20 00 03 01 00 00 00 00 00 19 00 00 30 00 00  // . ...........0..
    1390: 00 00 00 00 00 21 00 03 01 00 00 00 00 80 19 00  // .....!..........
    13A0: 00 30 00 00 00 00 00 00 00 22 00 03 01 00 00 00  // .0......."......
    13B0: 00 A0 19 00 00 30 00 00 00 00 00 00 00 23 00 03  // .....0.......#..
    13C0: 01 00 00 00 00 40 18 00 00 30 00 00 00 00 00 00  // .....@...0......
    13D0: 00 24 00 03 01 00 00 00 00 60 18 00 00 30 00 00  // .$.......`...0..
    13E0: 00 00 00 00 00 25 00 03 01 00 00 00 00 20 18 00  // .....%....... ..
    13F0: 00 30 00 00 00 00 00 00 00 26 00 03 01 00 00 00  // .0.......&......
    1400: 00 00 18 00 00 30 00 00 00 00 00 00 00 01 79 00  // .....0........y.
    1410: 00 00 00 00 00 03 00 00 00 3D 00 00 00 00 00 00  // .........=......
    1420: 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E 45  // .........$\_SB.E
    1430: 56 41 30 00 00 00 00 00 00 00 00 00 00 00 00 00  // VA0.............
    1440: 00 00 00 00 00 00 00 00 00 00 00 00 03 1A 00 00  // ................
    1450: 00 00 20 19 00 00 30 00 00 00 00 00 00 00 00 00  // .. ...0.........
    1460: 0A 1A 00 00 00 00 23 19 00 00 30 00 00 00 00 00  // ......#...0.....
    1470: 00 00 00 00 0B 1A 00 00 00 00 24 19 00 00 30 00  // ..........$...0.
    1480: 00 00 00 00 00 00 04 58 00 00 00 00 00 00 01 00  // .......X........
    1490: 00 00 44 00 00 00 00 00 40 15 00 00 00 00 01 00  // ..D.....@.......
    14A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    14B0: 00 00 AA 00 00 00 00 00 00 00 A6 00 00 00 A8 00  // ................
    14C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 FF FF  // ................
    14D0: 07 00 00 00 08 00 DE 14 00 00 00 00 00 00 00 18  // ................
    14E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00  // ................
    14F0: 00 00 00 00 00 00                                // ......
