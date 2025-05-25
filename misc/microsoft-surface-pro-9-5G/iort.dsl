/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20250404 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembly of iort.dat
 *
 * ACPI Data Table [IORT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "IORT"    [IO Remapping Table]
[004h 0004 004h]                Table Length : 000018ED
[008h 0008 001h]                    Revision : 00
[009h 0009 001h]                    Checksum : 86
[00Ah 0010 006h]                      Oem ID : "QCOM  "
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00008280
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 004h]                  Node Count : 00000018
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
               Ensured Coherency of Accesses : 0
[5D0h 1488 004h]               ATS Attribute : 00000000
[5D4h 1492 004h]          PCI Segment Number : 00000000
[5D8h 1496 001h]           Memory Size Limit : 24
[5D9h 1497 002h]          PASID Capabilities : 0000
[5DBh 1499 001h]                    Reserved : 00

[5DCh 1500 004h]                  Input base : 00000000
[5E0h 1504 004h]                    ID Count : 0000FFFF
[5E4h 1508 004h]                 Output Base : 00000000
[5E8h 1512 004h]            Output Reference : 0000187D
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
               Ensured Coherency of Accesses : 0
[608h 1544 004h]               ATS Attribute : 00000000
[60Ch 1548 004h]          PCI Segment Number : 00000001
[610h 1552 001h]           Memory Size Limit : 24
[611h 1553 002h]          PASID Capabilities : 0000
[613h 1555 001h]                    Reserved : 00

[614h 1556 004h]                  Input base : 00000000
[618h 1560 004h]                    ID Count : 0000FFFF
[61Ch 1564 004h]                 Output Base : 00010000
[620h 1568 004h]            Output Reference : 0000187D
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
               Ensured Coherency of Accesses : 0
[640h 1600 004h]               ATS Attribute : 00000000
[644h 1604 004h]          PCI Segment Number : 00000002
[648h 1608 001h]           Memory Size Limit : 24
[649h 1609 002h]          PASID Capabilities : 0000
[64Bh 1611 001h]                    Reserved : 00

[64Ch 1612 004h]                  Input base : 00000000
[650h 1616 004h]                    ID Count : 0000FFFF
[654h 1620 004h]                 Output Base : 00020000
[658h 1624 004h]            Output Reference : 0000187D
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
               Ensured Coherency of Accesses : 0
[678h 1656 004h]               ATS Attribute : 00000000
[67Ch 1660 004h]          PCI Segment Number : 00000003
[680h 1664 001h]           Memory Size Limit : 24
[681h 1665 002h]          PASID Capabilities : 0000
[683h 1667 001h]                    Reserved : 00

[684h 1668 004h]                  Input base : 00000000
[688h 1672 004h]                    ID Count : 0000FFFF
[68Ch 1676 004h]                 Output Base : 00030000
[690h 1680 004h]            Output Reference : 0000187D
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
               Ensured Coherency of Accesses : 0
[6B0h 1712 004h]               ATS Attribute : 00000000
[6B4h 1716 004h]          PCI Segment Number : 00000004
[6B8h 1720 001h]           Memory Size Limit : 24
[6B9h 1721 002h]          PASID Capabilities : 0000
[6BBh 1723 001h]                    Reserved : 00

[6BCh 1724 004h]                  Input base : 00000000
[6C0h 1728 004h]                    ID Count : 0000FFFF
[6C4h 1732 004h]                 Output Base : 00040000
[6C8h 1736 004h]            Output Reference : 0000187D
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
               Ensured Coherency of Accesses : 0
[6E8h 1768 004h]               ATS Attribute : 00000000
[6ECh 1772 004h]          PCI Segment Number : 00000005
[6F0h 1776 001h]           Memory Size Limit : 24
[6F1h 1777 002h]          PASID Capabilities : 0000
[6F3h 1779 001h]                    Reserved : 00

[6F4h 1780 004h]                  Input base : 00000000
[6F8h 1784 004h]                    ID Count : 0000FFFF
[6FCh 1788 004h]                 Output Base : 00050000
[700h 1792 004h]            Output Reference : 0000187D
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
               Ensured Coherency of Accesses : 0
[720h 1824 004h]               ATS Attribute : 00000000
[724h 1828 004h]          PCI Segment Number : 00000006
[728h 1832 001h]           Memory Size Limit : 24
[729h 1833 002h]          PASID Capabilities : 0000
[72Bh 1835 001h]                    Reserved : 00

[72Ch 1836 004h]                  Input base : 00000000
[730h 1840 004h]                    ID Count : 0000FFFF
[734h 1844 004h]                 Output Base : 00060000
[738h 1848 004h]            Output Reference : 0000187D
[73Ch 1852 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[740h 1856 001h]                        Type : 01
[741h 1857 002h]                      Length : 0051
[743h 1859 001h]                    Revision : 00
[744h 1860 004h]                    Reserved : 00000000
[748h 1864 004h]               Mapping Count : 00000001
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
               Ensured Coherency of Accesses : 0
[75Ch 1884 001h]           Memory Size Limit : 24
[75Dh 1885 00Ah]                 Device Name : "\_SB.SISP"
[767h 1895 016h]                     Padding : 49 4F 52 54 ED 18 00 00 00 86 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* 777h 1911   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[77Dh 1917 004h]                  Input base : A0030000
[781h 1921 004h]                    ID Count : 00000000
[785h 1925 004h]                 Output Base : 00000000
[789h 1929 004h]            Output Reference : 00000030
[78Dh 1933 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[791h 1937 001h]                        Type : 01
[792h 1938 002h]                      Length : 0565
[794h 1940 001h]                    Revision : 00
[795h 1941 004h]                    Reserved : 00000000
[799h 1945 004h]               Mapping Count : 00000042
[79Dh 1949 004h]              Mapping Offset : 0000003D

[7A1h 1953 004h]                  Node Flags : 00000000
[7A5h 1957 008h]           Memory Properties : [IORT Memory Access Properties]
[7A5h 1957 004h]             Cache Coherency : 00000000
[7A9h 1961 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[7AAh 1962 002h]                    Reserved : 0000
[7ACh 1964 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[7ADh 1965 001h]           Memory Size Limit : 30
[7AEh 1966 00Ah]                 Device Name : "\_SB.GPU0"
[7B8h 1976 016h]                     Padding : 49 4F 52 54 ED 18 00 00 00 86 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* 7C8h 1992   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[7CEh 1998 004h]                  Input base : 030A0000
[7D2h 2002 004h]                    ID Count : 00000000
[7D6h 2006 004h]                 Output Base : 00000002
[7DAh 2010 004h]            Output Reference : 000004FC
[7DEh 2014 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7E2h 2018 004h]                  Input base : 030A0001
[7E6h 2022 004h]                    ID Count : 00000000
[7EAh 2026 004h]                 Output Base : 00000402
[7EEh 2030 004h]            Output Reference : 000004FC
[7F2h 2034 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7F6h 2038 004h]                  Input base : 030A0002
[7FAh 2042 004h]                    ID Count : 00000000
[7FEh 2046 004h]                 Output Base : 00000802
[802h 2050 004h]            Output Reference : 000004FC
[806h 2054 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[80Ah 2058 004h]                  Input base : 030A0003
[80Eh 2062 004h]                    ID Count : 00000000
[812h 2066 004h]                 Output Base : 00000C02
[816h 2070 004h]            Output Reference : 000004FC
[81Ah 2074 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[81Eh 2078 004h]                  Input base : 03030000
[822h 2082 004h]                    ID Count : 00000000
[826h 2086 004h]                 Output Base : 00000000
[82Ah 2090 004h]            Output Reference : 000004FC
[82Eh 2094 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[832h 2098 004h]                  Input base : 03030001
[836h 2102 004h]                    ID Count : 00000000
[83Ah 2106 004h]                 Output Base : 00000400
[83Eh 2110 004h]            Output Reference : 000004FC
[842h 2114 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[846h 2118 004h]                  Input base : 03030002
[84Ah 2122 004h]                    ID Count : 00000000
[84Eh 2126 004h]                 Output Base : 00000800
[852h 2130 004h]            Output Reference : 000004FC
[856h 2134 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[85Ah 2138 004h]                  Input base : 03030003
[85Eh 2142 004h]                    ID Count : 00000000
[862h 2146 004h]                 Output Base : 00000C00
[866h 2150 004h]            Output Reference : 000004FC
[86Ah 2154 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[86Eh 2158 004h]                  Input base : 03030004
[872h 2162 004h]                    ID Count : 00000000
[876h 2166 004h]                 Output Base : 00000001
[87Ah 2170 004h]            Output Reference : 000004FC
[87Eh 2174 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[882h 2178 004h]                  Input base : 03030005
[886h 2182 004h]                    ID Count : 00000000
[88Ah 2186 004h]                 Output Base : 00000401
[88Eh 2190 004h]            Output Reference : 000004FC
[892h 2194 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[896h 2198 004h]                  Input base : 03030006
[89Ah 2202 004h]                    ID Count : 00000000
[89Eh 2206 004h]                 Output Base : 00000801
[8A2h 2210 004h]            Output Reference : 000004FC
[8A6h 2214 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8AAh 2218 004h]                  Input base : 03030007
[8AEh 2222 004h]                    ID Count : 00000000
[8B2h 2226 004h]                 Output Base : 00000C01
[8B6h 2230 004h]            Output Reference : 000004FC
[8BAh 2234 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8BEh 2238 004h]                  Input base : 03030008
[8C2h 2242 004h]                    ID Count : 00000000
[8C6h 2246 004h]                 Output Base : 00000004
[8CAh 2250 004h]            Output Reference : 000004FC
[8CEh 2254 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8D2h 2258 004h]                  Input base : 03030009
[8D6h 2262 004h]                    ID Count : 00000000
[8DAh 2266 004h]                 Output Base : 00000404
[8DEh 2270 004h]            Output Reference : 000004FC
[8E2h 2274 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8E6h 2278 004h]                  Input base : 0303000A
[8EAh 2282 004h]                    ID Count : 00000000
[8EEh 2286 004h]                 Output Base : 00000804
[8F2h 2290 004h]            Output Reference : 000004FC
[8F6h 2294 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8FAh 2298 004h]                  Input base : 0303000B
[8FEh 2302 004h]                    ID Count : 00000000
[902h 2306 004h]                 Output Base : 00000C04
[906h 2310 004h]            Output Reference : 000004FC
[90Ah 2314 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[90Eh 2318 004h]                  Input base : 0303000C
[912h 2322 004h]                    ID Count : 00000000
[916h 2326 004h]                 Output Base : 00000005
[91Ah 2330 004h]            Output Reference : 000004FC
[91Eh 2334 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[922h 2338 004h]                  Input base : 0303000D
[926h 2342 004h]                    ID Count : 00000000
[92Ah 2346 004h]                 Output Base : 00000405
[92Eh 2350 004h]            Output Reference : 000004FC
[932h 2354 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[936h 2358 004h]                  Input base : 0303000E
[93Ah 2362 004h]                    ID Count : 00000000
[93Eh 2366 004h]                 Output Base : 00000805
[942h 2370 004h]            Output Reference : 000004FC
[946h 2374 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[94Ah 2378 004h]                  Input base : 0303000F
[94Eh 2382 004h]                    ID Count : 00000000
[952h 2386 004h]                 Output Base : 00000C05
[956h 2390 004h]            Output Reference : 000004FC
[95Ah 2394 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[95Eh 2398 004h]                  Input base : 00030000
[962h 2402 004h]                    ID Count : 00000000
[966h 2406 004h]                 Output Base : 00001000
[96Ah 2410 004h]            Output Reference : 00000030
[96Eh 2414 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[972h 2418 004h]                  Input base : 00030001
[976h 2422 004h]                    ID Count : 00000000
[97Ah 2426 004h]                 Output Base : 00001002
[97Eh 2430 004h]            Output Reference : 00000030
[982h 2434 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[986h 2438 004h]                  Input base : 00030002
[98Ah 2442 004h]                    ID Count : 00000000
[98Eh 2446 004h]                 Output Base : 00001400
[992h 2450 004h]            Output Reference : 00000030
[996h 2454 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[99Ah 2458 004h]                  Input base : 00030003
[99Eh 2462 004h]                    ID Count : 00000000
[9A2h 2466 004h]                 Output Base : 00001402
[9A6h 2470 004h]            Output Reference : 00000030
[9AAh 2474 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9AEh 2478 004h]                  Input base : 00030004
[9B2h 2482 004h]                    ID Count : 00000000
[9B6h 2486 004h]                 Output Base : 00001800
[9BAh 2490 004h]            Output Reference : 00000030
[9BEh 2494 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9C2h 2498 004h]                  Input base : 00030005
[9C6h 2502 004h]                    ID Count : 00000000
[9CAh 2506 004h]                 Output Base : 00001802
[9CEh 2510 004h]            Output Reference : 00000030
[9D2h 2514 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9D6h 2518 004h]                  Input base : 00030006
[9DAh 2522 004h]                    ID Count : 00000000
[9DEh 2526 004h]                 Output Base : 00001C00
[9E2h 2530 004h]            Output Reference : 00000030
[9E6h 2534 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9EAh 2538 004h]                  Input base : 00030007
[9EEh 2542 004h]                    ID Count : 00000000
[9F2h 2546 004h]                 Output Base : 00001C02
[9F6h 2550 004h]            Output Reference : 00000030
[9FAh 2554 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9FEh 2558 004h]                  Input base : 000A0000
[A02h 2562 004h]                    ID Count : 00000000
[A06h 2566 004h]                 Output Base : 00001001
[A0Ah 2570 004h]            Output Reference : 00000030
[A0Eh 2574 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A12h 2578 004h]                  Input base : 000A0001
[A16h 2582 004h]                    ID Count : 00000000
[A1Ah 2586 004h]                 Output Base : 00001401
[A1Eh 2590 004h]            Output Reference : 00000030
[A22h 2594 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A26h 2598 004h]                  Input base : 000A0002
[A2Ah 2602 004h]                    ID Count : 00000000
[A2Eh 2606 004h]                 Output Base : 00001801
[A32h 2610 004h]            Output Reference : 00000030
[A36h 2614 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A3Ah 2618 004h]                  Input base : 000A0003
[A3Eh 2622 004h]                    ID Count : 00000000
[A42h 2626 004h]                 Output Base : 00001C01
[A46h 2630 004h]            Output Reference : 00000030
[A4Ah 2634 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A4Eh 2638 004h]                  Input base : 06030000
[A52h 2642 004h]                    ID Count : 00000000
[A56h 2646 004h]                 Output Base : 000029DC
[A5Ah 2650 004h]            Output Reference : 00000030
[A5Eh 2654 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A62h 2658 004h]                  Input base : 06030001
[A66h 2662 004h]                    ID Count : 00000000
[A6Ah 2666 004h]                 Output Base : 00002DDC
[A6Eh 2670 004h]            Output Reference : 00000030
[A72h 2674 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A76h 2678 004h]                  Input base : 06030002
[A7Ah 2682 004h]                    ID Count : 00000000
[A7Eh 2686 004h]                 Output Base : 000029FC
[A82h 2690 004h]            Output Reference : 00000030
[A86h 2694 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A8Ah 2698 004h]                  Input base : 06030003
[A8Eh 2702 004h]                    ID Count : 00000000
[A92h 2706 004h]                 Output Base : 00002DFC
[A96h 2710 004h]            Output Reference : 00000030
[A9Ah 2714 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A9Eh 2718 004h]                  Input base : 060A0000
[AA2h 2722 004h]                    ID Count : 00000000
[AA6h 2726 004h]                 Output Base : 000029DD
[AAAh 2730 004h]            Output Reference : 00000030
[AAEh 2734 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AB2h 2738 004h]                  Input base : 060A0001
[AB6h 2742 004h]                    ID Count : 00000000
[ABAh 2746 004h]                 Output Base : 00002DDD
[ABEh 2750 004h]            Output Reference : 00000030
[AC2h 2754 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AC6h 2758 004h]                  Input base : 060A0002
[ACAh 2762 004h]                    ID Count : 00000000
[ACEh 2766 004h]                 Output Base : 000029FD
[AD2h 2770 004h]            Output Reference : 00000030
[AD6h 2774 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[ADAh 2778 004h]                  Input base : 060A0003
[ADEh 2782 004h]                    ID Count : 00000000
[AE2h 2786 004h]                 Output Base : 00002DFD
[AE6h 2790 004h]            Output Reference : 00000030
[AEAh 2794 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AEEh 2798 004h]                  Input base : 0C030000
[AF2h 2802 004h]                    ID Count : 00000001
[AF6h 2806 004h]                 Output Base : 00000584
[AFAh 2810 004h]            Output Reference : 00000030
[AFEh 2814 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B02h 2818 004h]                  Input base : 0C030002
[B06h 2822 004h]                    ID Count : 00000001
[B0Ah 2826 004h]                 Output Base : 00000594
[B0Eh 2830 004h]            Output Reference : 00000030
[B12h 2834 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B16h 2838 004h]                  Input base : 0C030004
[B1Ah 2842 004h]                    ID Count : 00000001
[B1Eh 2846 004h]                 Output Base : 00000586
[B22h 2850 004h]            Output Reference : 00000030
[B26h 2854 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B2Ah 2858 004h]                  Input base : 0C030006
[B2Eh 2862 004h]                    ID Count : 00000000
[B32h 2866 004h]                 Output Base : 00000592
[B36h 2870 004h]            Output Reference : 00000030
[B3Ah 2874 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B3Eh 2878 004h]                  Input base : 0C030007
[B42h 2882 004h]                    ID Count : 00000003
[B46h 2886 004h]                 Output Base : 00000596
[B4Ah 2890 004h]            Output Reference : 00000030
[B4Eh 2894 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B52h 2898 004h]                  Input base : 0C03000B
[B56h 2902 004h]                    ID Count : 00000000
[B5Ah 2906 004h]                 Output Base : 0000059F
[B5Eh 2910 004h]            Output Reference : 00000030
[B62h 2914 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B66h 2918 004h]                  Input base : 0C090000
[B6Ah 2922 004h]                    ID Count : 00000000
[B6Eh 2926 004h]                 Output Base : 00000593
[B72h 2930 004h]            Output Reference : 00000030
[B76h 2934 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B7Ah 2938 004h]                  Input base : 0C090001
[B7Eh 2942 004h]                    ID Count : 00000002
[B82h 2946 004h]                 Output Base : 0000059C
[B86h 2950 004h]            Output Reference : 00000030
[B8Ah 2954 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B8Eh 2958 004h]                  Input base : 04030000
[B92h 2962 004h]                    ID Count : 00000000
[B96h 2966 004h]                 Output Base : 00002A00
[B9Ah 2970 004h]            Output Reference : 00000030
[B9Eh 2974 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BA2h 2978 004h]                  Input base : 04030001
[BA6h 2982 004h]                    ID Count : 00000000
[BAAh 2986 004h]                 Output Base : 00002E00
[BAEh 2990 004h]            Output Reference : 00000030
[BB2h 2994 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BB6h 2998 004h]                  Input base : 04030002
[BBAh 3002 004h]                    ID Count : 00000000
[BBEh 3006 004h]                 Output Base : 00002A20
[BC2h 3010 004h]            Output Reference : 00000030
[BC6h 3014 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BCAh 3018 004h]                  Input base : 04030003
[BCEh 3022 004h]                    ID Count : 00000000
[BD2h 3026 004h]                 Output Base : 00002E20
[BD6h 3030 004h]            Output Reference : 00000030
[BDAh 3034 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BDEh 3038 004h]                  Input base : 04030004
[BE2h 3042 004h]                    ID Count : 00000000
[BE6h 3046 004h]                 Output Base : 00002A07
[BEAh 3050 004h]            Output Reference : 00000030
[BEEh 3054 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BF2h 3058 004h]                  Input base : 04030005
[BF6h 3062 004h]                    ID Count : 00000000
[BFAh 3066 004h]                 Output Base : 00002E07
[BFEh 3070 004h]            Output Reference : 00000030
[C02h 3074 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C06h 3078 004h]                  Input base : 04090000
[C0Ah 3082 004h]                    ID Count : 00000000
[C0Eh 3086 004h]                 Output Base : 00002A01
[C12h 3090 004h]            Output Reference : 00000030
[C16h 3094 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C1Ah 3098 004h]                  Input base : 04090001
[C1Eh 3102 004h]                    ID Count : 00000000
[C22h 3106 004h]                 Output Base : 00002A05
[C26h 3110 004h]            Output Reference : 00000030
[C2Ah 3114 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C2Eh 3118 004h]                  Input base : 04090002
[C32h 3122 004h]                    ID Count : 00000000
[C36h 3126 004h]                 Output Base : 00002E01
[C3Ah 3130 004h]            Output Reference : 00000030
[C3Eh 3134 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C42h 3138 004h]                  Input base : 04090003
[C46h 3142 004h]                    ID Count : 00000000
[C4Ah 3146 004h]                 Output Base : 00002E05
[C4Eh 3150 004h]            Output Reference : 00000030
[C52h 3154 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C56h 3158 004h]                  Input base : 040A0000
[C5Ah 3162 004h]                    ID Count : 00000000
[C5Eh 3166 004h]                 Output Base : 00002A03
[C62h 3170 004h]            Output Reference : 00000030
[C66h 3174 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C6Ah 3178 004h]                  Input base : 040A0001
[C6Eh 3182 004h]                    ID Count : 00000000
[C72h 3186 004h]                 Output Base : 00002E03
[C76h 3190 004h]            Output Reference : 00000030
[C7Ah 3194 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C7Eh 3198 004h]                  Input base : 040A0002
[C82h 3202 004h]                    ID Count : 00000000
[C86h 3206 004h]                 Output Base : 00002A23
[C8Ah 3210 004h]            Output Reference : 00000030
[C8Eh 3214 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C92h 3218 004h]                  Input base : 040A0003
[C96h 3222 004h]                    ID Count : 00000000
[C9Ah 3226 004h]                 Output Base : 00002E23
[C9Eh 3230 004h]            Output Reference : 00000030
[CA2h 3234 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CA6h 3238 004h]                  Input base : 040B0000
[CAAh 3242 004h]                    ID Count : 00000000
[CAEh 3246 004h]                 Output Base : 00002A04
[CB2h 3250 004h]            Output Reference : 00000030
[CB6h 3254 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CBAh 3258 004h]                  Input base : 040B0001
[CBEh 3262 004h]                    ID Count : 00000000
[CC2h 3266 004h]                 Output Base : 00002E04
[CC6h 3270 004h]            Output Reference : 00000030
[CCAh 3274 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CCEh 3278 004h]                  Input base : 040B0002
[CD2h 3282 004h]                    ID Count : 00000000
[CD6h 3286 004h]                 Output Base : 00002A24
[CDAh 3290 004h]            Output Reference : 00000030
[CDEh 3294 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CE2h 3298 004h]                  Input base : 040B0003
[CE6h 3302 004h]                    ID Count : 00000000
[CEAh 3306 004h]                 Output Base : 00002E24
[CEEh 3310 004h]            Output Reference : 00000030
[CF2h 3314 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CF6h 3318 001h]                        Type : 01
[CF7h 3319 002h]                      Length : 008D
[CF9h 3321 001h]                    Revision : 00
[CFAh 3322 004h]                    Reserved : 00000000
[CFEh 3326 004h]               Mapping Count : 00000004
[D02h 3330 004h]              Mapping Offset : 0000003D

[D06h 3334 004h]                  Node Flags : 00000000
[D0Ah 3338 008h]           Memory Properties : [IORT Memory Access Properties]
[D0Ah 3338 004h]             Cache Coherency : 00000000
[D0Eh 3342 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[D0Fh 3343 002h]                    Reserved : 0000
[D11h 3345 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[D12h 3346 001h]           Memory Size Limit : 24
[D13h 3347 00Ah]                 Device Name : "\_SB.JPGE"
[D1Dh 3357 016h]                     Padding : 49 4F 52 54 ED 18 00 00 00 86 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* D2Dh 3373   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[D33h 3379 004h]                  Input base : 02030000
[D37h 3383 004h]                    ID Count : 00000000
[D3Bh 3387 004h]                 Output Base : 00002940
[D3Fh 3391 004h]            Output Reference : 00000030
[D43h 3395 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D47h 3399 004h]                  Input base : 02030001
[D4Bh 3403 004h]                    ID Count : 00000000
[D4Fh 3407 004h]                 Output Base : 00002960
[D53h 3411 004h]            Output Reference : 00000030
[D57h 3415 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D5Bh 3419 004h]                  Input base : 02030002
[D5Fh 3423 004h]                    ID Count : 00000000
[D63h 3427 004h]                 Output Base : 00002D40
[D67h 3431 004h]            Output Reference : 00000030
[D6Bh 3435 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D6Fh 3439 004h]                  Input base : 02030003
[D73h 3443 004h]                    ID Count : 00000000
[D77h 3447 004h]                 Output Base : 00002D60
[D7Bh 3451 004h]            Output Reference : 00000030
[D7Fh 3455 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D83h 3459 001h]                        Type : 01
[D84h 3460 002h]                      Length : 04C5
[D86h 3462 001h]                    Revision : 00
[D87h 3463 004h]                    Reserved : 00000000
[D8Bh 3467 004h]               Mapping Count : 0000003A
[D8Fh 3471 004h]              Mapping Offset : 0000003D

[D93h 3475 004h]                  Node Flags : 00000000
[D97h 3479 008h]           Memory Properties : [IORT Memory Access Properties]
[D97h 3479 004h]             Cache Coherency : 00000000
[D9Bh 3483 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[D9Ch 3484 002h]                    Reserved : 0000
[D9Eh 3486 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[D9Fh 3487 001h]           Memory Size Limit : 24
[DA0h 3488 00Ah]                 Device Name : "\_SB.ARPC"
[DAAh 3498 016h]                     Padding : 49 4F 52 54 ED 18 00 00 00 86 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* DBAh 3514   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[DC0h 3520 004h]                  Input base : 17030034
[DC4h 3524 004h]                    ID Count : 00000000
[DC8h 3528 004h]                 Output Base : 00000C03
[DCCh 3532 004h]            Output Reference : 00000030
[DD0h 3536 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DD4h 3540 004h]                  Input base : 17030035
[DD8h 3544 004h]                    ID Count : 00000000
[DDCh 3548 004h]                 Output Base : 00000C04
[DE0h 3552 004h]            Output Reference : 00000030
[DE4h 3556 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DE8h 3560 004h]                  Input base : 17030036
[DECh 3564 004h]                    ID Count : 00000000
[DF0h 3568 004h]                 Output Base : 00000C05
[DF4h 3572 004h]            Output Reference : 00000030
[DF8h 3576 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DFCh 3580 004h]                  Input base : 17030000
[E00h 3584 004h]                    ID Count : 00000000
[E04h 3588 004h]                 Output Base : 00003181
[E08h 3592 004h]            Output Reference : 00000030
[E0Ch 3596 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E10h 3600 004h]                  Input base : 17030001
[E14h 3604 004h]                    ID Count : 00000000
[E18h 3608 004h]                 Output Base : 000031A1
[E1Ch 3612 004h]            Output Reference : 00000030
[E20h 3616 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E24h 3620 004h]                  Input base : 17030002
[E28h 3624 004h]                    ID Count : 00000000
[E2Ch 3628 004h]                 Output Base : 00003581
[E30h 3632 004h]            Output Reference : 00000030
[E34h 3636 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E38h 3640 004h]                  Input base : 17030003
[E3Ch 3644 004h]                    ID Count : 00000000
[E40h 3648 004h]                 Output Base : 000035A1
[E44h 3652 004h]            Output Reference : 00000030
[E48h 3656 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E4Ch 3660 004h]                  Input base : 17030004
[E50h 3664 004h]                    ID Count : 00000000
[E54h 3668 004h]                 Output Base : 00003182
[E58h 3672 004h]            Output Reference : 00000030
[E5Ch 3676 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E60h 3680 004h]                  Input base : 17030005
[E64h 3684 004h]                    ID Count : 00000000
[E68h 3688 004h]                 Output Base : 000031A2
[E6Ch 3692 004h]            Output Reference : 00000030
[E70h 3696 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E74h 3700 004h]                  Input base : 17030006
[E78h 3704 004h]                    ID Count : 00000000
[E7Ch 3708 004h]                 Output Base : 00003582
[E80h 3712 004h]            Output Reference : 00000030
[E84h 3716 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E88h 3720 004h]                  Input base : 17030007
[E8Ch 3724 004h]                    ID Count : 00000000
[E90h 3728 004h]                 Output Base : 000035A2
[E94h 3732 004h]            Output Reference : 00000030
[E98h 3736 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E9Ch 3740 004h]                  Input base : 17030008
[EA0h 3744 004h]                    ID Count : 00000000
[EA4h 3748 004h]                 Output Base : 00003183
[EA8h 3752 004h]            Output Reference : 00000030
[EACh 3756 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[EB0h 3760 004h]                  Input base : 17030009
[EB4h 3764 004h]                    ID Count : 00000000
[EB8h 3768 004h]                 Output Base : 000031A3
[EBCh 3772 004h]            Output Reference : 00000030
[EC0h 3776 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[EC4h 3780 004h]                  Input base : 1703000A
[EC8h 3784 004h]                    ID Count : 00000000
[ECCh 3788 004h]                 Output Base : 00003583
[ED0h 3792 004h]            Output Reference : 00000030
[ED4h 3796 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[ED8h 3800 004h]                  Input base : 1703000B
[EDCh 3804 004h]                    ID Count : 00000000
[EE0h 3808 004h]                 Output Base : 000035A3
[EE4h 3812 004h]            Output Reference : 00000030
[EE8h 3816 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[EECh 3820 004h]                  Input base : 1703000C
[EF0h 3824 004h]                    ID Count : 00000000
[EF4h 3828 004h]                 Output Base : 00003184
[EF8h 3832 004h]            Output Reference : 00000030
[EFCh 3836 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F00h 3840 004h]                  Input base : 1703000D
[F04h 3844 004h]                    ID Count : 00000000
[F08h 3848 004h]                 Output Base : 000031A4
[F0Ch 3852 004h]            Output Reference : 00000030
[F10h 3856 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F14h 3860 004h]                  Input base : 1703000E
[F18h 3864 004h]                    ID Count : 00000000
[F1Ch 3868 004h]                 Output Base : 00003584
[F20h 3872 004h]            Output Reference : 00000030
[F24h 3876 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F28h 3880 004h]                  Input base : 1703000F
[F2Ch 3884 004h]                    ID Count : 00000000
[F30h 3888 004h]                 Output Base : 000035A4
[F34h 3892 004h]            Output Reference : 00000030
[F38h 3896 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F3Ch 3900 004h]                  Input base : 17030010
[F40h 3904 004h]                    ID Count : 00000000
[F44h 3908 004h]                 Output Base : 00003185
[F48h 3912 004h]            Output Reference : 00000030
[F4Ch 3916 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F50h 3920 004h]                  Input base : 17030011
[F54h 3924 004h]                    ID Count : 00000000
[F58h 3928 004h]                 Output Base : 000031A5
[F5Ch 3932 004h]            Output Reference : 00000030
[F60h 3936 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F64h 3940 004h]                  Input base : 17030012
[F68h 3944 004h]                    ID Count : 00000000
[F6Ch 3948 004h]                 Output Base : 00003585
[F70h 3952 004h]            Output Reference : 00000030
[F74h 3956 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F78h 3960 004h]                  Input base : 17030013
[F7Ch 3964 004h]                    ID Count : 00000000
[F80h 3968 004h]                 Output Base : 000035A5
[F84h 3972 004h]            Output Reference : 00000030
[F88h 3976 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F8Ch 3980 004h]                  Input base : 17030014
[F90h 3984 004h]                    ID Count : 00000000
[F94h 3988 004h]                 Output Base : 00003186
[F98h 3992 004h]            Output Reference : 00000030
[F9Ch 3996 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[FA0h 4000 004h]                  Input base : 17030015
[FA4h 4004 004h]                    ID Count : 00000000
[FA8h 4008 004h]                 Output Base : 000031A6
[FACh 4012 004h]            Output Reference : 00000030
[FB0h 4016 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[FB4h 4020 004h]                  Input base : 17030016
[FB8h 4024 004h]                    ID Count : 00000000
[FBCh 4028 004h]                 Output Base : 00003586
[FC0h 4032 004h]            Output Reference : 00000030
[FC4h 4036 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[FC8h 4040 004h]                  Input base : 17030017
[FCCh 4044 004h]                    ID Count : 00000000
[FD0h 4048 004h]                 Output Base : 000035A6
[FD4h 4052 004h]            Output Reference : 00000030
[FD8h 4056 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[FDCh 4060 004h]                  Input base : 17030018
[FE0h 4064 004h]                    ID Count : 00000000
[FE4h 4068 004h]                 Output Base : 00003187
[FE8h 4072 004h]            Output Reference : 00000030
[FECh 4076 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[FF0h 4080 004h]                  Input base : 17030019
[FF4h 4084 004h]                    ID Count : 00000000
[FF8h 4088 004h]                 Output Base : 000031A7
[FFCh 4092 004h]            Output Reference : 00000030
[1000h 4096 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1004h 4100 004h]                  Input base : 1703001A
[1008h 4104 004h]                    ID Count : 00000000
[100Ch 4108 004h]                 Output Base : 00003587
[1010h 4112 004h]            Output Reference : 00000030
[1014h 4116 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1018h 4120 004h]                  Input base : 1703001B
[101Ch 4124 004h]                    ID Count : 00000000
[1020h 4128 004h]                 Output Base : 000035A7
[1024h 4132 004h]            Output Reference : 00000030
[1028h 4136 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[102Ch 4140 004h]                  Input base : 1703001C
[1030h 4144 004h]                    ID Count : 00000000
[1034h 4148 004h]                 Output Base : 00003188
[1038h 4152 004h]            Output Reference : 00000030
[103Ch 4156 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1040h 4160 004h]                  Input base : 1703001D
[1044h 4164 004h]                    ID Count : 00000000
[1048h 4168 004h]                 Output Base : 000031A8
[104Ch 4172 004h]            Output Reference : 00000030
[1050h 4176 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1054h 4180 004h]                  Input base : 1703001E
[1058h 4184 004h]                    ID Count : 00000000
[105Ch 4188 004h]                 Output Base : 00003588
[1060h 4192 004h]            Output Reference : 00000030
[1064h 4196 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1068h 4200 004h]                  Input base : 1703001F
[106Ch 4204 004h]                    ID Count : 00000000
[1070h 4208 004h]                 Output Base : 000035A8
[1074h 4212 004h]            Output Reference : 00000030
[1078h 4216 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[107Ch 4220 004h]                  Input base : 17030020
[1080h 4224 004h]                    ID Count : 00000000
[1084h 4228 004h]                 Output Base : 0000318B
[1088h 4232 004h]            Output Reference : 00000030
[108Ch 4236 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1090h 4240 004h]                  Input base : 17030021
[1094h 4244 004h]                    ID Count : 00000000
[1098h 4248 004h]                 Output Base : 000031AB
[109Ch 4252 004h]            Output Reference : 00000030
[10A0h 4256 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[10A4h 4260 004h]                  Input base : 17030022
[10A8h 4264 004h]                    ID Count : 00000000
[10ACh 4268 004h]                 Output Base : 0000358B
[10B0h 4272 004h]            Output Reference : 00000030
[10B4h 4276 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[10B8h 4280 004h]                  Input base : 17030023
[10BCh 4284 004h]                    ID Count : 00000000
[10C0h 4288 004h]                 Output Base : 000035AB
[10C4h 4292 004h]            Output Reference : 00000030
[10C8h 4296 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[10CCh 4300 004h]                  Input base : 17030024
[10D0h 4304 004h]                    ID Count : 00000000
[10D4h 4308 004h]                 Output Base : 0000318C
[10D8h 4312 004h]            Output Reference : 00000030
[10DCh 4316 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[10E0h 4320 004h]                  Input base : 17030025
[10E4h 4324 004h]                    ID Count : 00000000
[10E8h 4328 004h]                 Output Base : 000031AC
[10ECh 4332 004h]            Output Reference : 00000030
[10F0h 4336 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[10F4h 4340 004h]                  Input base : 17030026
[10F8h 4344 004h]                    ID Count : 00000000
[10FCh 4348 004h]                 Output Base : 0000358C
[1100h 4352 004h]            Output Reference : 00000030
[1104h 4356 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1108h 4360 004h]                  Input base : 17030027
[110Ch 4364 004h]                    ID Count : 00000000
[1110h 4368 004h]                 Output Base : 000035AC
[1114h 4372 004h]            Output Reference : 00000030
[1118h 4376 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[111Ch 4380 004h]                  Input base : 17030028
[1120h 4384 004h]                    ID Count : 00000000
[1124h 4388 004h]                 Output Base : 0000318D
[1128h 4392 004h]            Output Reference : 00000030
[112Ch 4396 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1130h 4400 004h]                  Input base : 17030029
[1134h 4404 004h]                    ID Count : 00000000
[1138h 4408 004h]                 Output Base : 000031AD
[113Ch 4412 004h]            Output Reference : 00000030
[1140h 4416 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1144h 4420 004h]                  Input base : 1703002A
[1148h 4424 004h]                    ID Count : 00000000
[114Ch 4428 004h]                 Output Base : 0000358D
[1150h 4432 004h]            Output Reference : 00000030
[1154h 4436 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1158h 4440 004h]                  Input base : 1703002B
[115Ch 4444 004h]                    ID Count : 00000000
[1160h 4448 004h]                 Output Base : 000035AD
[1164h 4452 004h]            Output Reference : 00000030
[1168h 4456 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[116Ch 4460 004h]                  Input base : 1703002C
[1170h 4464 004h]                    ID Count : 00000000
[1174h 4468 004h]                 Output Base : 0000318E
[1178h 4472 004h]            Output Reference : 00000030
[117Ch 4476 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1180h 4480 004h]                  Input base : 1703002D
[1184h 4484 004h]                    ID Count : 00000000
[1188h 4488 004h]                 Output Base : 000031AE
[118Ch 4492 004h]            Output Reference : 00000030
[1190h 4496 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1194h 4500 004h]                  Input base : 1703002E
[1198h 4504 004h]                    ID Count : 00000000
[119Ch 4508 004h]                 Output Base : 0000358E
[11A0h 4512 004h]            Output Reference : 00000030
[11A4h 4516 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11A8h 4520 004h]                  Input base : 1703002F
[11ACh 4524 004h]                    ID Count : 00000000
[11B0h 4528 004h]                 Output Base : 000035AE
[11B4h 4532 004h]            Output Reference : 00000030
[11B8h 4536 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11BCh 4540 004h]                  Input base : 17030030
[11C0h 4544 004h]                    ID Count : 00000000
[11C4h 4548 004h]                 Output Base : 0000318F
[11C8h 4552 004h]            Output Reference : 00000030
[11CCh 4556 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11D0h 4560 004h]                  Input base : 17030031
[11D4h 4564 004h]                    ID Count : 00000000
[11D8h 4568 004h]                 Output Base : 000031AF
[11DCh 4572 004h]            Output Reference : 00000030
[11E0h 4576 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11E4h 4580 004h]                  Input base : 17030032
[11E8h 4584 004h]                    ID Count : 00000000
[11ECh 4588 004h]                 Output Base : 0000358F
[11F0h 4592 004h]            Output Reference : 00000030
[11F4h 4596 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11F8h 4600 004h]                  Input base : 17030033
[11FCh 4604 004h]                    ID Count : 00000000
[1200h 4608 004h]                 Output Base : 000035AF
[1204h 4612 004h]            Output Reference : 00000030
[1208h 4616 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[120Ch 4620 004h]                  Input base : 17030037
[1210h 4624 004h]                    ID Count : 00000000
[1214h 4628 004h]                 Output Base : 00000521
[1218h 4632 004h]            Output Reference : 00000030
[121Ch 4636 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1220h 4640 004h]                  Input base : 17030038
[1224h 4644 004h]                    ID Count : 00000000
[1228h 4648 004h]                 Output Base : 00000522
[122Ch 4652 004h]            Output Reference : 00000030
[1230h 4656 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1234h 4660 004h]                  Input base : 17030039
[1238h 4664 004h]                    ID Count : 00000000
[123Ch 4668 004h]                 Output Base : 00000523
[1240h 4672 004h]            Output Reference : 00000030
[1244h 4676 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1248h 4680 001h]                        Type : 01
[1249h 4681 002h]                      Length : 00A1
[124Bh 4683 001h]                    Revision : 00
[124Ch 4684 004h]                    Reserved : 00000000
[1250h 4688 004h]               Mapping Count : 00000005
[1254h 4692 004h]              Mapping Offset : 0000003D

[1258h 4696 004h]                  Node Flags : 00000000
[125Ch 4700 008h]           Memory Properties : [IORT Memory Access Properties]
[125Ch 4700 004h]             Cache Coherency : 00000000
[1260h 4704 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1261h 4705 002h]                    Reserved : 0000
[1263h 4707 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[1264h 4708 001h]           Memory Size Limit : 24
[1265h 4709 009h]                 Device Name : "\_SB.IPA"
[126Eh 4718 017h]                     Padding : 49 4F 52 54 ED 18 00 00 00 86 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* 127Eh 4734   7 */                            51 43 4F 4D 45 44 4B                            /* QCOMEDK */\

[1285h 4741 004h]                  Input base : 0B030000
[1289h 4745 004h]                    ID Count : 00000000
[128Dh 4749 004h]                 Output Base : 00000020
[1291h 4753 004h]            Output Reference : 00000030
[1295h 4757 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1299h 4761 004h]                  Input base : 0B030001
[129Dh 4765 004h]                    ID Count : 00000000
[12A1h 4769 004h]                 Output Base : 00000021
[12A5h 4773 004h]            Output Reference : 00000030
[12A9h 4777 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[12ADh 4781 004h]                  Input base : 0B030002
[12B1h 4785 004h]                    ID Count : 00000000
[12B5h 4789 004h]                 Output Base : 00000022
[12B9h 4793 004h]            Output Reference : 00000030
[12BDh 4797 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[12C1h 4801 004h]                  Input base : 0B030003
[12C5h 4805 004h]                    ID Count : 00000000
[12C9h 4809 004h]                 Output Base : 00000023
[12CDh 4813 004h]            Output Reference : 00000030
[12D1h 4817 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[12D5h 4821 004h]                  Input base : 0B030004
[12D9h 4825 004h]                    ID Count : 00000000
[12DDh 4829 004h]                 Output Base : 00000024
[12E1h 4833 004h]            Output Reference : 00000030
[12E5h 4837 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[12E9h 4841 001h]                        Type : 01
[12EAh 4842 002h]                      Length : 0051
[12ECh 4844 001h]                    Revision : 00
[12EDh 4845 004h]                    Reserved : 00000000
[12F1h 4849 004h]               Mapping Count : 00000001
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
               Ensured Coherency of Accesses : 0
[1305h 4869 001h]           Memory Size Limit : 24
[1306h 4870 00Ah]                 Device Name : "\_SB.USBA"
[1310h 4880 016h]                     Padding : 49 4F 52 54 ED 18 00 00 00 86 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* 1320h 4896   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[1326h 4902 004h]                  Input base : 07030002
[132Ah 4906 004h]                    ID Count : 00000000
[132Eh 4910 004h]                 Output Base : 00000C0F
[1332h 4914 004h]            Output Reference : 00000030
[1336h 4918 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[133Ah 4922 001h]                        Type : 01
[133Bh 4923 002h]                      Length : 0065
[133Dh 4925 001h]                    Revision : 00
[133Eh 4926 004h]                    Reserved : 00000000
[1342h 4930 004h]               Mapping Count : 00000002
[1346h 4934 004h]              Mapping Offset : 0000003D

[134Ah 4938 004h]                  Node Flags : 00000000
[134Eh 4942 008h]           Memory Properties : [IORT Memory Access Properties]
[134Eh 4942 004h]             Cache Coherency : 00000000
[1352h 4946 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1353h 4947 002h]                    Reserved : 0000
[1355h 4949 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[1356h 4950 001h]           Memory Size Limit : 24
[1357h 4951 00Ah]                 Device Name : "\_SB.QDSS"
[1361h 4961 016h]                     Padding : 49 4F 52 54 ED 18 00 00 00 86 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* 1371h 4977   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[1377h 4983 004h]                  Input base : 19030000
[137Bh 4987 004h]                    ID Count : 00000000
[137Fh 4991 004h]                 Output Base : 000005A0
[1383h 4995 004h]            Output Reference : 00000030
[1387h 4999 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[138Bh 5003 004h]                  Input base : 19030001
[138Fh 5007 004h]                    ID Count : 00000000
[1393h 5011 004h]                 Output Base : 000005C0
[1397h 5015 004h]            Output Reference : 00000030
[139Bh 5019 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[139Fh 5023 001h]                        Type : 01
[13A0h 5024 002h]                      Length : 0065
[13A2h 5026 001h]                    Revision : 00
[13A3h 5027 004h]                    Reserved : 00000000
[13A7h 5031 004h]               Mapping Count : 00000002
[13ABh 5035 004h]              Mapping Offset : 0000003D

[13AFh 5039 004h]                  Node Flags : 00000000
[13B3h 5043 008h]           Memory Properties : [IORT Memory Access Properties]
[13B3h 5043 004h]             Cache Coherency : 00000000
[13B7h 5047 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[13B8h 5048 002h]                    Reserved : 0000
[13BAh 5050 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[13BBh 5051 001h]           Memory Size Limit : 24
[13BCh 5052 00Fh]                 Device Name : "\_SB.ADSP.ADCM"
[13CBh 5067 011h]                     Padding : 49 4F 52 54 ED 18 00 00 00 86 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* 13DBh 5083   1 */                            51                                              /* Q */\

[13DCh 5084 004h]                  Input base : 07030000
[13E0h 5088 004h]                    ID Count : 00000000
[13E4h 5092 004h]                 Output Base : 00000C01
[13E8h 5096 004h]            Output Reference : 00000030
[13ECh 5100 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[13F0h 5104 004h]                  Input base : 07030001
[13F4h 5108 004h]                    ID Count : 00000000
[13F8h 5112 004h]                 Output Base : 00000C26
[13FCh 5116 004h]            Output Reference : 00000030
[1400h 5120 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1404h 5124 001h]                        Type : 01
[1405h 5125 002h]                      Length : 0065
[1407h 5127 001h]                    Revision : 00
[1408h 5128 004h]                    Reserved : 00000000
[140Ch 5132 004h]               Mapping Count : 00000002
[1410h 5136 004h]              Mapping Offset : 0000003D

[1414h 5140 004h]                  Node Flags : 00000000
[1418h 5144 008h]           Memory Properties : [IORT Memory Access Properties]
[1418h 5144 004h]             Cache Coherency : 00000000
[141Ch 5148 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[141Dh 5149 002h]                    Reserved : 0000
[141Fh 5151 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[1420h 5152 001h]           Memory Size Limit : 24
[1421h 5153 00Ah]                 Device Name : "\_SB.SDC2"
[142Bh 5163 016h]                     Padding : 49 4F 52 54 ED 18 00 00 00 86 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* 143Bh 5179   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[1441h 5185 004h]                  Input base : 86030000
[1445h 5189 004h]                    ID Count : 00000000
[1449h 5193 004h]                 Output Base : 000004E0
[144Dh 5197 004h]            Output Reference : 00000030
[1451h 5201 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1455h 5205 004h]                  Input base : 86030001
[1459h 5209 004h]                    ID Count : 00000000
[145Dh 5213 004h]                 Output Base : 000000C0
[1461h 5217 004h]            Output Reference : 00000030
[1465h 5221 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1469h 5225 001h]                        Type : 01
[146Ah 5226 002h]                      Length : 0065
[146Ch 5228 001h]                    Revision : 00
[146Dh 5229 004h]                    Reserved : 00000000
[1471h 5233 004h]               Mapping Count : 00000002
[1475h 5237 004h]              Mapping Offset : 0000003D

[1479h 5241 004h]                  Node Flags : 00000000
[147Dh 5245 008h]           Memory Properties : [IORT Memory Access Properties]
[147Dh 5245 004h]             Cache Coherency : 00000001
[1481h 5249 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1482h 5250 002h]                    Reserved : 0000
[1484h 5252 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[1485h 5253 001h]           Memory Size Limit : 24
[1486h 5254 00Ah]                 Device Name : "\_SB.UFS0"
[1490h 5264 016h]                     Padding : 49 4F 52 54 ED 18 00 00 00 86 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* 14A0h 5280   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[14A6h 5286 004h]                  Input base : 81030000
[14AAh 5290 004h]                    ID Count : 00000000
[14AEh 5294 004h]                 Output Base : 000004A0
[14B2h 5298 004h]            Output Reference : 00000030
[14B6h 5302 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[14BAh 5306 004h]                  Input base : 81030001
[14BEh 5310 004h]                    ID Count : 00000000
[14C2h 5314 004h]                 Output Base : 000000E0
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
               Ensured Coherency of Accesses : 0
[14EAh 5354 001h]           Memory Size Limit : 24
[14EBh 5355 00Ah]                 Device Name : "\_SB.URS0"
[14F5h 5365 016h]                     Padding : 49 4F 52 54 ED 18 00 00 00 86 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* 1505h 5381   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[150Bh 5387 004h]                  Input base : 80030000
[150Fh 5391 004h]                    ID Count : 00000000
[1513h 5395 004h]                 Output Base : 00000820
[1517h 5399 004h]            Output Reference : 00000030
[151Bh 5403 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[151Fh 5407 001h]                        Type : 01
[1520h 5408 002h]                      Length : 0051
[1522h 5410 001h]                    Revision : 00
[1523h 5411 004h]                    Reserved : 00000000
[1527h 5415 004h]               Mapping Count : 00000001
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
               Ensured Coherency of Accesses : 0
[153Bh 5435 001h]           Memory Size Limit : 24
[153Ch 5436 00Ah]                 Device Name : "\_SB.URS1"
[1546h 5446 016h]                     Padding : 49 4F 52 54 ED 18 00 00 00 86 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* 1556h 5462   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[155Ch 5468 004h]                  Input base : 80030001
[1560h 5472 004h]                    ID Count : 00000000
[1564h 5476 004h]                 Output Base : 00000860
[1568h 5480 004h]            Output Reference : 00000030
[156Ch 5484 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1570h 5488 001h]                        Type : 01
[1571h 5489 002h]                      Length : 030D
[1573h 5491 001h]                    Revision : 00
[1574h 5492 004h]                    Reserved : 00000000
[1578h 5496 004h]               Mapping Count : 00000024
[157Ch 5500 004h]              Mapping Offset : 0000003D

[1580h 5504 004h]                  Node Flags : 00000000
[1584h 5508 008h]           Memory Properties : [IORT Memory Access Properties]
[1584h 5508 004h]             Cache Coherency : 00000000
[1588h 5512 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1589h 5513 002h]                    Reserved : 0000
[158Bh 5515 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[158Ch 5516 001h]           Memory Size Limit : 24
[158Dh 5517 00Fh]                 Device Name : "\_SB.GPU0.AVS0"
[159Ch 5532 011h]                     Padding : 49 4F 52 54 ED 18 00 00 00 86 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* 15ACh 5548   1 */                            51                                              /* Q */\

[15ADh 5549 004h]                  Input base : 01030000
[15B1h 5553 004h]                    ID Count : 00000000
[15B5h 5557 004h]                 Output Base : 00002800
[15B9h 5561 004h]            Output Reference : 00000030
[15BDh 5565 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[15C1h 5569 004h]                  Input base : 01030001
[15C5h 5573 004h]                    ID Count : 00000000
[15C9h 5577 004h]                 Output Base : 00002820
[15CDh 5581 004h]            Output Reference : 00000030
[15D1h 5585 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[15D5h 5589 004h]                  Input base : 01030002
[15D9h 5593 004h]                    ID Count : 00000000
[15DDh 5597 004h]                 Output Base : 00002C00
[15E1h 5601 004h]            Output Reference : 00000030
[15E5h 5605 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[15E9h 5609 004h]                  Input base : 01030003
[15EDh 5613 004h]                    ID Count : 00000000
[15F1h 5617 004h]                 Output Base : 00002C20
[15F5h 5621 004h]            Output Reference : 00000030
[15F9h 5625 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[15FDh 5629 004h]                  Input base : 01030004
[1601h 5633 004h]                    ID Count : 00000000
[1605h 5637 004h]                 Output Base : 00002840
[1609h 5641 004h]            Output Reference : 00000030
[160Dh 5645 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1611h 5649 004h]                  Input base : 01030005
[1615h 5653 004h]                    ID Count : 00000000
[1619h 5657 004h]                 Output Base : 00002C40
[161Dh 5661 004h]            Output Reference : 00000030
[1621h 5665 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1625h 5669 004h]                  Input base : 01030006
[1629h 5673 004h]                    ID Count : 00000000
[162Dh 5677 004h]                 Output Base : 000028A2
[1631h 5681 004h]            Output Reference : 00000030
[1635h 5685 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1639h 5689 004h]                  Input base : 01030007
[163Dh 5693 004h]                    ID Count : 00000000
[1641h 5697 004h]                 Output Base : 00002CA2
[1645h 5701 004h]            Output Reference : 00000030
[1649h 5705 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[164Dh 5709 004h]                  Input base : 01030008
[1651h 5713 004h]                    ID Count : 00000000
[1655h 5717 004h]                 Output Base : 00002000
[1659h 5721 004h]            Output Reference : 00000030
[165Dh 5725 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1661h 5729 004h]                  Input base : 01030009
[1665h 5733 004h]                    ID Count : 00000000
[1669h 5737 004h]                 Output Base : 00002020
[166Dh 5741 004h]            Output Reference : 00000030
[1671h 5745 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1675h 5749 004h]                  Input base : 0103000A
[1679h 5753 004h]                    ID Count : 00000000
[167Dh 5757 004h]                 Output Base : 00002040
[1681h 5761 004h]            Output Reference : 00000030
[1685h 5765 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1689h 5769 004h]                  Input base : 0103000B
[168Dh 5773 004h]                    ID Count : 00000000
[1691h 5777 004h]                 Output Base : 00002060
[1695h 5781 004h]            Output Reference : 00000030
[1699h 5785 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[169Dh 5789 004h]                  Input base : 0103000C
[16A1h 5793 004h]                    ID Count : 00000000
[16A5h 5797 004h]                 Output Base : 00002080
[16A9h 5801 004h]            Output Reference : 00000030
[16ADh 5805 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[16B1h 5809 004h]                  Input base : 0103000D
[16B5h 5813 004h]                    ID Count : 00000000
[16B9h 5817 004h]                 Output Base : 000020A0
[16BDh 5821 004h]            Output Reference : 00000030
[16C1h 5825 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[16C5h 5829 004h]                  Input base : 0103000E
[16C9h 5833 004h]                    ID Count : 00000000
[16CDh 5837 004h]                 Output Base : 000020C0
[16D1h 5841 004h]            Output Reference : 00000030
[16D5h 5845 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[16D9h 5849 004h]                  Input base : 0103000F
[16DDh 5853 004h]                    ID Count : 00000000
[16E1h 5857 004h]                 Output Base : 000020E0
[16E5h 5861 004h]            Output Reference : 00000030
[16E9h 5865 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[16EDh 5869 004h]                  Input base : 01030010
[16F1h 5873 004h]                    ID Count : 00000000
[16F5h 5877 004h]                 Output Base : 00002400
[16F9h 5881 004h]            Output Reference : 00000030
[16FDh 5885 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1701h 5889 004h]                  Input base : 01030011
[1705h 5893 004h]                    ID Count : 00000000
[1709h 5897 004h]                 Output Base : 00002420
[170Dh 5901 004h]            Output Reference : 00000030
[1711h 5905 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1715h 5909 004h]                  Input base : 01030012
[1719h 5913 004h]                    ID Count : 00000000
[171Dh 5917 004h]                 Output Base : 00002440
[1721h 5921 004h]            Output Reference : 00000030
[1725h 5925 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1729h 5929 004h]                  Input base : 01030013
[172Dh 5933 004h]                    ID Count : 00000000
[1731h 5937 004h]                 Output Base : 00002460
[1735h 5941 004h]            Output Reference : 00000030
[1739h 5945 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[173Dh 5949 004h]                  Input base : 01030014
[1741h 5953 004h]                    ID Count : 00000000
[1745h 5957 004h]                 Output Base : 00002480
[1749h 5961 004h]            Output Reference : 00000030
[174Dh 5965 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1751h 5969 004h]                  Input base : 01030015
[1755h 5973 004h]                    ID Count : 00000000
[1759h 5977 004h]                 Output Base : 000024A0
[175Dh 5981 004h]            Output Reference : 00000030
[1761h 5985 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1765h 5989 004h]                  Input base : 01030016
[1769h 5993 004h]                    ID Count : 00000000
[176Dh 5997 004h]                 Output Base : 000024C0
[1771h 6001 004h]            Output Reference : 00000030
[1775h 6005 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1779h 6009 004h]                  Input base : 01030017
[177Dh 6013 004h]                    ID Count : 00000000
[1781h 6017 004h]                 Output Base : 000024E0
[1785h 6021 004h]            Output Reference : 00000030
[1789h 6025 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[178Dh 6029 004h]                  Input base : 01030018
[1791h 6033 004h]                    ID Count : 00000000
[1795h 6037 004h]                 Output Base : 000028C0
[1799h 6041 004h]            Output Reference : 00000030
[179Dh 6045 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[17A1h 6049 004h]                  Input base : 01030019
[17A5h 6053 004h]                    ID Count : 00000000
[17A9h 6057 004h]                 Output Base : 000028E0
[17ADh 6061 004h]            Output Reference : 00000030
[17B1h 6065 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[17B5h 6069 004h]                  Input base : 0103001A
[17B9h 6073 004h]                    ID Count : 00000000
[17BDh 6077 004h]                 Output Base : 00002CC0
[17C1h 6081 004h]            Output Reference : 00000030
[17C5h 6085 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[17C9h 6089 004h]                  Input base : 0103001B
[17CDh 6093 004h]                    ID Count : 00000000
[17D1h 6097 004h]                 Output Base : 00002CE0
[17D5h 6101 004h]            Output Reference : 00000030
[17D9h 6105 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[17DDh 6109 004h]                  Input base : 0103001C
[17E1h 6113 004h]                    ID Count : 00000000
[17E5h 6117 004h]                 Output Base : 00002900
[17E9h 6121 004h]            Output Reference : 00000030
[17EDh 6125 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[17F1h 6129 004h]                  Input base : 0103001D
[17F5h 6133 004h]                    ID Count : 00000000
[17F9h 6137 004h]                 Output Base : 00002920
[17FDh 6141 004h]            Output Reference : 00000030
[1801h 6145 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1805h 6149 004h]                  Input base : 0103001E
[1809h 6153 004h]                    ID Count : 00000000
[180Dh 6157 004h]                 Output Base : 00002D00
[1811h 6161 004h]            Output Reference : 00000030
[1815h 6165 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1819h 6169 004h]                  Input base : 0103001F
[181Dh 6173 004h]                    ID Count : 00000000
[1821h 6177 004h]                 Output Base : 00002D20
[1825h 6181 004h]            Output Reference : 00000030
[1829h 6185 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[182Dh 6189 004h]                  Input base : 01030020
[1831h 6193 004h]                    ID Count : 00000000
[1835h 6197 004h]                 Output Base : 00002980
[1839h 6201 004h]            Output Reference : 00000030
[183Dh 6205 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1841h 6209 004h]                  Input base : 01030021
[1845h 6213 004h]                    ID Count : 00000000
[1849h 6217 004h]                 Output Base : 000029A0
[184Dh 6221 004h]            Output Reference : 00000030
[1851h 6225 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1855h 6229 004h]                  Input base : 01030022
[1859h 6233 004h]                    ID Count : 00000000
[185Dh 6237 004h]                 Output Base : 00002D80
[1861h 6241 004h]            Output Reference : 00000030
[1865h 6245 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1869h 6249 004h]                  Input base : 01030023
[186Dh 6253 004h]                    ID Count : 00000000
[1871h 6257 004h]                 Output Base : 00002DA0
[1875h 6261 004h]            Output Reference : 00000030
[1879h 6265 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[187Dh 6269 001h]                        Type : 04
[187Eh 6270 002h]                      Length : 0058
[1880h 6272 001h]                    Revision : 00
[1881h 6273 004h]                    Reserved : 00000000
[1885h 6277 004h]               Mapping Count : 00000001
[1889h 6281 004h]              Mapping Offset : 00000044

[188Dh 6285 008h]                Base Address : 0000000014F80000
[1895h 6293 004h]       Flags (decoded below) : 00000001
                             COHACC Override : 1
                               HTTU Override : 0
                      Proximity Domain Valid : 0
                              DeviceID Valid : 0
[1899h 6297 004h]                    Reserved : 00000000
[189Dh 6301 008h]               VATOS Address : 0000000000000000
[18A5h 6309 004h]                       Model : 00000000
[18A9h 6313 004h]                  Event GSIV : 000003D7
[18ADh 6317 004h]                    PRI GSIV : 00000000
[18B1h 6321 004h]                   GERR GSIV : 000003DB
[18B5h 6325 004h]                   Sync GSIV : 000003D9
[18B9h 6329 004h]            Proximity Domain : 00000000
[18BDh 6333 004h]     Device ID Mapping Index : 00000000

[18C1h 6337 004h]                  Input base : 00000000
[18C5h 6341 004h]                    ID Count : 0006FFFF
[18C9h 6345 004h]                 Output Base : 00080000
[18CDh 6349 004h]            Output Reference : 000018D5
[18D1h 6353 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[18D5h 6357 001h]                        Type : 00
[18D6h 6358 002h]                      Length : 0018
[18D8h 6360 001h]                    Revision : 00
[18D9h 6361 004h]                    Reserved : 00000000
[18DDh 6365 004h]               Mapping Count : 00000000
[18E1h 6369 004h]              Mapping Offset : 00000000

[18E5h 6373 004h]                    ItsCount : 00000001
[18E9h 6377 004h]                 Identifiers : 00000000

Raw Table Data: Length 6381 (0x18ED)

    0000: 49 4F 52 54 ED 18 00 00 00 86 51 43 4F 4D 20 20  // IORT......QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 82 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 18 00 00 00 30 00 00 00 00 00 00 00  // ........0.......
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
    05E0: FF FF 00 00 00 00 00 00 7D 18 00 00 00 00 00 00  // ........}.......
    05F0: 02 38 00 00 00 00 00 00 01 00 00 00 24 00 00 00  // .8..........$...
    0600: 01 00 00 00 00 00 00 01 00 00 00 00 01 00 00 00  // ................
    0610: 24 00 00 00 00 00 00 00 FF FF 00 00 00 00 01 00  // $...............
    0620: 7D 18 00 00 00 00 00 00 02 38 00 00 00 00 00 00  // }........8......
    0630: 01 00 00 00 24 00 00 00 01 00 00 00 00 00 00 01  // ....$...........
    0640: 00 00 00 00 02 00 00 00 24 00 00 00 00 00 00 00  // ........$.......
    0650: FF FF 00 00 00 00 02 00 7D 18 00 00 00 00 00 00  // ........}.......
    0660: 02 38 00 00 00 00 00 00 01 00 00 00 24 00 00 00  // .8..........$...
    0670: 01 00 00 00 00 00 00 01 00 00 00 00 03 00 00 00  // ................
    0680: 24 00 00 00 00 00 00 00 FF FF 00 00 00 00 03 00  // $...............
    0690: 7D 18 00 00 00 00 00 00 02 38 00 00 00 00 00 00  // }........8......
    06A0: 01 00 00 00 24 00 00 00 01 00 00 00 00 00 00 01  // ....$...........
    06B0: 00 00 00 00 04 00 00 00 24 00 00 00 00 00 00 00  // ........$.......
    06C0: FF FF 00 00 00 00 04 00 7D 18 00 00 00 00 00 00  // ........}.......
    06D0: 02 38 00 00 00 00 00 00 01 00 00 00 24 00 00 00  // .8..........$...
    06E0: 01 00 00 00 00 00 00 01 00 00 00 00 05 00 00 00  // ................
    06F0: 24 00 00 00 00 00 00 00 FF FF 00 00 00 00 05 00  // $...............
    0700: 7D 18 00 00 00 00 00 00 02 38 00 00 00 00 00 00  // }........8......
    0710: 01 00 00 00 24 00 00 00 01 00 00 00 00 00 00 01  // ....$...........
    0720: 00 00 00 00 06 00 00 00 24 00 00 00 00 00 00 00  // ........$.......
    0730: FF FF 00 00 00 00 06 00 7D 18 00 00 00 00 00 00  // ........}.......
    0740: 01 51 00 00 00 00 00 00 01 00 00 00 3D 00 00 00  // .Q..........=...
    0750: 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53  // ............$\_S
    0760: 42 2E 53 49 53 50 00 00 00 00 00 00 00 00 00 00  // B.SISP..........
    0770: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03  // ................
    0780: A0 00 00 00 00 00 00 00 00 30 00 00 00 00 00 00  // .........0......
    0790: 00 01 65 05 00 00 00 00 00 42 00 00 00 3D 00 00  // ..e......B...=..
    07A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 30 5C 5F  // .............0\_
    07B0: 53 42 2E 47 50 55 30 00 00 00 00 00 00 00 00 00  // SB.GPU0.........
    07C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    07D0: 0A 03 00 00 00 00 02 00 00 00 FC 04 00 00 00 00  // ................
    07E0: 00 00 01 00 0A 03 00 00 00 00 02 04 00 00 FC 04  // ................
    07F0: 00 00 00 00 00 00 02 00 0A 03 00 00 00 00 02 08  // ................
    0800: 00 00 FC 04 00 00 00 00 00 00 03 00 0A 03 00 00  // ................
    0810: 00 00 02 0C 00 00 FC 04 00 00 00 00 00 00 00 00  // ................
    0820: 03 03 00 00 00 00 00 00 00 00 FC 04 00 00 00 00  // ................
    0830: 00 00 01 00 03 03 00 00 00 00 00 04 00 00 FC 04  // ................
    0840: 00 00 00 00 00 00 02 00 03 03 00 00 00 00 00 08  // ................
    0850: 00 00 FC 04 00 00 00 00 00 00 03 00 03 03 00 00  // ................
    0860: 00 00 00 0C 00 00 FC 04 00 00 00 00 00 00 04 00  // ................
    0870: 03 03 00 00 00 00 01 00 00 00 FC 04 00 00 00 00  // ................
    0880: 00 00 05 00 03 03 00 00 00 00 01 04 00 00 FC 04  // ................
    0890: 00 00 00 00 00 00 06 00 03 03 00 00 00 00 01 08  // ................
    08A0: 00 00 FC 04 00 00 00 00 00 00 07 00 03 03 00 00  // ................
    08B0: 00 00 01 0C 00 00 FC 04 00 00 00 00 00 00 08 00  // ................
    08C0: 03 03 00 00 00 00 04 00 00 00 FC 04 00 00 00 00  // ................
    08D0: 00 00 09 00 03 03 00 00 00 00 04 04 00 00 FC 04  // ................
    08E0: 00 00 00 00 00 00 0A 00 03 03 00 00 00 00 04 08  // ................
    08F0: 00 00 FC 04 00 00 00 00 00 00 0B 00 03 03 00 00  // ................
    0900: 00 00 04 0C 00 00 FC 04 00 00 00 00 00 00 0C 00  // ................
    0910: 03 03 00 00 00 00 05 00 00 00 FC 04 00 00 00 00  // ................
    0920: 00 00 0D 00 03 03 00 00 00 00 05 04 00 00 FC 04  // ................
    0930: 00 00 00 00 00 00 0E 00 03 03 00 00 00 00 05 08  // ................
    0940: 00 00 FC 04 00 00 00 00 00 00 0F 00 03 03 00 00  // ................
    0950: 00 00 05 0C 00 00 FC 04 00 00 00 00 00 00 00 00  // ................
    0960: 03 00 00 00 00 00 00 10 00 00 30 00 00 00 00 00  // ..........0.....
    0970: 00 00 01 00 03 00 00 00 00 00 02 10 00 00 30 00  // ..............0.
    0980: 00 00 00 00 00 00 02 00 03 00 00 00 00 00 00 14  // ................
    0990: 00 00 30 00 00 00 00 00 00 00 03 00 03 00 00 00  // ..0.............
    09A0: 00 00 02 14 00 00 30 00 00 00 00 00 00 00 04 00  // ......0.........
    09B0: 03 00 00 00 00 00 00 18 00 00 30 00 00 00 00 00  // ..........0.....
    09C0: 00 00 05 00 03 00 00 00 00 00 02 18 00 00 30 00  // ..............0.
    09D0: 00 00 00 00 00 00 06 00 03 00 00 00 00 00 00 1C  // ................
    09E0: 00 00 30 00 00 00 00 00 00 00 07 00 03 00 00 00  // ..0.............
    09F0: 00 00 02 1C 00 00 30 00 00 00 00 00 00 00 00 00  // ......0.........
    0A00: 0A 00 00 00 00 00 01 10 00 00 30 00 00 00 00 00  // ..........0.....
    0A10: 00 00 01 00 0A 00 00 00 00 00 01 14 00 00 30 00  // ..............0.
    0A20: 00 00 00 00 00 00 02 00 0A 00 00 00 00 00 01 18  // ................
    0A30: 00 00 30 00 00 00 00 00 00 00 03 00 0A 00 00 00  // ..0.............
    0A40: 00 00 01 1C 00 00 30 00 00 00 00 00 00 00 00 00  // ......0.........
    0A50: 03 06 00 00 00 00 DC 29 00 00 30 00 00 00 00 00  // .......)..0.....
    0A60: 00 00 01 00 03 06 00 00 00 00 DC 2D 00 00 30 00  // ...........-..0.
    0A70: 00 00 00 00 00 00 02 00 03 06 00 00 00 00 FC 29  // ...............)
    0A80: 00 00 30 00 00 00 00 00 00 00 03 00 03 06 00 00  // ..0.............
    0A90: 00 00 FC 2D 00 00 30 00 00 00 00 00 00 00 00 00  // ...-..0.........
    0AA0: 0A 06 00 00 00 00 DD 29 00 00 30 00 00 00 00 00  // .......)..0.....
    0AB0: 00 00 01 00 0A 06 00 00 00 00 DD 2D 00 00 30 00  // ...........-..0.
    0AC0: 00 00 00 00 00 00 02 00 0A 06 00 00 00 00 FD 29  // ...............)
    0AD0: 00 00 30 00 00 00 00 00 00 00 03 00 0A 06 00 00  // ..0.............
    0AE0: 00 00 FD 2D 00 00 30 00 00 00 00 00 00 00 00 00  // ...-..0.........
    0AF0: 03 0C 01 00 00 00 84 05 00 00 30 00 00 00 00 00  // ..........0.....
    0B00: 00 00 02 00 03 0C 01 00 00 00 94 05 00 00 30 00  // ..............0.
    0B10: 00 00 00 00 00 00 04 00 03 0C 01 00 00 00 86 05  // ................
    0B20: 00 00 30 00 00 00 00 00 00 00 06 00 03 0C 00 00  // ..0.............
    0B30: 00 00 92 05 00 00 30 00 00 00 00 00 00 00 07 00  // ......0.........
    0B40: 03 0C 03 00 00 00 96 05 00 00 30 00 00 00 00 00  // ..........0.....
    0B50: 00 00 0B 00 03 0C 00 00 00 00 9F 05 00 00 30 00  // ..............0.
    0B60: 00 00 00 00 00 00 00 00 09 0C 00 00 00 00 93 05  // ................
    0B70: 00 00 30 00 00 00 00 00 00 00 01 00 09 0C 02 00  // ..0.............
    0B80: 00 00 9C 05 00 00 30 00 00 00 00 00 00 00 00 00  // ......0.........
    0B90: 03 04 00 00 00 00 00 2A 00 00 30 00 00 00 00 00  // .......*..0.....
    0BA0: 00 00 01 00 03 04 00 00 00 00 00 2E 00 00 30 00  // ..............0.
    0BB0: 00 00 00 00 00 00 02 00 03 04 00 00 00 00 20 2A  // .............. *
    0BC0: 00 00 30 00 00 00 00 00 00 00 03 00 03 04 00 00  // ..0.............
    0BD0: 00 00 20 2E 00 00 30 00 00 00 00 00 00 00 04 00  // .. ...0.........
    0BE0: 03 04 00 00 00 00 07 2A 00 00 30 00 00 00 00 00  // .......*..0.....
    0BF0: 00 00 05 00 03 04 00 00 00 00 07 2E 00 00 30 00  // ..............0.
    0C00: 00 00 00 00 00 00 00 00 09 04 00 00 00 00 01 2A  // ...............*
    0C10: 00 00 30 00 00 00 00 00 00 00 01 00 09 04 00 00  // ..0.............
    0C20: 00 00 05 2A 00 00 30 00 00 00 00 00 00 00 02 00  // ...*..0.........
    0C30: 09 04 00 00 00 00 01 2E 00 00 30 00 00 00 00 00  // ..........0.....
    0C40: 00 00 03 00 09 04 00 00 00 00 05 2E 00 00 30 00  // ..............0.
    0C50: 00 00 00 00 00 00 00 00 0A 04 00 00 00 00 03 2A  // ...............*
    0C60: 00 00 30 00 00 00 00 00 00 00 01 00 0A 04 00 00  // ..0.............
    0C70: 00 00 03 2E 00 00 30 00 00 00 00 00 00 00 02 00  // ......0.........
    0C80: 0A 04 00 00 00 00 23 2A 00 00 30 00 00 00 00 00  // ......#*..0.....
    0C90: 00 00 03 00 0A 04 00 00 00 00 23 2E 00 00 30 00  // ..........#...0.
    0CA0: 00 00 00 00 00 00 00 00 0B 04 00 00 00 00 04 2A  // ...............*
    0CB0: 00 00 30 00 00 00 00 00 00 00 01 00 0B 04 00 00  // ..0.............
    0CC0: 00 00 04 2E 00 00 30 00 00 00 00 00 00 00 02 00  // ......0.........
    0CD0: 0B 04 00 00 00 00 24 2A 00 00 30 00 00 00 00 00  // ......$*..0.....
    0CE0: 00 00 03 00 0B 04 00 00 00 00 24 2E 00 00 30 00  // ..........$...0.
    0CF0: 00 00 00 00 00 00 01 8D 00 00 00 00 00 00 04 00  // ................
    0D00: 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00 00  // ..=.............
    0D10: 00 00 24 5C 5F 53 42 2E 4A 50 47 45 00 00 00 00  // ..$\_SB.JPGE....
    0D20: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0D30: 00 00 00 00 00 03 02 00 00 00 00 40 29 00 00 30  // ...........@)..0
    0D40: 00 00 00 00 00 00 00 01 00 03 02 00 00 00 00 60  // ...............`
    0D50: 29 00 00 30 00 00 00 00 00 00 00 02 00 03 02 00  // )..0............
    0D60: 00 00 00 40 2D 00 00 30 00 00 00 00 00 00 00 03  // ...@-..0........
    0D70: 00 03 02 00 00 00 00 60 2D 00 00 30 00 00 00 00  // .......`-..0....
    0D80: 00 00 00 01 C5 04 00 00 00 00 00 3A 00 00 00 3D  // ...........:...=
    0D90: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24  // ...............$
    0DA0: 5C 5F 53 42 2E 41 52 50 43 00 00 00 00 00 00 00  // \_SB.ARPC.......
    0DB0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0DC0: 34 00 03 17 00 00 00 00 03 0C 00 00 30 00 00 00  // 4...........0...
    0DD0: 00 00 00 00 35 00 03 17 00 00 00 00 04 0C 00 00  // ....5...........
    0DE0: 30 00 00 00 00 00 00 00 36 00 03 17 00 00 00 00  // 0.......6.......
    0DF0: 05 0C 00 00 30 00 00 00 00 00 00 00 00 00 03 17  // ....0...........
    0E00: 00 00 00 00 81 31 00 00 30 00 00 00 00 00 00 00  // .....1..0.......
    0E10: 01 00 03 17 00 00 00 00 A1 31 00 00 30 00 00 00  // .........1..0...
    0E20: 00 00 00 00 02 00 03 17 00 00 00 00 81 35 00 00  // .............5..
    0E30: 30 00 00 00 00 00 00 00 03 00 03 17 00 00 00 00  // 0...............
    0E40: A1 35 00 00 30 00 00 00 00 00 00 00 04 00 03 17  // .5..0...........
    0E50: 00 00 00 00 82 31 00 00 30 00 00 00 00 00 00 00  // .....1..0.......
    0E60: 05 00 03 17 00 00 00 00 A2 31 00 00 30 00 00 00  // .........1..0...
    0E70: 00 00 00 00 06 00 03 17 00 00 00 00 82 35 00 00  // .............5..
    0E80: 30 00 00 00 00 00 00 00 07 00 03 17 00 00 00 00  // 0...............
    0E90: A2 35 00 00 30 00 00 00 00 00 00 00 08 00 03 17  // .5..0...........
    0EA0: 00 00 00 00 83 31 00 00 30 00 00 00 00 00 00 00  // .....1..0.......
    0EB0: 09 00 03 17 00 00 00 00 A3 31 00 00 30 00 00 00  // .........1..0...
    0EC0: 00 00 00 00 0A 00 03 17 00 00 00 00 83 35 00 00  // .............5..
    0ED0: 30 00 00 00 00 00 00 00 0B 00 03 17 00 00 00 00  // 0...............
    0EE0: A3 35 00 00 30 00 00 00 00 00 00 00 0C 00 03 17  // .5..0...........
    0EF0: 00 00 00 00 84 31 00 00 30 00 00 00 00 00 00 00  // .....1..0.......
    0F00: 0D 00 03 17 00 00 00 00 A4 31 00 00 30 00 00 00  // .........1..0...
    0F10: 00 00 00 00 0E 00 03 17 00 00 00 00 84 35 00 00  // .............5..
    0F20: 30 00 00 00 00 00 00 00 0F 00 03 17 00 00 00 00  // 0...............
    0F30: A4 35 00 00 30 00 00 00 00 00 00 00 10 00 03 17  // .5..0...........
    0F40: 00 00 00 00 85 31 00 00 30 00 00 00 00 00 00 00  // .....1..0.......
    0F50: 11 00 03 17 00 00 00 00 A5 31 00 00 30 00 00 00  // .........1..0...
    0F60: 00 00 00 00 12 00 03 17 00 00 00 00 85 35 00 00  // .............5..
    0F70: 30 00 00 00 00 00 00 00 13 00 03 17 00 00 00 00  // 0...............
    0F80: A5 35 00 00 30 00 00 00 00 00 00 00 14 00 03 17  // .5..0...........
    0F90: 00 00 00 00 86 31 00 00 30 00 00 00 00 00 00 00  // .....1..0.......
    0FA0: 15 00 03 17 00 00 00 00 A6 31 00 00 30 00 00 00  // .........1..0...
    0FB0: 00 00 00 00 16 00 03 17 00 00 00 00 86 35 00 00  // .............5..
    0FC0: 30 00 00 00 00 00 00 00 17 00 03 17 00 00 00 00  // 0...............
    0FD0: A6 35 00 00 30 00 00 00 00 00 00 00 18 00 03 17  // .5..0...........
    0FE0: 00 00 00 00 87 31 00 00 30 00 00 00 00 00 00 00  // .....1..0.......
    0FF0: 19 00 03 17 00 00 00 00 A7 31 00 00 30 00 00 00  // .........1..0...
    1000: 00 00 00 00 1A 00 03 17 00 00 00 00 87 35 00 00  // .............5..
    1010: 30 00 00 00 00 00 00 00 1B 00 03 17 00 00 00 00  // 0...............
    1020: A7 35 00 00 30 00 00 00 00 00 00 00 1C 00 03 17  // .5..0...........
    1030: 00 00 00 00 88 31 00 00 30 00 00 00 00 00 00 00  // .....1..0.......
    1040: 1D 00 03 17 00 00 00 00 A8 31 00 00 30 00 00 00  // .........1..0...
    1050: 00 00 00 00 1E 00 03 17 00 00 00 00 88 35 00 00  // .............5..
    1060: 30 00 00 00 00 00 00 00 1F 00 03 17 00 00 00 00  // 0...............
    1070: A8 35 00 00 30 00 00 00 00 00 00 00 20 00 03 17  // .5..0....... ...
    1080: 00 00 00 00 8B 31 00 00 30 00 00 00 00 00 00 00  // .....1..0.......
    1090: 21 00 03 17 00 00 00 00 AB 31 00 00 30 00 00 00  // !........1..0...
    10A0: 00 00 00 00 22 00 03 17 00 00 00 00 8B 35 00 00  // ...."........5..
    10B0: 30 00 00 00 00 00 00 00 23 00 03 17 00 00 00 00  // 0.......#.......
    10C0: AB 35 00 00 30 00 00 00 00 00 00 00 24 00 03 17  // .5..0.......$...
    10D0: 00 00 00 00 8C 31 00 00 30 00 00 00 00 00 00 00  // .....1..0.......
    10E0: 25 00 03 17 00 00 00 00 AC 31 00 00 30 00 00 00  // %........1..0...
    10F0: 00 00 00 00 26 00 03 17 00 00 00 00 8C 35 00 00  // ....&........5..
    1100: 30 00 00 00 00 00 00 00 27 00 03 17 00 00 00 00  // 0.......'.......
    1110: AC 35 00 00 30 00 00 00 00 00 00 00 28 00 03 17  // .5..0.......(...
    1120: 00 00 00 00 8D 31 00 00 30 00 00 00 00 00 00 00  // .....1..0.......
    1130: 29 00 03 17 00 00 00 00 AD 31 00 00 30 00 00 00  // )........1..0...
    1140: 00 00 00 00 2A 00 03 17 00 00 00 00 8D 35 00 00  // ....*........5..
    1150: 30 00 00 00 00 00 00 00 2B 00 03 17 00 00 00 00  // 0.......+.......
    1160: AD 35 00 00 30 00 00 00 00 00 00 00 2C 00 03 17  // .5..0.......,...
    1170: 00 00 00 00 8E 31 00 00 30 00 00 00 00 00 00 00  // .....1..0.......
    1180: 2D 00 03 17 00 00 00 00 AE 31 00 00 30 00 00 00  // -........1..0...
    1190: 00 00 00 00 2E 00 03 17 00 00 00 00 8E 35 00 00  // .............5..
    11A0: 30 00 00 00 00 00 00 00 2F 00 03 17 00 00 00 00  // 0......./.......
    11B0: AE 35 00 00 30 00 00 00 00 00 00 00 30 00 03 17  // .5..0.......0...
    11C0: 00 00 00 00 8F 31 00 00 30 00 00 00 00 00 00 00  // .....1..0.......
    11D0: 31 00 03 17 00 00 00 00 AF 31 00 00 30 00 00 00  // 1........1..0...
    11E0: 00 00 00 00 32 00 03 17 00 00 00 00 8F 35 00 00  // ....2........5..
    11F0: 30 00 00 00 00 00 00 00 33 00 03 17 00 00 00 00  // 0.......3.......
    1200: AF 35 00 00 30 00 00 00 00 00 00 00 37 00 03 17  // .5..0.......7...
    1210: 00 00 00 00 21 05 00 00 30 00 00 00 00 00 00 00  // ....!...0.......
    1220: 38 00 03 17 00 00 00 00 22 05 00 00 30 00 00 00  // 8......."...0...
    1230: 00 00 00 00 39 00 03 17 00 00 00 00 23 05 00 00  // ....9.......#...
    1240: 30 00 00 00 00 00 00 00 01 A1 00 00 00 00 00 00  // 0...............
    1250: 05 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00  // ....=...........
    1260: 00 00 00 00 24 5C 5F 53 42 2E 49 50 41 00 00 00  // ....$\_SB.IPA...
    1270: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1280: 00 00 00 00 00 00 00 03 0B 00 00 00 00 20 00 00  // ............. ..
    1290: 00 30 00 00 00 00 00 00 00 01 00 03 0B 00 00 00  // .0..............
    12A0: 00 21 00 00 00 30 00 00 00 00 00 00 00 02 00 03  // .!...0..........
    12B0: 0B 00 00 00 00 22 00 00 00 30 00 00 00 00 00 00  // ....."...0......
    12C0: 00 03 00 03 0B 00 00 00 00 23 00 00 00 30 00 00  // .........#...0..
    12D0: 00 00 00 00 00 04 00 03 0B 00 00 00 00 24 00 00  // .............$..
    12E0: 00 30 00 00 00 00 00 00 00 01 51 00 00 00 00 00  // .0........Q.....
    12F0: 00 01 00 00 00 3D 00 00 00 00 00 00 00 00 00 00  // .....=..........
    1300: 00 00 00 00 00 24 5C 5F 53 42 2E 55 53 42 41 00  // .....$\_SB.USBA.
    1310: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1320: 00 00 00 00 00 00 02 00 03 07 00 00 00 00 0F 0C  // ................
    1330: 00 00 30 00 00 00 00 00 00 00 01 65 00 00 00 00  // ..0........e....
    1340: 00 00 02 00 00 00 3D 00 00 00 00 00 00 00 00 00  // ......=.........
    1350: 00 00 00 00 00 00 24 5C 5F 53 42 2E 51 44 53 53  // ......$\_SB.QDSS
    1360: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1370: 00 00 00 00 00 00 00 00 00 03 19 00 00 00 00 A0  // ................
    1380: 05 00 00 30 00 00 00 00 00 00 00 01 00 03 19 00  // ...0............
    1390: 00 00 00 C0 05 00 00 30 00 00 00 00 00 00 00 01  // .......0........
    13A0: 65 00 00 00 00 00 00 02 00 00 00 3D 00 00 00 00  // e..........=....
    13B0: 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42  // ...........$\_SB
    13C0: 2E 41 44 53 50 2E 41 44 43 4D 00 00 00 00 00 00  // .ADSP.ADCM......
    13D0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 07  // ................
    13E0: 00 00 00 00 01 0C 00 00 30 00 00 00 00 00 00 00  // ........0.......
    13F0: 01 00 03 07 00 00 00 00 26 0C 00 00 30 00 00 00  // ........&...0...
    1400: 00 00 00 00 01 65 00 00 00 00 00 00 02 00 00 00  // .....e..........
    1410: 3D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // =...............
    1420: 24 5C 5F 53 42 2E 53 44 43 32 00 00 00 00 00 00  // $\_SB.SDC2......
    1430: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1440: 00 00 00 03 86 00 00 00 00 E0 04 00 00 30 00 00  // .............0..
    1450: 00 00 00 00 00 01 00 03 86 00 00 00 00 C0 00 00  // ................
    1460: 00 30 00 00 00 00 00 00 00 01 65 00 00 00 00 00  // .0........e.....
    1470: 00 02 00 00 00 3D 00 00 00 00 00 00 00 01 00 00  // .....=..........
    1480: 00 00 00 00 01 24 5C 5F 53 42 2E 55 46 53 30 00  // .....$\_SB.UFS0.
    1490: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    14A0: 00 00 00 00 00 00 00 00 03 81 00 00 00 00 A0 04  // ................
    14B0: 00 00 30 00 00 00 00 00 00 00 01 00 03 81 00 00  // ..0.............
    14C0: 00 00 E0 00 00 00 30 00 00 00 00 00 00 00 01 51  // ......0........Q
    14D0: 00 00 00 00 00 00 01 00 00 00 3D 00 00 00 00 00  // ..........=.....
    14E0: 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E  // ..........$\_SB.
    14F0: 55 52 53 30 00 00 00 00 00 00 00 00 00 00 00 00  // URS0............
    1500: 00 00 00 00 00 00 00 00 00 00 00 00 00 03 80 00  // ................
    1510: 00 00 00 20 08 00 00 30 00 00 00 00 00 00 00 01  // ... ...0........
    1520: 51 00 00 00 00 00 00 01 00 00 00 3D 00 00 00 00  // Q..........=....
    1530: 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42  // ...........$\_SB
    1540: 2E 55 52 53 31 00 00 00 00 00 00 00 00 00 00 00  // .URS1...........
    1550: 00 00 00 00 00 00 00 00 00 00 00 00 01 00 03 80  // ................
    1560: 00 00 00 00 60 08 00 00 30 00 00 00 00 00 00 00  // ....`...0.......
    1570: 01 0D 03 00 00 00 00 00 24 00 00 00 3D 00 00 00  // ........$...=...
    1580: 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53  // ............$\_S
    1590: 42 2E 47 50 55 30 2E 41 56 53 30 00 00 00 00 00  // B.GPU0.AVS0.....
    15A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03  // ................
    15B0: 01 00 00 00 00 00 28 00 00 30 00 00 00 00 00 00  // ......(..0......
    15C0: 00 01 00 03 01 00 00 00 00 20 28 00 00 30 00 00  // ......... (..0..
    15D0: 00 00 00 00 00 02 00 03 01 00 00 00 00 00 2C 00  // ..............,.
    15E0: 00 30 00 00 00 00 00 00 00 03 00 03 01 00 00 00  // .0..............
    15F0: 00 20 2C 00 00 30 00 00 00 00 00 00 00 04 00 03  // . ,..0..........
    1600: 01 00 00 00 00 40 28 00 00 30 00 00 00 00 00 00  // .....@(..0......
    1610: 00 05 00 03 01 00 00 00 00 40 2C 00 00 30 00 00  // .........@,..0..
    1620: 00 00 00 00 00 06 00 03 01 00 00 00 00 A2 28 00  // ..............(.
    1630: 00 30 00 00 00 00 00 00 00 07 00 03 01 00 00 00  // .0..............
    1640: 00 A2 2C 00 00 30 00 00 00 00 00 00 00 08 00 03  // ..,..0..........
    1650: 01 00 00 00 00 00 20 00 00 30 00 00 00 00 00 00  // ...... ..0......
    1660: 00 09 00 03 01 00 00 00 00 20 20 00 00 30 00 00  // .........  ..0..
    1670: 00 00 00 00 00 0A 00 03 01 00 00 00 00 40 20 00  // .............@ .
    1680: 00 30 00 00 00 00 00 00 00 0B 00 03 01 00 00 00  // .0..............
    1690: 00 60 20 00 00 30 00 00 00 00 00 00 00 0C 00 03  // .` ..0..........
    16A0: 01 00 00 00 00 80 20 00 00 30 00 00 00 00 00 00  // ...... ..0......
    16B0: 00 0D 00 03 01 00 00 00 00 A0 20 00 00 30 00 00  // .......... ..0..
    16C0: 00 00 00 00 00 0E 00 03 01 00 00 00 00 C0 20 00  // .............. .
    16D0: 00 30 00 00 00 00 00 00 00 0F 00 03 01 00 00 00  // .0..............
    16E0: 00 E0 20 00 00 30 00 00 00 00 00 00 00 10 00 03  // .. ..0..........
    16F0: 01 00 00 00 00 00 24 00 00 30 00 00 00 00 00 00  // ......$..0......
    1700: 00 11 00 03 01 00 00 00 00 20 24 00 00 30 00 00  // ......... $..0..
    1710: 00 00 00 00 00 12 00 03 01 00 00 00 00 40 24 00  // .............@$.
    1720: 00 30 00 00 00 00 00 00 00 13 00 03 01 00 00 00  // .0..............
    1730: 00 60 24 00 00 30 00 00 00 00 00 00 00 14 00 03  // .`$..0..........
    1740: 01 00 00 00 00 80 24 00 00 30 00 00 00 00 00 00  // ......$..0......
    1750: 00 15 00 03 01 00 00 00 00 A0 24 00 00 30 00 00  // ..........$..0..
    1760: 00 00 00 00 00 16 00 03 01 00 00 00 00 C0 24 00  // ..............$.
    1770: 00 30 00 00 00 00 00 00 00 17 00 03 01 00 00 00  // .0..............
    1780: 00 E0 24 00 00 30 00 00 00 00 00 00 00 18 00 03  // ..$..0..........
    1790: 01 00 00 00 00 C0 28 00 00 30 00 00 00 00 00 00  // ......(..0......
    17A0: 00 19 00 03 01 00 00 00 00 E0 28 00 00 30 00 00  // ..........(..0..
    17B0: 00 00 00 00 00 1A 00 03 01 00 00 00 00 C0 2C 00  // ..............,.
    17C0: 00 30 00 00 00 00 00 00 00 1B 00 03 01 00 00 00  // .0..............
    17D0: 00 E0 2C 00 00 30 00 00 00 00 00 00 00 1C 00 03  // ..,..0..........
    17E0: 01 00 00 00 00 00 29 00 00 30 00 00 00 00 00 00  // ......)..0......
    17F0: 00 1D 00 03 01 00 00 00 00 20 29 00 00 30 00 00  // ......... )..0..
    1800: 00 00 00 00 00 1E 00 03 01 00 00 00 00 00 2D 00  // ..............-.
    1810: 00 30 00 00 00 00 00 00 00 1F 00 03 01 00 00 00  // .0..............
    1820: 00 20 2D 00 00 30 00 00 00 00 00 00 00 20 00 03  // . -..0....... ..
    1830: 01 00 00 00 00 80 29 00 00 30 00 00 00 00 00 00  // ......)..0......
    1840: 00 21 00 03 01 00 00 00 00 A0 29 00 00 30 00 00  // .!........)..0..
    1850: 00 00 00 00 00 22 00 03 01 00 00 00 00 80 2D 00  // ....."........-.
    1860: 00 30 00 00 00 00 00 00 00 23 00 03 01 00 00 00  // .0.......#......
    1870: 00 A0 2D 00 00 30 00 00 00 00 00 00 00 04 58 00  // ..-..0........X.
    1880: 00 00 00 00 00 01 00 00 00 44 00 00 00 00 00 F8  // .........D......
    1890: 14 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00  // ................
    18A0: 00 00 00 00 00 00 00 00 00 D7 03 00 00 00 00 00  // ................
    18B0: 00 DB 03 00 00 D9 03 00 00 00 00 00 00 00 00 00  // ................
    18C0: 00 00 00 00 00 FF FF 06 00 00 00 08 00 D5 18 00  // ................
    18D0: 00 00 00 00 00 00 18 00 00 00 00 00 00 00 00 00  // ................
    18E0: 00 00 00 00 00 01 00 00 00 00 00 00 00           // .............
