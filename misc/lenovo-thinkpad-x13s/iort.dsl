/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (32-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of iort.dat, Sun Feb 12 23:37:32 2023
 *
 * ACPI Data Table [IORT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "IORT"    [IO Remapping Table]
[004h 0004 004h]                Table Length : 0000189C
[008h 0008 001h]                    Revision : 00
[009h 0009 001h]                    Checksum : 84
[00Ah 0010 006h]                      Oem ID : "LENOVO"
[010h 0016 008h]                Oem Table ID : "TP-N3H  "
[018h 0024 004h]                Oem Revision : 00001480
[01Ch 0028 004h]             Asl Compiler ID : "PTEC"
[020h 0032 004h]       Asl Compiler Revision : 00001480

[024h 0036 004h]                  Node Count : 00000017
[028h 0040 004h]                 Node Offset : 00000030
[02Ch 0044 004h]                    Reserved : 00000000

[030h 0048 001h]                        Type : 03
[031h 0049 002h]                      Length : 04CC
[033h 0051 001h]                    Revision : 00
[034h 0052 004h]                    Reserved : 00000000
[038h 0056 004h]               Mapping Count : 00000000
[03Ch 0060 004h]              Mapping Offset : 00000000

[040h 0064 008h]                Base Address : 0000000015000000
[048h 0072 008h]                        Span : 0000000000100000
[050h 0080 004h]                       Model : 00000003
[054h 0084 004h]       Flags (decoded below) : 00000000
                               DVM Supported : 0
                               Coherent Walk : 0
[058h 0088 004h]     Global Interrupt Offset : 0000003C
[05Ch 0092 004h]     Context Interrupt Count : 00000080
[060h 0096 004h]    Context Interrupt Offset : 0000004C
[064h 0100 004h]         PMU Interrupt Count : 00000010
[068h 0104 004h]        PMU Interrupt Offset : 0000044C

[06Ch 0108 004h]                     NSgIrpt : 00000061
[070h 0112 004h] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[074h 0116 004h]                  NSgCfgIrpt : 00000000
[078h 0120 004h] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[07Ch 0124 008h]           Context Interrupt : 0000000100000087
[084h 0132 008h]           Context Interrupt : 0000000100000088
[08Ch 0140 008h]           Context Interrupt : 0000000100000089
[094h 0148 008h]           Context Interrupt : 000000010000008A
[09Ch 0156 008h]           Context Interrupt : 000000010000008B
[0A4h 0164 008h]           Context Interrupt : 000000010000008C
[0ACh 0172 008h]           Context Interrupt : 000000010000008D
[0B4h 0180 008h]           Context Interrupt : 000000010000008E
[0BCh 0188 008h]           Context Interrupt : 000000010000008F
[0C4h 0196 008h]           Context Interrupt : 0000000100000090
[0CCh 0204 008h]           Context Interrupt : 0000000100000091
[0D4h 0212 008h]           Context Interrupt : 0000000100000092
[0DCh 0220 008h]           Context Interrupt : 0000000100000093
[0E4h 0228 008h]           Context Interrupt : 0000000100000094
[0ECh 0236 008h]           Context Interrupt : 0000000100000095
[0F4h 0244 008h]           Context Interrupt : 0000000100000096
[0FCh 0252 008h]           Context Interrupt : 00000001000000D5
[104h 0260 008h]           Context Interrupt : 00000001000000D6
[10Ch 0268 008h]           Context Interrupt : 00000001000000D7
[114h 0276 008h]           Context Interrupt : 00000001000000D8
[11Ch 0284 008h]           Context Interrupt : 00000001000000D9
[124h 0292 008h]           Context Interrupt : 00000001000000DA
[12Ch 0300 008h]           Context Interrupt : 00000001000000DB
[134h 0308 008h]           Context Interrupt : 00000001000000DC
[13Ch 0316 008h]           Context Interrupt : 00000001000000DD
[144h 0324 008h]           Context Interrupt : 00000001000000DE
[14Ch 0332 008h]           Context Interrupt : 00000001000000DF
[154h 0340 008h]           Context Interrupt : 00000001000000E0
[15Ch 0348 008h]           Context Interrupt : 000000010000015B
[164h 0356 008h]           Context Interrupt : 000000010000015C
[16Ch 0364 008h]           Context Interrupt : 000000010000015D
[174h 0372 008h]           Context Interrupt : 000000010000015E
[17Ch 0380 008h]           Context Interrupt : 000000010000015F
[184h 0388 008h]           Context Interrupt : 0000000100000160
[18Ch 0396 008h]           Context Interrupt : 0000000100000161
[194h 0404 008h]           Context Interrupt : 0000000100000162
[19Ch 0412 008h]           Context Interrupt : 0000000100000163
[1A4h 0420 008h]           Context Interrupt : 0000000100000164
[1ACh 0428 008h]           Context Interrupt : 0000000100000165
[1B4h 0436 008h]           Context Interrupt : 0000000100000166
[1BCh 0444 008h]           Context Interrupt : 0000000100000167
[1C4h 0452 008h]           Context Interrupt : 0000000100000168
[1CCh 0460 008h]           Context Interrupt : 0000000100000169
[1D4h 0468 008h]           Context Interrupt : 000000010000016A
[1DCh 0476 008h]           Context Interrupt : 000000010000016B
[1E4h 0484 008h]           Context Interrupt : 000000010000016C
[1ECh 0492 008h]           Context Interrupt : 000000010000016D
[1F4h 0500 008h]           Context Interrupt : 000000010000016E
[1FCh 0508 008h]           Context Interrupt : 000000010000016F
[204h 0516 008h]           Context Interrupt : 0000000100000170
[20Ch 0524 008h]           Context Interrupt : 0000000100000171
[214h 0532 008h]           Context Interrupt : 0000000100000172
[21Ch 0540 008h]           Context Interrupt : 0000000100000173
[224h 0548 008h]           Context Interrupt : 0000000100000174
[22Ch 0556 008h]           Context Interrupt : 0000000100000175
[234h 0564 008h]           Context Interrupt : 0000000100000176
[23Ch 0572 008h]           Context Interrupt : 0000000100000177
[244h 0580 008h]           Context Interrupt : 0000000100000178
[24Ch 0588 008h]           Context Interrupt : 0000000100000179
[254h 0596 008h]           Context Interrupt : 00000001000001AB
[25Ch 0604 008h]           Context Interrupt : 00000001000001AC
[264h 0612 008h]           Context Interrupt : 00000001000001AD
[26Ch 0620 008h]           Context Interrupt : 00000001000001AE
[274h 0628 008h]           Context Interrupt : 00000001000001AF
[27Ch 0636 008h]           Context Interrupt : 00000001000001B0
[284h 0644 008h]           Context Interrupt : 00000001000001B1
[28Ch 0652 008h]           Context Interrupt : 00000001000001B2
[294h 0660 008h]           Context Interrupt : 00000001000001B3
[29Ch 0668 008h]           Context Interrupt : 00000001000001B4
[2A4h 0676 008h]           Context Interrupt : 00000001000001B5
[2ACh 0684 008h]           Context Interrupt : 00000001000001B6
[2B4h 0692 008h]           Context Interrupt : 00000001000001B7
[2BCh 0700 008h]           Context Interrupt : 00000001000001B8
[2C4h 0708 008h]           Context Interrupt : 00000001000001B9
[2CCh 0716 008h]           Context Interrupt : 00000001000001C2
[2D4h 0724 008h]           Context Interrupt : 00000001000001C3
[2DCh 0732 008h]           Context Interrupt : 00000001000001BC
[2E4h 0740 008h]           Context Interrupt : 00000001000001C5
[2ECh 0748 008h]           Context Interrupt : 00000001000002E2
[2F4h 0756 008h]           Context Interrupt : 00000001000001C7
[2FCh 0764 008h]           Context Interrupt : 00000001000001C8
[304h 0772 008h]           Context Interrupt : 00000001000001C9
[30Ch 0780 008h]           Context Interrupt : 00000001000002D1
[314h 0788 008h]           Context Interrupt : 00000001000002D2
[31Ch 0796 008h]           Context Interrupt : 00000001000002D3
[324h 0804 008h]           Context Interrupt : 00000001000002D4
[32Ch 0812 008h]           Context Interrupt : 00000001000002D5
[334h 0820 008h]           Context Interrupt : 00000001000002D6
[33Ch 0828 008h]           Context Interrupt : 00000001000002D7
[344h 0836 008h]           Context Interrupt : 00000001000002D8
[34Ch 0844 008h]           Context Interrupt : 00000001000001BA
[354h 0852 008h]           Context Interrupt : 00000001000001BB
[35Ch 0860 008h]           Context Interrupt : 00000001000001C4
[364h 0868 008h]           Context Interrupt : 00000001000001BD
[36Ch 0876 008h]           Context Interrupt : 00000001000001C6
[374h 0884 008h]           Context Interrupt : 00000001000002E3
[37Ch 0892 008h]           Context Interrupt : 00000001000002E4
[384h 0900 008h]           Context Interrupt : 00000001000002E5
[38Ch 0908 008h]           Context Interrupt : 00000001000002E6
[394h 0916 008h]           Context Interrupt : 00000001000002E7
[39Ch 0924 008h]           Context Interrupt : 00000001000001BE
[3A4h 0932 008h]           Context Interrupt : 00000001000002E8
[3ACh 0940 008h]           Context Interrupt : 00000001000002E9
[3B4h 0948 008h]           Context Interrupt : 00000001000002EA
[3BCh 0956 008h]           Context Interrupt : 00000001000002EB
[3C4h 0964 008h]           Context Interrupt : 00000001000003B0
[3CCh 0972 008h]           Context Interrupt : 00000001000003AF
[3D4h 0980 008h]           Context Interrupt : 00000001000003AE
[3DCh 0988 008h]           Context Interrupt : 00000001000003AD
[3E4h 0996 008h]           Context Interrupt : 00000001000003AC
[3ECh 1004 008h]           Context Interrupt : 00000001000003AB
[3F4h 1012 008h]           Context Interrupt : 00000001000003AA
[3FCh 1020 008h]           Context Interrupt : 00000001000003A9
[404h 1028 008h]           Context Interrupt : 00000001000003A8
[40Ch 1036 008h]           Context Interrupt : 00000001000003A7
[414h 1044 008h]           Context Interrupt : 00000001000003A6
[41Ch 1052 008h]           Context Interrupt : 00000001000003A5
[424h 1060 008h]           Context Interrupt : 00000001000003A4
[42Ch 1068 008h]           Context Interrupt : 00000001000003A3
[434h 1076 008h]           Context Interrupt : 00000001000003A2
[43Ch 1084 008h]           Context Interrupt : 00000001000003A1
[444h 1092 008h]           Context Interrupt : 00000001000003A0
[44Ch 1100 008h]           Context Interrupt : 000000010000039F
[454h 1108 008h]           Context Interrupt : 000000010000039E
[45Ch 1116 008h]           Context Interrupt : 000000010000039D
[464h 1124 008h]           Context Interrupt : 000000010000039C
[46Ch 1132 008h]           Context Interrupt : 000000010000039B
[474h 1140 008h]           Context Interrupt : 000000010000039A
[47Ch 1148 008h]               PMU Interrupt : 0000000100000064
[484h 1156 008h]               PMU Interrupt : 0000000100000065
[48Ch 1164 008h]               PMU Interrupt : 0000000100000066
[494h 1172 008h]               PMU Interrupt : 0000000100000067
[49Ch 1180 008h]               PMU Interrupt : 0000000100000068
[4A4h 1188 008h]               PMU Interrupt : 0000000100000069
[4ACh 1196 008h]               PMU Interrupt : 000000010000007E
[4B4h 1204 008h]               PMU Interrupt : 000000010000007F
[4BCh 1212 008h]               PMU Interrupt : 0000000100000080
[4C4h 1220 008h]               PMU Interrupt : 0000000100000081
[4CCh 1228 008h]               PMU Interrupt : 0000000100000082
[4D4h 1236 008h]               PMU Interrupt : 0000000100000083
[4DCh 1244 008h]               PMU Interrupt : 0000000100000084
[4E4h 1252 008h]               PMU Interrupt : 0000000100000085
[4ECh 1260 008h]               PMU Interrupt : 0000000100000086
[4F4h 1268 008h]               PMU Interrupt : 00000001000001CA

[4FCh 1276 001h]                        Type : 03
[4FDh 1277 002h]                      Length : 00BC
[4FFh 1279 001h]                    Revision : 00
[500h 1280 004h]                    Reserved : 00000000
[504h 1284 004h]               Mapping Count : 00000000
[508h 1288 004h]              Mapping Offset : 00000000

[50Ch 1292 008h]                Base Address : 0000000003DA0000
[514h 1300 008h]                        Span : 0000000000020000
[51Ch 1308 004h]                       Model : 00000003
[520h 1312 004h]       Flags (decoded below) : 00000000
                               DVM Supported : 0
                               Coherent Walk : 0
[524h 1316 004h]     Global Interrupt Offset : 0000003C
[528h 1320 004h]     Context Interrupt Count : 0000000A
[52Ch 1324 004h]    Context Interrupt Offset : 0000004C
[530h 1328 004h]         PMU Interrupt Count : 00000004
[534h 1332 004h]        PMU Interrupt Offset : 0000009C

[538h 1336 004h]                     NSgIrpt : 000002C1
[53Ch 1340 004h] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[540h 1344 004h]                  NSgCfgIrpt : 00000000
[544h 1348 004h] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[548h 1352 008h]           Context Interrupt : 00000001000002C8
[550h 1360 008h]           Context Interrupt : 00000001000002C9
[558h 1368 008h]           Context Interrupt : 00000001000002CA
[560h 1376 008h]           Context Interrupt : 00000001000002CB
[568h 1384 008h]           Context Interrupt : 00000001000002CC
[570h 1392 008h]           Context Interrupt : 00000001000002CD
[578h 1400 008h]           Context Interrupt : 00000001000002CE
[580h 1408 008h]           Context Interrupt : 00000001000002CF
[588h 1416 008h]           Context Interrupt : 00000001000002D0
[590h 1424 008h]           Context Interrupt : 00000001000002DF
[598h 1432 008h]               PMU Interrupt : 00000001000002C4
[5A0h 1440 008h]               PMU Interrupt : 00000001000002C5
[5A8h 1448 008h]               PMU Interrupt : 00000001000002C6
[5B0h 1456 008h]               PMU Interrupt : 00000001000002C7

[5B8h 1464 001h]                        Type : 02
[5B9h 1465 002h]                      Length : 0038
[5BBh 1467 001h]                    Revision : 00
[5BCh 1468 004h]                    Reserved : 00000000
[5C0h 1472 004h]               Mapping Count : 00000001
[5C4h 1476 004h]              Mapping Offset : 00000024

[5C8h 1480 008h]           Memory Properties : [IORT Memory Access Properties]
[5C8h 1480 004h]             Cache Coherency : 00000001
[5CCh 1484 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[5CDh 1485 002h]                    Reserved : 0000
[5CFh 1487 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[5D0h 1488 004h]               ATS Attribute : 00000000
[5D4h 1492 004h]          PCI Segment Number : 00000000
[5D8h 1496 001h]           Memory Size Limit : 24
[5D9h 1497 002h]          PASID Capabilities : 0000
[5DBh 1499 001h]                    Reserved : 00

[5DCh 1500 004h]                  Input base : 00000000
[5E0h 1504 004h]                    ID Count : 0000FFFF
[5E4h 1508 004h]                 Output Base : 00000000
[5E8h 1512 004h]            Output Reference : 0000182C
[5ECh 1516 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[5F0h 1520 001h]                        Type : 02
[5F1h 1521 002h]                      Length : 0038
[5F3h 1523 001h]                    Revision : 00
[5F4h 1524 004h]                    Reserved : 00000000
[5F8h 1528 004h]               Mapping Count : 00000001
[5FCh 1532 004h]              Mapping Offset : 00000024

[600h 1536 008h]           Memory Properties : [IORT Memory Access Properties]
[600h 1536 004h]             Cache Coherency : 00000001
[604h 1540 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[605h 1541 002h]                    Reserved : 0000
[607h 1543 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[608h 1544 004h]               ATS Attribute : 00000000
[60Ch 1548 004h]          PCI Segment Number : 00000001
[610h 1552 001h]           Memory Size Limit : 24
[611h 1553 002h]          PASID Capabilities : 0000
[613h 1555 001h]                    Reserved : 00

[614h 1556 004h]                  Input base : 00000000
[618h 1560 004h]                    ID Count : 0000FFFF
[61Ch 1564 004h]                 Output Base : 00010000
[620h 1568 004h]            Output Reference : 0000182C
[624h 1572 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[628h 1576 001h]                        Type : 02
[629h 1577 002h]                      Length : 0038
[62Bh 1579 001h]                    Revision : 00
[62Ch 1580 004h]                    Reserved : 00000000
[630h 1584 004h]               Mapping Count : 00000001
[634h 1588 004h]              Mapping Offset : 00000024

[638h 1592 008h]           Memory Properties : [IORT Memory Access Properties]
[638h 1592 004h]             Cache Coherency : 00000001
[63Ch 1596 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[63Dh 1597 002h]                    Reserved : 0000
[63Fh 1599 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[640h 1600 004h]               ATS Attribute : 00000000
[644h 1604 004h]          PCI Segment Number : 00000002
[648h 1608 001h]           Memory Size Limit : 24
[649h 1609 002h]          PASID Capabilities : 0000
[64Bh 1611 001h]                    Reserved : 00

[64Ch 1612 004h]                  Input base : 00000000
[650h 1616 004h]                    ID Count : 0000FFFF
[654h 1620 004h]                 Output Base : 00020000
[658h 1624 004h]            Output Reference : 0000182C
[65Ch 1628 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[660h 1632 001h]                        Type : 02
[661h 1633 002h]                      Length : 0038
[663h 1635 001h]                    Revision : 00
[664h 1636 004h]                    Reserved : 00000000
[668h 1640 004h]               Mapping Count : 00000001
[66Ch 1644 004h]              Mapping Offset : 00000024

[670h 1648 008h]           Memory Properties : [IORT Memory Access Properties]
[670h 1648 004h]             Cache Coherency : 00000001
[674h 1652 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[675h 1653 002h]                    Reserved : 0000
[677h 1655 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[678h 1656 004h]               ATS Attribute : 00000000
[67Ch 1660 004h]          PCI Segment Number : 00000003
[680h 1664 001h]           Memory Size Limit : 24
[681h 1665 002h]          PASID Capabilities : 0000
[683h 1667 001h]                    Reserved : 00

[684h 1668 004h]                  Input base : 00000000
[688h 1672 004h]                    ID Count : 0000FFFF
[68Ch 1676 004h]                 Output Base : 00030000
[690h 1680 004h]            Output Reference : 0000182C
[694h 1684 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[698h 1688 001h]                        Type : 02
[699h 1689 002h]                      Length : 0038
[69Bh 1691 001h]                    Revision : 00
[69Ch 1692 004h]                    Reserved : 00000000
[6A0h 1696 004h]               Mapping Count : 00000001
[6A4h 1700 004h]              Mapping Offset : 00000024

[6A8h 1704 008h]           Memory Properties : [IORT Memory Access Properties]
[6A8h 1704 004h]             Cache Coherency : 00000001
[6ACh 1708 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[6ADh 1709 002h]                    Reserved : 0000
[6AFh 1711 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[6B0h 1712 004h]               ATS Attribute : 00000000
[6B4h 1716 004h]          PCI Segment Number : 00000004
[6B8h 1720 001h]           Memory Size Limit : 24
[6B9h 1721 002h]          PASID Capabilities : 0000
[6BBh 1723 001h]                    Reserved : 00

[6BCh 1724 004h]                  Input base : 00000000
[6C0h 1728 004h]                    ID Count : 0000FFFF
[6C4h 1732 004h]                 Output Base : 00040000
[6C8h 1736 004h]            Output Reference : 0000182C
[6CCh 1740 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[6D0h 1744 001h]                        Type : 02
[6D1h 1745 002h]                      Length : 0038
[6D3h 1747 001h]                    Revision : 00
[6D4h 1748 004h]                    Reserved : 00000000
[6D8h 1752 004h]               Mapping Count : 00000001
[6DCh 1756 004h]              Mapping Offset : 00000024

[6E0h 1760 008h]           Memory Properties : [IORT Memory Access Properties]
[6E0h 1760 004h]             Cache Coherency : 00000001
[6E4h 1764 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[6E5h 1765 002h]                    Reserved : 0000
[6E7h 1767 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[6E8h 1768 004h]               ATS Attribute : 00000000
[6ECh 1772 004h]          PCI Segment Number : 00000005
[6F0h 1776 001h]           Memory Size Limit : 24
[6F1h 1777 002h]          PASID Capabilities : 0000
[6F3h 1779 001h]                    Reserved : 00

[6F4h 1780 004h]                  Input base : 00000000
[6F8h 1784 004h]                    ID Count : 0000FFFF
[6FCh 1788 004h]                 Output Base : 00050000
[700h 1792 004h]            Output Reference : 0000182C
[704h 1796 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[708h 1800 001h]                        Type : 02
[709h 1801 002h]                      Length : 0038
[70Bh 1803 001h]                    Revision : 00
[70Ch 1804 004h]                    Reserved : 00000000
[710h 1808 004h]               Mapping Count : 00000001
[714h 1812 004h]              Mapping Offset : 00000024

[718h 1816 008h]           Memory Properties : [IORT Memory Access Properties]
[718h 1816 004h]             Cache Coherency : 00000001
[71Ch 1820 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[71Dh 1821 002h]                    Reserved : 0000
[71Fh 1823 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[720h 1824 004h]               ATS Attribute : 00000000
[724h 1828 004h]          PCI Segment Number : 00000006
[728h 1832 001h]           Memory Size Limit : 24
[729h 1833 002h]          PASID Capabilities : 0000
[72Bh 1835 001h]                    Reserved : 00

[72Ch 1836 004h]                  Input base : 00000000
[730h 1840 004h]                    ID Count : 0000FFFF
[734h 1844 004h]                 Output Base : 00060000
[738h 1848 004h]            Output Reference : 0000182C
[73Ch 1852 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[740h 1856 001h]                        Type : 01
[741h 1857 002h]                      Length : 0565
[743h 1859 001h]                    Revision : 00
[744h 1860 004h]                    Reserved : 00000000
[748h 1864 004h]               Mapping Count : 00000042
[74Ch 1868 004h]              Mapping Offset : 0000003D

[750h 1872 004h]                  Node Flags : 00000000
[754h 1876 008h]           Memory Properties : [IORT Memory Access Properties]
[754h 1876 004h]             Cache Coherency : 00000000
[758h 1880 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[759h 1881 002h]                    Reserved : 0000
[75Bh 1883 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[75Ch 1884 001h]           Memory Size Limit : 28
[75Dh 1885 00Ah]                 Device Name : "\_SB.GPU0"
[767h 1895 016h]                     Padding : 49 4F 52 54 9C 18 00 00 00 84 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 777h 1911   6 */                            54 50 2D 4E 33 48                               /* TP-N3H */\

[77Dh 1917 004h]                  Input base : 030A0000
[781h 1921 004h]                    ID Count : 00000000
[785h 1925 004h]                 Output Base : 00000002
[789h 1929 004h]            Output Reference : 000004FC
[78Dh 1933 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[791h 1937 004h]                  Input base : 030A0001
[795h 1941 004h]                    ID Count : 00000000
[799h 1945 004h]                 Output Base : 00000402
[79Dh 1949 004h]            Output Reference : 000004FC
[7A1h 1953 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7A5h 1957 004h]                  Input base : 030A0002
[7A9h 1961 004h]                    ID Count : 00000000
[7ADh 1965 004h]                 Output Base : 00000802
[7B1h 1969 004h]            Output Reference : 000004FC
[7B5h 1973 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7B9h 1977 004h]                  Input base : 030A0003
[7BDh 1981 004h]                    ID Count : 00000000
[7C1h 1985 004h]                 Output Base : 00000C02
[7C5h 1989 004h]            Output Reference : 000004FC
[7C9h 1993 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7CDh 1997 004h]                  Input base : 03030000
[7D1h 2001 004h]                    ID Count : 00000000
[7D5h 2005 004h]                 Output Base : 00000000
[7D9h 2009 004h]            Output Reference : 000004FC
[7DDh 2013 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7E1h 2017 004h]                  Input base : 03030001
[7E5h 2021 004h]                    ID Count : 00000000
[7E9h 2025 004h]                 Output Base : 00000400
[7EDh 2029 004h]            Output Reference : 000004FC
[7F1h 2033 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7F5h 2037 004h]                  Input base : 03030002
[7F9h 2041 004h]                    ID Count : 00000000
[7FDh 2045 004h]                 Output Base : 00000800
[801h 2049 004h]            Output Reference : 000004FC
[805h 2053 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[809h 2057 004h]                  Input base : 03030003
[80Dh 2061 004h]                    ID Count : 00000000
[811h 2065 004h]                 Output Base : 00000C00
[815h 2069 004h]            Output Reference : 000004FC
[819h 2073 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[81Dh 2077 004h]                  Input base : 03030004
[821h 2081 004h]                    ID Count : 00000000
[825h 2085 004h]                 Output Base : 00000001
[829h 2089 004h]            Output Reference : 000004FC
[82Dh 2093 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[831h 2097 004h]                  Input base : 03030005
[835h 2101 004h]                    ID Count : 00000000
[839h 2105 004h]                 Output Base : 00000401
[83Dh 2109 004h]            Output Reference : 000004FC
[841h 2113 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[845h 2117 004h]                  Input base : 03030006
[849h 2121 004h]                    ID Count : 00000000
[84Dh 2125 004h]                 Output Base : 00000801
[851h 2129 004h]            Output Reference : 000004FC
[855h 2133 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[859h 2137 004h]                  Input base : 03030007
[85Dh 2141 004h]                    ID Count : 00000000
[861h 2145 004h]                 Output Base : 00000C01
[865h 2149 004h]            Output Reference : 000004FC
[869h 2153 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[86Dh 2157 004h]                  Input base : 03030008
[871h 2161 004h]                    ID Count : 00000000
[875h 2165 004h]                 Output Base : 00000004
[879h 2169 004h]            Output Reference : 000004FC
[87Dh 2173 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[881h 2177 004h]                  Input base : 03030009
[885h 2181 004h]                    ID Count : 00000000
[889h 2185 004h]                 Output Base : 00000404
[88Dh 2189 004h]            Output Reference : 000004FC
[891h 2193 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[895h 2197 004h]                  Input base : 0303000A
[899h 2201 004h]                    ID Count : 00000000
[89Dh 2205 004h]                 Output Base : 00000804
[8A1h 2209 004h]            Output Reference : 000004FC
[8A5h 2213 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8A9h 2217 004h]                  Input base : 0303000B
[8ADh 2221 004h]                    ID Count : 00000000
[8B1h 2225 004h]                 Output Base : 00000C04
[8B5h 2229 004h]            Output Reference : 000004FC
[8B9h 2233 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8BDh 2237 004h]                  Input base : 0303000C
[8C1h 2241 004h]                    ID Count : 00000000
[8C5h 2245 004h]                 Output Base : 00000005
[8C9h 2249 004h]            Output Reference : 000004FC
[8CDh 2253 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8D1h 2257 004h]                  Input base : 0303000D
[8D5h 2261 004h]                    ID Count : 00000000
[8D9h 2265 004h]                 Output Base : 00000405
[8DDh 2269 004h]            Output Reference : 000004FC
[8E1h 2273 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8E5h 2277 004h]                  Input base : 0303000E
[8E9h 2281 004h]                    ID Count : 00000000
[8EDh 2285 004h]                 Output Base : 00000805
[8F1h 2289 004h]            Output Reference : 000004FC
[8F5h 2293 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8F9h 2297 004h]                  Input base : 0303000F
[8FDh 2301 004h]                    ID Count : 00000000
[901h 2305 004h]                 Output Base : 00000C05
[905h 2309 004h]            Output Reference : 000004FC
[909h 2313 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[90Dh 2317 004h]                  Input base : 00030000
[911h 2321 004h]                    ID Count : 00000000
[915h 2325 004h]                 Output Base : 00001000
[919h 2329 004h]            Output Reference : 00000030
[91Dh 2333 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[921h 2337 004h]                  Input base : 00030001
[925h 2341 004h]                    ID Count : 00000000
[929h 2345 004h]                 Output Base : 00001002
[92Dh 2349 004h]            Output Reference : 00000030
[931h 2353 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[935h 2357 004h]                  Input base : 00030002
[939h 2361 004h]                    ID Count : 00000000
[93Dh 2365 004h]                 Output Base : 00001400
[941h 2369 004h]            Output Reference : 00000030
[945h 2373 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[949h 2377 004h]                  Input base : 00030003
[94Dh 2381 004h]                    ID Count : 00000000
[951h 2385 004h]                 Output Base : 00001402
[955h 2389 004h]            Output Reference : 00000030
[959h 2393 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[95Dh 2397 004h]                  Input base : 00030004
[961h 2401 004h]                    ID Count : 00000000
[965h 2405 004h]                 Output Base : 00001800
[969h 2409 004h]            Output Reference : 00000030
[96Dh 2413 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[971h 2417 004h]                  Input base : 00030005
[975h 2421 004h]                    ID Count : 00000000
[979h 2425 004h]                 Output Base : 00001802
[97Dh 2429 004h]            Output Reference : 00000030
[981h 2433 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[985h 2437 004h]                  Input base : 00030006
[989h 2441 004h]                    ID Count : 00000000
[98Dh 2445 004h]                 Output Base : 00001C00
[991h 2449 004h]            Output Reference : 00000030
[995h 2453 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[999h 2457 004h]                  Input base : 00030007
[99Dh 2461 004h]                    ID Count : 00000000
[9A1h 2465 004h]                 Output Base : 00001C02
[9A5h 2469 004h]            Output Reference : 00000030
[9A9h 2473 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9ADh 2477 004h]                  Input base : 000A0000
[9B1h 2481 004h]                    ID Count : 00000000
[9B5h 2485 004h]                 Output Base : 00001001
[9B9h 2489 004h]            Output Reference : 00000030
[9BDh 2493 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9C1h 2497 004h]                  Input base : 000A0001
[9C5h 2501 004h]                    ID Count : 00000000
[9C9h 2505 004h]                 Output Base : 00001401
[9CDh 2509 004h]            Output Reference : 00000030
[9D1h 2513 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9D5h 2517 004h]                  Input base : 000A0002
[9D9h 2521 004h]                    ID Count : 00000000
[9DDh 2525 004h]                 Output Base : 00001801
[9E1h 2529 004h]            Output Reference : 00000030
[9E5h 2533 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9E9h 2537 004h]                  Input base : 000A0003
[9EDh 2541 004h]                    ID Count : 00000000
[9F1h 2545 004h]                 Output Base : 00001C01
[9F5h 2549 004h]            Output Reference : 00000030
[9F9h 2553 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9FDh 2557 004h]                  Input base : 06030000
[A01h 2561 004h]                    ID Count : 00000000
[A05h 2565 004h]                 Output Base : 000029DC
[A09h 2569 004h]            Output Reference : 00000030
[A0Dh 2573 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A11h 2577 004h]                  Input base : 06030001
[A15h 2581 004h]                    ID Count : 00000000
[A19h 2585 004h]                 Output Base : 00002DDC
[A1Dh 2589 004h]            Output Reference : 00000030
[A21h 2593 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A25h 2597 004h]                  Input base : 06030002
[A29h 2601 004h]                    ID Count : 00000000
[A2Dh 2605 004h]                 Output Base : 000029FC
[A31h 2609 004h]            Output Reference : 00000030
[A35h 2613 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A39h 2617 004h]                  Input base : 06030003
[A3Dh 2621 004h]                    ID Count : 00000000
[A41h 2625 004h]                 Output Base : 00002DFC
[A45h 2629 004h]            Output Reference : 00000030
[A49h 2633 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A4Dh 2637 004h]                  Input base : 060A0000
[A51h 2641 004h]                    ID Count : 00000000
[A55h 2645 004h]                 Output Base : 000029DD
[A59h 2649 004h]            Output Reference : 00000030
[A5Dh 2653 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A61h 2657 004h]                  Input base : 060A0001
[A65h 2661 004h]                    ID Count : 00000000
[A69h 2665 004h]                 Output Base : 00002DDD
[A6Dh 2669 004h]            Output Reference : 00000030
[A71h 2673 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A75h 2677 004h]                  Input base : 060A0002
[A79h 2681 004h]                    ID Count : 00000000
[A7Dh 2685 004h]                 Output Base : 000029FD
[A81h 2689 004h]            Output Reference : 00000030
[A85h 2693 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A89h 2697 004h]                  Input base : 060A0003
[A8Dh 2701 004h]                    ID Count : 00000000
[A91h 2705 004h]                 Output Base : 00002DFD
[A95h 2709 004h]            Output Reference : 00000030
[A99h 2713 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A9Dh 2717 004h]                  Input base : 0C030000
[AA1h 2721 004h]                    ID Count : 00000001
[AA5h 2725 004h]                 Output Base : 00000584
[AA9h 2729 004h]            Output Reference : 00000030
[AADh 2733 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AB1h 2737 004h]                  Input base : 0C030002
[AB5h 2741 004h]                    ID Count : 00000001
[AB9h 2745 004h]                 Output Base : 00000594
[ABDh 2749 004h]            Output Reference : 00000030
[AC1h 2753 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AC5h 2757 004h]                  Input base : 0C030004
[AC9h 2761 004h]                    ID Count : 00000001
[ACDh 2765 004h]                 Output Base : 00000586
[AD1h 2769 004h]            Output Reference : 00000030
[AD5h 2773 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AD9h 2777 004h]                  Input base : 0C030006
[ADDh 2781 004h]                    ID Count : 00000000
[AE1h 2785 004h]                 Output Base : 00000592
[AE5h 2789 004h]            Output Reference : 00000030
[AE9h 2793 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AEDh 2797 004h]                  Input base : 0C030007
[AF1h 2801 004h]                    ID Count : 00000003
[AF5h 2805 004h]                 Output Base : 00000596
[AF9h 2809 004h]            Output Reference : 00000030
[AFDh 2813 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B01h 2817 004h]                  Input base : 0C03000B
[B05h 2821 004h]                    ID Count : 00000000
[B09h 2825 004h]                 Output Base : 0000059F
[B0Dh 2829 004h]            Output Reference : 00000030
[B11h 2833 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B15h 2837 004h]                  Input base : 0C090000
[B19h 2841 004h]                    ID Count : 00000000
[B1Dh 2845 004h]                 Output Base : 00000593
[B21h 2849 004h]            Output Reference : 00000030
[B25h 2853 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B29h 2857 004h]                  Input base : 0C090001
[B2Dh 2861 004h]                    ID Count : 00000002
[B31h 2865 004h]                 Output Base : 0000059C
[B35h 2869 004h]            Output Reference : 00000030
[B39h 2873 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B3Dh 2877 004h]                  Input base : 04030000
[B41h 2881 004h]                    ID Count : 00000000
[B45h 2885 004h]                 Output Base : 00002A00
[B49h 2889 004h]            Output Reference : 00000030
[B4Dh 2893 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B51h 2897 004h]                  Input base : 04030001
[B55h 2901 004h]                    ID Count : 00000000
[B59h 2905 004h]                 Output Base : 00002E00
[B5Dh 2909 004h]            Output Reference : 00000030
[B61h 2913 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B65h 2917 004h]                  Input base : 04030002
[B69h 2921 004h]                    ID Count : 00000000
[B6Dh 2925 004h]                 Output Base : 00002A20
[B71h 2929 004h]            Output Reference : 00000030
[B75h 2933 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B79h 2937 004h]                  Input base : 04030003
[B7Dh 2941 004h]                    ID Count : 00000000
[B81h 2945 004h]                 Output Base : 00002E20
[B85h 2949 004h]            Output Reference : 00000030
[B89h 2953 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B8Dh 2957 004h]                  Input base : 04030004
[B91h 2961 004h]                    ID Count : 00000000
[B95h 2965 004h]                 Output Base : 00002A07
[B99h 2969 004h]            Output Reference : 00000030
[B9Dh 2973 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BA1h 2977 004h]                  Input base : 04030005
[BA5h 2981 004h]                    ID Count : 00000000
[BA9h 2985 004h]                 Output Base : 00002E07
[BADh 2989 004h]            Output Reference : 00000030
[BB1h 2993 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BB5h 2997 004h]                  Input base : 04090000
[BB9h 3001 004h]                    ID Count : 00000000
[BBDh 3005 004h]                 Output Base : 00002A01
[BC1h 3009 004h]            Output Reference : 00000030
[BC5h 3013 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BC9h 3017 004h]                  Input base : 04090001
[BCDh 3021 004h]                    ID Count : 00000000
[BD1h 3025 004h]                 Output Base : 00002A05
[BD5h 3029 004h]            Output Reference : 00000030
[BD9h 3033 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BDDh 3037 004h]                  Input base : 04090002
[BE1h 3041 004h]                    ID Count : 00000000
[BE5h 3045 004h]                 Output Base : 00002E01
[BE9h 3049 004h]            Output Reference : 00000030
[BEDh 3053 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BF1h 3057 004h]                  Input base : 04090003
[BF5h 3061 004h]                    ID Count : 00000000
[BF9h 3065 004h]                 Output Base : 00002E05
[BFDh 3069 004h]            Output Reference : 00000030
[C01h 3073 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C05h 3077 004h]                  Input base : 040A0000
[C09h 3081 004h]                    ID Count : 00000000
[C0Dh 3085 004h]                 Output Base : 00002A03
[C11h 3089 004h]            Output Reference : 00000030
[C15h 3093 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C19h 3097 004h]                  Input base : 040A0001
[C1Dh 3101 004h]                    ID Count : 00000000
[C21h 3105 004h]                 Output Base : 00002E03
[C25h 3109 004h]            Output Reference : 00000030
[C29h 3113 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C2Dh 3117 004h]                  Input base : 040A0002
[C31h 3121 004h]                    ID Count : 00000000
[C35h 3125 004h]                 Output Base : 00002A23
[C39h 3129 004h]            Output Reference : 00000030
[C3Dh 3133 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C41h 3137 004h]                  Input base : 040A0003
[C45h 3141 004h]                    ID Count : 00000000
[C49h 3145 004h]                 Output Base : 00002E23
[C4Dh 3149 004h]            Output Reference : 00000030
[C51h 3153 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C55h 3157 004h]                  Input base : 040B0000
[C59h 3161 004h]                    ID Count : 00000000
[C5Dh 3165 004h]                 Output Base : 00002A04
[C61h 3169 004h]            Output Reference : 00000030
[C65h 3173 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C69h 3177 004h]                  Input base : 040B0001
[C6Dh 3181 004h]                    ID Count : 00000000
[C71h 3185 004h]                 Output Base : 00002E04
[C75h 3189 004h]            Output Reference : 00000030
[C79h 3193 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C7Dh 3197 004h]                  Input base : 040B0002
[C81h 3201 004h]                    ID Count : 00000000
[C85h 3205 004h]                 Output Base : 00002A24
[C89h 3209 004h]            Output Reference : 00000030
[C8Dh 3213 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C91h 3217 004h]                  Input base : 040B0003
[C95h 3221 004h]                    ID Count : 00000000
[C99h 3225 004h]                 Output Base : 00002E24
[C9Dh 3229 004h]            Output Reference : 00000030
[CA1h 3233 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CA5h 3237 001h]                        Type : 01
[CA6h 3238 002h]                      Length : 008D
[CA8h 3240 001h]                    Revision : 00
[CA9h 3241 004h]                    Reserved : 00000000
[CADh 3245 004h]               Mapping Count : 00000004
[CB1h 3249 004h]              Mapping Offset : 0000003D

[CB5h 3253 004h]                  Node Flags : 00000000
[CB9h 3257 008h]           Memory Properties : [IORT Memory Access Properties]
[CB9h 3257 004h]             Cache Coherency : 00000000
[CBDh 3261 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[CBEh 3262 002h]                    Reserved : 0000
[CC0h 3264 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[CC1h 3265 001h]           Memory Size Limit : 24
[CC2h 3266 00Ah]                 Device Name : "\_SB.JPGE"
[CCCh 3276 016h]                     Padding : 49 4F 52 54 9C 18 00 00 00 84 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* CDCh 3292   6 */                            54 50 2D 4E 33 48                               /* TP-N3H */\

[CE2h 3298 004h]                  Input base : 02030000
[CE6h 3302 004h]                    ID Count : 00000000
[CEAh 3306 004h]                 Output Base : 00002940
[CEEh 3310 004h]            Output Reference : 00000030
[CF2h 3314 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CF6h 3318 004h]                  Input base : 02030001
[CFAh 3322 004h]                    ID Count : 00000000
[CFEh 3326 004h]                 Output Base : 00002960
[D02h 3330 004h]            Output Reference : 00000030
[D06h 3334 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D0Ah 3338 004h]                  Input base : 02030002
[D0Eh 3342 004h]                    ID Count : 00000000
[D12h 3346 004h]                 Output Base : 00002D40
[D16h 3350 004h]            Output Reference : 00000030
[D1Ah 3354 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D1Eh 3358 004h]                  Input base : 02030003
[D22h 3362 004h]                    ID Count : 00000000
[D26h 3366 004h]                 Output Base : 00002D60
[D2Ah 3370 004h]            Output Reference : 00000030
[D2Eh 3374 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D32h 3378 001h]                        Type : 01
[D33h 3379 002h]                      Length : 04C5
[D35h 3381 001h]                    Revision : 00
[D36h 3382 004h]                    Reserved : 00000000
[D3Ah 3386 004h]               Mapping Count : 0000003A
[D3Eh 3390 004h]              Mapping Offset : 0000003D

[D42h 3394 004h]                  Node Flags : 00000000
[D46h 3398 008h]           Memory Properties : [IORT Memory Access Properties]
[D46h 3398 004h]             Cache Coherency : 00000000
[D4Ah 3402 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[D4Bh 3403 002h]                    Reserved : 0000
[D4Dh 3405 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[D4Eh 3406 001h]           Memory Size Limit : 24
[D4Fh 3407 00Ah]                 Device Name : "\_SB.ARPC"
[D59h 3417 016h]                     Padding : 49 4F 52 54 9C 18 00 00 00 84 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* D69h 3433   6 */                            54 50 2D 4E 33 48                               /* TP-N3H */\

[D6Fh 3439 004h]                  Input base : 17030034
[D73h 3443 004h]                    ID Count : 00000000
[D77h 3447 004h]                 Output Base : 00000C03
[D7Bh 3451 004h]            Output Reference : 00000030
[D7Fh 3455 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D83h 3459 004h]                  Input base : 17030035
[D87h 3463 004h]                    ID Count : 00000000
[D8Bh 3467 004h]                 Output Base : 00000C04
[D8Fh 3471 004h]            Output Reference : 00000030
[D93h 3475 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D97h 3479 004h]                  Input base : 17030036
[D9Bh 3483 004h]                    ID Count : 00000000
[D9Fh 3487 004h]                 Output Base : 00000C05
[DA3h 3491 004h]            Output Reference : 00000030
[DA7h 3495 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DABh 3499 004h]                  Input base : 17030000
[DAFh 3503 004h]                    ID Count : 00000000
[DB3h 3507 004h]                 Output Base : 00003181
[DB7h 3511 004h]            Output Reference : 00000030
[DBBh 3515 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DBFh 3519 004h]                  Input base : 17030001
[DC3h 3523 004h]                    ID Count : 00000000
[DC7h 3527 004h]                 Output Base : 000031A1
[DCBh 3531 004h]            Output Reference : 00000030
[DCFh 3535 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DD3h 3539 004h]                  Input base : 17030002
[DD7h 3543 004h]                    ID Count : 00000000
[DDBh 3547 004h]                 Output Base : 00003581
[DDFh 3551 004h]            Output Reference : 00000030
[DE3h 3555 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DE7h 3559 004h]                  Input base : 17030003
[DEBh 3563 004h]                    ID Count : 00000000
[DEFh 3567 004h]                 Output Base : 000035A1
[DF3h 3571 004h]            Output Reference : 00000030
[DF7h 3575 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DFBh 3579 004h]                  Input base : 17030004
[DFFh 3583 004h]                    ID Count : 00000000
[E03h 3587 004h]                 Output Base : 00003182
[E07h 3591 004h]            Output Reference : 00000030
[E0Bh 3595 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E0Fh 3599 004h]                  Input base : 17030005
[E13h 3603 004h]                    ID Count : 00000000
[E17h 3607 004h]                 Output Base : 000031A2
[E1Bh 3611 004h]            Output Reference : 00000030
[E1Fh 3615 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E23h 3619 004h]                  Input base : 17030006
[E27h 3623 004h]                    ID Count : 00000000
[E2Bh 3627 004h]                 Output Base : 00003582
[E2Fh 3631 004h]            Output Reference : 00000030
[E33h 3635 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E37h 3639 004h]                  Input base : 17030007
[E3Bh 3643 004h]                    ID Count : 00000000
[E3Fh 3647 004h]                 Output Base : 000035A2
[E43h 3651 004h]            Output Reference : 00000030
[E47h 3655 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E4Bh 3659 004h]                  Input base : 17030008
[E4Fh 3663 004h]                    ID Count : 00000000
[E53h 3667 004h]                 Output Base : 00003183
[E57h 3671 004h]            Output Reference : 00000030
[E5Bh 3675 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E5Fh 3679 004h]                  Input base : 17030009
[E63h 3683 004h]                    ID Count : 00000000
[E67h 3687 004h]                 Output Base : 000031A3
[E6Bh 3691 004h]            Output Reference : 00000030
[E6Fh 3695 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E73h 3699 004h]                  Input base : 1703000A
[E77h 3703 004h]                    ID Count : 00000000
[E7Bh 3707 004h]                 Output Base : 00003583
[E7Fh 3711 004h]            Output Reference : 00000030
[E83h 3715 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E87h 3719 004h]                  Input base : 1703000B
[E8Bh 3723 004h]                    ID Count : 00000000
[E8Fh 3727 004h]                 Output Base : 000035A3
[E93h 3731 004h]            Output Reference : 00000030
[E97h 3735 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E9Bh 3739 004h]                  Input base : 1703000C
[E9Fh 3743 004h]                    ID Count : 00000000
[EA3h 3747 004h]                 Output Base : 00003184
[EA7h 3751 004h]            Output Reference : 00000030
[EABh 3755 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[EAFh 3759 004h]                  Input base : 1703000D
[EB3h 3763 004h]                    ID Count : 00000000
[EB7h 3767 004h]                 Output Base : 000031A4
[EBBh 3771 004h]            Output Reference : 00000030
[EBFh 3775 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[EC3h 3779 004h]                  Input base : 1703000E
[EC7h 3783 004h]                    ID Count : 00000000
[ECBh 3787 004h]                 Output Base : 00003584
[ECFh 3791 004h]            Output Reference : 00000030
[ED3h 3795 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[ED7h 3799 004h]                  Input base : 1703000F
[EDBh 3803 004h]                    ID Count : 00000000
[EDFh 3807 004h]                 Output Base : 000035A4
[EE3h 3811 004h]            Output Reference : 00000030
[EE7h 3815 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[EEBh 3819 004h]                  Input base : 17030010
[EEFh 3823 004h]                    ID Count : 00000000
[EF3h 3827 004h]                 Output Base : 00003185
[EF7h 3831 004h]            Output Reference : 00000030
[EFBh 3835 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[EFFh 3839 004h]                  Input base : 17030011
[F03h 3843 004h]                    ID Count : 00000000
[F07h 3847 004h]                 Output Base : 000031A5
[F0Bh 3851 004h]            Output Reference : 00000030
[F0Fh 3855 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F13h 3859 004h]                  Input base : 17030012
[F17h 3863 004h]                    ID Count : 00000000
[F1Bh 3867 004h]                 Output Base : 00003585
[F1Fh 3871 004h]            Output Reference : 00000030
[F23h 3875 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F27h 3879 004h]                  Input base : 17030013
[F2Bh 3883 004h]                    ID Count : 00000000
[F2Fh 3887 004h]                 Output Base : 000035A5
[F33h 3891 004h]            Output Reference : 00000030
[F37h 3895 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F3Bh 3899 004h]                  Input base : 17030014
[F3Fh 3903 004h]                    ID Count : 00000000
[F43h 3907 004h]                 Output Base : 00003186
[F47h 3911 004h]            Output Reference : 00000030
[F4Bh 3915 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F4Fh 3919 004h]                  Input base : 17030015
[F53h 3923 004h]                    ID Count : 00000000
[F57h 3927 004h]                 Output Base : 000031A6
[F5Bh 3931 004h]            Output Reference : 00000030
[F5Fh 3935 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F63h 3939 004h]                  Input base : 17030016
[F67h 3943 004h]                    ID Count : 00000000
[F6Bh 3947 004h]                 Output Base : 00003586
[F6Fh 3951 004h]            Output Reference : 00000030
[F73h 3955 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F77h 3959 004h]                  Input base : 17030017
[F7Bh 3963 004h]                    ID Count : 00000000
[F7Fh 3967 004h]                 Output Base : 000035A6
[F83h 3971 004h]            Output Reference : 00000030
[F87h 3975 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F8Bh 3979 004h]                  Input base : 17030018
[F8Fh 3983 004h]                    ID Count : 00000000
[F93h 3987 004h]                 Output Base : 00003187
[F97h 3991 004h]            Output Reference : 00000030
[F9Bh 3995 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F9Fh 3999 004h]                  Input base : 17030019
[FA3h 4003 004h]                    ID Count : 00000000
[FA7h 4007 004h]                 Output Base : 000031A7
[FABh 4011 004h]            Output Reference : 00000030
[FAFh 4015 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[FB3h 4019 004h]                  Input base : 1703001A
[FB7h 4023 004h]                    ID Count : 00000000
[FBBh 4027 004h]                 Output Base : 00003587
[FBFh 4031 004h]            Output Reference : 00000030
[FC3h 4035 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[FC7h 4039 004h]                  Input base : 1703001B
[FCBh 4043 004h]                    ID Count : 00000000
[FCFh 4047 004h]                 Output Base : 000035A7
[FD3h 4051 004h]            Output Reference : 00000030
[FD7h 4055 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[FDBh 4059 004h]                  Input base : 1703001C
[FDFh 4063 004h]                    ID Count : 00000000
[FE3h 4067 004h]                 Output Base : 00003188
[FE7h 4071 004h]            Output Reference : 00000030
[FEBh 4075 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[FEFh 4079 004h]                  Input base : 1703001D
[FF3h 4083 004h]                    ID Count : 00000000
[FF7h 4087 004h]                 Output Base : 000031A8
[FFBh 4091 004h]            Output Reference : 00000030
[FFFh 4095 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1003h 4099 004h]                  Input base : 1703001E
[1007h 4103 004h]                    ID Count : 00000000
[100Bh 4107 004h]                 Output Base : 00003588
[100Fh 4111 004h]            Output Reference : 00000030
[1013h 4115 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1017h 4119 004h]                  Input base : 1703001F
[101Bh 4123 004h]                    ID Count : 00000000
[101Fh 4127 004h]                 Output Base : 000035A8
[1023h 4131 004h]            Output Reference : 00000030
[1027h 4135 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[102Bh 4139 004h]                  Input base : 17030020
[102Fh 4143 004h]                    ID Count : 00000000
[1033h 4147 004h]                 Output Base : 0000318B
[1037h 4151 004h]            Output Reference : 00000030
[103Bh 4155 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[103Fh 4159 004h]                  Input base : 17030021
[1043h 4163 004h]                    ID Count : 00000000
[1047h 4167 004h]                 Output Base : 000031AB
[104Bh 4171 004h]            Output Reference : 00000030
[104Fh 4175 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1053h 4179 004h]                  Input base : 17030022
[1057h 4183 004h]                    ID Count : 00000000
[105Bh 4187 004h]                 Output Base : 0000358B
[105Fh 4191 004h]            Output Reference : 00000030
[1063h 4195 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1067h 4199 004h]                  Input base : 17030023
[106Bh 4203 004h]                    ID Count : 00000000
[106Fh 4207 004h]                 Output Base : 000035AB
[1073h 4211 004h]            Output Reference : 00000030
[1077h 4215 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[107Bh 4219 004h]                  Input base : 17030024
[107Fh 4223 004h]                    ID Count : 00000000
[1083h 4227 004h]                 Output Base : 0000318C
[1087h 4231 004h]            Output Reference : 00000030
[108Bh 4235 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[108Fh 4239 004h]                  Input base : 17030025
[1093h 4243 004h]                    ID Count : 00000000
[1097h 4247 004h]                 Output Base : 000031AC
[109Bh 4251 004h]            Output Reference : 00000030
[109Fh 4255 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[10A3h 4259 004h]                  Input base : 17030026
[10A7h 4263 004h]                    ID Count : 00000000
[10ABh 4267 004h]                 Output Base : 0000358C
[10AFh 4271 004h]            Output Reference : 00000030
[10B3h 4275 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[10B7h 4279 004h]                  Input base : 17030027
[10BBh 4283 004h]                    ID Count : 00000000
[10BFh 4287 004h]                 Output Base : 000035AC
[10C3h 4291 004h]            Output Reference : 00000030
[10C7h 4295 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[10CBh 4299 004h]                  Input base : 17030028
[10CFh 4303 004h]                    ID Count : 00000000
[10D3h 4307 004h]                 Output Base : 0000318D
[10D7h 4311 004h]            Output Reference : 00000030
[10DBh 4315 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[10DFh 4319 004h]                  Input base : 17030029
[10E3h 4323 004h]                    ID Count : 00000000
[10E7h 4327 004h]                 Output Base : 000031AD
[10EBh 4331 004h]            Output Reference : 00000030
[10EFh 4335 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[10F3h 4339 004h]                  Input base : 1703002A
[10F7h 4343 004h]                    ID Count : 00000000
[10FBh 4347 004h]                 Output Base : 0000358D
[10FFh 4351 004h]            Output Reference : 00000030
[1103h 4355 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1107h 4359 004h]                  Input base : 1703002B
[110Bh 4363 004h]                    ID Count : 00000000
[110Fh 4367 004h]                 Output Base : 000035AD
[1113h 4371 004h]            Output Reference : 00000030
[1117h 4375 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[111Bh 4379 004h]                  Input base : 1703002C
[111Fh 4383 004h]                    ID Count : 00000000
[1123h 4387 004h]                 Output Base : 0000318E
[1127h 4391 004h]            Output Reference : 00000030
[112Bh 4395 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[112Fh 4399 004h]                  Input base : 1703002D
[1133h 4403 004h]                    ID Count : 00000000
[1137h 4407 004h]                 Output Base : 000031AE
[113Bh 4411 004h]            Output Reference : 00000030
[113Fh 4415 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1143h 4419 004h]                  Input base : 1703002E
[1147h 4423 004h]                    ID Count : 00000000
[114Bh 4427 004h]                 Output Base : 0000358E
[114Fh 4431 004h]            Output Reference : 00000030
[1153h 4435 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1157h 4439 004h]                  Input base : 1703002F
[115Bh 4443 004h]                    ID Count : 00000000
[115Fh 4447 004h]                 Output Base : 000035AE
[1163h 4451 004h]            Output Reference : 00000030
[1167h 4455 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[116Bh 4459 004h]                  Input base : 17030030
[116Fh 4463 004h]                    ID Count : 00000000
[1173h 4467 004h]                 Output Base : 0000318F
[1177h 4471 004h]            Output Reference : 00000030
[117Bh 4475 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[117Fh 4479 004h]                  Input base : 17030031
[1183h 4483 004h]                    ID Count : 00000000
[1187h 4487 004h]                 Output Base : 000031AF
[118Bh 4491 004h]            Output Reference : 00000030
[118Fh 4495 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1193h 4499 004h]                  Input base : 17030032
[1197h 4503 004h]                    ID Count : 00000000
[119Bh 4507 004h]                 Output Base : 0000358F
[119Fh 4511 004h]            Output Reference : 00000030
[11A3h 4515 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11A7h 4519 004h]                  Input base : 17030033
[11ABh 4523 004h]                    ID Count : 00000000
[11AFh 4527 004h]                 Output Base : 000035AF
[11B3h 4531 004h]            Output Reference : 00000030
[11B7h 4535 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11BBh 4539 004h]                  Input base : 17030037
[11BFh 4543 004h]                    ID Count : 00000000
[11C3h 4547 004h]                 Output Base : 00000521
[11C7h 4551 004h]            Output Reference : 00000030
[11CBh 4555 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11CFh 4559 004h]                  Input base : 17030038
[11D3h 4563 004h]                    ID Count : 00000000
[11D7h 4567 004h]                 Output Base : 00000522
[11DBh 4571 004h]            Output Reference : 00000030
[11DFh 4575 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11E3h 4579 004h]                  Input base : 17030039
[11E7h 4583 004h]                    ID Count : 00000000
[11EBh 4587 004h]                 Output Base : 00000523
[11EFh 4591 004h]            Output Reference : 00000030
[11F3h 4595 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11F7h 4599 001h]                        Type : 01
[11F8h 4600 002h]                      Length : 00A1
[11FAh 4602 001h]                    Revision : 00
[11FBh 4603 004h]                    Reserved : 00000000
[11FFh 4607 004h]               Mapping Count : 00000005
[1203h 4611 004h]              Mapping Offset : 0000003D

[1207h 4615 004h]                  Node Flags : 00000000
[120Bh 4619 008h]           Memory Properties : [IORT Memory Access Properties]
[120Bh 4619 004h]             Cache Coherency : 00000000
[120Fh 4623 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1210h 4624 002h]                    Reserved : 0000
[1212h 4626 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1213h 4627 001h]           Memory Size Limit : 24
[1214h 4628 009h]                 Device Name : "\_SB.IPA"
[121Dh 4637 017h]                     Padding : 49 4F 52 54 9C 18 00 00 00 84 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 122Dh 4653   7 */                            54 50 2D 4E 33 48 20                            /* TP-N3H  */\

[1234h 4660 004h]                  Input base : 0B030000
[1238h 4664 004h]                    ID Count : 00000000
[123Ch 4668 004h]                 Output Base : 00000020
[1240h 4672 004h]            Output Reference : 00000030
[1244h 4676 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1248h 4680 004h]                  Input base : 0B030001
[124Ch 4684 004h]                    ID Count : 00000000
[1250h 4688 004h]                 Output Base : 00000021
[1254h 4692 004h]            Output Reference : 00000030
[1258h 4696 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[125Ch 4700 004h]                  Input base : 0B030002
[1260h 4704 004h]                    ID Count : 00000000
[1264h 4708 004h]                 Output Base : 00000022
[1268h 4712 004h]            Output Reference : 00000030
[126Ch 4716 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1270h 4720 004h]                  Input base : 0B030003
[1274h 4724 004h]                    ID Count : 00000000
[1278h 4728 004h]                 Output Base : 00000023
[127Ch 4732 004h]            Output Reference : 00000030
[1280h 4736 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1284h 4740 004h]                  Input base : 0B030004
[1288h 4744 004h]                    ID Count : 00000000
[128Ch 4748 004h]                 Output Base : 00000024
[1290h 4752 004h]            Output Reference : 00000030
[1294h 4756 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1298h 4760 001h]                        Type : 01
[1299h 4761 002h]                      Length : 0051
[129Bh 4763 001h]                    Revision : 00
[129Ch 4764 004h]                    Reserved : 00000000
[12A0h 4768 004h]               Mapping Count : 00000001
[12A4h 4772 004h]              Mapping Offset : 0000003D

[12A8h 4776 004h]                  Node Flags : 00000000
[12ACh 4780 008h]           Memory Properties : [IORT Memory Access Properties]
[12ACh 4780 004h]             Cache Coherency : 00000000
[12B0h 4784 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[12B1h 4785 002h]                    Reserved : 0000
[12B3h 4787 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[12B4h 4788 001h]           Memory Size Limit : 24
[12B5h 4789 00Ah]                 Device Name : "\_SB.USBA"
[12BFh 4799 016h]                     Padding : 49 4F 52 54 9C 18 00 00 00 84 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 12CFh 4815   6 */                            54 50 2D 4E 33 48                               /* TP-N3H */\

[12D5h 4821 004h]                  Input base : 07030002
[12D9h 4825 004h]                    ID Count : 00000000
[12DDh 4829 004h]                 Output Base : 00000C0F
[12E1h 4833 004h]            Output Reference : 00000030
[12E5h 4837 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[12E9h 4841 001h]                        Type : 01
[12EAh 4842 002h]                      Length : 0065
[12ECh 4844 001h]                    Revision : 00
[12EDh 4845 004h]                    Reserved : 00000000
[12F1h 4849 004h]               Mapping Count : 00000002
[12F5h 4853 004h]              Mapping Offset : 0000003D

[12F9h 4857 004h]                  Node Flags : 00000000
[12FDh 4861 008h]           Memory Properties : [IORT Memory Access Properties]
[12FDh 4861 004h]             Cache Coherency : 00000000
[1301h 4865 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1302h 4866 002h]                    Reserved : 0000
[1304h 4868 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1305h 4869 001h]           Memory Size Limit : 24
[1306h 4870 00Ah]                 Device Name : "\_SB.QDSS"
[1310h 4880 016h]                     Padding : 49 4F 52 54 9C 18 00 00 00 84 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 1320h 4896   6 */                            54 50 2D 4E 33 48                               /* TP-N3H */\

[1326h 4902 004h]                  Input base : 19030000
[132Ah 4906 004h]                    ID Count : 00000000
[132Eh 4910 004h]                 Output Base : 000005A0
[1332h 4914 004h]            Output Reference : 00000030
[1336h 4918 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[133Ah 4922 004h]                  Input base : 19030001
[133Eh 4926 004h]                    ID Count : 00000000
[1342h 4930 004h]                 Output Base : 000005C0
[1346h 4934 004h]            Output Reference : 00000030
[134Ah 4938 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[134Eh 4942 001h]                        Type : 01
[134Fh 4943 002h]                      Length : 0065
[1351h 4945 001h]                    Revision : 00
[1352h 4946 004h]                    Reserved : 00000000
[1356h 4950 004h]               Mapping Count : 00000002
[135Ah 4954 004h]              Mapping Offset : 0000003D

[135Eh 4958 004h]                  Node Flags : 00000000
[1362h 4962 008h]           Memory Properties : [IORT Memory Access Properties]
[1362h 4962 004h]             Cache Coherency : 00000000
[1366h 4966 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1367h 4967 002h]                    Reserved : 0000
[1369h 4969 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[136Ah 4970 001h]           Memory Size Limit : 24
[136Bh 4971 00Fh]                 Device Name : "\_SB.ADSP.ADCM"
[137Ah 4986 011h]                     Padding : 49 4F 52 54 9C 18 00 00 00 84 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 138Ah 5002   1 */                            54                                              /* T */\

[138Bh 5003 004h]                  Input base : 07030000
[138Fh 5007 004h]                    ID Count : 00000000
[1393h 5011 004h]                 Output Base : 00000C01
[1397h 5015 004h]            Output Reference : 00000030
[139Bh 5019 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[139Fh 5023 004h]                  Input base : 07030001
[13A3h 5027 004h]                    ID Count : 00000000
[13A7h 5031 004h]                 Output Base : 00000C26
[13ABh 5035 004h]            Output Reference : 00000030
[13AFh 5039 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[13B3h 5043 001h]                        Type : 01
[13B4h 5044 002h]                      Length : 0065
[13B6h 5046 001h]                    Revision : 00
[13B7h 5047 004h]                    Reserved : 00000000
[13BBh 5051 004h]               Mapping Count : 00000002
[13BFh 5055 004h]              Mapping Offset : 0000003D

[13C3h 5059 004h]                  Node Flags : 00000000
[13C7h 5063 008h]           Memory Properties : [IORT Memory Access Properties]
[13C7h 5063 004h]             Cache Coherency : 00000000
[13CBh 5067 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[13CCh 5068 002h]                    Reserved : 0000
[13CEh 5070 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[13CFh 5071 001h]           Memory Size Limit : 24
[13D0h 5072 00Ah]                 Device Name : "\_SB.SDC2"
[13DAh 5082 016h]                     Padding : 49 4F 52 54 9C 18 00 00 00 84 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 13EAh 5098   6 */                            54 50 2D 4E 33 48                               /* TP-N3H */\

[13F0h 5104 004h]                  Input base : 86030000
[13F4h 5108 004h]                    ID Count : 00000000
[13F8h 5112 004h]                 Output Base : 000004E0
[13FCh 5116 004h]            Output Reference : 00000030
[1400h 5120 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1404h 5124 004h]                  Input base : 86030001
[1408h 5128 004h]                    ID Count : 00000000
[140Ch 5132 004h]                 Output Base : 000000C0
[1410h 5136 004h]            Output Reference : 00000030
[1414h 5140 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1418h 5144 001h]                        Type : 01
[1419h 5145 002h]                      Length : 0065
[141Bh 5147 001h]                    Revision : 00
[141Ch 5148 004h]                    Reserved : 00000000
[1420h 5152 004h]               Mapping Count : 00000002
[1424h 5156 004h]              Mapping Offset : 0000003D

[1428h 5160 004h]                  Node Flags : 00000000
[142Ch 5164 008h]           Memory Properties : [IORT Memory Access Properties]
[142Ch 5164 004h]             Cache Coherency : 00000001
[1430h 5168 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1431h 5169 002h]                    Reserved : 0000
[1433h 5171 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[1434h 5172 001h]           Memory Size Limit : 24
[1435h 5173 00Ah]                 Device Name : "\_SB.UFS0"
[143Fh 5183 016h]                     Padding : 49 4F 52 54 9C 18 00 00 00 84 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 144Fh 5199   6 */                            54 50 2D 4E 33 48                               /* TP-N3H */\

[1455h 5205 004h]                  Input base : 81030000
[1459h 5209 004h]                    ID Count : 00000000
[145Dh 5213 004h]                 Output Base : 000004A0
[1461h 5217 004h]            Output Reference : 00000030
[1465h 5221 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1469h 5225 004h]                  Input base : 81030001
[146Dh 5229 004h]                    ID Count : 00000000
[1471h 5233 004h]                 Output Base : 000000E0
[1475h 5237 004h]            Output Reference : 00000030
[1479h 5241 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[147Dh 5245 001h]                        Type : 01
[147Eh 5246 002h]                      Length : 0051
[1480h 5248 001h]                    Revision : 00
[1481h 5249 004h]                    Reserved : 00000000
[1485h 5253 004h]               Mapping Count : 00000001
[1489h 5257 004h]              Mapping Offset : 0000003D

[148Dh 5261 004h]                  Node Flags : 00000000
[1491h 5265 008h]           Memory Properties : [IORT Memory Access Properties]
[1491h 5265 004h]             Cache Coherency : 00000000
[1495h 5269 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1496h 5270 002h]                    Reserved : 0000
[1498h 5272 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1499h 5273 001h]           Memory Size Limit : 24
[149Ah 5274 00Ah]                 Device Name : "\_SB.URS0"
[14A4h 5284 016h]                     Padding : 49 4F 52 54 9C 18 00 00 00 84 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 14B4h 5300   6 */                            54 50 2D 4E 33 48                               /* TP-N3H */\

[14BAh 5306 004h]                  Input base : 80030000
[14BEh 5310 004h]                    ID Count : 00000000
[14C2h 5314 004h]                 Output Base : 00000820
[14C6h 5318 004h]            Output Reference : 00000030
[14CAh 5322 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[14CEh 5326 001h]                        Type : 01
[14CFh 5327 002h]                      Length : 0051
[14D1h 5329 001h]                    Revision : 00
[14D2h 5330 004h]                    Reserved : 00000000
[14D6h 5334 004h]               Mapping Count : 00000001
[14DAh 5338 004h]              Mapping Offset : 0000003D

[14DEh 5342 004h]                  Node Flags : 00000000
[14E2h 5346 008h]           Memory Properties : [IORT Memory Access Properties]
[14E2h 5346 004h]             Cache Coherency : 00000000
[14E6h 5350 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[14E7h 5351 002h]                    Reserved : 0000
[14E9h 5353 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[14EAh 5354 001h]           Memory Size Limit : 24
[14EBh 5355 00Ah]                 Device Name : "\_SB.URS1"
[14F5h 5365 016h]                     Padding : 49 4F 52 54 9C 18 00 00 00 84 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 1505h 5381   6 */                            54 50 2D 4E 33 48                               /* TP-N3H */\

[150Bh 5387 004h]                  Input base : 80030001
[150Fh 5391 004h]                    ID Count : 00000000
[1513h 5395 004h]                 Output Base : 00000860
[1517h 5399 004h]            Output Reference : 00000030
[151Bh 5403 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[151Fh 5407 001h]                        Type : 01
[1520h 5408 002h]                      Length : 030D
[1522h 5410 001h]                    Revision : 00
[1523h 5411 004h]                    Reserved : 00000000
[1527h 5415 004h]               Mapping Count : 00000024
[152Bh 5419 004h]              Mapping Offset : 0000003D

[152Fh 5423 004h]                  Node Flags : 00000000
[1533h 5427 008h]           Memory Properties : [IORT Memory Access Properties]
[1533h 5427 004h]             Cache Coherency : 00000000
[1537h 5431 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1538h 5432 002h]                    Reserved : 0000
[153Ah 5434 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[153Bh 5435 001h]           Memory Size Limit : 24
[153Ch 5436 00Fh]                 Device Name : "\_SB.GPU0.AVS0"
[154Bh 5451 011h]                     Padding : 49 4F 52 54 9C 18 00 00 00 84 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 155Bh 5467   1 */                            54                                              /* T */\

[155Ch 5468 004h]                  Input base : 01030000
[1560h 5472 004h]                    ID Count : 00000000
[1564h 5476 004h]                 Output Base : 00002800
[1568h 5480 004h]            Output Reference : 00000030
[156Ch 5484 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1570h 5488 004h]                  Input base : 01030001
[1574h 5492 004h]                    ID Count : 00000000
[1578h 5496 004h]                 Output Base : 00002820
[157Ch 5500 004h]            Output Reference : 00000030
[1580h 5504 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1584h 5508 004h]                  Input base : 01030002
[1588h 5512 004h]                    ID Count : 00000000
[158Ch 5516 004h]                 Output Base : 00002C00
[1590h 5520 004h]            Output Reference : 00000030
[1594h 5524 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1598h 5528 004h]                  Input base : 01030003
[159Ch 5532 004h]                    ID Count : 00000000
[15A0h 5536 004h]                 Output Base : 00002C20
[15A4h 5540 004h]            Output Reference : 00000030
[15A8h 5544 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[15ACh 5548 004h]                  Input base : 01030004
[15B0h 5552 004h]                    ID Count : 00000000
[15B4h 5556 004h]                 Output Base : 00002840
[15B8h 5560 004h]            Output Reference : 00000030
[15BCh 5564 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[15C0h 5568 004h]                  Input base : 01030005
[15C4h 5572 004h]                    ID Count : 00000000
[15C8h 5576 004h]                 Output Base : 00002C40
[15CCh 5580 004h]            Output Reference : 00000030
[15D0h 5584 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[15D4h 5588 004h]                  Input base : 01030006
[15D8h 5592 004h]                    ID Count : 00000000
[15DCh 5596 004h]                 Output Base : 000028A2
[15E0h 5600 004h]            Output Reference : 00000030
[15E4h 5604 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[15E8h 5608 004h]                  Input base : 01030007
[15ECh 5612 004h]                    ID Count : 00000000
[15F0h 5616 004h]                 Output Base : 00002CA2
[15F4h 5620 004h]            Output Reference : 00000030
[15F8h 5624 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[15FCh 5628 004h]                  Input base : 01030008
[1600h 5632 004h]                    ID Count : 00000000
[1604h 5636 004h]                 Output Base : 00002000
[1608h 5640 004h]            Output Reference : 00000030
[160Ch 5644 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1610h 5648 004h]                  Input base : 01030009
[1614h 5652 004h]                    ID Count : 00000000
[1618h 5656 004h]                 Output Base : 00002020
[161Ch 5660 004h]            Output Reference : 00000030
[1620h 5664 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1624h 5668 004h]                  Input base : 0103000A
[1628h 5672 004h]                    ID Count : 00000000
[162Ch 5676 004h]                 Output Base : 00002040
[1630h 5680 004h]            Output Reference : 00000030
[1634h 5684 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1638h 5688 004h]                  Input base : 0103000B
[163Ch 5692 004h]                    ID Count : 00000000
[1640h 5696 004h]                 Output Base : 00002060
[1644h 5700 004h]            Output Reference : 00000030
[1648h 5704 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[164Ch 5708 004h]                  Input base : 0103000C
[1650h 5712 004h]                    ID Count : 00000000
[1654h 5716 004h]                 Output Base : 00002080
[1658h 5720 004h]            Output Reference : 00000030
[165Ch 5724 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1660h 5728 004h]                  Input base : 0103000D
[1664h 5732 004h]                    ID Count : 00000000
[1668h 5736 004h]                 Output Base : 000020A0
[166Ch 5740 004h]            Output Reference : 00000030
[1670h 5744 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1674h 5748 004h]                  Input base : 0103000E
[1678h 5752 004h]                    ID Count : 00000000
[167Ch 5756 004h]                 Output Base : 000020C0
[1680h 5760 004h]            Output Reference : 00000030
[1684h 5764 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1688h 5768 004h]                  Input base : 0103000F
[168Ch 5772 004h]                    ID Count : 00000000
[1690h 5776 004h]                 Output Base : 000020E0
[1694h 5780 004h]            Output Reference : 00000030
[1698h 5784 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[169Ch 5788 004h]                  Input base : 01030010
[16A0h 5792 004h]                    ID Count : 00000000
[16A4h 5796 004h]                 Output Base : 00002400
[16A8h 5800 004h]            Output Reference : 00000030
[16ACh 5804 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[16B0h 5808 004h]                  Input base : 01030011
[16B4h 5812 004h]                    ID Count : 00000000
[16B8h 5816 004h]                 Output Base : 00002420
[16BCh 5820 004h]            Output Reference : 00000030
[16C0h 5824 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[16C4h 5828 004h]                  Input base : 01030012
[16C8h 5832 004h]                    ID Count : 00000000
[16CCh 5836 004h]                 Output Base : 00002440
[16D0h 5840 004h]            Output Reference : 00000030
[16D4h 5844 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[16D8h 5848 004h]                  Input base : 01030013
[16DCh 5852 004h]                    ID Count : 00000000
[16E0h 5856 004h]                 Output Base : 00002460
[16E4h 5860 004h]            Output Reference : 00000030
[16E8h 5864 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[16ECh 5868 004h]                  Input base : 01030014
[16F0h 5872 004h]                    ID Count : 00000000
[16F4h 5876 004h]                 Output Base : 00002480
[16F8h 5880 004h]            Output Reference : 00000030
[16FCh 5884 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1700h 5888 004h]                  Input base : 01030015
[1704h 5892 004h]                    ID Count : 00000000
[1708h 5896 004h]                 Output Base : 000024A0
[170Ch 5900 004h]            Output Reference : 00000030
[1710h 5904 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1714h 5908 004h]                  Input base : 01030016
[1718h 5912 004h]                    ID Count : 00000000
[171Ch 5916 004h]                 Output Base : 000024C0
[1720h 5920 004h]            Output Reference : 00000030
[1724h 5924 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1728h 5928 004h]                  Input base : 01030017
[172Ch 5932 004h]                    ID Count : 00000000
[1730h 5936 004h]                 Output Base : 000024E0
[1734h 5940 004h]            Output Reference : 00000030
[1738h 5944 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[173Ch 5948 004h]                  Input base : 01030018
[1740h 5952 004h]                    ID Count : 00000000
[1744h 5956 004h]                 Output Base : 000028C0
[1748h 5960 004h]            Output Reference : 00000030
[174Ch 5964 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1750h 5968 004h]                  Input base : 01030019
[1754h 5972 004h]                    ID Count : 00000000
[1758h 5976 004h]                 Output Base : 000028E0
[175Ch 5980 004h]            Output Reference : 00000030
[1760h 5984 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1764h 5988 004h]                  Input base : 0103001A
[1768h 5992 004h]                    ID Count : 00000000
[176Ch 5996 004h]                 Output Base : 00002CC0
[1770h 6000 004h]            Output Reference : 00000030
[1774h 6004 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1778h 6008 004h]                  Input base : 0103001B
[177Ch 6012 004h]                    ID Count : 00000000
[1780h 6016 004h]                 Output Base : 00002CE0
[1784h 6020 004h]            Output Reference : 00000030
[1788h 6024 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[178Ch 6028 004h]                  Input base : 0103001C
[1790h 6032 004h]                    ID Count : 00000000
[1794h 6036 004h]                 Output Base : 00002900
[1798h 6040 004h]            Output Reference : 00000030
[179Ch 6044 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[17A0h 6048 004h]                  Input base : 0103001D
[17A4h 6052 004h]                    ID Count : 00000000
[17A8h 6056 004h]                 Output Base : 00002920
[17ACh 6060 004h]            Output Reference : 00000030
[17B0h 6064 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[17B4h 6068 004h]                  Input base : 0103001E
[17B8h 6072 004h]                    ID Count : 00000000
[17BCh 6076 004h]                 Output Base : 00002D00
[17C0h 6080 004h]            Output Reference : 00000030
[17C4h 6084 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[17C8h 6088 004h]                  Input base : 0103001F
[17CCh 6092 004h]                    ID Count : 00000000
[17D0h 6096 004h]                 Output Base : 00002D20
[17D4h 6100 004h]            Output Reference : 00000030
[17D8h 6104 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[17DCh 6108 004h]                  Input base : 01030020
[17E0h 6112 004h]                    ID Count : 00000000
[17E4h 6116 004h]                 Output Base : 00002980
[17E8h 6120 004h]            Output Reference : 00000030
[17ECh 6124 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[17F0h 6128 004h]                  Input base : 01030021
[17F4h 6132 004h]                    ID Count : 00000000
[17F8h 6136 004h]                 Output Base : 000029A0
[17FCh 6140 004h]            Output Reference : 00000030
[1800h 6144 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1804h 6148 004h]                  Input base : 01030022
[1808h 6152 004h]                    ID Count : 00000000
[180Ch 6156 004h]                 Output Base : 00002D80
[1810h 6160 004h]            Output Reference : 00000030
[1814h 6164 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1818h 6168 004h]                  Input base : 01030023
[181Ch 6172 004h]                    ID Count : 00000000
[1820h 6176 004h]                 Output Base : 00002DA0
[1824h 6180 004h]            Output Reference : 00000030
[1828h 6184 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[182Ch 6188 001h]                        Type : 04
[182Dh 6189 002h]                      Length : 0058
[182Fh 6191 001h]                    Revision : 00
[1830h 6192 004h]                    Reserved : 00000000
[1834h 6196 004h]               Mapping Count : 00000001
[1838h 6200 004h]              Mapping Offset : 00000044

[183Ch 6204 008h]                Base Address : 0000000014F80000
[1844h 6212 004h]       Flags (decoded below) : 00000001
                             COHACC Override : 1
                               HTTU Override : 0
                      Proximity Domain Valid : 0
                              DeviceID Valid : 0
[1848h 6216 004h]                    Reserved : 00000000
[184Ch 6220 008h]               VATOS Address : 0000000000000000
[1854h 6228 004h]                       Model : 00000000
[1858h 6232 004h]                  Event GSIV : 000003D7
[185Ch 6236 004h]                    PRI GSIV : 00000000
[1860h 6240 004h]                   GERR GSIV : 000003DB
[1864h 6244 004h]                   Sync GSIV : 000003D9
[1868h 6248 004h]            Proximity Domain : 00000000
[186Ch 6252 004h]     Device ID Mapping Index : 00000000

[1870h 6256 004h]                  Input base : 00000000
[1874h 6260 004h]                    ID Count : 0006FFFF
[1878h 6264 004h]                 Output Base : 00080000
[187Ch 6268 004h]            Output Reference : 00001884
[1880h 6272 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1884h 6276 001h]                        Type : 00
[1885h 6277 002h]                      Length : 0018
[1887h 6279 001h]                    Revision : 00
[1888h 6280 004h]                    Reserved : 00000000
[188Ch 6284 004h]               Mapping Count : 00000000
[1890h 6288 004h]              Mapping Offset : 00000000

[1894h 6292 004h]                    ItsCount : 00000001
[1898h 6296 004h]                 Identifiers : 00000000

Raw Table Data: Length 6300 (0x189C)

    0000: 49 4F 52 54 9C 18 00 00 00 84 4C 45 4E 4F 56 4F  // IORT......LENOVO
    0010: 54 50 2D 4E 33 48 20 20 80 14 00 00 50 54 45 43  // TP-N3H  ....PTEC
    0020: 80 14 00 00 17 00 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0030: 03 CC 04 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0040: 00 00 00 15 00 00 00 00 00 00 10 00 00 00 00 00  // ................
    0050: 03 00 00 00 00 00 00 00 3C 00 00 00 80 00 00 00  // ........<.......
    0060: 4C 00 00 00 10 00 00 00 4C 04 00 00 61 00 00 00  // L.......L...a...
    0070: 00 00 00 00 00 00 00 00 00 00 00 00 87 00 00 00  // ................
    0080: 01 00 00 00 88 00 00 00 01 00 00 00 89 00 00 00  // ................
    0090: 01 00 00 00 8A 00 00 00 01 00 00 00 8B 00 00 00  // ................
    00A0: 01 00 00 00 8C 00 00 00 01 00 00 00 8D 00 00 00  // ................
    00B0: 01 00 00 00 8E 00 00 00 01 00 00 00 8F 00 00 00  // ................
    00C0: 01 00 00 00 90 00 00 00 01 00 00 00 91 00 00 00  // ................
    00D0: 01 00 00 00 92 00 00 00 01 00 00 00 93 00 00 00  // ................
    00E0: 01 00 00 00 94 00 00 00 01 00 00 00 95 00 00 00  // ................
    00F0: 01 00 00 00 96 00 00 00 01 00 00 00 D5 00 00 00  // ................
    0100: 01 00 00 00 D6 00 00 00 01 00 00 00 D7 00 00 00  // ................
    0110: 01 00 00 00 D8 00 00 00 01 00 00 00 D9 00 00 00  // ................
    0120: 01 00 00 00 DA 00 00 00 01 00 00 00 DB 00 00 00  // ................
    0130: 01 00 00 00 DC 00 00 00 01 00 00 00 DD 00 00 00  // ................
    0140: 01 00 00 00 DE 00 00 00 01 00 00 00 DF 00 00 00  // ................
    0150: 01 00 00 00 E0 00 00 00 01 00 00 00 5B 01 00 00  // ............[...
    0160: 01 00 00 00 5C 01 00 00 01 00 00 00 5D 01 00 00  // ....\.......]...
    0170: 01 00 00 00 5E 01 00 00 01 00 00 00 5F 01 00 00  // ....^......._...
    0180: 01 00 00 00 60 01 00 00 01 00 00 00 61 01 00 00  // ....`.......a...
    0190: 01 00 00 00 62 01 00 00 01 00 00 00 63 01 00 00  // ....b.......c...
    01A0: 01 00 00 00 64 01 00 00 01 00 00 00 65 01 00 00  // ....d.......e...
    01B0: 01 00 00 00 66 01 00 00 01 00 00 00 67 01 00 00  // ....f.......g...
    01C0: 01 00 00 00 68 01 00 00 01 00 00 00 69 01 00 00  // ....h.......i...
    01D0: 01 00 00 00 6A 01 00 00 01 00 00 00 6B 01 00 00  // ....j.......k...
    01E0: 01 00 00 00 6C 01 00 00 01 00 00 00 6D 01 00 00  // ....l.......m...
    01F0: 01 00 00 00 6E 01 00 00 01 00 00 00 6F 01 00 00  // ....n.......o...
    0200: 01 00 00 00 70 01 00 00 01 00 00 00 71 01 00 00  // ....p.......q...
    0210: 01 00 00 00 72 01 00 00 01 00 00 00 73 01 00 00  // ....r.......s...
    0220: 01 00 00 00 74 01 00 00 01 00 00 00 75 01 00 00  // ....t.......u...
    0230: 01 00 00 00 76 01 00 00 01 00 00 00 77 01 00 00  // ....v.......w...
    0240: 01 00 00 00 78 01 00 00 01 00 00 00 79 01 00 00  // ....x.......y...
    0250: 01 00 00 00 AB 01 00 00 01 00 00 00 AC 01 00 00  // ................
    0260: 01 00 00 00 AD 01 00 00 01 00 00 00 AE 01 00 00  // ................
    0270: 01 00 00 00 AF 01 00 00 01 00 00 00 B0 01 00 00  // ................
    0280: 01 00 00 00 B1 01 00 00 01 00 00 00 B2 01 00 00  // ................
    0290: 01 00 00 00 B3 01 00 00 01 00 00 00 B4 01 00 00  // ................
    02A0: 01 00 00 00 B5 01 00 00 01 00 00 00 B6 01 00 00  // ................
    02B0: 01 00 00 00 B7 01 00 00 01 00 00 00 B8 01 00 00  // ................
    02C0: 01 00 00 00 B9 01 00 00 01 00 00 00 C2 01 00 00  // ................
    02D0: 01 00 00 00 C3 01 00 00 01 00 00 00 BC 01 00 00  // ................
    02E0: 01 00 00 00 C5 01 00 00 01 00 00 00 E2 02 00 00  // ................
    02F0: 01 00 00 00 C7 01 00 00 01 00 00 00 C8 01 00 00  // ................
    0300: 01 00 00 00 C9 01 00 00 01 00 00 00 D1 02 00 00  // ................
    0310: 01 00 00 00 D2 02 00 00 01 00 00 00 D3 02 00 00  // ................
    0320: 01 00 00 00 D4 02 00 00 01 00 00 00 D5 02 00 00  // ................
    0330: 01 00 00 00 D6 02 00 00 01 00 00 00 D7 02 00 00  // ................
    0340: 01 00 00 00 D8 02 00 00 01 00 00 00 BA 01 00 00  // ................
    0350: 01 00 00 00 BB 01 00 00 01 00 00 00 C4 01 00 00  // ................
    0360: 01 00 00 00 BD 01 00 00 01 00 00 00 C6 01 00 00  // ................
    0370: 01 00 00 00 E3 02 00 00 01 00 00 00 E4 02 00 00  // ................
    0380: 01 00 00 00 E5 02 00 00 01 00 00 00 E6 02 00 00  // ................
    0390: 01 00 00 00 E7 02 00 00 01 00 00 00 BE 01 00 00  // ................
    03A0: 01 00 00 00 E8 02 00 00 01 00 00 00 E9 02 00 00  // ................
    03B0: 01 00 00 00 EA 02 00 00 01 00 00 00 EB 02 00 00  // ................
    03C0: 01 00 00 00 B0 03 00 00 01 00 00 00 AF 03 00 00  // ................
    03D0: 01 00 00 00 AE 03 00 00 01 00 00 00 AD 03 00 00  // ................
    03E0: 01 00 00 00 AC 03 00 00 01 00 00 00 AB 03 00 00  // ................
    03F0: 01 00 00 00 AA 03 00 00 01 00 00 00 A9 03 00 00  // ................
    0400: 01 00 00 00 A8 03 00 00 01 00 00 00 A7 03 00 00  // ................
    0410: 01 00 00 00 A6 03 00 00 01 00 00 00 A5 03 00 00  // ................
    0420: 01 00 00 00 A4 03 00 00 01 00 00 00 A3 03 00 00  // ................
    0430: 01 00 00 00 A2 03 00 00 01 00 00 00 A1 03 00 00  // ................
    0440: 01 00 00 00 A0 03 00 00 01 00 00 00 9F 03 00 00  // ................
    0450: 01 00 00 00 9E 03 00 00 01 00 00 00 9D 03 00 00  // ................
    0460: 01 00 00 00 9C 03 00 00 01 00 00 00 9B 03 00 00  // ................
    0470: 01 00 00 00 9A 03 00 00 01 00 00 00 64 00 00 00  // ............d...
    0480: 01 00 00 00 65 00 00 00 01 00 00 00 66 00 00 00  // ....e.......f...
    0490: 01 00 00 00 67 00 00 00 01 00 00 00 68 00 00 00  // ....g.......h...
    04A0: 01 00 00 00 69 00 00 00 01 00 00 00 7E 00 00 00  // ....i.......~...
    04B0: 01 00 00 00 7F 00 00 00 01 00 00 00 80 00 00 00  // ................
    04C0: 01 00 00 00 81 00 00 00 01 00 00 00 82 00 00 00  // ................
    04D0: 01 00 00 00 83 00 00 00 01 00 00 00 84 00 00 00  // ................
    04E0: 01 00 00 00 85 00 00 00 01 00 00 00 86 00 00 00  // ................
    04F0: 01 00 00 00 CA 01 00 00 01 00 00 00 03 BC 00 00  // ................
    0500: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 DA 03  // ................
    0510: 00 00 00 00 00 00 02 00 00 00 00 00 03 00 00 00  // ................
    0520: 00 00 00 00 3C 00 00 00 0A 00 00 00 4C 00 00 00  // ....<.......L...
    0530: 04 00 00 00 9C 00 00 00 C1 02 00 00 00 00 00 00  // ................
    0540: 00 00 00 00 00 00 00 00 C8 02 00 00 01 00 00 00  // ................
    0550: C9 02 00 00 01 00 00 00 CA 02 00 00 01 00 00 00  // ................
    0560: CB 02 00 00 01 00 00 00 CC 02 00 00 01 00 00 00  // ................
    0570: CD 02 00 00 01 00 00 00 CE 02 00 00 01 00 00 00  // ................
    0580: CF 02 00 00 01 00 00 00 D0 02 00 00 01 00 00 00  // ................
    0590: DF 02 00 00 01 00 00 00 C4 02 00 00 01 00 00 00  // ................
    05A0: C5 02 00 00 01 00 00 00 C6 02 00 00 01 00 00 00  // ................
    05B0: C7 02 00 00 01 00 00 00 02 38 00 00 00 00 00 00  // .........8......
    05C0: 01 00 00 00 24 00 00 00 01 00 00 00 00 00 00 01  // ....$...........
    05D0: 00 00 00 00 00 00 00 00 24 00 00 00 00 00 00 00  // ........$.......
    05E0: FF FF 00 00 00 00 00 00 2C 18 00 00 00 00 00 00  // ........,.......
    05F0: 02 38 00 00 00 00 00 00 01 00 00 00 24 00 00 00  // .8..........$...
    0600: 01 00 00 00 00 00 00 01 00 00 00 00 01 00 00 00  // ................
    0610: 24 00 00 00 00 00 00 00 FF FF 00 00 00 00 01 00  // $...............
    0620: 2C 18 00 00 00 00 00 00 02 38 00 00 00 00 00 00  // ,........8......
    0630: 01 00 00 00 24 00 00 00 01 00 00 00 00 00 00 01  // ....$...........
    0640: 00 00 00 00 02 00 00 00 24 00 00 00 00 00 00 00  // ........$.......
    0650: FF FF 00 00 00 00 02 00 2C 18 00 00 00 00 00 00  // ........,.......
    0660: 02 38 00 00 00 00 00 00 01 00 00 00 24 00 00 00  // .8..........$...
    0670: 01 00 00 00 00 00 00 01 00 00 00 00 03 00 00 00  // ................
    0680: 24 00 00 00 00 00 00 00 FF FF 00 00 00 00 03 00  // $...............
    0690: 2C 18 00 00 00 00 00 00 02 38 00 00 00 00 00 00  // ,........8......
    06A0: 01 00 00 00 24 00 00 00 01 00 00 00 00 00 00 01  // ....$...........
    06B0: 00 00 00 00 04 00 00 00 24 00 00 00 00 00 00 00  // ........$.......
    06C0: FF FF 00 00 00 00 04 00 2C 18 00 00 00 00 00 00  // ........,.......
    06D0: 02 38 00 00 00 00 00 00 01 00 00 00 24 00 00 00  // .8..........$...
    06E0: 01 00 00 00 00 00 00 01 00 00 00 00 05 00 00 00  // ................
    06F0: 24 00 00 00 00 00 00 00 FF FF 00 00 00 00 05 00  // $...............
    0700: 2C 18 00 00 00 00 00 00 02 38 00 00 00 00 00 00  // ,........8......
    0710: 01 00 00 00 24 00 00 00 01 00 00 00 00 00 00 01  // ....$...........
    0720: 00 00 00 00 06 00 00 00 24 00 00 00 00 00 00 00  // ........$.......
    0730: FF FF 00 00 00 00 06 00 2C 18 00 00 00 00 00 00  // ........,.......
    0740: 01 65 05 00 00 00 00 00 42 00 00 00 3D 00 00 00  // .e......B...=...
    0750: 00 00 00 00 00 00 00 00 00 00 00 00 28 5C 5F 53  // ............(\_S
    0760: 42 2E 47 50 55 30 00 00 00 00 00 00 00 00 00 00  // B.GPU0..........
    0770: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0A  // ................
    0780: 03 00 00 00 00 02 00 00 00 FC 04 00 00 00 00 00  // ................
    0790: 00 01 00 0A 03 00 00 00 00 02 04 00 00 FC 04 00  // ................
    07A0: 00 00 00 00 00 02 00 0A 03 00 00 00 00 02 08 00  // ................
    07B0: 00 FC 04 00 00 00 00 00 00 03 00 0A 03 00 00 00  // ................
    07C0: 00 02 0C 00 00 FC 04 00 00 00 00 00 00 00 00 03  // ................
    07D0: 03 00 00 00 00 00 00 00 00 FC 04 00 00 00 00 00  // ................
    07E0: 00 01 00 03 03 00 00 00 00 00 04 00 00 FC 04 00  // ................
    07F0: 00 00 00 00 00 02 00 03 03 00 00 00 00 00 08 00  // ................
    0800: 00 FC 04 00 00 00 00 00 00 03 00 03 03 00 00 00  // ................
    0810: 00 00 0C 00 00 FC 04 00 00 00 00 00 00 04 00 03  // ................
    0820: 03 00 00 00 00 01 00 00 00 FC 04 00 00 00 00 00  // ................
    0830: 00 05 00 03 03 00 00 00 00 01 04 00 00 FC 04 00  // ................
    0840: 00 00 00 00 00 06 00 03 03 00 00 00 00 01 08 00  // ................
    0850: 00 FC 04 00 00 00 00 00 00 07 00 03 03 00 00 00  // ................
    0860: 00 01 0C 00 00 FC 04 00 00 00 00 00 00 08 00 03  // ................
    0870: 03 00 00 00 00 04 00 00 00 FC 04 00 00 00 00 00  // ................
    0880: 00 09 00 03 03 00 00 00 00 04 04 00 00 FC 04 00  // ................
    0890: 00 00 00 00 00 0A 00 03 03 00 00 00 00 04 08 00  // ................
    08A0: 00 FC 04 00 00 00 00 00 00 0B 00 03 03 00 00 00  // ................
    08B0: 00 04 0C 00 00 FC 04 00 00 00 00 00 00 0C 00 03  // ................
    08C0: 03 00 00 00 00 05 00 00 00 FC 04 00 00 00 00 00  // ................
    08D0: 00 0D 00 03 03 00 00 00 00 05 04 00 00 FC 04 00  // ................
    08E0: 00 00 00 00 00 0E 00 03 03 00 00 00 00 05 08 00  // ................
    08F0: 00 FC 04 00 00 00 00 00 00 0F 00 03 03 00 00 00  // ................
    0900: 00 05 0C 00 00 FC 04 00 00 00 00 00 00 00 00 03  // ................
    0910: 00 00 00 00 00 00 10 00 00 30 00 00 00 00 00 00  // .........0......
    0920: 00 01 00 03 00 00 00 00 00 02 10 00 00 30 00 00  // .............0..
    0930: 00 00 00 00 00 02 00 03 00 00 00 00 00 00 14 00  // ................
    0940: 00 30 00 00 00 00 00 00 00 03 00 03 00 00 00 00  // .0..............
    0950: 00 02 14 00 00 30 00 00 00 00 00 00 00 04 00 03  // .....0..........
    0960: 00 00 00 00 00 00 18 00 00 30 00 00 00 00 00 00  // .........0......
    0970: 00 05 00 03 00 00 00 00 00 02 18 00 00 30 00 00  // .............0..
    0980: 00 00 00 00 00 06 00 03 00 00 00 00 00 00 1C 00  // ................
    0990: 00 30 00 00 00 00 00 00 00 07 00 03 00 00 00 00  // .0..............
    09A0: 00 02 1C 00 00 30 00 00 00 00 00 00 00 00 00 0A  // .....0..........
    09B0: 00 00 00 00 00 01 10 00 00 30 00 00 00 00 00 00  // .........0......
    09C0: 00 01 00 0A 00 00 00 00 00 01 14 00 00 30 00 00  // .............0..
    09D0: 00 00 00 00 00 02 00 0A 00 00 00 00 00 01 18 00  // ................
    09E0: 00 30 00 00 00 00 00 00 00 03 00 0A 00 00 00 00  // .0..............
    09F0: 00 01 1C 00 00 30 00 00 00 00 00 00 00 00 00 03  // .....0..........
    0A00: 06 00 00 00 00 DC 29 00 00 30 00 00 00 00 00 00  // ......)..0......
    0A10: 00 01 00 03 06 00 00 00 00 DC 2D 00 00 30 00 00  // ..........-..0..
    0A20: 00 00 00 00 00 02 00 03 06 00 00 00 00 FC 29 00  // ..............).
    0A30: 00 30 00 00 00 00 00 00 00 03 00 03 06 00 00 00  // .0..............
    0A40: 00 FC 2D 00 00 30 00 00 00 00 00 00 00 00 00 0A  // ..-..0..........
    0A50: 06 00 00 00 00 DD 29 00 00 30 00 00 00 00 00 00  // ......)..0......
    0A60: 00 01 00 0A 06 00 00 00 00 DD 2D 00 00 30 00 00  // ..........-..0..
    0A70: 00 00 00 00 00 02 00 0A 06 00 00 00 00 FD 29 00  // ..............).
    0A80: 00 30 00 00 00 00 00 00 00 03 00 0A 06 00 00 00  // .0..............
    0A90: 00 FD 2D 00 00 30 00 00 00 00 00 00 00 00 00 03  // ..-..0..........
    0AA0: 0C 01 00 00 00 84 05 00 00 30 00 00 00 00 00 00  // .........0......
    0AB0: 00 02 00 03 0C 01 00 00 00 94 05 00 00 30 00 00  // .............0..
    0AC0: 00 00 00 00 00 04 00 03 0C 01 00 00 00 86 05 00  // ................
    0AD0: 00 30 00 00 00 00 00 00 00 06 00 03 0C 00 00 00  // .0..............
    0AE0: 00 92 05 00 00 30 00 00 00 00 00 00 00 07 00 03  // .....0..........
    0AF0: 0C 03 00 00 00 96 05 00 00 30 00 00 00 00 00 00  // .........0......
    0B00: 00 0B 00 03 0C 00 00 00 00 9F 05 00 00 30 00 00  // .............0..
    0B10: 00 00 00 00 00 00 00 09 0C 00 00 00 00 93 05 00  // ................
    0B20: 00 30 00 00 00 00 00 00 00 01 00 09 0C 02 00 00  // .0..............
    0B30: 00 9C 05 00 00 30 00 00 00 00 00 00 00 00 00 03  // .....0..........
    0B40: 04 00 00 00 00 00 2A 00 00 30 00 00 00 00 00 00  // ......*..0......
    0B50: 00 01 00 03 04 00 00 00 00 00 2E 00 00 30 00 00  // .............0..
    0B60: 00 00 00 00 00 02 00 03 04 00 00 00 00 20 2A 00  // ............. *.
    0B70: 00 30 00 00 00 00 00 00 00 03 00 03 04 00 00 00  // .0..............
    0B80: 00 20 2E 00 00 30 00 00 00 00 00 00 00 04 00 03  // . ...0..........
    0B90: 04 00 00 00 00 07 2A 00 00 30 00 00 00 00 00 00  // ......*..0......
    0BA0: 00 05 00 03 04 00 00 00 00 07 2E 00 00 30 00 00  // .............0..
    0BB0: 00 00 00 00 00 00 00 09 04 00 00 00 00 01 2A 00  // ..............*.
    0BC0: 00 30 00 00 00 00 00 00 00 01 00 09 04 00 00 00  // .0..............
    0BD0: 00 05 2A 00 00 30 00 00 00 00 00 00 00 02 00 09  // ..*..0..........
    0BE0: 04 00 00 00 00 01 2E 00 00 30 00 00 00 00 00 00  // .........0......
    0BF0: 00 03 00 09 04 00 00 00 00 05 2E 00 00 30 00 00  // .............0..
    0C00: 00 00 00 00 00 00 00 0A 04 00 00 00 00 03 2A 00  // ..............*.
    0C10: 00 30 00 00 00 00 00 00 00 01 00 0A 04 00 00 00  // .0..............
    0C20: 00 03 2E 00 00 30 00 00 00 00 00 00 00 02 00 0A  // .....0..........
    0C30: 04 00 00 00 00 23 2A 00 00 30 00 00 00 00 00 00  // .....#*..0......
    0C40: 00 03 00 0A 04 00 00 00 00 23 2E 00 00 30 00 00  // .........#...0..
    0C50: 00 00 00 00 00 00 00 0B 04 00 00 00 00 04 2A 00  // ..............*.
    0C60: 00 30 00 00 00 00 00 00 00 01 00 0B 04 00 00 00  // .0..............
    0C70: 00 04 2E 00 00 30 00 00 00 00 00 00 00 02 00 0B  // .....0..........
    0C80: 04 00 00 00 00 24 2A 00 00 30 00 00 00 00 00 00  // .....$*..0......
    0C90: 00 03 00 0B 04 00 00 00 00 24 2E 00 00 30 00 00  // .........$...0..
    0CA0: 00 00 00 00 00 01 8D 00 00 00 00 00 00 04 00 00  // ................
    0CB0: 00 3D 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // .=..............
    0CC0: 00 24 5C 5F 53 42 2E 4A 50 47 45 00 00 00 00 00  // .$\_SB.JPGE.....
    0CD0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0CE0: 00 00 00 00 03 02 00 00 00 00 40 29 00 00 30 00  // ..........@)..0.
    0CF0: 00 00 00 00 00 00 01 00 03 02 00 00 00 00 60 29  // ..............`)
    0D00: 00 00 30 00 00 00 00 00 00 00 02 00 03 02 00 00  // ..0.............
    0D10: 00 00 40 2D 00 00 30 00 00 00 00 00 00 00 03 00  // ..@-..0.........
    0D20: 03 02 00 00 00 00 60 2D 00 00 30 00 00 00 00 00  // ......`-..0.....
    0D30: 00 00 01 C5 04 00 00 00 00 00 3A 00 00 00 3D 00  // ..........:...=.
    0D40: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24 5C  // ..............$\
    0D50: 5F 53 42 2E 41 52 50 43 00 00 00 00 00 00 00 00  // _SB.ARPC........
    0D60: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34  // ...............4
    0D70: 00 03 17 00 00 00 00 03 0C 00 00 30 00 00 00 00  // ...........0....
    0D80: 00 00 00 35 00 03 17 00 00 00 00 04 0C 00 00 30  // ...5...........0
    0D90: 00 00 00 00 00 00 00 36 00 03 17 00 00 00 00 05  // .......6........
    0DA0: 0C 00 00 30 00 00 00 00 00 00 00 00 00 03 17 00  // ...0............
    0DB0: 00 00 00 81 31 00 00 30 00 00 00 00 00 00 00 01  // ....1..0........
    0DC0: 00 03 17 00 00 00 00 A1 31 00 00 30 00 00 00 00  // ........1..0....
    0DD0: 00 00 00 02 00 03 17 00 00 00 00 81 35 00 00 30  // ............5..0
    0DE0: 00 00 00 00 00 00 00 03 00 03 17 00 00 00 00 A1  // ................
    0DF0: 35 00 00 30 00 00 00 00 00 00 00 04 00 03 17 00  // 5..0............
    0E00: 00 00 00 82 31 00 00 30 00 00 00 00 00 00 00 05  // ....1..0........
    0E10: 00 03 17 00 00 00 00 A2 31 00 00 30 00 00 00 00  // ........1..0....
    0E20: 00 00 00 06 00 03 17 00 00 00 00 82 35 00 00 30  // ............5..0
    0E30: 00 00 00 00 00 00 00 07 00 03 17 00 00 00 00 A2  // ................
    0E40: 35 00 00 30 00 00 00 00 00 00 00 08 00 03 17 00  // 5..0............
    0E50: 00 00 00 83 31 00 00 30 00 00 00 00 00 00 00 09  // ....1..0........
    0E60: 00 03 17 00 00 00 00 A3 31 00 00 30 00 00 00 00  // ........1..0....
    0E70: 00 00 00 0A 00 03 17 00 00 00 00 83 35 00 00 30  // ............5..0
    0E80: 00 00 00 00 00 00 00 0B 00 03 17 00 00 00 00 A3  // ................
    0E90: 35 00 00 30 00 00 00 00 00 00 00 0C 00 03 17 00  // 5..0............
    0EA0: 00 00 00 84 31 00 00 30 00 00 00 00 00 00 00 0D  // ....1..0........
    0EB0: 00 03 17 00 00 00 00 A4 31 00 00 30 00 00 00 00  // ........1..0....
    0EC0: 00 00 00 0E 00 03 17 00 00 00 00 84 35 00 00 30  // ............5..0
    0ED0: 00 00 00 00 00 00 00 0F 00 03 17 00 00 00 00 A4  // ................
    0EE0: 35 00 00 30 00 00 00 00 00 00 00 10 00 03 17 00  // 5..0............
    0EF0: 00 00 00 85 31 00 00 30 00 00 00 00 00 00 00 11  // ....1..0........
    0F00: 00 03 17 00 00 00 00 A5 31 00 00 30 00 00 00 00  // ........1..0....
    0F10: 00 00 00 12 00 03 17 00 00 00 00 85 35 00 00 30  // ............5..0
    0F20: 00 00 00 00 00 00 00 13 00 03 17 00 00 00 00 A5  // ................
    0F30: 35 00 00 30 00 00 00 00 00 00 00 14 00 03 17 00  // 5..0............
    0F40: 00 00 00 86 31 00 00 30 00 00 00 00 00 00 00 15  // ....1..0........
    0F50: 00 03 17 00 00 00 00 A6 31 00 00 30 00 00 00 00  // ........1..0....
    0F60: 00 00 00 16 00 03 17 00 00 00 00 86 35 00 00 30  // ............5..0
    0F70: 00 00 00 00 00 00 00 17 00 03 17 00 00 00 00 A6  // ................
    0F80: 35 00 00 30 00 00 00 00 00 00 00 18 00 03 17 00  // 5..0............
    0F90: 00 00 00 87 31 00 00 30 00 00 00 00 00 00 00 19  // ....1..0........
    0FA0: 00 03 17 00 00 00 00 A7 31 00 00 30 00 00 00 00  // ........1..0....
    0FB0: 00 00 00 1A 00 03 17 00 00 00 00 87 35 00 00 30  // ............5..0
    0FC0: 00 00 00 00 00 00 00 1B 00 03 17 00 00 00 00 A7  // ................
    0FD0: 35 00 00 30 00 00 00 00 00 00 00 1C 00 03 17 00  // 5..0............
    0FE0: 00 00 00 88 31 00 00 30 00 00 00 00 00 00 00 1D  // ....1..0........
    0FF0: 00 03 17 00 00 00 00 A8 31 00 00 30 00 00 00 00  // ........1..0....
    1000: 00 00 00 1E 00 03 17 00 00 00 00 88 35 00 00 30  // ............5..0
    1010: 00 00 00 00 00 00 00 1F 00 03 17 00 00 00 00 A8  // ................
    1020: 35 00 00 30 00 00 00 00 00 00 00 20 00 03 17 00  // 5..0....... ....
    1030: 00 00 00 8B 31 00 00 30 00 00 00 00 00 00 00 21  // ....1..0.......!
    1040: 00 03 17 00 00 00 00 AB 31 00 00 30 00 00 00 00  // ........1..0....
    1050: 00 00 00 22 00 03 17 00 00 00 00 8B 35 00 00 30  // ..."........5..0
    1060: 00 00 00 00 00 00 00 23 00 03 17 00 00 00 00 AB  // .......#........
    1070: 35 00 00 30 00 00 00 00 00 00 00 24 00 03 17 00  // 5..0.......$....
    1080: 00 00 00 8C 31 00 00 30 00 00 00 00 00 00 00 25  // ....1..0.......%
    1090: 00 03 17 00 00 00 00 AC 31 00 00 30 00 00 00 00  // ........1..0....
    10A0: 00 00 00 26 00 03 17 00 00 00 00 8C 35 00 00 30  // ...&........5..0
    10B0: 00 00 00 00 00 00 00 27 00 03 17 00 00 00 00 AC  // .......'........
    10C0: 35 00 00 30 00 00 00 00 00 00 00 28 00 03 17 00  // 5..0.......(....
    10D0: 00 00 00 8D 31 00 00 30 00 00 00 00 00 00 00 29  // ....1..0.......)
    10E0: 00 03 17 00 00 00 00 AD 31 00 00 30 00 00 00 00  // ........1..0....
    10F0: 00 00 00 2A 00 03 17 00 00 00 00 8D 35 00 00 30  // ...*........5..0
    1100: 00 00 00 00 00 00 00 2B 00 03 17 00 00 00 00 AD  // .......+........
    1110: 35 00 00 30 00 00 00 00 00 00 00 2C 00 03 17 00  // 5..0.......,....
    1120: 00 00 00 8E 31 00 00 30 00 00 00 00 00 00 00 2D  // ....1..0.......-
    1130: 00 03 17 00 00 00 00 AE 31 00 00 30 00 00 00 00  // ........1..0....
    1140: 00 00 00 2E 00 03 17 00 00 00 00 8E 35 00 00 30  // ............5..0
    1150: 00 00 00 00 00 00 00 2F 00 03 17 00 00 00 00 AE  // ......./........
    1160: 35 00 00 30 00 00 00 00 00 00 00 30 00 03 17 00  // 5..0.......0....
    1170: 00 00 00 8F 31 00 00 30 00 00 00 00 00 00 00 31  // ....1..0.......1
    1180: 00 03 17 00 00 00 00 AF 31 00 00 30 00 00 00 00  // ........1..0....
    1190: 00 00 00 32 00 03 17 00 00 00 00 8F 35 00 00 30  // ...2........5..0
    11A0: 00 00 00 00 00 00 00 33 00 03 17 00 00 00 00 AF  // .......3........
    11B0: 35 00 00 30 00 00 00 00 00 00 00 37 00 03 17 00  // 5..0.......7....
    11C0: 00 00 00 21 05 00 00 30 00 00 00 00 00 00 00 38  // ...!...0.......8
    11D0: 00 03 17 00 00 00 00 22 05 00 00 30 00 00 00 00  // ......."...0....
    11E0: 00 00 00 39 00 03 17 00 00 00 00 23 05 00 00 30  // ...9.......#...0
    11F0: 00 00 00 00 00 00 00 01 A1 00 00 00 00 00 00 05  // ................
    1200: 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00  // ...=............
    1210: 00 00 00 24 5C 5F 53 42 2E 49 50 41 00 00 00 00  // ...$\_SB.IPA....
    1220: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1230: 00 00 00 00 00 00 03 0B 00 00 00 00 20 00 00 00  // ............ ...
    1240: 30 00 00 00 00 00 00 00 01 00 03 0B 00 00 00 00  // 0...............
    1250: 21 00 00 00 30 00 00 00 00 00 00 00 02 00 03 0B  // !...0...........
    1260: 00 00 00 00 22 00 00 00 30 00 00 00 00 00 00 00  // ...."...0.......
    1270: 03 00 03 0B 00 00 00 00 23 00 00 00 30 00 00 00  // ........#...0...
    1280: 00 00 00 00 04 00 03 0B 00 00 00 00 24 00 00 00  // ............$...
    1290: 30 00 00 00 00 00 00 00 01 51 00 00 00 00 00 00  // 0........Q......
    12A0: 01 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00  // ....=...........
    12B0: 00 00 00 00 24 5C 5F 53 42 2E 55 53 42 41 00 00  // ....$\_SB.USBA..
    12C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    12D0: 00 00 00 00 00 02 00 03 07 00 00 00 00 0F 0C 00  // ................
    12E0: 00 30 00 00 00 00 00 00 00 01 65 00 00 00 00 00  // .0........e.....
    12F0: 00 02 00 00 00 3D 00 00 00 00 00 00 00 00 00 00  // .....=..........
    1300: 00 00 00 00 00 24 5C 5F 53 42 2E 51 44 53 53 00  // .....$\_SB.QDSS.
    1310: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1320: 00 00 00 00 00 00 00 00 03 19 00 00 00 00 A0 05  // ................
    1330: 00 00 30 00 00 00 00 00 00 00 01 00 03 19 00 00  // ..0.............
    1340: 00 00 C0 05 00 00 30 00 00 00 00 00 00 00 01 65  // ......0........e
    1350: 00 00 00 00 00 00 02 00 00 00 3D 00 00 00 00 00  // ..........=.....
    1360: 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E  // ..........$\_SB.
    1370: 41 44 53 50 2E 41 44 43 4D 00 00 00 00 00 00 00  // ADSP.ADCM.......
    1380: 00 00 00 00 00 00 00 00 00 00 00 00 00 03 07 00  // ................
    1390: 00 00 00 01 0C 00 00 30 00 00 00 00 00 00 00 01  // .......0........
    13A0: 00 03 07 00 00 00 00 26 0C 00 00 30 00 00 00 00  // .......&...0....
    13B0: 00 00 00 01 65 00 00 00 00 00 00 02 00 00 00 3D  // ....e..........=
    13C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24  // ...............$
    13D0: 5C 5F 53 42 2E 53 44 43 32 00 00 00 00 00 00 00  // \_SB.SDC2.......
    13E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    13F0: 00 00 03 86 00 00 00 00 E0 04 00 00 30 00 00 00  // ............0...
    1400: 00 00 00 00 01 00 03 86 00 00 00 00 C0 00 00 00  // ................
    1410: 30 00 00 00 00 00 00 00 01 65 00 00 00 00 00 00  // 0........e......
    1420: 02 00 00 00 3D 00 00 00 00 00 00 00 01 00 00 00  // ....=...........
    1430: 00 00 00 01 24 5C 5F 53 42 2E 55 46 53 30 00 00  // ....$\_SB.UFS0..
    1440: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1450: 00 00 00 00 00 00 00 03 81 00 00 00 00 A0 04 00  // ................
    1460: 00 30 00 00 00 00 00 00 00 01 00 03 81 00 00 00  // .0..............
    1470: 00 E0 00 00 00 30 00 00 00 00 00 00 00 01 51 00  // .....0........Q.
    1480: 00 00 00 00 00 01 00 00 00 3D 00 00 00 00 00 00  // .........=......
    1490: 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E 55  // .........$\_SB.U
    14A0: 52 53 30 00 00 00 00 00 00 00 00 00 00 00 00 00  // RS0.............
    14B0: 00 00 00 00 00 00 00 00 00 00 00 00 03 80 00 00  // ................
    14C0: 00 00 20 08 00 00 30 00 00 00 00 00 00 00 01 51  // .. ...0........Q
    14D0: 00 00 00 00 00 00 01 00 00 00 3D 00 00 00 00 00  // ..........=.....
    14E0: 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E  // ..........$\_SB.
    14F0: 55 52 53 31 00 00 00 00 00 00 00 00 00 00 00 00  // URS1............
    1500: 00 00 00 00 00 00 00 00 00 00 00 01 00 03 80 00  // ................
    1510: 00 00 00 60 08 00 00 30 00 00 00 00 00 00 00 01  // ...`...0........
    1520: 0D 03 00 00 00 00 00 24 00 00 00 3D 00 00 00 00  // .......$...=....
    1530: 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42  // ...........$\_SB
    1540: 2E 47 50 55 30 2E 41 56 53 30 00 00 00 00 00 00  // .GPU0.AVS0......
    1550: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 01  // ................
    1560: 00 00 00 00 00 28 00 00 30 00 00 00 00 00 00 00  // .....(..0.......
    1570: 01 00 03 01 00 00 00 00 20 28 00 00 30 00 00 00  // ........ (..0...
    1580: 00 00 00 00 02 00 03 01 00 00 00 00 00 2C 00 00  // .............,..
    1590: 30 00 00 00 00 00 00 00 03 00 03 01 00 00 00 00  // 0...............
    15A0: 20 2C 00 00 30 00 00 00 00 00 00 00 04 00 03 01  //  ,..0...........
    15B0: 00 00 00 00 40 28 00 00 30 00 00 00 00 00 00 00  // ....@(..0.......
    15C0: 05 00 03 01 00 00 00 00 40 2C 00 00 30 00 00 00  // ........@,..0...
    15D0: 00 00 00 00 06 00 03 01 00 00 00 00 A2 28 00 00  // .............(..
    15E0: 30 00 00 00 00 00 00 00 07 00 03 01 00 00 00 00  // 0...............
    15F0: A2 2C 00 00 30 00 00 00 00 00 00 00 08 00 03 01  // .,..0...........
    1600: 00 00 00 00 00 20 00 00 30 00 00 00 00 00 00 00  // ..... ..0.......
    1610: 09 00 03 01 00 00 00 00 20 20 00 00 30 00 00 00  // ........  ..0...
    1620: 00 00 00 00 0A 00 03 01 00 00 00 00 40 20 00 00  // ............@ ..
    1630: 30 00 00 00 00 00 00 00 0B 00 03 01 00 00 00 00  // 0...............
    1640: 60 20 00 00 30 00 00 00 00 00 00 00 0C 00 03 01  // ` ..0...........
    1650: 00 00 00 00 80 20 00 00 30 00 00 00 00 00 00 00  // ..... ..0.......
    1660: 0D 00 03 01 00 00 00 00 A0 20 00 00 30 00 00 00  // ......... ..0...
    1670: 00 00 00 00 0E 00 03 01 00 00 00 00 C0 20 00 00  // ............. ..
    1680: 30 00 00 00 00 00 00 00 0F 00 03 01 00 00 00 00  // 0...............
    1690: E0 20 00 00 30 00 00 00 00 00 00 00 10 00 03 01  // . ..0...........
    16A0: 00 00 00 00 00 24 00 00 30 00 00 00 00 00 00 00  // .....$..0.......
    16B0: 11 00 03 01 00 00 00 00 20 24 00 00 30 00 00 00  // ........ $..0...
    16C0: 00 00 00 00 12 00 03 01 00 00 00 00 40 24 00 00  // ............@$..
    16D0: 30 00 00 00 00 00 00 00 13 00 03 01 00 00 00 00  // 0...............
    16E0: 60 24 00 00 30 00 00 00 00 00 00 00 14 00 03 01  // `$..0...........
    16F0: 00 00 00 00 80 24 00 00 30 00 00 00 00 00 00 00  // .....$..0.......
    1700: 15 00 03 01 00 00 00 00 A0 24 00 00 30 00 00 00  // .........$..0...
    1710: 00 00 00 00 16 00 03 01 00 00 00 00 C0 24 00 00  // .............$..
    1720: 30 00 00 00 00 00 00 00 17 00 03 01 00 00 00 00  // 0...............
    1730: E0 24 00 00 30 00 00 00 00 00 00 00 18 00 03 01  // .$..0...........
    1740: 00 00 00 00 C0 28 00 00 30 00 00 00 00 00 00 00  // .....(..0.......
    1750: 19 00 03 01 00 00 00 00 E0 28 00 00 30 00 00 00  // .........(..0...
    1760: 00 00 00 00 1A 00 03 01 00 00 00 00 C0 2C 00 00  // .............,..
    1770: 30 00 00 00 00 00 00 00 1B 00 03 01 00 00 00 00  // 0...............
    1780: E0 2C 00 00 30 00 00 00 00 00 00 00 1C 00 03 01  // .,..0...........
    1790: 00 00 00 00 00 29 00 00 30 00 00 00 00 00 00 00  // .....)..0.......
    17A0: 1D 00 03 01 00 00 00 00 20 29 00 00 30 00 00 00  // ........ )..0...
    17B0: 00 00 00 00 1E 00 03 01 00 00 00 00 00 2D 00 00  // .............-..
    17C0: 30 00 00 00 00 00 00 00 1F 00 03 01 00 00 00 00  // 0...............
    17D0: 20 2D 00 00 30 00 00 00 00 00 00 00 20 00 03 01  //  -..0....... ...
    17E0: 00 00 00 00 80 29 00 00 30 00 00 00 00 00 00 00  // .....)..0.......
    17F0: 21 00 03 01 00 00 00 00 A0 29 00 00 30 00 00 00  // !........)..0...
    1800: 00 00 00 00 22 00 03 01 00 00 00 00 80 2D 00 00  // ...."........-..
    1810: 30 00 00 00 00 00 00 00 23 00 03 01 00 00 00 00  // 0.......#.......
    1820: A0 2D 00 00 30 00 00 00 00 00 00 00 04 58 00 00  // .-..0........X..
    1830: 00 00 00 00 01 00 00 00 44 00 00 00 00 00 F8 14  // ........D.......
    1840: 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00  // ................
    1850: 00 00 00 00 00 00 00 00 D7 03 00 00 00 00 00 00  // ................
    1860: DB 03 00 00 D9 03 00 00 00 00 00 00 00 00 00 00  // ................
    1870: 00 00 00 00 FF FF 06 00 00 00 08 00 84 18 00 00  // ................
    1880: 00 00 00 00 00 18 00 00 00 00 00 00 00 00 00 00  // ................
    1890: 00 00 00 00 01 00 00 00 00 00 00 00              // ............
