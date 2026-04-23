/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20260408 (32-bit version)
 * Copyright (c) 2000 - 2026 Intel Corporation
 * 
 * Disassembly of iort.dat
 *
 * ACPI Data Table [IORT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "IORT"    [IO Remapping Table]
[004h 0004 004h]                Table Length : 000017BA
[008h 0008 001h]                    Revision : 00
[009h 0009 001h]                    Checksum : EE
[00Ah 0010 006h]                      Oem ID : "LENOVO"
[010h 0016 008h]                Oem Table ID : "CB-01   "
[018h 0024 004h]                Oem Revision : 00008480
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 004h]                  Node Count : 0000001E
[028h 0040 004h]                 Node Offset : 00000030
[02Ch 0044 004h]                    Reserved : 00000000

[030h 0048 001h]                        Type : 03
[031h 0049 002h]                      Length : 03CC
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
[05Ch 0092 004h]     Context Interrupt Count : 00000070
[060h 0096 004h]    Context Interrupt Offset : 0000004C
[064h 0100 004h]         PMU Interrupt Count : 00000000
[068h 0104 004h]        PMU Interrupt Offset : 00000000

[06Ch 0108 004h]                     NSgIrpt : 00000061
[070h 0112 004h] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[074h 0116 004h]                  NSgCfgIrpt : 00000000
[078h 0120 004h] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[07Ch 0124 008h]           Context Interrupt : 0000000100000081
[084h 0132 008h]           Context Interrupt : 0000000100000082
[08Ch 0140 008h]           Context Interrupt : 0000000100000083
[094h 0148 008h]           Context Interrupt : 0000000100000084
[09Ch 0156 008h]           Context Interrupt : 0000000100000085
[0A4h 0164 008h]           Context Interrupt : 0000000100000086
[0ACh 0172 008h]           Context Interrupt : 0000000100000087
[0B4h 0180 008h]           Context Interrupt : 0000000100000088
[0BCh 0188 008h]           Context Interrupt : 0000000100000089
[0C4h 0196 008h]           Context Interrupt : 000000010000008A
[0CCh 0204 008h]           Context Interrupt : 000000010000008B
[0D4h 0212 008h]           Context Interrupt : 000000010000008C
[0DCh 0220 008h]           Context Interrupt : 000000010000008D
[0E4h 0228 008h]           Context Interrupt : 000000010000008E
[0ECh 0236 008h]           Context Interrupt : 000000010000008F
[0F4h 0244 008h]           Context Interrupt : 0000000100000090
[0FCh 0252 008h]           Context Interrupt : 0000000100000091
[104h 0260 008h]           Context Interrupt : 0000000100000092
[10Ch 0268 008h]           Context Interrupt : 0000000100000093
[114h 0276 008h]           Context Interrupt : 0000000100000094
[11Ch 0284 008h]           Context Interrupt : 0000000100000095
[124h 0292 008h]           Context Interrupt : 0000000100000096
[12Ch 0300 008h]           Context Interrupt : 00000001000000D5
[134h 0308 008h]           Context Interrupt : 00000001000000D6
[13Ch 0316 008h]           Context Interrupt : 00000001000000D7
[144h 0324 008h]           Context Interrupt : 00000001000000D8
[14Ch 0332 008h]           Context Interrupt : 00000001000000D9
[154h 0340 008h]           Context Interrupt : 00000001000000DA
[15Ch 0348 008h]           Context Interrupt : 00000001000000DB
[164h 0356 008h]           Context Interrupt : 00000001000000DC
[16Ch 0364 008h]           Context Interrupt : 00000001000000DD
[174h 0372 008h]           Context Interrupt : 00000001000000DE
[17Ch 0380 008h]           Context Interrupt : 00000001000000DF
[184h 0388 008h]           Context Interrupt : 00000001000000E0
[18Ch 0396 008h]           Context Interrupt : 000000010000015B
[194h 0404 008h]           Context Interrupt : 000000010000015C
[19Ch 0412 008h]           Context Interrupt : 000000010000015D
[1A4h 0420 008h]           Context Interrupt : 000000010000015E
[1ACh 0428 008h]           Context Interrupt : 000000010000015F
[1B4h 0436 008h]           Context Interrupt : 0000000100000160
[1BCh 0444 008h]           Context Interrupt : 0000000100000161
[1C4h 0452 008h]           Context Interrupt : 0000000100000162
[1CCh 0460 008h]           Context Interrupt : 0000000100000163
[1D4h 0468 008h]           Context Interrupt : 0000000100000164
[1DCh 0476 008h]           Context Interrupt : 0000000100000165
[1E4h 0484 008h]           Context Interrupt : 0000000100000166
[1ECh 0492 008h]           Context Interrupt : 0000000100000167
[1F4h 0500 008h]           Context Interrupt : 0000000100000168
[1FCh 0508 008h]           Context Interrupt : 0000000100000169
[204h 0516 008h]           Context Interrupt : 000000010000016A
[20Ch 0524 008h]           Context Interrupt : 000000010000016B
[214h 0532 008h]           Context Interrupt : 000000010000016C
[21Ch 0540 008h]           Context Interrupt : 000000010000016D
[224h 0548 008h]           Context Interrupt : 000000010000016E
[22Ch 0556 008h]           Context Interrupt : 000000010000016F
[234h 0564 008h]           Context Interrupt : 0000000100000170
[23Ch 0572 008h]           Context Interrupt : 0000000100000171
[244h 0580 008h]           Context Interrupt : 0000000100000172
[24Ch 0588 008h]           Context Interrupt : 0000000100000173
[254h 0596 008h]           Context Interrupt : 0000000100000174
[25Ch 0604 008h]           Context Interrupt : 0000000100000175
[264h 0612 008h]           Context Interrupt : 0000000100000176
[26Ch 0620 008h]           Context Interrupt : 0000000100000177
[274h 0628 008h]           Context Interrupt : 0000000100000178
[27Ch 0636 008h]           Context Interrupt : 0000000100000179
[284h 0644 008h]           Context Interrupt : 00000001000001AB
[28Ch 0652 008h]           Context Interrupt : 00000001000001AC
[294h 0660 008h]           Context Interrupt : 00000001000001AD
[29Ch 0668 008h]           Context Interrupt : 00000001000001AE
[2A4h 0676 008h]           Context Interrupt : 00000001000001AF
[2ACh 0684 008h]           Context Interrupt : 00000001000001B0
[2B4h 0692 008h]           Context Interrupt : 00000001000001B1
[2BCh 0700 008h]           Context Interrupt : 00000001000001B2
[2C4h 0708 008h]           Context Interrupt : 00000001000001B3
[2CCh 0716 008h]           Context Interrupt : 00000001000001B4
[2D4h 0724 008h]           Context Interrupt : 00000001000001B5
[2DCh 0732 008h]           Context Interrupt : 00000001000001B6
[2E4h 0740 008h]           Context Interrupt : 00000001000001B7
[2ECh 0748 008h]           Context Interrupt : 00000001000001B8
[2F4h 0756 008h]           Context Interrupt : 00000001000001B9
[2FCh 0764 008h]           Context Interrupt : 00000001000001C2
[304h 0772 008h]           Context Interrupt : 00000001000001C3
[30Ch 0780 008h]           Context Interrupt : 00000001000001BC
[314h 0788 008h]           Context Interrupt : 00000001000001C5
[31Ch 0796 008h]           Context Interrupt : 00000001000002E3
[324h 0804 008h]           Context Interrupt : 00000001000001C7
[32Ch 0812 008h]           Context Interrupt : 00000001000001C8
[334h 0820 008h]           Context Interrupt : 00000001000001C9
[33Ch 0828 008h]           Context Interrupt : 00000001000002D2
[344h 0836 008h]           Context Interrupt : 00000001000002D3
[34Ch 0844 008h]           Context Interrupt : 00000001000002D4
[354h 0852 008h]           Context Interrupt : 00000001000002D5
[35Ch 0860 008h]           Context Interrupt : 00000001000002D6
[364h 0868 008h]           Context Interrupt : 00000001000002D7
[36Ch 0876 008h]           Context Interrupt : 00000001000002D8
[374h 0884 008h]           Context Interrupt : 00000001000002D9
[37Ch 0892 008h]           Context Interrupt : 00000001000001BA
[384h 0900 008h]           Context Interrupt : 0000000100000208
[38Ch 0908 008h]           Context Interrupt : 0000000100000209
[394h 0916 008h]           Context Interrupt : 000000010000020A
[39Ch 0924 008h]           Context Interrupt : 000000010000020B
[3A4h 0932 008h]           Context Interrupt : 000000010000020C
[3ACh 0940 008h]           Context Interrupt : 000000010000020D
[3B4h 0948 008h]           Context Interrupt : 000000010000020E
[3BCh 0956 008h]           Context Interrupt : 000000010000020F
[3C4h 0964 008h]           Context Interrupt : 0000000100000210
[3CCh 0972 008h]           Context Interrupt : 0000000100000211
[3D4h 0980 008h]           Context Interrupt : 0000000100000212
[3DCh 0988 008h]           Context Interrupt : 0000000100000213
[3E4h 0996 008h]           Context Interrupt : 0000000100000214
[3ECh 1004 008h]           Context Interrupt : 0000000100000215
[3F4h 1012 008h]           Context Interrupt : 0000000100000216

[3FCh 1020 001h]                        Type : 03
[3FDh 1021 002h]                      Length : 0114
[3FFh 1023 001h]                    Revision : 00
[400h 1024 004h]                    Reserved : 00000000
[404h 1028 004h]               Mapping Count : 00000000
[408h 1032 004h]              Mapping Offset : 00000000

[40Ch 1036 008h]                Base Address : 0000000003DA0000
[414h 1044 008h]                        Span : 0000000000040000
[41Ch 1052 004h]                       Model : 00000003
[420h 1056 004h]       Flags (decoded below) : 00000000
                               DVM Supported : 0
                               Coherent Walk : 0
[424h 1060 004h]     Global Interrupt Offset : 0000003C
[428h 1064 004h]     Context Interrupt Count : 00000019
[42Ch 1068 004h]    Context Interrupt Offset : 0000004C
[430h 1072 004h]         PMU Interrupt Count : 00000000
[434h 1076 004h]        PMU Interrupt Offset : 00000000

[438h 1080 004h]                     NSgIrpt : 000002C2
[43Ch 1084 004h] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[440h 1088 004h]                  NSgCfgIrpt : 00000000
[444h 1092 004h] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[448h 1096 008h]           Context Interrupt : 00000001000002C6
[450h 1104 008h]           Context Interrupt : 00000001000002C7
[458h 1112 008h]           Context Interrupt : 00000001000002C8
[460h 1120 008h]           Context Interrupt : 00000001000002C9
[468h 1128 008h]           Context Interrupt : 00000001000002CA
[470h 1136 008h]           Context Interrupt : 00000001000002CB
[478h 1144 008h]           Context Interrupt : 00000001000002CC
[480h 1152 008h]           Context Interrupt : 00000001000002CD
[488h 1160 008h]           Context Interrupt : 00000001000002CE
[490h 1168 008h]           Context Interrupt : 00000001000002CF
[498h 1176 008h]           Context Interrupt : 00000001000002D0
[4A0h 1184 008h]           Context Interrupt : 00000001000001C6
[4A8h 1192 008h]           Context Interrupt : 00000001000001FC
[4B0h 1200 008h]           Context Interrupt : 000000010000025E
[4B8h 1208 008h]           Context Interrupt : 000000010000025F
[4C0h 1216 008h]           Context Interrupt : 0000000100000260
[4C8h 1224 008h]           Context Interrupt : 0000000100000261
[4D0h 1232 008h]           Context Interrupt : 00000001000002B4
[4D8h 1240 008h]           Context Interrupt : 00000001000002B6
[4E0h 1248 008h]           Context Interrupt : 00000001000002B9
[4E8h 1256 008h]           Context Interrupt : 00000001000002BA
[4F0h 1264 008h]           Context Interrupt : 00000001000002BB
[4F8h 1272 008h]           Context Interrupt : 00000001000002BD
[500h 1280 008h]           Context Interrupt : 00000001000002BE
[508h 1288 008h]           Context Interrupt : 00000001000002DC

[510h 1296 001h]                        Type : 02
[511h 1297 002h]                      Length : 0038
[513h 1299 001h]                    Revision : 00
[514h 1300 004h]                    Reserved : 00000000
[518h 1304 004h]               Mapping Count : 00000001
[51Ch 1308 004h]              Mapping Offset : 00000024

[520h 1312 008h]           Memory Properties : [IORT Memory Access Properties]
[520h 1312 004h]             Cache Coherency : 00000001
[524h 1316 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[525h 1317 002h]                    Reserved : 0000
[527h 1319 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[528h 1320 004h]               ATS Attribute : 00000000
[52Ch 1324 004h]          PCI Segment Number : 00000000
[530h 1328 001h]           Memory Size Limit : 28
[531h 1329 002h]          PASID Capabilities : 0000
[533h 1331 001h]                    Reserved : 00

[534h 1332 004h]                  Input base : 00000000
[538h 1336 004h]                    ID Count : 0000FFFF
[53Ch 1340 004h]                 Output Base : 00000000
[540h 1344 004h]            Output Reference : 0000174A
[544h 1348 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[548h 1352 001h]                        Type : 02
[549h 1353 002h]                      Length : 0038
[54Bh 1355 001h]                    Revision : 00
[54Ch 1356 004h]                    Reserved : 00000000
[550h 1360 004h]               Mapping Count : 00000001
[554h 1364 004h]              Mapping Offset : 00000024

[558h 1368 008h]           Memory Properties : [IORT Memory Access Properties]
[558h 1368 004h]             Cache Coherency : 00000001
[55Ch 1372 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[55Dh 1373 002h]                    Reserved : 0000
[55Fh 1375 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[560h 1376 004h]               ATS Attribute : 00000000
[564h 1380 004h]          PCI Segment Number : 00000001
[568h 1384 001h]           Memory Size Limit : 28
[569h 1385 002h]          PASID Capabilities : 0000
[56Bh 1387 001h]                    Reserved : 00

[56Ch 1388 004h]                  Input base : 00000000
[570h 1392 004h]                    ID Count : 0000FFFF
[574h 1396 004h]                 Output Base : 00010000
[578h 1400 004h]            Output Reference : 0000174A
[57Ch 1404 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[580h 1408 001h]                        Type : 02
[581h 1409 002h]                      Length : 0038
[583h 1411 001h]                    Revision : 00
[584h 1412 004h]                    Reserved : 00000000
[588h 1416 004h]               Mapping Count : 00000001
[58Ch 1420 004h]              Mapping Offset : 00000024

[590h 1424 008h]           Memory Properties : [IORT Memory Access Properties]
[590h 1424 004h]             Cache Coherency : 00000001
[594h 1428 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[595h 1429 002h]                    Reserved : 0000
[597h 1431 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[598h 1432 004h]               ATS Attribute : 00000000
[59Ch 1436 004h]          PCI Segment Number : 00000002
[5A0h 1440 001h]           Memory Size Limit : 28
[5A1h 1441 002h]          PASID Capabilities : 0000
[5A3h 1443 001h]                    Reserved : 00

[5A4h 1444 004h]                  Input base : 00000000
[5A8h 1448 004h]                    ID Count : 0000FFFF
[5ACh 1452 004h]                 Output Base : 00020000
[5B0h 1456 004h]            Output Reference : 0000174A
[5B4h 1460 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

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
[5D4h 1492 004h]          PCI Segment Number : 00000003
[5D8h 1496 001h]           Memory Size Limit : 28
[5D9h 1497 002h]          PASID Capabilities : 0000
[5DBh 1499 001h]                    Reserved : 00

[5DCh 1500 004h]                  Input base : 00000000
[5E0h 1504 004h]                    ID Count : 0000FFFF
[5E4h 1508 004h]                 Output Base : 00030000
[5E8h 1512 004h]            Output Reference : 0000174A
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
[60Ch 1548 004h]          PCI Segment Number : 00000004
[610h 1552 001h]           Memory Size Limit : 28
[611h 1553 002h]          PASID Capabilities : 0000
[613h 1555 001h]                    Reserved : 00

[614h 1556 004h]                  Input base : 00000000
[618h 1560 004h]                    ID Count : 0000FFFF
[61Ch 1564 004h]                 Output Base : 00040000
[620h 1568 004h]            Output Reference : 0000174A
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
[644h 1604 004h]          PCI Segment Number : 00000005
[648h 1608 001h]           Memory Size Limit : 28
[649h 1609 002h]          PASID Capabilities : 0000
[64Bh 1611 001h]                    Reserved : 00

[64Ch 1612 004h]                  Input base : 00000000
[650h 1616 004h]                    ID Count : 0000FFFF
[654h 1620 004h]                 Output Base : 00050000
[658h 1624 004h]            Output Reference : 0000174A
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
[67Ch 1660 004h]          PCI Segment Number : 00000006
[680h 1664 001h]           Memory Size Limit : 28
[681h 1665 002h]          PASID Capabilities : 0000
[683h 1667 001h]                    Reserved : 00

[684h 1668 004h]                  Input base : 00000000
[688h 1672 004h]                    ID Count : 0000FFFF
[68Ch 1676 004h]                 Output Base : 00060000
[690h 1680 004h]            Output Reference : 0000174A
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
[6B4h 1716 004h]          PCI Segment Number : 00000007
[6B8h 1720 001h]           Memory Size Limit : 28
[6B9h 1721 002h]          PASID Capabilities : 0000
[6BBh 1723 001h]                    Reserved : 00

[6BCh 1724 004h]                  Input base : 00000000
[6C0h 1728 004h]                    ID Count : 0000FFFF
[6C4h 1732 004h]                 Output Base : 00070000
[6C8h 1736 004h]            Output Reference : 0000174A
[6CCh 1740 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[6D0h 1744 001h]                        Type : 01
[6D1h 1745 002h]                      Length : 0051
[6D3h 1747 001h]                    Revision : 00
[6D4h 1748 004h]                    Reserved : 00000000
[6D8h 1752 004h]               Mapping Count : 00000001
[6DCh 1756 004h]              Mapping Offset : 0000003D

[6E0h 1760 004h]                  Node Flags : 00000000
[6E4h 1764 008h]           Memory Properties : [IORT Memory Access Properties]
[6E4h 1764 004h]             Cache Coherency : 00000000
[6E8h 1768 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[6E9h 1769 002h]                    Reserved : 0000
[6EBh 1771 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[6ECh 1772 001h]           Memory Size Limit : 24
[6EDh 1773 00Ah]                 Device Name : "\_SB.SISP"
[6F7h 1783 016h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 707h 1799   6 */                            43 42 2D 30 31 20                               /* CB-01  */\

[70Dh 1805 004h]                  Input base : A0030000
[711h 1809 004h]                    ID Count : 00000000
[715h 1813 004h]                 Output Base : 00000000
[719h 1817 004h]            Output Reference : 00000030
[71Dh 1821 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[721h 1825 001h]                        Type : 01
[722h 1826 002h]                      Length : 0245
[724h 1828 001h]                    Revision : 00
[725h 1829 004h]                    Reserved : 00000000
[729h 1833 004h]               Mapping Count : 0000001A
[72Dh 1837 004h]              Mapping Offset : 0000003D

[731h 1841 004h]                  Node Flags : 00000000
[735h 1845 008h]           Memory Properties : [IORT Memory Access Properties]
[735h 1845 004h]             Cache Coherency : 00000000
[739h 1849 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[73Ah 1850 002h]                    Reserved : 0000
[73Ch 1852 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[73Dh 1853 001h]           Memory Size Limit : 31
[73Eh 1854 00Ah]                 Device Name : "\_SB.GPU0"
[748h 1864 016h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 758h 1880   6 */                            43 42 2D 30 31 20                               /* CB-01  */\

[75Eh 1886 004h]                  Input base : 030A0000
[762h 1890 004h]                    ID Count : 00000000
[766h 1894 004h]                 Output Base : 00000002
[76Ah 1898 004h]            Output Reference : 000003FC
[76Eh 1902 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[772h 1906 004h]                  Input base : 03030000
[776h 1910 004h]                    ID Count : 00000000
[77Ah 1914 004h]                 Output Base : 00000000
[77Eh 1918 004h]            Output Reference : 000003FC
[782h 1922 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[786h 1926 004h]                  Input base : 03030020
[78Ah 1930 004h]                    ID Count : 00000000
[78Eh 1934 004h]                 Output Base : 00000007
[792h 1938 004h]            Output Reference : 000003FC
[796h 1942 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[79Ah 1946 004h]                  Input base : 03030040
[79Eh 1950 004h]                    ID Count : 00000000
[7A2h 1954 004h]                 Output Base : 00000004
[7A6h 1958 004h]            Output Reference : 000003FC
[7AAh 1962 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7AEh 1966 004h]                  Input base : 03030060
[7B2h 1970 004h]                    ID Count : 00000000
[7B6h 1974 004h]                 Output Base : 00000005
[7BAh 1978 004h]            Output Reference : 000003FC
[7BEh 1982 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7C2h 1986 004h]                  Input base : 03030080
[7C6h 1990 004h]                    ID Count : 00000000
[7CAh 1994 004h]                 Output Base : 00000001
[7CEh 1998 004h]            Output Reference : 000003FC
[7D2h 2002 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7D6h 2006 004h]                  Input base : 000A0000
[7DAh 2010 004h]                    ID Count : 00000000
[7DEh 2014 004h]                 Output Base : 00001DE1
[7E2h 2018 004h]            Output Reference : 00000030
[7E6h 2022 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7EAh 2026 004h]                  Input base : 00030000
[7EEh 2030 004h]                    ID Count : 00000000
[7F2h 2034 004h]                 Output Base : 00001DE0
[7F6h 2038 004h]            Output Reference : 00000030
[7FAh 2042 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7FEh 2046 004h]                  Input base : 00030001
[802h 2050 004h]                    ID Count : 00000000
[806h 2054 004h]                 Output Base : 00001DE2
[80Ah 2058 004h]            Output Reference : 00000030
[80Eh 2062 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[812h 2066 004h]                  Input base : 0C090000
[816h 2070 004h]                    ID Count : 00000000
[81Ah 2074 004h]                 Output Base : 00000083
[81Eh 2078 004h]            Output Reference : 00000030
[822h 2082 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[826h 2086 004h]                  Input base : 0C030000
[82Ah 2090 004h]                    ID Count : 00000000
[82Eh 2094 004h]                 Output Base : 00000080
[832h 2098 004h]            Output Reference : 00000030
[836h 2102 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[83Ah 2106 004h]                  Input base : 0C030020
[83Eh 2110 004h]                    ID Count : 00000000
[842h 2114 004h]                 Output Base : 00000081
[846h 2118 004h]            Output Reference : 00000030
[84Ah 2122 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[84Eh 2126 004h]                  Input base : 04090000
[852h 2130 004h]                    ID Count : 00000000
[856h 2134 004h]                 Output Base : 00001946
[85Ah 2138 004h]            Output Reference : 00000030
[85Eh 2142 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[862h 2146 004h]                  Input base : 040B0000
[866h 2150 004h]                    ID Count : 00000000
[86Ah 2154 004h]                 Output Base : 00001941
[86Eh 2158 004h]            Output Reference : 00000030
[872h 2162 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[876h 2166 004h]                  Input base : 040B0001
[87Ah 2170 004h]                    ID Count : 00000000
[87Eh 2174 004h]                 Output Base : 000019E1
[882h 2178 004h]            Output Reference : 00000030
[886h 2182 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[88Ah 2186 004h]                  Input base : 040A0000
[88Eh 2190 004h]                    ID Count : 00000000
[892h 2194 004h]                 Output Base : 00001945
[896h 2198 004h]            Output Reference : 00000030
[89Ah 2202 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[89Eh 2206 004h]                  Input base : 04030000
[8A2h 2210 004h]                    ID Count : 00000000
[8A6h 2214 004h]                 Output Base : 00001940
[8AAh 2218 004h]            Output Reference : 00000030
[8AEh 2222 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8B2h 2226 004h]                  Input base : 04030001
[8B6h 2230 004h]                    ID Count : 00000000
[8BAh 2234 004h]                 Output Base : 000019E0
[8BEh 2238 004h]            Output Reference : 00000030
[8C2h 2242 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8C6h 2246 004h]                  Input base : 04030020
[8CAh 2250 004h]                    ID Count : 00000000
[8CEh 2254 004h]                 Output Base : 00001944
[8D2h 2258 004h]            Output Reference : 00000030
[8D6h 2262 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8DAh 2266 004h]                  Input base : 04030040
[8DEh 2270 004h]                    ID Count : 00000000
[8E2h 2274 004h]                 Output Base : 00001943
[8E6h 2278 004h]            Output Reference : 00000030
[8EAh 2282 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8EEh 2286 004h]                  Input base : 04030060
[8F2h 2290 004h]                    ID Count : 00000000
[8F6h 2294 004h]                 Output Base : 00001948
[8FAh 2298 004h]            Output Reference : 00000030
[8FEh 2302 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[902h 2306 004h]                  Input base : 04030080
[906h 2310 004h]                    ID Count : 00000000
[90Ah 2314 004h]                 Output Base : 00001947
[90Eh 2318 004h]            Output Reference : 00000030
[912h 2322 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[916h 2326 004h]                  Input base : 1B090000
[91Ah 2330 004h]                    ID Count : 00000000
[91Eh 2334 004h]                 Output Base : 00001885
[922h 2338 004h]            Output Reference : 00000030
[926h 2342 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[92Ah 2346 004h]                  Input base : 1B0B0000
[92Eh 2350 004h]                    ID Count : 00000000
[932h 2354 004h]                 Output Base : 00001884
[936h 2358 004h]            Output Reference : 00000030
[93Ah 2362 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[93Eh 2366 004h]                  Input base : 1B0A0000
[942h 2370 004h]                    ID Count : 00000000
[946h 2374 004h]                 Output Base : 00001883
[94Ah 2378 004h]            Output Reference : 00000030
[94Eh 2382 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[952h 2386 004h]                  Input base : 1B030000
[956h 2390 004h]                    ID Count : 00000000
[95Ah 2394 004h]                 Output Base : 00001880
[95Eh 2398 004h]            Output Reference : 00000030
[962h 2402 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[966h 2406 001h]                        Type : 01
[967h 2407 002h]                      Length : 0051
[969h 2409 001h]                    Revision : 00
[96Ah 2410 004h]                    Reserved : 00000000
[96Eh 2414 004h]               Mapping Count : 00000001
[972h 2418 004h]              Mapping Offset : 0000003D

[976h 2422 004h]                  Node Flags : 00000000
[97Ah 2426 008h]           Memory Properties : [IORT Memory Access Properties]
[97Ah 2426 004h]             Cache Coherency : 00000000
[97Eh 2430 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[97Fh 2431 002h]                    Reserved : 0000
[981h 2433 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[982h 2434 001h]           Memory Size Limit : 24
[983h 2435 00Ah]                 Device Name : "\_SB.JPGE"
[98Dh 2445 016h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 99Dh 2461   6 */                            43 42 2D 30 31 20                               /* CB-01  */\

[9A3h 2467 004h]                  Input base : 02030000
[9A7h 2471 004h]                    ID Count : 00000000
[9ABh 2475 004h]                 Output Base : 000018E0
[9AFh 2479 004h]            Output Reference : 00000030
[9B3h 2483 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9B7h 2487 001h]                        Type : 01
[9B8h 2488 002h]                      Length : 0245
[9BAh 2490 001h]                    Revision : 00
[9BBh 2491 004h]                    Reserved : 00000000
[9BFh 2495 004h]               Mapping Count : 0000001A
[9C3h 2499 004h]              Mapping Offset : 0000003D

[9C7h 2503 004h]                  Node Flags : 00000000
[9CBh 2507 008h]           Memory Properties : [IORT Memory Access Properties]
[9CBh 2507 004h]             Cache Coherency : 00000000
[9CFh 2511 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[9D0h 2512 002h]                    Reserved : 0000
[9D2h 2514 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[9D3h 2515 001h]           Memory Size Limit : 24
[9D4h 2516 00Ah]                 Device Name : "\_SB.ARPC"
[9DEh 2526 016h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 9EEh 2542   6 */                            43 42 2D 30 31 20                               /* CB-01  */\

[9F4h 2548 004h]                  Input base : 17030000
[9F8h 2552 004h]                    ID Count : 00000000
[9FCh 2556 004h]                 Output Base : 00001003
[A00h 2560 004h]            Output Reference : 00000030
[A04h 2564 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A08h 2568 004h]                  Input base : 17030001
[A0Ch 2572 004h]                    ID Count : 00000000
[A10h 2576 004h]                 Output Base : 00001043
[A14h 2580 004h]            Output Reference : 00000030
[A18h 2584 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A1Ch 2588 004h]                  Input base : 17030002
[A20h 2592 004h]                    ID Count : 00000000
[A24h 2596 004h]                 Output Base : 00001063
[A28h 2600 004h]            Output Reference : 00000030
[A2Ch 2604 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A30h 2608 004h]                  Input base : 17030003
[A34h 2612 004h]                    ID Count : 00000000
[A38h 2616 004h]                 Output Base : 00001083
[A3Ch 2620 004h]            Output Reference : 00000030
[A40h 2624 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A44h 2628 004h]                  Input base : 17030020
[A48h 2632 004h]                    ID Count : 00000000
[A4Ch 2636 004h]                 Output Base : 00001004
[A50h 2640 004h]            Output Reference : 00000030
[A54h 2644 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A58h 2648 004h]                  Input base : 17030021
[A5Ch 2652 004h]                    ID Count : 00000000
[A60h 2656 004h]                 Output Base : 00001044
[A64h 2660 004h]            Output Reference : 00000030
[A68h 2664 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A6Ch 2668 004h]                  Input base : 17030022
[A70h 2672 004h]                    ID Count : 00000000
[A74h 2676 004h]                 Output Base : 00001064
[A78h 2680 004h]            Output Reference : 00000030
[A7Ch 2684 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A80h 2688 004h]                  Input base : 17030023
[A84h 2692 004h]                    ID Count : 00000000
[A88h 2696 004h]                 Output Base : 00001084
[A8Ch 2700 004h]            Output Reference : 00000030
[A90h 2704 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A94h 2708 004h]                  Input base : 17030040
[A98h 2712 004h]                    ID Count : 00000000
[A9Ch 2716 004h]                 Output Base : 00001005
[AA0h 2720 004h]            Output Reference : 00000030
[AA4h 2724 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AA8h 2728 004h]                  Input base : 17030041
[AACh 2732 004h]                    ID Count : 00000000
[AB0h 2736 004h]                 Output Base : 00001045
[AB4h 2740 004h]            Output Reference : 00000030
[AB8h 2744 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[ABCh 2748 004h]                  Input base : 17030042
[AC0h 2752 004h]                    ID Count : 00000000
[AC4h 2756 004h]                 Output Base : 00001065
[AC8h 2760 004h]            Output Reference : 00000030
[ACCh 2764 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AD0h 2768 004h]                  Input base : 17030043
[AD4h 2772 004h]                    ID Count : 00000000
[AD8h 2776 004h]                 Output Base : 00001085
[ADCh 2780 004h]            Output Reference : 00000030
[AE0h 2784 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AE4h 2788 004h]                  Input base : 17030060
[AE8h 2792 004h]                    ID Count : 00000000
[AECh 2796 004h]                 Output Base : 00001006
[AF0h 2800 004h]            Output Reference : 00000030
[AF4h 2804 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AF8h 2808 004h]                  Input base : 17030061
[AFCh 2812 004h]                    ID Count : 00000000
[B00h 2816 004h]                 Output Base : 00001046
[B04h 2820 004h]            Output Reference : 00000030
[B08h 2824 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B0Ch 2828 004h]                  Input base : 17030062
[B10h 2832 004h]                    ID Count : 00000000
[B14h 2836 004h]                 Output Base : 00001066
[B18h 2840 004h]            Output Reference : 00000030
[B1Ch 2844 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B20h 2848 004h]                  Input base : 17030063
[B24h 2852 004h]                    ID Count : 00000000
[B28h 2856 004h]                 Output Base : 00001086
[B2Ch 2860 004h]            Output Reference : 00000030
[B30h 2864 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B34h 2868 004h]                  Input base : 17030080
[B38h 2872 004h]                    ID Count : 00000000
[B3Ch 2876 004h]                 Output Base : 00001007
[B40h 2880 004h]            Output Reference : 00000030
[B44h 2884 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B48h 2888 004h]                  Input base : 17030081
[B4Ch 2892 004h]                    ID Count : 00000000
[B50h 2896 004h]                 Output Base : 00001047
[B54h 2900 004h]            Output Reference : 00000030
[B58h 2904 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B5Ch 2908 004h]                  Input base : 17030082
[B60h 2912 004h]                    ID Count : 00000000
[B64h 2916 004h]                 Output Base : 00001067
[B68h 2920 004h]            Output Reference : 00000030
[B6Ch 2924 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B70h 2928 004h]                  Input base : 17030083
[B74h 2932 004h]                    ID Count : 00000000
[B78h 2936 004h]                 Output Base : 00001087
[B7Ch 2940 004h]            Output Reference : 00000030
[B80h 2944 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B84h 2948 004h]                  Input base : 170300A0
[B88h 2952 004h]                    ID Count : 00000000
[B8Ch 2956 004h]                 Output Base : 00001008
[B90h 2960 004h]            Output Reference : 00000030
[B94h 2964 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B98h 2968 004h]                  Input base : 170300A1
[B9Ch 2972 004h]                    ID Count : 00000000
[BA0h 2976 004h]                 Output Base : 00001048
[BA4h 2980 004h]            Output Reference : 00000030
[BA8h 2984 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BACh 2988 004h]                  Input base : 170300A2
[BB0h 2992 004h]                    ID Count : 00000000
[BB4h 2996 004h]                 Output Base : 00001068
[BB8h 3000 004h]            Output Reference : 00000030
[BBCh 3004 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BC0h 3008 004h]                  Input base : 170300A3
[BC4h 3012 004h]                    ID Count : 00000000
[BC8h 3016 004h]                 Output Base : 00001088
[BCCh 3020 004h]            Output Reference : 00000030
[BD0h 3024 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BD4h 3028 004h]                  Input base : 16030000
[BD8h 3032 004h]                    ID Count : 00000000
[BDCh 3036 004h]                 Output Base : 000010D6
[BE0h 3040 004h]            Output Reference : 00000030
[BE4h 3044 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BE8h 3048 004h]                  Input base : 16030020
[BECh 3052 004h]                    ID Count : 00000000
[BF0h 3056 004h]                 Output Base : 000010C3
[BF4h 3060 004h]            Output Reference : 00000030
[BF8h 3064 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BFCh 3068 001h]                        Type : 01
[BFDh 3069 002h]                      Length : 05DD
[BFFh 3071 001h]                    Revision : 00
[C00h 3072 004h]                    Reserved : 00000000
[C04h 3076 004h]               Mapping Count : 00000048
[C08h 3080 004h]              Mapping Offset : 0000003D

[C0Ch 3084 004h]                  Node Flags : 00000000
[C10h 3088 008h]           Memory Properties : [IORT Memory Access Properties]
[C10h 3088 004h]             Cache Coherency : 00000000
[C14h 3092 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[C15h 3093 002h]                    Reserved : 0000
[C17h 3095 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[C18h 3096 001h]           Memory Size Limit : 28
[C19h 3097 00Ah]                 Device Name : "\_SB.NSPM"
[C23h 3107 016h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* C33h 3123   6 */                            43 42 2D 30 31 20                               /* CB-01  */\

[C39h 3129 004h]                  Input base : 180A0000
[C3Dh 3133 004h]                    ID Count : 00000000
[C41h 3137 004h]                 Output Base : 00001969
[C45h 3141 004h]            Output Reference : 00000030
[C49h 3145 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C4Dh 3149 004h]                  Input base : 180A0001
[C51h 3153 004h]                    ID Count : 00000000
[C55h 3157 004h]                 Output Base : 000019C9
[C59h 3161 004h]            Output Reference : 00000030
[C5Dh 3165 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C61h 3169 004h]                  Input base : 180A0002
[C65h 3173 004h]                    ID Count : 00000000
[C69h 3177 004h]                 Output Base : 00002009
[C6Dh 3181 004h]            Output Reference : 00000030
[C71h 3185 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C75h 3189 004h]                  Input base : 180A0003
[C79h 3193 004h]                    ID Count : 00000000
[C7Dh 3197 004h]                 Output Base : 00002049
[C81h 3201 004h]            Output Reference : 00000030
[C85h 3205 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C89h 3209 004h]                  Input base : 180A0004
[C8Dh 3213 004h]                    ID Count : 00000000
[C91h 3217 004h]                 Output Base : 00002409
[C95h 3221 004h]            Output Reference : 00000030
[C99h 3225 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C9Dh 3229 004h]                  Input base : 180A0005
[CA1h 3233 004h]                    ID Count : 00000000
[CA5h 3237 004h]                 Output Base : 00002449
[CA9h 3241 004h]            Output Reference : 00000030
[CADh 3245 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CB1h 3249 004h]                  Input base : 18030000
[CB5h 3253 004h]                    ID Count : 00000000
[CB9h 3257 004h]                 Output Base : 00001961
[CBDh 3261 004h]            Output Reference : 00000030
[CC1h 3265 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CC5h 3269 004h]                  Input base : 18030001
[CC9h 3273 004h]                    ID Count : 00000000
[CCDh 3277 004h]                 Output Base : 000019C1
[CD1h 3281 004h]            Output Reference : 00000030
[CD5h 3285 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CD9h 3289 004h]                  Input base : 18030002
[CDDh 3293 004h]                    ID Count : 00000000
[CE1h 3297 004h]                 Output Base : 00002001
[CE5h 3301 004h]            Output Reference : 00000030
[CE9h 3305 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CEDh 3309 004h]                  Input base : 18030003
[CF1h 3313 004h]                    ID Count : 00000000
[CF5h 3317 004h]                 Output Base : 00002041
[CF9h 3321 004h]            Output Reference : 00000030
[CFDh 3325 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D01h 3329 004h]                  Input base : 18030004
[D05h 3333 004h]                    ID Count : 00000000
[D09h 3337 004h]                 Output Base : 00002401
[D0Dh 3341 004h]            Output Reference : 00000030
[D11h 3345 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D15h 3349 004h]                  Input base : 18030005
[D19h 3353 004h]                    ID Count : 00000000
[D1Dh 3357 004h]                 Output Base : 00002441
[D21h 3361 004h]            Output Reference : 00000030
[D25h 3365 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D29h 3369 004h]                  Input base : 18030020
[D2Dh 3373 004h]                    ID Count : 00000000
[D31h 3377 004h]                 Output Base : 0000196C
[D35h 3381 004h]            Output Reference : 00000030
[D39h 3385 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D3Dh 3389 004h]                  Input base : 18030021
[D41h 3393 004h]                    ID Count : 00000000
[D45h 3397 004h]                 Output Base : 000019CC
[D49h 3401 004h]            Output Reference : 00000030
[D4Dh 3405 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D51h 3409 004h]                  Input base : 18030022
[D55h 3413 004h]                    ID Count : 00000000
[D59h 3417 004h]                 Output Base : 0000200C
[D5Dh 3421 004h]            Output Reference : 00000030
[D61h 3425 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D65h 3429 004h]                  Input base : 18030023
[D69h 3433 004h]                    ID Count : 00000000
[D6Dh 3437 004h]                 Output Base : 0000204C
[D71h 3441 004h]            Output Reference : 00000030
[D75h 3445 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D79h 3449 004h]                  Input base : 18030024
[D7Dh 3453 004h]                    ID Count : 00000000
[D81h 3457 004h]                 Output Base : 0000240C
[D85h 3461 004h]            Output Reference : 00000030
[D89h 3465 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D8Dh 3469 004h]                  Input base : 18030025
[D91h 3473 004h]                    ID Count : 00000000
[D95h 3477 004h]                 Output Base : 0000244C
[D99h 3481 004h]            Output Reference : 00000030
[D9Dh 3485 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DA1h 3489 004h]                  Input base : 18030040
[DA5h 3493 004h]                    ID Count : 00000000
[DA9h 3497 004h]                 Output Base : 0000196D
[DADh 3501 004h]            Output Reference : 00000030
[DB1h 3505 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DB5h 3509 004h]                  Input base : 18030041
[DB9h 3513 004h]                    ID Count : 00000000
[DBDh 3517 004h]                 Output Base : 000019CD
[DC1h 3521 004h]            Output Reference : 00000030
[DC5h 3525 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DC9h 3529 004h]                  Input base : 18030042
[DCDh 3533 004h]                    ID Count : 00000000
[DD1h 3537 004h]                 Output Base : 0000200D
[DD5h 3541 004h]            Output Reference : 00000030
[DD9h 3545 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DDDh 3549 004h]                  Input base : 18030043
[DE1h 3553 004h]                    ID Count : 00000000
[DE5h 3557 004h]                 Output Base : 0000204D
[DE9h 3561 004h]            Output Reference : 00000030
[DEDh 3565 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DF1h 3569 004h]                  Input base : 18030044
[DF5h 3573 004h]                    ID Count : 00000000
[DF9h 3577 004h]                 Output Base : 0000240D
[DFDh 3581 004h]            Output Reference : 00000030
[E01h 3585 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E05h 3589 004h]                  Input base : 18030045
[E09h 3593 004h]                    ID Count : 00000000
[E0Dh 3597 004h]                 Output Base : 0000244D
[E11h 3601 004h]            Output Reference : 00000030
[E15h 3605 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E19h 3609 004h]                  Input base : 18030060
[E1Dh 3613 004h]                    ID Count : 00000000
[E21h 3617 004h]                 Output Base : 0000196E
[E25h 3621 004h]            Output Reference : 00000030
[E29h 3625 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E2Dh 3629 004h]                  Input base : 18030061
[E31h 3633 004h]                    ID Count : 00000000
[E35h 3637 004h]                 Output Base : 000019CE
[E39h 3641 004h]            Output Reference : 00000030
[E3Dh 3645 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E41h 3649 004h]                  Input base : 18030062
[E45h 3653 004h]                    ID Count : 00000000
[E49h 3657 004h]                 Output Base : 0000200E
[E4Dh 3661 004h]            Output Reference : 00000030
[E51h 3665 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E55h 3669 004h]                  Input base : 18030063
[E59h 3673 004h]                    ID Count : 00000000
[E5Dh 3677 004h]                 Output Base : 0000204E
[E61h 3681 004h]            Output Reference : 00000030
[E65h 3685 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E69h 3689 004h]                  Input base : 18030064
[E6Dh 3693 004h]                    ID Count : 00000000
[E71h 3697 004h]                 Output Base : 0000240E
[E75h 3701 004h]            Output Reference : 00000030
[E79h 3705 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E7Dh 3709 004h]                  Input base : 18030065
[E81h 3713 004h]                    ID Count : 00000000
[E85h 3717 004h]                 Output Base : 0000244E
[E89h 3721 004h]            Output Reference : 00000030
[E8Dh 3725 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E91h 3729 004h]                  Input base : 18030080
[E95h 3733 004h]                    ID Count : 00000000
[E99h 3737 004h]                 Output Base : 00001962
[E9Dh 3741 004h]            Output Reference : 00000030
[EA1h 3745 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[EA5h 3749 004h]                  Input base : 18030081
[EA9h 3753 004h]                    ID Count : 00000000
[EADh 3757 004h]                 Output Base : 000019C2
[EB1h 3761 004h]            Output Reference : 00000030
[EB5h 3765 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[EB9h 3769 004h]                  Input base : 18030082
[EBDh 3773 004h]                    ID Count : 00000000
[EC1h 3777 004h]                 Output Base : 00002002
[EC5h 3781 004h]            Output Reference : 00000030
[EC9h 3785 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[ECDh 3789 004h]                  Input base : 18030083
[ED1h 3793 004h]                    ID Count : 00000000
[ED5h 3797 004h]                 Output Base : 00002042
[ED9h 3801 004h]            Output Reference : 00000030
[EDDh 3805 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[EE1h 3809 004h]                  Input base : 18030084
[EE5h 3813 004h]                    ID Count : 00000000
[EE9h 3817 004h]                 Output Base : 00002402
[EEDh 3821 004h]            Output Reference : 00000030
[EF1h 3825 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[EF5h 3829 004h]                  Input base : 18030085
[EF9h 3833 004h]                    ID Count : 00000000
[EFDh 3837 004h]                 Output Base : 00002442
[F01h 3841 004h]            Output Reference : 00000030
[F05h 3845 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F09h 3849 004h]                  Input base : 180300A0
[F0Dh 3853 004h]                    ID Count : 00000000
[F11h 3857 004h]                 Output Base : 00001963
[F15h 3861 004h]            Output Reference : 00000030
[F19h 3865 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F1Dh 3869 004h]                  Input base : 180300A1
[F21h 3873 004h]                    ID Count : 00000000
[F25h 3877 004h]                 Output Base : 000019C3
[F29h 3881 004h]            Output Reference : 00000030
[F2Dh 3885 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F31h 3889 004h]                  Input base : 180300A2
[F35h 3893 004h]                    ID Count : 00000000
[F39h 3897 004h]                 Output Base : 00002003
[F3Dh 3901 004h]            Output Reference : 00000030
[F41h 3905 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F45h 3909 004h]                  Input base : 180300A3
[F49h 3913 004h]                    ID Count : 00000000
[F4Dh 3917 004h]                 Output Base : 00002043
[F51h 3921 004h]            Output Reference : 00000030
[F55h 3925 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F59h 3929 004h]                  Input base : 180300A4
[F5Dh 3933 004h]                    ID Count : 00000000
[F61h 3937 004h]                 Output Base : 00002403
[F65h 3941 004h]            Output Reference : 00000030
[F69h 3945 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F6Dh 3949 004h]                  Input base : 180300A5
[F71h 3953 004h]                    ID Count : 00000000
[F75h 3957 004h]                 Output Base : 00002443
[F79h 3961 004h]            Output Reference : 00000030
[F7Dh 3965 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F81h 3969 004h]                  Input base : 180300C0
[F85h 3973 004h]                    ID Count : 00000000
[F89h 3977 004h]                 Output Base : 00001964
[F8Dh 3981 004h]            Output Reference : 00000030
[F91h 3985 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F95h 3989 004h]                  Input base : 180300C1
[F99h 3993 004h]                    ID Count : 00000000
[F9Dh 3997 004h]                 Output Base : 000019C4
[FA1h 4001 004h]            Output Reference : 00000030
[FA5h 4005 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[FA9h 4009 004h]                  Input base : 180300C2
[FADh 4013 004h]                    ID Count : 00000000
[FB1h 4017 004h]                 Output Base : 00002004
[FB5h 4021 004h]            Output Reference : 00000030
[FB9h 4025 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[FBDh 4029 004h]                  Input base : 180300C3
[FC1h 4033 004h]                    ID Count : 00000000
[FC5h 4037 004h]                 Output Base : 00002044
[FC9h 4041 004h]            Output Reference : 00000030
[FCDh 4045 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[FD1h 4049 004h]                  Input base : 180300C4
[FD5h 4053 004h]                    ID Count : 00000000
[FD9h 4057 004h]                 Output Base : 00002404
[FDDh 4061 004h]            Output Reference : 00000030
[FE1h 4065 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[FE5h 4069 004h]                  Input base : 180300C5
[FE9h 4073 004h]                    ID Count : 00000000
[FEDh 4077 004h]                 Output Base : 00002444
[FF1h 4081 004h]            Output Reference : 00000030
[FF5h 4085 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[FF9h 4089 004h]                  Input base : 180300E0
[FFDh 4093 004h]                    ID Count : 00000000
[1001h 4097 004h]                 Output Base : 00001965
[1005h 4101 004h]            Output Reference : 00000030
[1009h 4105 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[100Dh 4109 004h]                  Input base : 180300E1
[1011h 4113 004h]                    ID Count : 00000000
[1015h 4117 004h]                 Output Base : 000019C5
[1019h 4121 004h]            Output Reference : 00000030
[101Dh 4125 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1021h 4129 004h]                  Input base : 180300E2
[1025h 4133 004h]                    ID Count : 00000000
[1029h 4137 004h]                 Output Base : 00002005
[102Dh 4141 004h]            Output Reference : 00000030
[1031h 4145 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1035h 4149 004h]                  Input base : 180300E3
[1039h 4153 004h]                    ID Count : 00000000
[103Dh 4157 004h]                 Output Base : 00002045
[1041h 4161 004h]            Output Reference : 00000030
[1045h 4165 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1049h 4169 004h]                  Input base : 180300E4
[104Dh 4173 004h]                    ID Count : 00000000
[1051h 4177 004h]                 Output Base : 00002405
[1055h 4181 004h]            Output Reference : 00000030
[1059h 4185 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[105Dh 4189 004h]                  Input base : 180300E5
[1061h 4193 004h]                    ID Count : 00000000
[1065h 4197 004h]                 Output Base : 00002445
[1069h 4201 004h]            Output Reference : 00000030
[106Dh 4205 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1071h 4209 004h]                  Input base : 18030100
[1075h 4213 004h]                    ID Count : 00000000
[1079h 4217 004h]                 Output Base : 00001966
[107Dh 4221 004h]            Output Reference : 00000030
[1081h 4225 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1085h 4229 004h]                  Input base : 18030101
[1089h 4233 004h]                    ID Count : 00000000
[108Dh 4237 004h]                 Output Base : 000019C6
[1091h 4241 004h]            Output Reference : 00000030
[1095h 4245 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1099h 4249 004h]                  Input base : 18030102
[109Dh 4253 004h]                    ID Count : 00000000
[10A1h 4257 004h]                 Output Base : 00002006
[10A5h 4261 004h]            Output Reference : 00000030
[10A9h 4265 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[10ADh 4269 004h]                  Input base : 18030103
[10B1h 4273 004h]                    ID Count : 00000000
[10B5h 4277 004h]                 Output Base : 00002046
[10B9h 4281 004h]            Output Reference : 00000030
[10BDh 4285 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[10C1h 4289 004h]                  Input base : 18030104
[10C5h 4293 004h]                    ID Count : 00000000
[10C9h 4297 004h]                 Output Base : 00002406
[10CDh 4301 004h]            Output Reference : 00000030
[10D1h 4305 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[10D5h 4309 004h]                  Input base : 18030105
[10D9h 4313 004h]                    ID Count : 00000000
[10DDh 4317 004h]                 Output Base : 00002446
[10E1h 4321 004h]            Output Reference : 00000030
[10E5h 4325 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[10E9h 4329 004h]                  Input base : 18030120
[10EDh 4333 004h]                    ID Count : 00000000
[10F1h 4337 004h]                 Output Base : 00001967
[10F5h 4341 004h]            Output Reference : 00000030
[10F9h 4345 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[10FDh 4349 004h]                  Input base : 18030121
[1101h 4353 004h]                    ID Count : 00000000
[1105h 4357 004h]                 Output Base : 000019C7
[1109h 4361 004h]            Output Reference : 00000030
[110Dh 4365 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1111h 4369 004h]                  Input base : 18030122
[1115h 4373 004h]                    ID Count : 00000000
[1119h 4377 004h]                 Output Base : 00002007
[111Dh 4381 004h]            Output Reference : 00000030
[1121h 4385 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1125h 4389 004h]                  Input base : 18030123
[1129h 4393 004h]                    ID Count : 00000000
[112Dh 4397 004h]                 Output Base : 00002047
[1131h 4401 004h]            Output Reference : 00000030
[1135h 4405 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1139h 4409 004h]                  Input base : 18030124
[113Dh 4413 004h]                    ID Count : 00000000
[1141h 4417 004h]                 Output Base : 00002407
[1145h 4421 004h]            Output Reference : 00000030
[1149h 4425 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[114Dh 4429 004h]                  Input base : 18030125
[1151h 4433 004h]                    ID Count : 00000000
[1155h 4437 004h]                 Output Base : 00002447
[1159h 4441 004h]            Output Reference : 00000030
[115Dh 4445 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1161h 4449 004h]                  Input base : 18030140
[1165h 4453 004h]                    ID Count : 00000000
[1169h 4457 004h]                 Output Base : 00001968
[116Dh 4461 004h]            Output Reference : 00000030
[1171h 4465 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1175h 4469 004h]                  Input base : 18030141
[1179h 4473 004h]                    ID Count : 00000000
[117Dh 4477 004h]                 Output Base : 000019C8
[1181h 4481 004h]            Output Reference : 00000030
[1185h 4485 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1189h 4489 004h]                  Input base : 18030142
[118Dh 4493 004h]                    ID Count : 00000000
[1191h 4497 004h]                 Output Base : 00002008
[1195h 4501 004h]            Output Reference : 00000030
[1199h 4505 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[119Dh 4509 004h]                  Input base : 18030143
[11A1h 4513 004h]                    ID Count : 00000000
[11A5h 4517 004h]                 Output Base : 00002048
[11A9h 4521 004h]            Output Reference : 00000030
[11ADh 4525 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11B1h 4529 004h]                  Input base : 18030144
[11B5h 4533 004h]                    ID Count : 00000000
[11B9h 4537 004h]                 Output Base : 00002408
[11BDh 4541 004h]            Output Reference : 00000030
[11C1h 4545 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11C5h 4549 004h]                  Input base : 18030145
[11C9h 4553 004h]                    ID Count : 00000000
[11CDh 4557 004h]                 Output Base : 00002448
[11D1h 4561 004h]            Output Reference : 00000030
[11D5h 4565 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11D9h 4569 001h]                        Type : 01
[11DAh 4570 002h]                      Length : 0051
[11DCh 4572 001h]                    Revision : 00
[11DDh 4573 004h]                    Reserved : 00000000
[11E1h 4577 004h]               Mapping Count : 00000001
[11E5h 4581 004h]              Mapping Offset : 0000003D

[11E9h 4585 004h]                  Node Flags : 00000000
[11EDh 4589 008h]           Memory Properties : [IORT Memory Access Properties]
[11EDh 4589 004h]             Cache Coherency : 00000000
[11F1h 4593 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[11F2h 4594 002h]                    Reserved : 0000
[11F4h 4596 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[11F5h 4597 001h]           Memory Size Limit : 24
[11F6h 4598 00Ah]                 Device Name : "\_SB.USBA"
[1200h 4608 016h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 1210h 4624   6 */                            43 42 2D 30 31 20                               /* CB-01  */\

[1216h 4630 004h]                  Input base : 07030020
[121Ah 4634 004h]                    ID Count : 00000000
[121Eh 4638 004h]                 Output Base : 0000100B
[1222h 4642 004h]            Output Reference : 00000030
[1226h 4646 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[122Ah 4650 001h]                        Type : 01
[122Bh 4651 002h]                      Length : 0065
[122Dh 4653 001h]                    Revision : 00
[122Eh 4654 004h]                    Reserved : 00000000
[1232h 4658 004h]               Mapping Count : 00000002
[1236h 4662 004h]              Mapping Offset : 0000003D

[123Ah 4666 004h]                  Node Flags : 00000000
[123Eh 4670 008h]           Memory Properties : [IORT Memory Access Properties]
[123Eh 4670 004h]             Cache Coherency : 00000000
[1242h 4674 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1243h 4675 002h]                    Reserved : 0000
[1245h 4677 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[1246h 4678 001h]           Memory Size Limit : 28
[1247h 4679 00Ah]                 Device Name : "\_SB.QDSS"
[1251h 4689 016h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 1261h 4705   6 */                            43 42 2D 30 31 20                               /* CB-01  */\

[1267h 4711 004h]                  Input base : 19030000
[126Bh 4715 004h]                    ID Count : 00000000
[126Fh 4719 004h]                 Output Base : 000000E0
[1273h 4723 004h]            Output Reference : 00000030
[1277h 4727 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[127Bh 4731 004h]                  Input base : 19030001
[127Fh 4735 004h]                    ID Count : 00000000
[1283h 4739 004h]                 Output Base : 00000100
[1287h 4743 004h]            Output Reference : 00000030
[128Bh 4747 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[128Fh 4751 001h]                        Type : 01
[1290h 4752 002h]                      Length : 008D
[1292h 4754 001h]                    Revision : 00
[1293h 4755 004h]                    Reserved : 00000000
[1297h 4759 004h]               Mapping Count : 00000004
[129Bh 4763 004h]              Mapping Offset : 0000003D

[129Fh 4767 004h]                  Node Flags : 00000000
[12A3h 4771 008h]           Memory Properties : [IORT Memory Access Properties]
[12A3h 4771 004h]             Cache Coherency : 00000000
[12A7h 4775 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[12A8h 4776 002h]                    Reserved : 0000
[12AAh 4778 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[12ABh 4779 001h]           Memory Size Limit : 24
[12ACh 4780 00Fh]                 Device Name : "\_SB.ADSP.ADCM"
[12BBh 4795 011h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 12CBh 4811   1 */                            43                                              /* C */\

[12CCh 4812 004h]                  Input base : 07030000
[12D0h 4816 004h]                    ID Count : 00000000
[12D4h 4820 004h]                 Output Base : 00001001
[12D8h 4824 004h]            Output Reference : 00000030
[12DCh 4828 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[12E0h 4832 004h]                  Input base : 07030001
[12E4h 4836 004h]                    ID Count : 00000000
[12E8h 4840 004h]                 Output Base : 00001041
[12ECh 4844 004h]            Output Reference : 00000030
[12F0h 4848 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[12F4h 4852 004h]                  Input base : 07030002
[12F8h 4856 004h]                    ID Count : 00000000
[12FCh 4860 004h]                 Output Base : 00001061
[1300h 4864 004h]            Output Reference : 00000030
[1304h 4868 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1308h 4872 004h]                  Input base : 07030003
[130Ch 4876 004h]                    ID Count : 00000000
[1310h 4880 004h]                 Output Base : 00001081
[1314h 4884 004h]            Output Reference : 00000030
[1318h 4888 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[131Ch 4892 001h]                        Type : 01
[131Dh 4893 002h]                      Length : 0065
[131Fh 4895 001h]                    Revision : 00
[1320h 4896 004h]                    Reserved : 00000000
[1324h 4900 004h]               Mapping Count : 00000002
[1328h 4904 004h]              Mapping Offset : 0000003D

[132Ch 4908 004h]                  Node Flags : 00000000
[1330h 4912 008h]           Memory Properties : [IORT Memory Access Properties]
[1330h 4912 004h]             Cache Coherency : 00000000
[1334h 4916 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1335h 4917 002h]                    Reserved : 0000
[1337h 4919 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[1338h 4920 001h]           Memory Size Limit : 28
[1339h 4921 00Ah]                 Device Name : "\_SB.SDC2"
[1343h 4931 016h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 1353h 4947   6 */                            43 42 2D 30 31 20                               /* CB-01  */\

[1359h 4953 004h]                  Input base : 86030000
[135Dh 4957 004h]                    ID Count : 00000000
[1361h 4961 004h]                 Output Base : 00000D00
[1365h 4965 004h]            Output Reference : 00000030
[1369h 4969 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[136Dh 4973 004h]                  Input base : 86030020
[1371h 4977 004h]                    ID Count : 00000000
[1375h 4981 004h]                 Output Base : 00000D80
[1379h 4985 004h]            Output Reference : 00000030
[137Dh 4989 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1381h 4993 001h]                        Type : 01
[1382h 4994 002h]                      Length : 0051
[1384h 4996 001h]                    Revision : 00
[1385h 4997 004h]                    Reserved : 00000000
[1389h 5001 004h]               Mapping Count : 00000001
[138Dh 5005 004h]              Mapping Offset : 0000003D

[1391h 5009 004h]                  Node Flags : 00000000
[1395h 5013 008h]           Memory Properties : [IORT Memory Access Properties]
[1395h 5013 004h]             Cache Coherency : 00000001
[1399h 5017 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[139Ah 5018 002h]                    Reserved : 0000
[139Ch 5020 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[139Dh 5021 001h]           Memory Size Limit : 28
[139Eh 5022 00Ah]                 Device Name : "\_SB.UFS0"
[13A8h 5032 016h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 13B8h 5048   6 */                            43 42 2D 30 31 20                               /* CB-01  */\

[13BEh 5054 004h]                  Input base : 81030000
[13C2h 5058 004h]                    ID Count : 00000000
[13C6h 5062 004h]                 Output Base : 00000460
[13CAh 5066 004h]            Output Reference : 00000030
[13CEh 5070 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[13D2h 5074 001h]                        Type : 01
[13D3h 5075 002h]                      Length : 0051
[13D5h 5077 001h]                    Revision : 00
[13D6h 5078 004h]                    Reserved : 00000000
[13DAh 5082 004h]               Mapping Count : 00000001
[13DEh 5086 004h]              Mapping Offset : 0000003D

[13E2h 5090 004h]                  Node Flags : 00000000
[13E6h 5094 008h]           Memory Properties : [IORT Memory Access Properties]
[13E6h 5094 004h]             Cache Coherency : 00000000
[13EAh 5098 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[13EBh 5099 002h]                    Reserved : 0000
[13EDh 5101 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[13EEh 5102 001h]           Memory Size Limit : 28
[13EFh 5103 00Ah]                 Device Name : "\_SB.URS0"
[13F9h 5113 016h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 1409h 5129   6 */                            43 42 2D 30 31 20                               /* CB-01  */\

[140Fh 5135 004h]                  Input base : 80030000
[1413h 5139 004h]                    ID Count : 00000000
[1417h 5143 004h]                 Output Base : 00001420
[141Bh 5147 004h]            Output Reference : 00000030
[141Fh 5151 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1423h 5155 001h]                        Type : 01
[1424h 5156 002h]                      Length : 0051
[1426h 5158 001h]                    Revision : 00
[1427h 5159 004h]                    Reserved : 00000000
[142Bh 5163 004h]               Mapping Count : 00000001
[142Fh 5167 004h]              Mapping Offset : 0000003D

[1433h 5171 004h]                  Node Flags : 00000000
[1437h 5175 008h]           Memory Properties : [IORT Memory Access Properties]
[1437h 5175 004h]             Cache Coherency : 00000000
[143Bh 5179 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[143Ch 5180 002h]                    Reserved : 0000
[143Eh 5182 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[143Fh 5183 001h]           Memory Size Limit : 28
[1440h 5184 00Ah]                 Device Name : "\_SB.URS1"
[144Ah 5194 016h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 145Ah 5210   6 */                            43 42 2D 30 31 20                               /* CB-01  */\

[1460h 5216 004h]                  Input base : 80030020
[1464h 5220 004h]                    ID Count : 00000000
[1468h 5224 004h]                 Output Base : 00001460
[146Ch 5228 004h]            Output Reference : 00000030
[1470h 5232 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1474h 5236 001h]                        Type : 01
[1475h 5237 002h]                      Length : 0051
[1477h 5239 001h]                    Revision : 00
[1478h 5240 004h]                    Reserved : 00000000
[147Ch 5244 004h]               Mapping Count : 00000001
[1480h 5248 004h]              Mapping Offset : 0000003D

[1484h 5252 004h]                  Node Flags : 00000000
[1488h 5256 008h]           Memory Properties : [IORT Memory Access Properties]
[1488h 5256 004h]             Cache Coherency : 00000000
[148Ch 5260 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[148Dh 5261 002h]                    Reserved : 0000
[148Fh 5263 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[1490h 5264 001h]           Memory Size Limit : 28
[1491h 5265 00Ah]                 Device Name : "\_SB.URS2"
[149Bh 5275 016h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 14ABh 5291   6 */                            43 42 2D 30 31 20                               /* CB-01  */\

[14B1h 5297 004h]                  Input base : 80030040
[14B5h 5301 004h]                    ID Count : 00000000
[14B9h 5305 004h]                 Output Base : 00000420
[14BDh 5309 004h]            Output Reference : 00000030
[14C1h 5313 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[14C5h 5317 001h]                        Type : 01
[14C6h 5318 002h]                      Length : 0051
[14C8h 5320 001h]                    Revision : 00
[14C9h 5321 004h]                    Reserved : 00000000
[14CDh 5325 004h]               Mapping Count : 00000001
[14D1h 5329 004h]              Mapping Offset : 0000003D

[14D5h 5333 004h]                  Node Flags : 00000000
[14D9h 5337 008h]           Memory Properties : [IORT Memory Access Properties]
[14D9h 5337 004h]             Cache Coherency : 00000000
[14DDh 5341 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[14DEh 5342 002h]                    Reserved : 0000
[14E0h 5344 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[14E1h 5345 001h]           Memory Size Limit : 28
[14E2h 5346 00Ah]                 Device Name : "\_SB.USB3"
[14ECh 5356 016h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 14FCh 5372   6 */                            43 42 2D 30 31 20                               /* CB-01  */\

[1502h 5378 004h]                  Input base : 80030060
[1506h 5382 004h]                    ID Count : 00000000
[150Ah 5386 004h]                 Output Base : 00000DA0
[150Eh 5390 004h]            Output Reference : 00000030
[1512h 5394 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1516h 5398 001h]                        Type : 01
[1517h 5399 002h]                      Length : 0051
[1519h 5401 001h]                    Revision : 00
[151Ah 5402 004h]                    Reserved : 00000000
[151Eh 5406 004h]               Mapping Count : 00000001
[1522h 5410 004h]              Mapping Offset : 0000003D

[1526h 5414 004h]                  Node Flags : 00000000
[152Ah 5418 008h]           Memory Properties : [IORT Memory Access Properties]
[152Ah 5418 004h]             Cache Coherency : 00000000
[152Eh 5422 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[152Fh 5423 002h]                    Reserved : 0000
[1531h 5425 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[1532h 5426 001h]           Memory Size Limit : 28
[1533h 5427 00Ah]                 Device Name : "\_SB.USB4"
[153Dh 5437 016h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 154Dh 5453   6 */                            43 42 2D 30 31 20                               /* CB-01  */\

[1553h 5459 004h]                  Input base : 800300E0
[1557h 5463 004h]                    ID Count : 00000000
[155Bh 5467 004h]                 Output Base : 00000CE0
[155Fh 5471 004h]            Output Reference : 00000030
[1563h 5475 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1567h 5479 001h]                        Type : 01
[1568h 5480 002h]                      Length : 0079
[156Ah 5482 001h]                    Revision : 00
[156Bh 5483 004h]                    Reserved : 00000000
[156Fh 5487 004h]               Mapping Count : 00000003
[1573h 5491 004h]              Mapping Offset : 0000003D

[1577h 5495 004h]                  Node Flags : 00000000
[157Bh 5499 008h]           Memory Properties : [IORT Memory Access Properties]
[157Bh 5499 004h]             Cache Coherency : 00000000
[157Fh 5503 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1580h 5504 002h]                    Reserved : 0000
[1582h 5506 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[1583h 5507 001h]           Memory Size Limit : 28
[1584h 5508 00Ah]                 Device Name : "\_SB.UBF0"
[158Eh 5518 016h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 159Eh 5534   6 */                            43 42 2D 30 31 20                               /* CB-01  */\

[15A4h 5540 004h]                  Input base : 80030080
[15A8h 5544 004h]                    ID Count : 00000000
[15ACh 5548 004h]                 Output Base : 00001440
[15B0h 5552 004h]            Output Reference : 00000030
[15B4h 5556 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[15B8h 5560 004h]                  Input base : 800300A0
[15BCh 5564 004h]                    ID Count : 00000000
[15C0h 5568 004h]                 Output Base : 00000440
[15C4h 5572 004h]            Output Reference : 00000030
[15C8h 5576 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[15CCh 5580 004h]                  Input base : 800300C0
[15D0h 5584 004h]                    ID Count : 00000000
[15D4h 5588 004h]                 Output Base : 00001600
[15D8h 5592 004h]            Output Reference : 00000030
[15DCh 5596 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[15E0h 5600 001h]                        Type : 01
[15E1h 5601 002h]                      Length : 00F1
[15E3h 5603 001h]                    Revision : 00
[15E4h 5604 004h]                    Reserved : 00000000
[15E8h 5608 004h]               Mapping Count : 00000009
[15ECh 5612 004h]              Mapping Offset : 0000003D

[15F0h 5616 004h]                  Node Flags : 00000000
[15F4h 5620 008h]           Memory Properties : [IORT Memory Access Properties]
[15F4h 5620 004h]             Cache Coherency : 00000000
[15F8h 5624 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[15F9h 5625 002h]                    Reserved : 0000
[15FBh 5627 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[15FCh 5628 001h]           Memory Size Limit : 24
[15FDh 5629 00Fh]                 Device Name : "\_SB.GPU0.AVS0"
[160Ch 5644 011h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 161Ch 5660   1 */                            43                                              /* C */\

[161Dh 5661 004h]                  Input base : 01030000
[1621h 5665 004h]                    ID Count : 00000000
[1625h 5669 004h]                 Output Base : 00001800
[1629h 5673 004h]            Output Reference : 00000030
[162Dh 5677 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1631h 5681 004h]                  Input base : 01030001
[1635h 5685 004h]                    ID Count : 00000000
[1639h 5689 004h]                 Output Base : 00001820
[163Dh 5693 004h]            Output Reference : 00000030
[1641h 5697 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1645h 5701 004h]                  Input base : 01030002
[1649h 5705 004h]                    ID Count : 00000000
[164Dh 5709 004h]                 Output Base : 00001840
[1651h 5713 004h]            Output Reference : 00000030
[1655h 5717 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1659h 5721 004h]                  Input base : 01030003
[165Dh 5725 004h]                    ID Count : 00000000
[1661h 5729 004h]                 Output Base : 00001860
[1665h 5733 004h]            Output Reference : 00000030
[1669h 5737 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[166Dh 5741 004h]                  Input base : 01030004
[1671h 5745 004h]                    ID Count : 00000000
[1675h 5749 004h]                 Output Base : 00001900
[1679h 5753 004h]            Output Reference : 00000030
[167Dh 5757 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1681h 5761 004h]                  Input base : 01030005
[1685h 5765 004h]                    ID Count : 00000000
[1689h 5769 004h]                 Output Base : 00001980
[168Dh 5773 004h]            Output Reference : 00000030
[1691h 5777 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1695h 5781 004h]                  Input base : 01030006
[1699h 5785 004h]                    ID Count : 00000000
[169Dh 5789 004h]                 Output Base : 000019A0
[16A1h 5793 004h]            Output Reference : 00000030
[16A5h 5797 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[16A9h 5801 004h]                  Input base : 01030020
[16ADh 5805 004h]                    ID Count : 00000000
[16B1h 5809 004h]                 Output Base : 00000820
[16B5h 5813 004h]            Output Reference : 00000030
[16B9h 5817 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[16BDh 5821 004h]                  Input base : 01030021
[16C1h 5825 004h]                    ID Count : 00000000
[16C5h 5829 004h]                 Output Base : 000018A0
[16C9h 5833 004h]            Output Reference : 00000030
[16CDh 5837 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[16D1h 5841 001h]                        Type : 01
[16D2h 5842 002h]                      Length : 0079
[16D4h 5844 001h]                    Revision : 00
[16D5h 5845 004h]                    Reserved : 00000000
[16D9h 5849 004h]               Mapping Count : 00000003
[16DDh 5853 004h]              Mapping Offset : 0000003D

[16E1h 5857 004h]                  Node Flags : 00000000
[16E5h 5861 008h]           Memory Properties : [IORT Memory Access Properties]
[16E5h 5861 004h]             Cache Coherency : 00000000
[16E9h 5865 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[16EAh 5866 002h]                    Reserved : 0000
[16ECh 5868 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[16EDh 5869 001h]           Memory Size Limit : 24
[16EEh 5870 00Ah]                 Device Name : "\_SB.EVA0"
[16F8h 5880 016h]                     Padding : 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F /* IORT......LENOVO */\
/* 1708h 5896   6 */                            43 42 2D 30 31 20                               /* CB-01  */\

[170Eh 5902 004h]                  Input base : 1A0B0000
[1712h 5906 004h]                    ID Count : 00000000
[1716h 5910 004h]                 Output Base : 00001924
[171Ah 5914 004h]            Output Reference : 00000030
[171Eh 5918 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1722h 5922 004h]                  Input base : 1A0A0000
[1726h 5926 004h]                    ID Count : 00000000
[172Ah 5930 004h]                 Output Base : 00001923
[172Eh 5934 004h]            Output Reference : 00000030
[1732h 5938 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1736h 5942 004h]                  Input base : 1A030000
[173Ah 5946 004h]                    ID Count : 00000000
[173Eh 5950 004h]                 Output Base : 00001920
[1742h 5954 004h]            Output Reference : 00000030
[1746h 5958 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[174Ah 5962 001h]                        Type : 04
[174Bh 5963 002h]                      Length : 0058
[174Dh 5965 001h]                    Revision : 00
[174Eh 5966 004h]                    Reserved : 00000000
[1752h 5970 004h]               Mapping Count : 00000001
[1756h 5974 004h]              Mapping Offset : 00000044

[175Ah 5978 008h]                Base Address : 0000000015480000
[1762h 5986 004h]       Flags (decoded below) : 00000001
                             COHACC Override : 1
                               HTTU Override : 0
                      Proximity Domain Valid : 0
                              DeviceID Valid : 0
[1766h 5990 004h]                    Reserved : 00000000
[176Ah 5994 008h]               VATOS Address : 0000000000000000
[1772h 6002 004h]                       Model : 00000000
[1776h 6006 004h]                  Event GSIV : 00001004
[177Ah 6010 004h]                    PRI GSIV : 00000000
[177Eh 6014 004h]                   GERR GSIV : 00001000
[1782h 6018 004h]                   Sync GSIV : 00001002
[1786h 6022 004h]            Proximity Domain : 00000000
[178Ah 6026 004h]     Device ID Mapping Index : 00000000

[178Eh 6030 004h]                  Input base : 00000000
[1792h 6034 004h]                    ID Count : 0007FFFF
[1796h 6038 004h]                 Output Base : 00080000
[179Ah 6042 004h]            Output Reference : 000017A2
[179Eh 6046 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[17A2h 6050 001h]                        Type : 00
[17A3h 6051 002h]                      Length : 0018
[17A5h 6053 001h]                    Revision : 00
[17A6h 6054 004h]                    Reserved : 00000000
[17AAh 6058 004h]               Mapping Count : 00000000
[17AEh 6062 004h]              Mapping Offset : 00000000

[17B2h 6066 004h]                    ItsCount : 00000001
[17B6h 6070 004h]                 Identifiers : 00000000

Raw Table Data: Length 6074 (0x17BA)

    0000: 49 4F 52 54 BA 17 00 00 00 EE 4C 45 4E 4F 56 4F  // IORT......LENOVO
    0010: 43 42 2D 30 31 20 20 20 80 84 00 00 51 43 4F 4D  // CB-01   ....QCOM
    0020: 01 00 00 00 1E 00 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0030: 03 CC 03 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0040: 00 00 00 15 00 00 00 00 00 00 10 00 00 00 00 00  // ................
    0050: 03 00 00 00 00 00 00 00 3C 00 00 00 70 00 00 00  // ........<...p...
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
    0370: 01 00 00 00 D9 02 00 00 01 00 00 00 BA 01 00 00  // ................
    0380: 01 00 00 00 08 02 00 00 01 00 00 00 09 02 00 00  // ................
    0390: 01 00 00 00 0A 02 00 00 01 00 00 00 0B 02 00 00  // ................
    03A0: 01 00 00 00 0C 02 00 00 01 00 00 00 0D 02 00 00  // ................
    03B0: 01 00 00 00 0E 02 00 00 01 00 00 00 0F 02 00 00  // ................
    03C0: 01 00 00 00 10 02 00 00 01 00 00 00 11 02 00 00  // ................
    03D0: 01 00 00 00 12 02 00 00 01 00 00 00 13 02 00 00  // ................
    03E0: 01 00 00 00 14 02 00 00 01 00 00 00 15 02 00 00  // ................
    03F0: 01 00 00 00 16 02 00 00 01 00 00 00 03 14 01 00  // ................
    0400: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 DA 03  // ................
    0410: 00 00 00 00 00 00 04 00 00 00 00 00 03 00 00 00  // ................
    0420: 00 00 00 00 3C 00 00 00 19 00 00 00 4C 00 00 00  // ....<.......L...
    0430: 00 00 00 00 00 00 00 00 C2 02 00 00 00 00 00 00  // ................
    0440: 00 00 00 00 00 00 00 00 C6 02 00 00 01 00 00 00  // ................
    0450: C7 02 00 00 01 00 00 00 C8 02 00 00 01 00 00 00  // ................
    0460: C9 02 00 00 01 00 00 00 CA 02 00 00 01 00 00 00  // ................
    0470: CB 02 00 00 01 00 00 00 CC 02 00 00 01 00 00 00  // ................
    0480: CD 02 00 00 01 00 00 00 CE 02 00 00 01 00 00 00  // ................
    0490: CF 02 00 00 01 00 00 00 D0 02 00 00 01 00 00 00  // ................
    04A0: C6 01 00 00 01 00 00 00 FC 01 00 00 01 00 00 00  // ................
    04B0: 5E 02 00 00 01 00 00 00 5F 02 00 00 01 00 00 00  // ^......._.......
    04C0: 60 02 00 00 01 00 00 00 61 02 00 00 01 00 00 00  // `.......a.......
    04D0: B4 02 00 00 01 00 00 00 B6 02 00 00 01 00 00 00  // ................
    04E0: B9 02 00 00 01 00 00 00 BA 02 00 00 01 00 00 00  // ................
    04F0: BB 02 00 00 01 00 00 00 BD 02 00 00 01 00 00 00  // ................
    0500: BE 02 00 00 01 00 00 00 DC 02 00 00 01 00 00 00  // ................
    0510: 02 38 00 00 00 00 00 00 01 00 00 00 24 00 00 00  // .8..........$...
    0520: 01 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00  // ................
    0530: 28 00 00 00 00 00 00 00 FF FF 00 00 00 00 00 00  // (...............
    0540: 4A 17 00 00 00 00 00 00 02 38 00 00 00 00 00 00  // J........8......
    0550: 01 00 00 00 24 00 00 00 01 00 00 00 00 00 00 01  // ....$...........
    0560: 00 00 00 00 01 00 00 00 28 00 00 00 00 00 00 00  // ........(.......
    0570: FF FF 00 00 00 00 01 00 4A 17 00 00 00 00 00 00  // ........J.......
    0580: 02 38 00 00 00 00 00 00 01 00 00 00 24 00 00 00  // .8..........$...
    0590: 01 00 00 00 00 00 00 01 00 00 00 00 02 00 00 00  // ................
    05A0: 28 00 00 00 00 00 00 00 FF FF 00 00 00 00 02 00  // (...............
    05B0: 4A 17 00 00 00 00 00 00 02 38 00 00 00 00 00 00  // J........8......
    05C0: 01 00 00 00 24 00 00 00 01 00 00 00 00 00 00 01  // ....$...........
    05D0: 00 00 00 00 03 00 00 00 28 00 00 00 00 00 00 00  // ........(.......
    05E0: FF FF 00 00 00 00 03 00 4A 17 00 00 00 00 00 00  // ........J.......
    05F0: 02 38 00 00 00 00 00 00 01 00 00 00 24 00 00 00  // .8..........$...
    0600: 01 00 00 00 00 00 00 01 00 00 00 00 04 00 00 00  // ................
    0610: 28 00 00 00 00 00 00 00 FF FF 00 00 00 00 04 00  // (...............
    0620: 4A 17 00 00 00 00 00 00 02 38 00 00 00 00 00 00  // J........8......
    0630: 01 00 00 00 24 00 00 00 01 00 00 00 00 00 00 01  // ....$...........
    0640: 00 00 00 00 05 00 00 00 28 00 00 00 00 00 00 00  // ........(.......
    0650: FF FF 00 00 00 00 05 00 4A 17 00 00 00 00 00 00  // ........J.......
    0660: 02 38 00 00 00 00 00 00 01 00 00 00 24 00 00 00  // .8..........$...
    0670: 01 00 00 00 00 00 00 01 00 00 00 00 06 00 00 00  // ................
    0680: 28 00 00 00 00 00 00 00 FF FF 00 00 00 00 06 00  // (...............
    0690: 4A 17 00 00 00 00 00 00 02 38 00 00 00 00 00 00  // J........8......
    06A0: 01 00 00 00 24 00 00 00 01 00 00 00 00 00 00 01  // ....$...........
    06B0: 00 00 00 00 07 00 00 00 28 00 00 00 00 00 00 00  // ........(.......
    06C0: FF FF 00 00 00 00 07 00 4A 17 00 00 00 00 00 00  // ........J.......
    06D0: 01 51 00 00 00 00 00 00 01 00 00 00 3D 00 00 00  // .Q..........=...
    06E0: 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53  // ............$\_S
    06F0: 42 2E 53 49 53 50 00 00 00 00 00 00 00 00 00 00  // B.SISP..........
    0700: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03  // ................
    0710: A0 00 00 00 00 00 00 00 00 30 00 00 00 00 00 00  // .........0......
    0720: 00 01 45 02 00 00 00 00 00 1A 00 00 00 3D 00 00  // ..E..........=..
    0730: 00 00 00 00 00 00 00 00 00 00 00 00 00 31 5C 5F  // .............1\_
    0740: 53 42 2E 47 50 55 30 00 00 00 00 00 00 00 00 00  // SB.GPU0.........
    0750: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0760: 0A 03 00 00 00 00 02 00 00 00 FC 03 00 00 00 00  // ................
    0770: 00 00 00 00 03 03 00 00 00 00 00 00 00 00 FC 03  // ................
    0780: 00 00 00 00 00 00 20 00 03 03 00 00 00 00 07 00  // ...... .........
    0790: 00 00 FC 03 00 00 00 00 00 00 40 00 03 03 00 00  // ..........@.....
    07A0: 00 00 04 00 00 00 FC 03 00 00 00 00 00 00 60 00  // ..............`.
    07B0: 03 03 00 00 00 00 05 00 00 00 FC 03 00 00 00 00  // ................
    07C0: 00 00 80 00 03 03 00 00 00 00 01 00 00 00 FC 03  // ................
    07D0: 00 00 00 00 00 00 00 00 0A 00 00 00 00 00 E1 1D  // ................
    07E0: 00 00 30 00 00 00 00 00 00 00 00 00 03 00 00 00  // ..0.............
    07F0: 00 00 E0 1D 00 00 30 00 00 00 00 00 00 00 01 00  // ......0.........
    0800: 03 00 00 00 00 00 E2 1D 00 00 30 00 00 00 00 00  // ..........0.....
    0810: 00 00 00 00 09 0C 00 00 00 00 83 00 00 00 30 00  // ..............0.
    0820: 00 00 00 00 00 00 00 00 03 0C 00 00 00 00 80 00  // ................
    0830: 00 00 30 00 00 00 00 00 00 00 20 00 03 0C 00 00  // ..0....... .....
    0840: 00 00 81 00 00 00 30 00 00 00 00 00 00 00 00 00  // ......0.........
    0850: 09 04 00 00 00 00 46 19 00 00 30 00 00 00 00 00  // ......F...0.....
    0860: 00 00 00 00 0B 04 00 00 00 00 41 19 00 00 30 00  // ..........A...0.
    0870: 00 00 00 00 00 00 01 00 0B 04 00 00 00 00 E1 19  // ................
    0880: 00 00 30 00 00 00 00 00 00 00 00 00 0A 04 00 00  // ..0.............
    0890: 00 00 45 19 00 00 30 00 00 00 00 00 00 00 00 00  // ..E...0.........
    08A0: 03 04 00 00 00 00 40 19 00 00 30 00 00 00 00 00  // ......@...0.....
    08B0: 00 00 01 00 03 04 00 00 00 00 E0 19 00 00 30 00  // ..............0.
    08C0: 00 00 00 00 00 00 20 00 03 04 00 00 00 00 44 19  // ...... .......D.
    08D0: 00 00 30 00 00 00 00 00 00 00 40 00 03 04 00 00  // ..0.......@.....
    08E0: 00 00 43 19 00 00 30 00 00 00 00 00 00 00 60 00  // ..C...0.......`.
    08F0: 03 04 00 00 00 00 48 19 00 00 30 00 00 00 00 00  // ......H...0.....
    0900: 00 00 80 00 03 04 00 00 00 00 47 19 00 00 30 00  // ..........G...0.
    0910: 00 00 00 00 00 00 00 00 09 1B 00 00 00 00 85 18  // ................
    0920: 00 00 30 00 00 00 00 00 00 00 00 00 0B 1B 00 00  // ..0.............
    0930: 00 00 84 18 00 00 30 00 00 00 00 00 00 00 00 00  // ......0.........
    0940: 0A 1B 00 00 00 00 83 18 00 00 30 00 00 00 00 00  // ..........0.....
    0950: 00 00 00 00 03 1B 00 00 00 00 80 18 00 00 30 00  // ..............0.
    0960: 00 00 00 00 00 00 01 51 00 00 00 00 00 00 01 00  // .......Q........
    0970: 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00 00  // ..=.............
    0980: 00 00 24 5C 5F 53 42 2E 4A 50 47 45 00 00 00 00  // ..$\_SB.JPGE....
    0990: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    09A0: 00 00 00 00 00 03 02 00 00 00 00 E0 18 00 00 30  // ...............0
    09B0: 00 00 00 00 00 00 00 01 45 02 00 00 00 00 00 1A  // ........E.......
    09C0: 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00  // ...=............
    09D0: 00 00 00 24 5C 5F 53 42 2E 41 52 50 43 00 00 00  // ...$\_SB.ARPC...
    09E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    09F0: 00 00 00 00 00 00 03 17 00 00 00 00 03 10 00 00  // ................
    0A00: 30 00 00 00 00 00 00 00 01 00 03 17 00 00 00 00  // 0...............
    0A10: 43 10 00 00 30 00 00 00 00 00 00 00 02 00 03 17  // C...0...........
    0A20: 00 00 00 00 63 10 00 00 30 00 00 00 00 00 00 00  // ....c...0.......
    0A30: 03 00 03 17 00 00 00 00 83 10 00 00 30 00 00 00  // ............0...
    0A40: 00 00 00 00 20 00 03 17 00 00 00 00 04 10 00 00  // .... ...........
    0A50: 30 00 00 00 00 00 00 00 21 00 03 17 00 00 00 00  // 0.......!.......
    0A60: 44 10 00 00 30 00 00 00 00 00 00 00 22 00 03 17  // D...0......."...
    0A70: 00 00 00 00 64 10 00 00 30 00 00 00 00 00 00 00  // ....d...0.......
    0A80: 23 00 03 17 00 00 00 00 84 10 00 00 30 00 00 00  // #...........0...
    0A90: 00 00 00 00 40 00 03 17 00 00 00 00 05 10 00 00  // ....@...........
    0AA0: 30 00 00 00 00 00 00 00 41 00 03 17 00 00 00 00  // 0.......A.......
    0AB0: 45 10 00 00 30 00 00 00 00 00 00 00 42 00 03 17  // E...0.......B...
    0AC0: 00 00 00 00 65 10 00 00 30 00 00 00 00 00 00 00  // ....e...0.......
    0AD0: 43 00 03 17 00 00 00 00 85 10 00 00 30 00 00 00  // C...........0...
    0AE0: 00 00 00 00 60 00 03 17 00 00 00 00 06 10 00 00  // ....`...........
    0AF0: 30 00 00 00 00 00 00 00 61 00 03 17 00 00 00 00  // 0.......a.......
    0B00: 46 10 00 00 30 00 00 00 00 00 00 00 62 00 03 17  // F...0.......b...
    0B10: 00 00 00 00 66 10 00 00 30 00 00 00 00 00 00 00  // ....f...0.......
    0B20: 63 00 03 17 00 00 00 00 86 10 00 00 30 00 00 00  // c...........0...
    0B30: 00 00 00 00 80 00 03 17 00 00 00 00 07 10 00 00  // ................
    0B40: 30 00 00 00 00 00 00 00 81 00 03 17 00 00 00 00  // 0...............
    0B50: 47 10 00 00 30 00 00 00 00 00 00 00 82 00 03 17  // G...0...........
    0B60: 00 00 00 00 67 10 00 00 30 00 00 00 00 00 00 00  // ....g...0.......
    0B70: 83 00 03 17 00 00 00 00 87 10 00 00 30 00 00 00  // ............0...
    0B80: 00 00 00 00 A0 00 03 17 00 00 00 00 08 10 00 00  // ................
    0B90: 30 00 00 00 00 00 00 00 A1 00 03 17 00 00 00 00  // 0...............
    0BA0: 48 10 00 00 30 00 00 00 00 00 00 00 A2 00 03 17  // H...0...........
    0BB0: 00 00 00 00 68 10 00 00 30 00 00 00 00 00 00 00  // ....h...0.......
    0BC0: A3 00 03 17 00 00 00 00 88 10 00 00 30 00 00 00  // ............0...
    0BD0: 00 00 00 00 00 00 03 16 00 00 00 00 D6 10 00 00  // ................
    0BE0: 30 00 00 00 00 00 00 00 20 00 03 16 00 00 00 00  // 0....... .......
    0BF0: C3 10 00 00 30 00 00 00 00 00 00 00 01 DD 05 00  // ....0...........
    0C00: 00 00 00 00 48 00 00 00 3D 00 00 00 00 00 00 00  // ....H...=.......
    0C10: 00 00 00 00 00 00 00 00 28 5C 5F 53 42 2E 4E 53  // ........(\_SB.NS
    0C20: 50 4D 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // PM..............
    0C30: 00 00 00 00 00 00 00 00 00 00 00 0A 18 00 00 00  // ................
    0C40: 00 69 19 00 00 30 00 00 00 00 00 00 00 01 00 0A  // .i...0..........
    0C50: 18 00 00 00 00 C9 19 00 00 30 00 00 00 00 00 00  // .........0......
    0C60: 00 02 00 0A 18 00 00 00 00 09 20 00 00 30 00 00  // .......... ..0..
    0C70: 00 00 00 00 00 03 00 0A 18 00 00 00 00 49 20 00  // .............I .
    0C80: 00 30 00 00 00 00 00 00 00 04 00 0A 18 00 00 00  // .0..............
    0C90: 00 09 24 00 00 30 00 00 00 00 00 00 00 05 00 0A  // ..$..0..........
    0CA0: 18 00 00 00 00 49 24 00 00 30 00 00 00 00 00 00  // .....I$..0......
    0CB0: 00 00 00 03 18 00 00 00 00 61 19 00 00 30 00 00  // .........a...0..
    0CC0: 00 00 00 00 00 01 00 03 18 00 00 00 00 C1 19 00  // ................
    0CD0: 00 30 00 00 00 00 00 00 00 02 00 03 18 00 00 00  // .0..............
    0CE0: 00 01 20 00 00 30 00 00 00 00 00 00 00 03 00 03  // .. ..0..........
    0CF0: 18 00 00 00 00 41 20 00 00 30 00 00 00 00 00 00  // .....A ..0......
    0D00: 00 04 00 03 18 00 00 00 00 01 24 00 00 30 00 00  // ..........$..0..
    0D10: 00 00 00 00 00 05 00 03 18 00 00 00 00 41 24 00  // .............A$.
    0D20: 00 30 00 00 00 00 00 00 00 20 00 03 18 00 00 00  // .0....... ......
    0D30: 00 6C 19 00 00 30 00 00 00 00 00 00 00 21 00 03  // .l...0.......!..
    0D40: 18 00 00 00 00 CC 19 00 00 30 00 00 00 00 00 00  // .........0......
    0D50: 00 22 00 03 18 00 00 00 00 0C 20 00 00 30 00 00  // ."........ ..0..
    0D60: 00 00 00 00 00 23 00 03 18 00 00 00 00 4C 20 00  // .....#.......L .
    0D70: 00 30 00 00 00 00 00 00 00 24 00 03 18 00 00 00  // .0.......$......
    0D80: 00 0C 24 00 00 30 00 00 00 00 00 00 00 25 00 03  // ..$..0.......%..
    0D90: 18 00 00 00 00 4C 24 00 00 30 00 00 00 00 00 00  // .....L$..0......
    0DA0: 00 40 00 03 18 00 00 00 00 6D 19 00 00 30 00 00  // .@.......m...0..
    0DB0: 00 00 00 00 00 41 00 03 18 00 00 00 00 CD 19 00  // .....A..........
    0DC0: 00 30 00 00 00 00 00 00 00 42 00 03 18 00 00 00  // .0.......B......
    0DD0: 00 0D 20 00 00 30 00 00 00 00 00 00 00 43 00 03  // .. ..0.......C..
    0DE0: 18 00 00 00 00 4D 20 00 00 30 00 00 00 00 00 00  // .....M ..0......
    0DF0: 00 44 00 03 18 00 00 00 00 0D 24 00 00 30 00 00  // .D........$..0..
    0E00: 00 00 00 00 00 45 00 03 18 00 00 00 00 4D 24 00  // .....E.......M$.
    0E10: 00 30 00 00 00 00 00 00 00 60 00 03 18 00 00 00  // .0.......`......
    0E20: 00 6E 19 00 00 30 00 00 00 00 00 00 00 61 00 03  // .n...0.......a..
    0E30: 18 00 00 00 00 CE 19 00 00 30 00 00 00 00 00 00  // .........0......
    0E40: 00 62 00 03 18 00 00 00 00 0E 20 00 00 30 00 00  // .b........ ..0..
    0E50: 00 00 00 00 00 63 00 03 18 00 00 00 00 4E 20 00  // .....c.......N .
    0E60: 00 30 00 00 00 00 00 00 00 64 00 03 18 00 00 00  // .0.......d......
    0E70: 00 0E 24 00 00 30 00 00 00 00 00 00 00 65 00 03  // ..$..0.......e..
    0E80: 18 00 00 00 00 4E 24 00 00 30 00 00 00 00 00 00  // .....N$..0......
    0E90: 00 80 00 03 18 00 00 00 00 62 19 00 00 30 00 00  // .........b...0..
    0EA0: 00 00 00 00 00 81 00 03 18 00 00 00 00 C2 19 00  // ................
    0EB0: 00 30 00 00 00 00 00 00 00 82 00 03 18 00 00 00  // .0..............
    0EC0: 00 02 20 00 00 30 00 00 00 00 00 00 00 83 00 03  // .. ..0..........
    0ED0: 18 00 00 00 00 42 20 00 00 30 00 00 00 00 00 00  // .....B ..0......
    0EE0: 00 84 00 03 18 00 00 00 00 02 24 00 00 30 00 00  // ..........$..0..
    0EF0: 00 00 00 00 00 85 00 03 18 00 00 00 00 42 24 00  // .............B$.
    0F00: 00 30 00 00 00 00 00 00 00 A0 00 03 18 00 00 00  // .0..............
    0F10: 00 63 19 00 00 30 00 00 00 00 00 00 00 A1 00 03  // .c...0..........
    0F20: 18 00 00 00 00 C3 19 00 00 30 00 00 00 00 00 00  // .........0......
    0F30: 00 A2 00 03 18 00 00 00 00 03 20 00 00 30 00 00  // .......... ..0..
    0F40: 00 00 00 00 00 A3 00 03 18 00 00 00 00 43 20 00  // .............C .
    0F50: 00 30 00 00 00 00 00 00 00 A4 00 03 18 00 00 00  // .0..............
    0F60: 00 03 24 00 00 30 00 00 00 00 00 00 00 A5 00 03  // ..$..0..........
    0F70: 18 00 00 00 00 43 24 00 00 30 00 00 00 00 00 00  // .....C$..0......
    0F80: 00 C0 00 03 18 00 00 00 00 64 19 00 00 30 00 00  // .........d...0..
    0F90: 00 00 00 00 00 C1 00 03 18 00 00 00 00 C4 19 00  // ................
    0FA0: 00 30 00 00 00 00 00 00 00 C2 00 03 18 00 00 00  // .0..............
    0FB0: 00 04 20 00 00 30 00 00 00 00 00 00 00 C3 00 03  // .. ..0..........
    0FC0: 18 00 00 00 00 44 20 00 00 30 00 00 00 00 00 00  // .....D ..0......
    0FD0: 00 C4 00 03 18 00 00 00 00 04 24 00 00 30 00 00  // ..........$..0..
    0FE0: 00 00 00 00 00 C5 00 03 18 00 00 00 00 44 24 00  // .............D$.
    0FF0: 00 30 00 00 00 00 00 00 00 E0 00 03 18 00 00 00  // .0..............
    1000: 00 65 19 00 00 30 00 00 00 00 00 00 00 E1 00 03  // .e...0..........
    1010: 18 00 00 00 00 C5 19 00 00 30 00 00 00 00 00 00  // .........0......
    1020: 00 E2 00 03 18 00 00 00 00 05 20 00 00 30 00 00  // .......... ..0..
    1030: 00 00 00 00 00 E3 00 03 18 00 00 00 00 45 20 00  // .............E .
    1040: 00 30 00 00 00 00 00 00 00 E4 00 03 18 00 00 00  // .0..............
    1050: 00 05 24 00 00 30 00 00 00 00 00 00 00 E5 00 03  // ..$..0..........
    1060: 18 00 00 00 00 45 24 00 00 30 00 00 00 00 00 00  // .....E$..0......
    1070: 00 00 01 03 18 00 00 00 00 66 19 00 00 30 00 00  // .........f...0..
    1080: 00 00 00 00 00 01 01 03 18 00 00 00 00 C6 19 00  // ................
    1090: 00 30 00 00 00 00 00 00 00 02 01 03 18 00 00 00  // .0..............
    10A0: 00 06 20 00 00 30 00 00 00 00 00 00 00 03 01 03  // .. ..0..........
    10B0: 18 00 00 00 00 46 20 00 00 30 00 00 00 00 00 00  // .....F ..0......
    10C0: 00 04 01 03 18 00 00 00 00 06 24 00 00 30 00 00  // ..........$..0..
    10D0: 00 00 00 00 00 05 01 03 18 00 00 00 00 46 24 00  // .............F$.
    10E0: 00 30 00 00 00 00 00 00 00 20 01 03 18 00 00 00  // .0....... ......
    10F0: 00 67 19 00 00 30 00 00 00 00 00 00 00 21 01 03  // .g...0.......!..
    1100: 18 00 00 00 00 C7 19 00 00 30 00 00 00 00 00 00  // .........0......
    1110: 00 22 01 03 18 00 00 00 00 07 20 00 00 30 00 00  // ."........ ..0..
    1120: 00 00 00 00 00 23 01 03 18 00 00 00 00 47 20 00  // .....#.......G .
    1130: 00 30 00 00 00 00 00 00 00 24 01 03 18 00 00 00  // .0.......$......
    1140: 00 07 24 00 00 30 00 00 00 00 00 00 00 25 01 03  // ..$..0.......%..
    1150: 18 00 00 00 00 47 24 00 00 30 00 00 00 00 00 00  // .....G$..0......
    1160: 00 40 01 03 18 00 00 00 00 68 19 00 00 30 00 00  // .@.......h...0..
    1170: 00 00 00 00 00 41 01 03 18 00 00 00 00 C8 19 00  // .....A..........
    1180: 00 30 00 00 00 00 00 00 00 42 01 03 18 00 00 00  // .0.......B......
    1190: 00 08 20 00 00 30 00 00 00 00 00 00 00 43 01 03  // .. ..0.......C..
    11A0: 18 00 00 00 00 48 20 00 00 30 00 00 00 00 00 00  // .....H ..0......
    11B0: 00 44 01 03 18 00 00 00 00 08 24 00 00 30 00 00  // .D........$..0..
    11C0: 00 00 00 00 00 45 01 03 18 00 00 00 00 48 24 00  // .....E.......H$.
    11D0: 00 30 00 00 00 00 00 00 00 01 51 00 00 00 00 00  // .0........Q.....
    11E0: 00 01 00 00 00 3D 00 00 00 00 00 00 00 00 00 00  // .....=..........
    11F0: 00 00 00 00 00 24 5C 5F 53 42 2E 55 53 42 41 00  // .....$\_SB.USBA.
    1200: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1210: 00 00 00 00 00 00 20 00 03 07 00 00 00 00 0B 10  // ...... .........
    1220: 00 00 30 00 00 00 00 00 00 00 01 65 00 00 00 00  // ..0........e....
    1230: 00 00 02 00 00 00 3D 00 00 00 00 00 00 00 00 00  // ......=.........
    1240: 00 00 00 00 00 00 28 5C 5F 53 42 2E 51 44 53 53  // ......(\_SB.QDSS
    1250: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1260: 00 00 00 00 00 00 00 00 00 03 19 00 00 00 00 E0  // ................
    1270: 00 00 00 30 00 00 00 00 00 00 00 01 00 03 19 00  // ...0............
    1280: 00 00 00 00 01 00 00 30 00 00 00 00 00 00 00 01  // .......0........
    1290: 8D 00 00 00 00 00 00 04 00 00 00 3D 00 00 00 00  // ...........=....
    12A0: 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42  // ...........$\_SB
    12B0: 2E 41 44 53 50 2E 41 44 43 4D 00 00 00 00 00 00  // .ADSP.ADCM......
    12C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 07  // ................
    12D0: 00 00 00 00 01 10 00 00 30 00 00 00 00 00 00 00  // ........0.......
    12E0: 01 00 03 07 00 00 00 00 41 10 00 00 30 00 00 00  // ........A...0...
    12F0: 00 00 00 00 02 00 03 07 00 00 00 00 61 10 00 00  // ............a...
    1300: 30 00 00 00 00 00 00 00 03 00 03 07 00 00 00 00  // 0...............
    1310: 81 10 00 00 30 00 00 00 00 00 00 00 01 65 00 00  // ....0........e..
    1320: 00 00 00 00 02 00 00 00 3D 00 00 00 00 00 00 00  // ........=.......
    1330: 00 00 00 00 00 00 00 00 28 5C 5F 53 42 2E 53 44  // ........(\_SB.SD
    1340: 43 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // C2..............
    1350: 00 00 00 00 00 00 00 00 00 00 00 03 86 00 00 00  // ................
    1360: 00 00 0D 00 00 30 00 00 00 00 00 00 00 20 00 03  // .....0....... ..
    1370: 86 00 00 00 00 80 0D 00 00 30 00 00 00 00 00 00  // .........0......
    1380: 00 01 51 00 00 00 00 00 00 01 00 00 00 3D 00 00  // ..Q..........=..
    1390: 00 00 00 00 00 01 00 00 00 00 00 00 01 28 5C 5F  // .............(\_
    13A0: 53 42 2E 55 46 53 30 00 00 00 00 00 00 00 00 00  // SB.UFS0.........
    13B0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    13C0: 03 81 00 00 00 00 60 04 00 00 30 00 00 00 00 00  // ......`...0.....
    13D0: 00 00 01 51 00 00 00 00 00 00 01 00 00 00 3D 00  // ...Q..........=.
    13E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 28 5C  // ..............(\
    13F0: 5F 53 42 2E 55 52 53 30 00 00 00 00 00 00 00 00  // _SB.URS0........
    1400: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1410: 00 03 80 00 00 00 00 20 14 00 00 30 00 00 00 00  // ....... ...0....
    1420: 00 00 00 01 51 00 00 00 00 00 00 01 00 00 00 3D  // ....Q..........=
    1430: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 28  // ...............(
    1440: 5C 5F 53 42 2E 55 52 53 31 00 00 00 00 00 00 00  // \_SB.URS1.......
    1450: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1460: 20 00 03 80 00 00 00 00 60 14 00 00 30 00 00 00  //  .......`...0...
    1470: 00 00 00 00 01 51 00 00 00 00 00 00 01 00 00 00  // .....Q..........
    1480: 3D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // =...............
    1490: 28 5C 5F 53 42 2E 55 52 53 32 00 00 00 00 00 00  // (\_SB.URS2......
    14A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    14B0: 00 40 00 03 80 00 00 00 00 20 04 00 00 30 00 00  // .@....... ...0..
    14C0: 00 00 00 00 00 01 51 00 00 00 00 00 00 01 00 00  // ......Q.........
    14D0: 00 3D 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // .=..............
    14E0: 00 28 5C 5F 53 42 2E 55 53 42 33 00 00 00 00 00  // .(\_SB.USB3.....
    14F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1500: 00 00 60 00 03 80 00 00 00 00 A0 0D 00 00 30 00  // ..`...........0.
    1510: 00 00 00 00 00 00 01 51 00 00 00 00 00 00 01 00  // .......Q........
    1520: 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00 00  // ..=.............
    1530: 00 00 28 5C 5F 53 42 2E 55 53 42 34 00 00 00 00  // ..(\_SB.USB4....
    1540: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1550: 00 00 00 E0 00 03 80 00 00 00 00 E0 0C 00 00 30  // ...............0
    1560: 00 00 00 00 00 00 00 01 79 00 00 00 00 00 00 03  // ........y.......
    1570: 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00  // ...=............
    1580: 00 00 00 28 5C 5F 53 42 2E 55 42 46 30 00 00 00  // ...(\_SB.UBF0...
    1590: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    15A0: 00 00 00 00 80 00 03 80 00 00 00 00 40 14 00 00  // ............@...
    15B0: 30 00 00 00 00 00 00 00 A0 00 03 80 00 00 00 00  // 0...............
    15C0: 40 04 00 00 30 00 00 00 00 00 00 00 C0 00 03 80  // @...0...........
    15D0: 00 00 00 00 00 16 00 00 30 00 00 00 00 00 00 00  // ........0.......
    15E0: 01 F1 00 00 00 00 00 00 09 00 00 00 3D 00 00 00  // ............=...
    15F0: 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53  // ............$\_S
    1600: 42 2E 47 50 55 30 2E 41 56 53 30 00 00 00 00 00  // B.GPU0.AVS0.....
    1610: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03  // ................
    1620: 01 00 00 00 00 00 18 00 00 30 00 00 00 00 00 00  // .........0......
    1630: 00 01 00 03 01 00 00 00 00 20 18 00 00 30 00 00  // ......... ...0..
    1640: 00 00 00 00 00 02 00 03 01 00 00 00 00 40 18 00  // .............@..
    1650: 00 30 00 00 00 00 00 00 00 03 00 03 01 00 00 00  // .0..............
    1660: 00 60 18 00 00 30 00 00 00 00 00 00 00 04 00 03  // .`...0..........
    1670: 01 00 00 00 00 00 19 00 00 30 00 00 00 00 00 00  // .........0......
    1680: 00 05 00 03 01 00 00 00 00 80 19 00 00 30 00 00  // .............0..
    1690: 00 00 00 00 00 06 00 03 01 00 00 00 00 A0 19 00  // ................
    16A0: 00 30 00 00 00 00 00 00 00 20 00 03 01 00 00 00  // .0....... ......
    16B0: 00 20 08 00 00 30 00 00 00 00 00 00 00 21 00 03  // . ...0.......!..
    16C0: 01 00 00 00 00 A0 18 00 00 30 00 00 00 00 00 00  // .........0......
    16D0: 00 01 79 00 00 00 00 00 00 03 00 00 00 3D 00 00  // ..y..........=..
    16E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F  // .............$\_
    16F0: 53 42 2E 45 56 41 30 00 00 00 00 00 00 00 00 00  // SB.EVA0.........
    1700: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1710: 0B 1A 00 00 00 00 24 19 00 00 30 00 00 00 00 00  // ......$...0.....
    1720: 00 00 00 00 0A 1A 00 00 00 00 23 19 00 00 30 00  // ..........#...0.
    1730: 00 00 00 00 00 00 00 00 03 1A 00 00 00 00 20 19  // .............. .
    1740: 00 00 30 00 00 00 00 00 00 00 04 58 00 00 00 00  // ..0........X....
    1750: 00 00 01 00 00 00 44 00 00 00 00 00 48 15 00 00  // ......D.....H...
    1760: 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1770: 00 00 00 00 00 00 04 10 00 00 00 00 00 00 00 10  // ................
    1780: 00 00 02 10 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1790: 00 00 FF FF 07 00 00 00 08 00 A2 17 00 00 00 00  // ................
    17A0: 00 00 00 18 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    17B0: 00 00 01 00 00 00 00 00 00 00                    // ..........
