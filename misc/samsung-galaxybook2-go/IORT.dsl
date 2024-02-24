/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembly of ../SSDTTime-master/Results/ACPI/IORT.aml, Sat Feb 24 21:41:09 2024
 *
 * ACPI Data Table [IORT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "IORT"    [IO Remapping Table]
[004h 0004 004h]                Table Length : 0000135A
[008h 0008 001h]                    Revision : 00
[009h 0009 001h]                    Checksum : 29
[00Ah 0010 006h]                      Oem ID : "QCOM  "
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00007280
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 004h]                  Node Count : 00000012
[028h 0040 004h]                 Node Offset : 00000030
[02Ch 0044 004h]                    Reserved : 00000000

[030h 0048 001h]                        Type : 03
[031h 0049 002h]                      Length : 0314
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
[05Ch 0092 004h]     Context Interrupt Count : 00000050
[060h 0096 004h]    Context Interrupt Offset : 0000004C
[064h 0100 004h]         PMU Interrupt Count : 00000009
[068h 0104 004h]        PMU Interrupt Offset : 000002CC

[06Ch 0108 004h]                     NSgIrpt : 00000061
[070h 0112 004h] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[074h 0116 004h]                  NSgCfgIrpt : 00000000
[078h 0120 004h] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[07Ch 0124 008h]           Context Interrupt : 0000000100000080
[084h 0132 008h]           Context Interrupt : 0000000100000081
[08Ch 0140 008h]           Context Interrupt : 0000000100000082
[094h 0148 008h]           Context Interrupt : 0000000100000083
[09Ch 0156 008h]           Context Interrupt : 0000000100000084
[0A4h 0164 008h]           Context Interrupt : 0000000100000085
[0ACh 0172 008h]           Context Interrupt : 0000000100000086
[0B4h 0180 008h]           Context Interrupt : 0000000100000087
[0BCh 0188 008h]           Context Interrupt : 0000000100000088
[0C4h 0196 008h]           Context Interrupt : 0000000100000089
[0CCh 0204 008h]           Context Interrupt : 000000010000008A
[0D4h 0212 008h]           Context Interrupt : 000000010000008B
[0DCh 0220 008h]           Context Interrupt : 000000010000008C
[0E4h 0228 008h]           Context Interrupt : 000000010000008D
[0ECh 0236 008h]           Context Interrupt : 000000010000008E
[0F4h 0244 008h]           Context Interrupt : 000000010000008F
[0FCh 0252 008h]           Context Interrupt : 0000000100000090
[104h 0260 008h]           Context Interrupt : 0000000100000091
[10Ch 0268 008h]           Context Interrupt : 0000000100000092
[114h 0276 008h]           Context Interrupt : 0000000100000093
[11Ch 0284 008h]           Context Interrupt : 0000000100000094
[124h 0292 008h]           Context Interrupt : 0000000100000095
[12Ch 0300 008h]           Context Interrupt : 0000000100000096
[134h 0308 008h]           Context Interrupt : 00000001000000D5
[13Ch 0316 008h]           Context Interrupt : 00000001000000D6
[144h 0324 008h]           Context Interrupt : 00000001000000D7
[14Ch 0332 008h]           Context Interrupt : 00000001000000D8
[154h 0340 008h]           Context Interrupt : 00000001000000D9
[15Ch 0348 008h]           Context Interrupt : 00000001000000DA
[164h 0356 008h]           Context Interrupt : 00000001000000DB
[16Ch 0364 008h]           Context Interrupt : 00000001000000DC
[174h 0372 008h]           Context Interrupt : 00000001000000DD
[17Ch 0380 008h]           Context Interrupt : 00000001000000DE
[184h 0388 008h]           Context Interrupt : 00000001000000DF
[18Ch 0396 008h]           Context Interrupt : 00000001000000E0
[194h 0404 008h]           Context Interrupt : 000000010000015B
[19Ch 0412 008h]           Context Interrupt : 000000010000015C
[1A4h 0420 008h]           Context Interrupt : 000000010000015D
[1ACh 0428 008h]           Context Interrupt : 000000010000015E
[1B4h 0436 008h]           Context Interrupt : 000000010000015F
[1BCh 0444 008h]           Context Interrupt : 0000000100000160
[1C4h 0452 008h]           Context Interrupt : 0000000100000161
[1CCh 0460 008h]           Context Interrupt : 0000000100000162
[1D4h 0468 008h]           Context Interrupt : 0000000100000163
[1DCh 0476 008h]           Context Interrupt : 0000000100000164
[1E4h 0484 008h]           Context Interrupt : 0000000100000165
[1ECh 0492 008h]           Context Interrupt : 0000000100000166
[1F4h 0500 008h]           Context Interrupt : 0000000100000167
[1FCh 0508 008h]           Context Interrupt : 0000000100000168
[204h 0516 008h]           Context Interrupt : 0000000100000169
[20Ch 0524 008h]           Context Interrupt : 000000010000016A
[214h 0532 008h]           Context Interrupt : 000000010000016B
[21Ch 0540 008h]           Context Interrupt : 000000010000016C
[224h 0548 008h]           Context Interrupt : 000000010000016D
[22Ch 0556 008h]           Context Interrupt : 000000010000016E
[234h 0564 008h]           Context Interrupt : 000000010000016F
[23Ch 0572 008h]           Context Interrupt : 0000000100000170
[244h 0580 008h]           Context Interrupt : 0000000100000171
[24Ch 0588 008h]           Context Interrupt : 0000000100000172
[254h 0596 008h]           Context Interrupt : 0000000100000173
[25Ch 0604 008h]           Context Interrupt : 0000000100000174
[264h 0612 008h]           Context Interrupt : 0000000100000175
[26Ch 0620 008h]           Context Interrupt : 0000000100000176
[274h 0628 008h]           Context Interrupt : 0000000100000177
[27Ch 0636 008h]           Context Interrupt : 0000000100000178
[284h 0644 008h]           Context Interrupt : 0000000100000179
[28Ch 0652 008h]           Context Interrupt : 00000001000001AB
[294h 0660 008h]           Context Interrupt : 00000001000001AC
[29Ch 0668 008h]           Context Interrupt : 00000001000001AD
[2A4h 0676 008h]           Context Interrupt : 00000001000001AE
[2ACh 0684 008h]           Context Interrupt : 00000001000001AF
[2B4h 0692 008h]           Context Interrupt : 00000001000001B0
[2BCh 0700 008h]           Context Interrupt : 00000001000001B1
[2C4h 0708 008h]           Context Interrupt : 00000001000001B2
[2CCh 0716 008h]           Context Interrupt : 00000001000001B3
[2D4h 0724 008h]           Context Interrupt : 00000001000001B4
[2DCh 0732 008h]           Context Interrupt : 00000001000001B5
[2E4h 0740 008h]           Context Interrupt : 00000001000001B6
[2ECh 0748 008h]           Context Interrupt : 00000001000001B7
[2F4h 0756 008h]           Context Interrupt : 00000001000001B8
[2FCh 0764 008h]               PMU Interrupt : 0000000100000064
[304h 0772 008h]               PMU Interrupt : 0000000100000065
[30Ch 0780 008h]               PMU Interrupt : 0000000100000066
[314h 0788 008h]               PMU Interrupt : 0000000100000067
[31Ch 0796 008h]               PMU Interrupt : 0000000100000068
[324h 0804 008h]               PMU Interrupt : 0000000100000069
[32Ch 0812 008h]               PMU Interrupt : 000000010000007E
[334h 0820 008h]               PMU Interrupt : 000000010000007F
[33Ch 0828 008h]               PMU Interrupt : 00000001000001CA

[344h 0836 001h]                        Type : 03
[345h 0837 002h]                      Length : 00AC
[347h 0839 001h]                    Revision : 00
[348h 0840 004h]                    Reserved : 00000000
[34Ch 0844 004h]               Mapping Count : 00000000
[350h 0848 004h]              Mapping Offset : 00000000

[354h 0852 008h]                Base Address : 0000000003DA0000
[35Ch 0860 008h]                        Span : 0000000000020000
[364h 0868 004h]                       Model : 00000003
[368h 0872 004h]       Flags (decoded below) : 00000000
                               DVM Supported : 0
                               Coherent Walk : 0
[36Ch 0876 004h]     Global Interrupt Offset : 0000003C
[370h 0880 004h]     Context Interrupt Count : 0000000A
[374h 0884 004h]    Context Interrupt Offset : 0000004C
[378h 0888 004h]         PMU Interrupt Count : 00000002
[37Ch 0892 004h]        PMU Interrupt Offset : 0000009C

[380h 0896 004h]                     NSgIrpt : 000002C1
[384h 0900 004h] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[388h 0904 004h]                  NSgCfgIrpt : 00000000
[38Ch 0908 004h] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[390h 0912 008h]           Context Interrupt : 00000001000002C6
[398h 0920 008h]           Context Interrupt : 00000001000002C7
[3A0h 0928 008h]           Context Interrupt : 00000001000002C8
[3A8h 0936 008h]           Context Interrupt : 00000001000002C9
[3B0h 0944 008h]           Context Interrupt : 00000001000002CA
[3B8h 0952 008h]           Context Interrupt : 00000001000002CB
[3C0h 0960 008h]           Context Interrupt : 00000001000002CC
[3C8h 0968 008h]           Context Interrupt : 00000001000002CD
[3D0h 0976 008h]           Context Interrupt : 00000001000002CE
[3D8h 0984 008h]           Context Interrupt : 00000001000002CF
[3E0h 0992 008h]               PMU Interrupt : 00000001000002C4
[3E8h 1000 008h]               PMU Interrupt : 00000001000002C5

[3F0h 1008 001h]                        Type : 02
[3F1h 1009 002h]                      Length : 0088
[3F3h 1011 001h]                    Revision : 00
[3F4h 1012 004h]                    Reserved : 00000000
[3F8h 1016 004h]               Mapping Count : 00000005
[3FCh 1020 004h]              Mapping Offset : 00000024

[400h 1024 008h]           Memory Properties : [IORT Memory Access Properties]
[400h 1024 004h]             Cache Coherency : 00000001
[404h 1028 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[405h 1029 002h]                    Reserved : 0000
[407h 1031 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[408h 1032 004h]               ATS Attribute : 00000000
[40Ch 1036 004h]          PCI Segment Number : 00000000
[410h 1040 001h]           Memory Size Limit : 24
[411h 1041 002h]          PASID Capabilities : 0000
[413h 1043 001h]                    Reserved : 00

[414h 1044 004h]                  Input base : 87030000
[418h 1048 004h]                    ID Count : 00000003
[41Ch 1052 004h]                 Output Base : 00001C04
[420h 1056 004h]            Output Reference : 00000030
[424h 1060 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[428h 1064 004h]                  Input base : 87030004
[42Ch 1068 004h]                    ID Count : 00000007
[430h 1072 004h]                 Output Base : 00001C08
[434h 1076 004h]            Output Reference : 00000030
[438h 1080 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[43Ch 1084 004h]                  Input base : 8703000C
[440h 1088 004h]                    ID Count : 0000000F
[444h 1092 004h]                 Output Base : 00001C10
[448h 1096 004h]            Output Reference : 00000030
[44Ch 1100 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[450h 1104 004h]                  Input base : 8703001C
[454h 1108 004h]                    ID Count : 0000001F
[458h 1112 004h]                 Output Base : 00001C20
[45Ch 1116 004h]            Output Reference : 00000030
[460h 1120 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[464h 1124 004h]                  Input base : 8703003C
[468h 1128 004h]                    ID Count : 0000003F
[46Ch 1132 004h]                 Output Base : 00001C40
[470h 1136 004h]            Output Reference : 00000030
[474h 1140 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[478h 1144 001h]                        Type : 02
[479h 1145 002h]                      Length : 009C
[47Bh 1147 001h]                    Revision : 00
[47Ch 1148 004h]                    Reserved : 00000000
[480h 1152 004h]               Mapping Count : 00000006
[484h 1156 004h]              Mapping Offset : 00000024

[488h 1160 008h]           Memory Properties : [IORT Memory Access Properties]
[488h 1160 004h]             Cache Coherency : 00000001
[48Ch 1164 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[48Dh 1165 002h]                    Reserved : 0000
[48Fh 1167 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[490h 1168 004h]               ATS Attribute : 00000000
[494h 1172 004h]          PCI Segment Number : 00000001
[498h 1176 001h]           Memory Size Limit : 24
[499h 1177 002h]          PASID Capabilities : 0000
[49Bh 1179 001h]                    Reserved : 00

[49Ch 1180 004h]                  Input base : 87030100
[4A0h 1184 004h]                    ID Count : 00000001
[4A4h 1188 004h]                 Output Base : 00001C80
[4A8h 1192 004h]            Output Reference : 00000030
[4ACh 1196 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[4B0h 1200 004h]                  Input base : 87030102
[4B4h 1204 004h]                    ID Count : 00000003
[4B8h 1208 004h]                 Output Base : 00001C84
[4BCh 1212 004h]            Output Reference : 00000030
[4C0h 1216 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[4C4h 1220 004h]                  Input base : 87030106
[4C8h 1224 004h]                    ID Count : 00000007
[4CCh 1228 004h]                 Output Base : 00001C88
[4D0h 1232 004h]            Output Reference : 00000030
[4D4h 1236 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[4D8h 1240 004h]                  Input base : 87030110
[4DCh 1244 004h]                    ID Count : 0000000F
[4E0h 1248 004h]                 Output Base : 00001C90
[4E4h 1252 004h]            Output Reference : 00000030
[4E8h 1256 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[4ECh 1260 004h]                  Input base : 87030120
[4F0h 1264 004h]                    ID Count : 0000001F
[4F4h 1268 004h]                 Output Base : 00001CA0
[4F8h 1272 004h]            Output Reference : 00000030
[4FCh 1276 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[500h 1280 004h]                  Input base : 87030150
[504h 1284 004h]                    ID Count : 0000003F
[508h 1288 004h]                 Output Base : 00001CC0
[50Ch 1292 004h]            Output Reference : 00000030
[510h 1296 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[514h 1300 001h]                        Type : 01
[515h 1301 002h]                      Length : 035D
[517h 1303 001h]                    Revision : 00
[518h 1304 004h]                    Reserved : 00000000
[51Ch 1308 004h]               Mapping Count : 00000028
[520h 1312 004h]              Mapping Offset : 0000003D

[524h 1316 004h]                  Node Flags : 00000000
[528h 1320 008h]           Memory Properties : [IORT Memory Access Properties]
[528h 1320 004h]             Cache Coherency : 00000000
[52Ch 1324 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[52Dh 1325 002h]                    Reserved : 0000
[52Fh 1327 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[530h 1328 001h]           Memory Size Limit : 30
[531h 1329 00Ah]                 Device Name : "\_SB.GPU0"
[53Bh 1339 016h]                     Padding : 49 4F 52 54 5A 13 00 00 00 29 51 43 4F 4D 20 20 /* IORTZ....)QCOM   */\
/* 54Bh 1355   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[551h 1361 004h]                  Input base : 030A0000
[555h 1365 004h]                    ID Count : 00000000
[559h 1369 004h]                 Output Base : 00000002
[55Dh 1373 004h]            Output Reference : 00000344
[561h 1377 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[565h 1381 004h]                  Input base : 030A0001
[569h 1385 004h]                    ID Count : 00000000
[56Dh 1389 004h]                 Output Base : 00000402
[571h 1393 004h]            Output Reference : 00000344
[575h 1397 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[579h 1401 004h]                  Input base : 03030000
[57Dh 1405 004h]                    ID Count : 00000000
[581h 1409 004h]                 Output Base : 00000000
[585h 1413 004h]            Output Reference : 00000344
[589h 1417 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[58Dh 1421 004h]                  Input base : 03030001
[591h 1425 004h]                    ID Count : 00000000
[595h 1429 004h]                 Output Base : 00000400
[599h 1433 004h]            Output Reference : 00000344
[59Dh 1437 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[5A1h 1441 004h]                  Input base : 03030002
[5A5h 1445 004h]                    ID Count : 00000000
[5A9h 1449 004h]                 Output Base : 00000004
[5ADh 1453 004h]            Output Reference : 00000344
[5B1h 1457 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[5B5h 1461 004h]                  Input base : 03030003
[5B9h 1465 004h]                    ID Count : 00000000
[5BDh 1469 004h]                 Output Base : 00000404
[5C1h 1473 004h]            Output Reference : 00000344
[5C5h 1477 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[5C9h 1481 004h]                  Input base : 03030004
[5CDh 1485 004h]                    ID Count : 00000000
[5D1h 1489 004h]                 Output Base : 00000005
[5D5h 1493 004h]            Output Reference : 00000344
[5D9h 1497 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[5DDh 1501 004h]                  Input base : 03030005
[5E1h 1505 004h]                    ID Count : 00000000
[5E5h 1509 004h]                 Output Base : 00000405
[5E9h 1513 004h]            Output Reference : 00000344
[5EDh 1517 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[5F1h 1521 004h]                  Input base : 03030006
[5F5h 1525 004h]                    ID Count : 00000000
[5F9h 1529 004h]                 Output Base : 00000001
[5FDh 1533 004h]            Output Reference : 00000344
[601h 1537 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[605h 1541 004h]                  Input base : 03030007
[609h 1545 004h]                    ID Count : 00000000
[60Dh 1549 004h]                 Output Base : 00000401
[611h 1553 004h]            Output Reference : 00000344
[615h 1557 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[619h 1561 004h]                  Input base : 00030000
[61Dh 1565 004h]                    ID Count : 00000000
[621h 1569 004h]                 Output Base : 00000900
[625h 1573 004h]            Output Reference : 00000030
[629h 1577 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[62Dh 1581 004h]                  Input base : 00030001
[631h 1585 004h]                    ID Count : 00000000
[635h 1589 004h]                 Output Base : 00000902
[639h 1593 004h]            Output Reference : 00000030
[63Dh 1597 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[641h 1601 004h]                  Input base : 00030002
[645h 1605 004h]                    ID Count : 00000000
[649h 1609 004h]                 Output Base : 00000D00
[64Dh 1613 004h]            Output Reference : 00000030
[651h 1617 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[655h 1621 004h]                  Input base : 00030003
[659h 1625 004h]                    ID Count : 00000000
[65Dh 1629 004h]                 Output Base : 00000D02
[661h 1633 004h]            Output Reference : 00000030
[665h 1637 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[669h 1641 004h]                  Input base : 000A0000
[66Dh 1645 004h]                    ID Count : 00000000
[671h 1649 004h]                 Output Base : 00000901
[675h 1653 004h]            Output Reference : 00000030
[679h 1657 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[67Dh 1661 004h]                  Input base : 000A0001
[681h 1665 004h]                    ID Count : 00000000
[685h 1669 004h]                 Output Base : 00000D01
[689h 1673 004h]            Output Reference : 00000030
[68Dh 1677 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[691h 1681 004h]                  Input base : 06030000
[695h 1685 004h]                    ID Count : 00000000
[699h 1689 004h]                 Output Base : 000029DC
[69Dh 1693 004h]            Output Reference : 00000030
[6A1h 1697 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[6A5h 1701 004h]                  Input base : 06030001
[6A9h 1705 004h]                    ID Count : 00000000
[6ADh 1709 004h]                 Output Base : 00002DDC
[6B1h 1713 004h]            Output Reference : 00000030
[6B5h 1717 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[6B9h 1721 004h]                  Input base : 06030002
[6BDh 1725 004h]                    ID Count : 00000000
[6C1h 1729 004h]                 Output Base : 000029FC
[6C5h 1733 004h]            Output Reference : 00000030
[6C9h 1737 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[6CDh 1741 004h]                  Input base : 06030003
[6D1h 1745 004h]                    ID Count : 00000000
[6D5h 1749 004h]                 Output Base : 00002DFC
[6D9h 1753 004h]            Output Reference : 00000030
[6DDh 1757 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[6E1h 1761 004h]                  Input base : 060A0000
[6E5h 1765 004h]                    ID Count : 00000000
[6E9h 1769 004h]                 Output Base : 000029DD
[6EDh 1773 004h]            Output Reference : 00000030
[6F1h 1777 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[6F5h 1781 004h]                  Input base : 060A0001
[6F9h 1785 004h]                    ID Count : 00000000
[6FDh 1789 004h]                 Output Base : 00002DDD
[701h 1793 004h]            Output Reference : 00000030
[705h 1797 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[709h 1801 004h]                  Input base : 060A0002
[70Dh 1805 004h]                    ID Count : 00000000
[711h 1809 004h]                 Output Base : 000029FD
[715h 1813 004h]            Output Reference : 00000030
[719h 1817 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[71Dh 1821 004h]                  Input base : 060A0003
[721h 1825 004h]                    ID Count : 00000000
[725h 1829 004h]                 Output Base : 00002DFD
[729h 1833 004h]            Output Reference : 00000030
[72Dh 1837 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[731h 1841 004h]                  Input base : 0C030000
[735h 1845 004h]                    ID Count : 00000001
[739h 1849 004h]                 Output Base : 000004E6
[73Dh 1853 004h]            Output Reference : 00000030
[741h 1857 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[745h 1861 004h]                  Input base : 0C030002
[749h 1865 004h]                    ID Count : 00000000
[74Dh 1869 004h]                 Output Base : 000004F2
[751h 1873 004h]            Output Reference : 00000030
[755h 1877 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[759h 1881 004h]                  Input base : 0C030003
[75Dh 1885 004h]                    ID Count : 00000001
[761h 1889 004h]                 Output Base : 000004F6
[765h 1893 004h]            Output Reference : 00000030
[769h 1897 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[76Dh 1901 004h]                  Input base : 0C030005
[771h 1905 004h]                    ID Count : 00000001
[775h 1909 004h]                 Output Base : 000004F8
[779h 1913 004h]            Output Reference : 00000030
[77Dh 1917 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[781h 1921 004h]                  Input base : 0C030007
[785h 1925 004h]                    ID Count : 00000000
[789h 1929 004h]                 Output Base : 000004FF
[78Dh 1933 004h]            Output Reference : 00000030
[791h 1937 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[795h 1941 004h]                  Input base : 0C090000
[799h 1945 004h]                    ID Count : 00000000
[79Dh 1949 004h]                 Output Base : 000004F3
[7A1h 1953 004h]            Output Reference : 00000030
[7A5h 1957 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7A9h 1961 004h]                  Input base : 0C090001
[7ADh 1965 004h]                    ID Count : 00000001
[7B1h 1969 004h]                 Output Base : 000004FC
[7B5h 1973 004h]            Output Reference : 00000030
[7B9h 1977 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7BDh 1981 004h]                  Input base : 0C090003
[7C1h 1985 004h]                    ID Count : 00000000
[7C5h 1989 004h]                 Output Base : 000004FE
[7C9h 1993 004h]            Output Reference : 00000030
[7CDh 1997 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7D1h 2001 004h]                  Input base : 04030000
[7D5h 2005 004h]                    ID Count : 00000000
[7D9h 2009 004h]                 Output Base : 00002180
[7DDh 2013 004h]            Output Reference : 00000030
[7E1h 2017 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7E5h 2021 004h]                  Input base : 04030001
[7E9h 2025 004h]                    ID Count : 00000000
[7EDh 2029 004h]                 Output Base : 000021A0
[7F1h 2033 004h]            Output Reference : 00000030
[7F5h 2037 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7F9h 2041 004h]                  Input base : 04030002
[7FDh 2045 004h]                    ID Count : 00000000
[801h 2049 004h]                 Output Base : 00002187
[805h 2053 004h]            Output Reference : 00000030
[809h 2057 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[80Dh 2061 004h]                  Input base : 04090000
[811h 2065 004h]                    ID Count : 00000000
[815h 2069 004h]                 Output Base : 00002181
[819h 2073 004h]            Output Reference : 00000030
[81Dh 2077 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[821h 2081 004h]                  Input base : 04090001
[825h 2085 004h]                    ID Count : 00000000
[829h 2089 004h]                 Output Base : 00002185
[82Dh 2093 004h]            Output Reference : 00000030
[831h 2097 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[835h 2101 004h]                  Input base : 040A0000
[839h 2105 004h]                    ID Count : 00000000
[83Dh 2109 004h]                 Output Base : 00002183
[841h 2113 004h]            Output Reference : 00000030
[845h 2117 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[849h 2121 004h]                  Input base : 040B0000
[84Dh 2125 004h]                    ID Count : 00000000
[851h 2129 004h]                 Output Base : 00002184
[855h 2133 004h]            Output Reference : 00000030
[859h 2137 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[85Dh 2141 004h]                  Input base : 040B0001
[861h 2145 004h]                    ID Count : 00000000
[865h 2149 004h]                 Output Base : 000021A4
[869h 2153 004h]            Output Reference : 00000030
[86Dh 2157 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[871h 2161 001h]                        Type : 01
[872h 2162 002h]                      Length : 0065
[874h 2164 001h]                    Revision : 00
[875h 2165 004h]                    Reserved : 00000000
[879h 2169 004h]               Mapping Count : 00000002
[87Dh 2173 004h]              Mapping Offset : 0000003D

[881h 2177 004h]                  Node Flags : 00000000
[885h 2181 008h]           Memory Properties : [IORT Memory Access Properties]
[885h 2181 004h]             Cache Coherency : 00000000
[889h 2185 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[88Ah 2186 002h]                    Reserved : 0000
[88Ch 2188 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[88Dh 2189 001h]           Memory Size Limit : 24
[88Eh 2190 00Ah]                 Device Name : "\_SB.JPGE"
[898h 2200 016h]                     Padding : 49 4F 52 54 5A 13 00 00 00 29 51 43 4F 4D 20 20 /* IORTZ....)QCOM   */\
/* 8A8h 2216   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[8AEh 2222 004h]                  Input base : 02030000
[8B2h 2226 004h]                    ID Count : 00000000
[8B6h 2230 004h]                 Output Base : 000020C0
[8BAh 2234 004h]            Output Reference : 00000030
[8BEh 2238 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8C2h 2242 004h]                  Input base : 02030001
[8C6h 2246 004h]                    ID Count : 00000000
[8CAh 2250 004h]                 Output Base : 000020E0
[8CEh 2254 004h]            Output Reference : 00000030
[8D2h 2258 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8D6h 2262 001h]                        Type : 01
[8D7h 2263 002h]                      Length : 04B1
[8D9h 2265 001h]                    Revision : 00
[8DAh 2266 004h]                    Reserved : 00000000
[8DEh 2270 004h]               Mapping Count : 00000039
[8E2h 2274 004h]              Mapping Offset : 0000003D

[8E6h 2278 004h]                  Node Flags : 00000000
[8EAh 2282 008h]           Memory Properties : [IORT Memory Access Properties]
[8EAh 2282 004h]             Cache Coherency : 00000000
[8EEh 2286 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[8EFh 2287 002h]                    Reserved : 0000
[8F1h 2289 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[8F2h 2290 001h]           Memory Size Limit : 24
[8F3h 2291 00Ah]                 Device Name : "\_SB.ARPC"
[8FDh 2301 016h]                     Padding : 49 4F 52 54 5A 13 00 00 00 29 51 43 4F 4D 20 20 /* IORTZ....)QCOM   */\
/* 90Dh 2317   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[913h 2323 004h]                  Input base : 17030034
[917h 2327 004h]                    ID Count : 00000000
[91Bh 2331 004h]                 Output Base : 00001803
[91Fh 2335 004h]            Output Reference : 00000030
[923h 2339 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[927h 2343 004h]                  Input base : 17030035
[92Bh 2347 004h]                    ID Count : 00000000
[92Fh 2351 004h]                 Output Base : 00001804
[933h 2355 004h]            Output Reference : 00000030
[937h 2359 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[93Bh 2363 004h]                  Input base : 17030036
[93Fh 2367 004h]                    ID Count : 00000000
[943h 2371 004h]                 Output Base : 00001805
[947h 2375 004h]            Output Reference : 00000030
[94Bh 2379 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[94Fh 2383 004h]                  Input base : 17030037
[953h 2387 004h]                    ID Count : 00000000
[957h 2391 004h]                 Output Base : 00001806
[95Bh 2395 004h]            Output Reference : 00000030
[95Fh 2399 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[963h 2403 004h]                  Input base : 17030038
[967h 2407 004h]                    ID Count : 00000000
[96Bh 2411 004h]                 Output Base : 00001807
[96Fh 2415 004h]            Output Reference : 00000030
[973h 2419 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[977h 2423 004h]                  Input base : 17030000
[97Bh 2427 004h]                    ID Count : 00000000
[97Fh 2431 004h]                 Output Base : 00001181
[983h 2435 004h]            Output Reference : 00000030
[987h 2439 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[98Bh 2443 004h]                  Input base : 17030001
[98Fh 2447 004h]                    ID Count : 00000000
[993h 2451 004h]                 Output Base : 000011A1
[997h 2455 004h]            Output Reference : 00000030
[99Bh 2459 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[99Fh 2463 004h]                  Input base : 17030002
[9A3h 2467 004h]                    ID Count : 00000000
[9A7h 2471 004h]                 Output Base : 00001581
[9ABh 2475 004h]            Output Reference : 00000030
[9AFh 2479 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9B3h 2483 004h]                  Input base : 17030003
[9B7h 2487 004h]                    ID Count : 00000000
[9BBh 2491 004h]                 Output Base : 000015A1
[9BFh 2495 004h]            Output Reference : 00000030
[9C3h 2499 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9C7h 2503 004h]                  Input base : 17030004
[9CBh 2507 004h]                    ID Count : 00000000
[9CFh 2511 004h]                 Output Base : 00001182
[9D3h 2515 004h]            Output Reference : 00000030
[9D7h 2519 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9DBh 2523 004h]                  Input base : 17030005
[9DFh 2527 004h]                    ID Count : 00000000
[9E3h 2531 004h]                 Output Base : 000011A2
[9E7h 2535 004h]            Output Reference : 00000030
[9EBh 2539 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9EFh 2543 004h]                  Input base : 17030006
[9F3h 2547 004h]                    ID Count : 00000000
[9F7h 2551 004h]                 Output Base : 00001582
[9FBh 2555 004h]            Output Reference : 00000030
[9FFh 2559 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A03h 2563 004h]                  Input base : 17030007
[A07h 2567 004h]                    ID Count : 00000000
[A0Bh 2571 004h]                 Output Base : 000015A2
[A0Fh 2575 004h]            Output Reference : 00000030
[A13h 2579 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A17h 2583 004h]                  Input base : 17030008
[A1Bh 2587 004h]                    ID Count : 00000000
[A1Fh 2591 004h]                 Output Base : 00001183
[A23h 2595 004h]            Output Reference : 00000030
[A27h 2599 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A2Bh 2603 004h]                  Input base : 17030009
[A2Fh 2607 004h]                    ID Count : 00000000
[A33h 2611 004h]                 Output Base : 000011A3
[A37h 2615 004h]            Output Reference : 00000030
[A3Bh 2619 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A3Fh 2623 004h]                  Input base : 1703000A
[A43h 2627 004h]                    ID Count : 00000000
[A47h 2631 004h]                 Output Base : 00001583
[A4Bh 2635 004h]            Output Reference : 00000030
[A4Fh 2639 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A53h 2643 004h]                  Input base : 1703000B
[A57h 2647 004h]                    ID Count : 00000000
[A5Bh 2651 004h]                 Output Base : 000015A3
[A5Fh 2655 004h]            Output Reference : 00000030
[A63h 2659 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A67h 2663 004h]                  Input base : 1703000C
[A6Bh 2667 004h]                    ID Count : 00000000
[A6Fh 2671 004h]                 Output Base : 00001184
[A73h 2675 004h]            Output Reference : 00000030
[A77h 2679 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A7Bh 2683 004h]                  Input base : 1703000D
[A7Fh 2687 004h]                    ID Count : 00000000
[A83h 2691 004h]                 Output Base : 000011A4
[A87h 2695 004h]            Output Reference : 00000030
[A8Bh 2699 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A8Fh 2703 004h]                  Input base : 1703000E
[A93h 2707 004h]                    ID Count : 00000000
[A97h 2711 004h]                 Output Base : 00001584
[A9Bh 2715 004h]            Output Reference : 00000030
[A9Fh 2719 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AA3h 2723 004h]                  Input base : 1703000F
[AA7h 2727 004h]                    ID Count : 00000000
[AABh 2731 004h]                 Output Base : 000015A4
[AAFh 2735 004h]            Output Reference : 00000030
[AB3h 2739 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AB7h 2743 004h]                  Input base : 17030010
[ABBh 2747 004h]                    ID Count : 00000000
[ABFh 2751 004h]                 Output Base : 00001185
[AC3h 2755 004h]            Output Reference : 00000030
[AC7h 2759 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[ACBh 2763 004h]                  Input base : 17030011
[ACFh 2767 004h]                    ID Count : 00000000
[AD3h 2771 004h]                 Output Base : 000011A5
[AD7h 2775 004h]            Output Reference : 00000030
[ADBh 2779 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[ADFh 2783 004h]                  Input base : 17030012
[AE3h 2787 004h]                    ID Count : 00000000
[AE7h 2791 004h]                 Output Base : 00001585
[AEBh 2795 004h]            Output Reference : 00000030
[AEFh 2799 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AF3h 2803 004h]                  Input base : 17030013
[AF7h 2807 004h]                    ID Count : 00000000
[AFBh 2811 004h]                 Output Base : 000015A5
[AFFh 2815 004h]            Output Reference : 00000030
[B03h 2819 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B07h 2823 004h]                  Input base : 17030014
[B0Bh 2827 004h]                    ID Count : 00000000
[B0Fh 2831 004h]                 Output Base : 00001186
[B13h 2835 004h]            Output Reference : 00000030
[B17h 2839 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B1Bh 2843 004h]                  Input base : 17030015
[B1Fh 2847 004h]                    ID Count : 00000000
[B23h 2851 004h]                 Output Base : 000011A6
[B27h 2855 004h]            Output Reference : 00000030
[B2Bh 2859 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B2Fh 2863 004h]                  Input base : 17030016
[B33h 2867 004h]                    ID Count : 00000000
[B37h 2871 004h]                 Output Base : 00001586
[B3Bh 2875 004h]            Output Reference : 00000030
[B3Fh 2879 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B43h 2883 004h]                  Input base : 17030017
[B47h 2887 004h]                    ID Count : 00000000
[B4Bh 2891 004h]                 Output Base : 000015A6
[B4Fh 2895 004h]            Output Reference : 00000030
[B53h 2899 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B57h 2903 004h]                  Input base : 17030018
[B5Bh 2907 004h]                    ID Count : 00000000
[B5Fh 2911 004h]                 Output Base : 00001187
[B63h 2915 004h]            Output Reference : 00000030
[B67h 2919 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B6Bh 2923 004h]                  Input base : 17030019
[B6Fh 2927 004h]                    ID Count : 00000000
[B73h 2931 004h]                 Output Base : 000011A7
[B77h 2935 004h]            Output Reference : 00000030
[B7Bh 2939 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B7Fh 2943 004h]                  Input base : 1703001A
[B83h 2947 004h]                    ID Count : 00000000
[B87h 2951 004h]                 Output Base : 00001587
[B8Bh 2955 004h]            Output Reference : 00000030
[B8Fh 2959 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B93h 2963 004h]                  Input base : 1703001B
[B97h 2967 004h]                    ID Count : 00000000
[B9Bh 2971 004h]                 Output Base : 000015A7
[B9Fh 2975 004h]            Output Reference : 00000030
[BA3h 2979 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BA7h 2983 004h]                  Input base : 1703001C
[BABh 2987 004h]                    ID Count : 00000000
[BAFh 2991 004h]                 Output Base : 00001188
[BB3h 2995 004h]            Output Reference : 00000030
[BB7h 2999 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BBBh 3003 004h]                  Input base : 1703001D
[BBFh 3007 004h]                    ID Count : 00000000
[BC3h 3011 004h]                 Output Base : 000011A8
[BC7h 3015 004h]            Output Reference : 00000030
[BCBh 3019 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BCFh 3023 004h]                  Input base : 1703001E
[BD3h 3027 004h]                    ID Count : 00000000
[BD7h 3031 004h]                 Output Base : 00001588
[BDBh 3035 004h]            Output Reference : 00000030
[BDFh 3039 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BE3h 3043 004h]                  Input base : 1703001F
[BE7h 3047 004h]                    ID Count : 00000000
[BEBh 3051 004h]                 Output Base : 000015A8
[BEFh 3055 004h]            Output Reference : 00000030
[BF3h 3059 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BF7h 3063 004h]                  Input base : 17030020
[BFBh 3067 004h]                    ID Count : 00000000
[BFFh 3071 004h]                 Output Base : 0000118B
[C03h 3075 004h]            Output Reference : 00000030
[C07h 3079 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C0Bh 3083 004h]                  Input base : 17030021
[C0Fh 3087 004h]                    ID Count : 00000000
[C13h 3091 004h]                 Output Base : 000011AB
[C17h 3095 004h]            Output Reference : 00000030
[C1Bh 3099 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C1Fh 3103 004h]                  Input base : 17030022
[C23h 3107 004h]                    ID Count : 00000000
[C27h 3111 004h]                 Output Base : 0000158B
[C2Bh 3115 004h]            Output Reference : 00000030
[C2Fh 3119 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C33h 3123 004h]                  Input base : 17030023
[C37h 3127 004h]                    ID Count : 00000000
[C3Bh 3131 004h]                 Output Base : 000015AB
[C3Fh 3135 004h]            Output Reference : 00000030
[C43h 3139 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C47h 3143 004h]                  Input base : 17030024
[C4Bh 3147 004h]                    ID Count : 00000000
[C4Fh 3151 004h]                 Output Base : 0000118C
[C53h 3155 004h]            Output Reference : 00000030
[C57h 3159 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C5Bh 3163 004h]                  Input base : 17030025
[C5Fh 3167 004h]                    ID Count : 00000000
[C63h 3171 004h]                 Output Base : 000011AC
[C67h 3175 004h]            Output Reference : 00000030
[C6Bh 3179 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C6Fh 3183 004h]                  Input base : 17030026
[C73h 3187 004h]                    ID Count : 00000000
[C77h 3191 004h]                 Output Base : 0000158C
[C7Bh 3195 004h]            Output Reference : 00000030
[C7Fh 3199 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C83h 3203 004h]                  Input base : 17030027
[C87h 3207 004h]                    ID Count : 00000000
[C8Bh 3211 004h]                 Output Base : 000015AC
[C8Fh 3215 004h]            Output Reference : 00000030
[C93h 3219 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C97h 3223 004h]                  Input base : 17030028
[C9Bh 3227 004h]                    ID Count : 00000000
[C9Fh 3231 004h]                 Output Base : 0000118D
[CA3h 3235 004h]            Output Reference : 00000030
[CA7h 3239 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CABh 3243 004h]                  Input base : 17030029
[CAFh 3247 004h]                    ID Count : 00000000
[CB3h 3251 004h]                 Output Base : 000011AD
[CB7h 3255 004h]            Output Reference : 00000030
[CBBh 3259 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CBFh 3263 004h]                  Input base : 1703002A
[CC3h 3267 004h]                    ID Count : 00000000
[CC7h 3271 004h]                 Output Base : 0000158D
[CCBh 3275 004h]            Output Reference : 00000030
[CCFh 3279 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CD3h 3283 004h]                  Input base : 1703002B
[CD7h 3287 004h]                    ID Count : 00000000
[CDBh 3291 004h]                 Output Base : 000015AD
[CDFh 3295 004h]            Output Reference : 00000030
[CE3h 3299 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CE7h 3303 004h]                  Input base : 1703002C
[CEBh 3307 004h]                    ID Count : 00000000
[CEFh 3311 004h]                 Output Base : 0000118E
[CF3h 3315 004h]            Output Reference : 00000030
[CF7h 3319 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CFBh 3323 004h]                  Input base : 1703002D
[CFFh 3327 004h]                    ID Count : 00000000
[D03h 3331 004h]                 Output Base : 000011AE
[D07h 3335 004h]            Output Reference : 00000030
[D0Bh 3339 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D0Fh 3343 004h]                  Input base : 1703002E
[D13h 3347 004h]                    ID Count : 00000000
[D17h 3351 004h]                 Output Base : 0000158E
[D1Bh 3355 004h]            Output Reference : 00000030
[D1Fh 3359 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D23h 3363 004h]                  Input base : 1703002F
[D27h 3367 004h]                    ID Count : 00000000
[D2Bh 3371 004h]                 Output Base : 000015AE
[D2Fh 3375 004h]            Output Reference : 00000030
[D33h 3379 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D37h 3383 004h]                  Input base : 17030030
[D3Bh 3387 004h]                    ID Count : 00000000
[D3Fh 3391 004h]                 Output Base : 0000118F
[D43h 3395 004h]            Output Reference : 00000030
[D47h 3399 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D4Bh 3403 004h]                  Input base : 17030031
[D4Fh 3407 004h]                    ID Count : 00000000
[D53h 3411 004h]                 Output Base : 000011AF
[D57h 3415 004h]            Output Reference : 00000030
[D5Bh 3419 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D5Fh 3423 004h]                  Input base : 17030032
[D63h 3427 004h]                    ID Count : 00000000
[D67h 3431 004h]                 Output Base : 0000158F
[D6Bh 3435 004h]            Output Reference : 00000030
[D6Fh 3439 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D73h 3443 004h]                  Input base : 17030033
[D77h 3447 004h]                    ID Count : 00000000
[D7Bh 3451 004h]                 Output Base : 000015AF
[D7Fh 3455 004h]            Output Reference : 00000030
[D83h 3459 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D87h 3463 001h]                        Type : 01
[D88h 3464 002h]                      Length : 00A1
[D8Ah 3466 001h]                    Revision : 00
[D8Bh 3467 004h]                    Reserved : 00000000
[D8Fh 3471 004h]               Mapping Count : 00000005
[D93h 3475 004h]              Mapping Offset : 0000003D

[D97h 3479 004h]                  Node Flags : 00000000
[D9Bh 3483 008h]           Memory Properties : [IORT Memory Access Properties]
[D9Bh 3483 004h]             Cache Coherency : 00000000
[D9Fh 3487 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[DA0h 3488 002h]                    Reserved : 0000
[DA2h 3490 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[DA3h 3491 001h]           Memory Size Limit : 24
[DA4h 3492 009h]                 Device Name : "\_SB.IPA"
[DADh 3501 017h]                     Padding : 49 4F 52 54 5A 13 00 00 00 29 51 43 4F 4D 20 20 /* IORTZ....)QCOM   */\
/* DBDh 3517   7 */                            51 43 4F 4D 45 44 4B                            /* QCOMEDK */\

[DC4h 3524 004h]                  Input base : 0B030000
[DC8h 3528 004h]                    ID Count : 00000000
[DCCh 3532 004h]                 Output Base : 00000480
[DD0h 3536 004h]            Output Reference : 00000030
[DD4h 3540 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DD8h 3544 004h]                  Input base : 0B030001
[DDCh 3548 004h]                    ID Count : 00000000
[DE0h 3552 004h]                 Output Base : 00000481
[DE4h 3556 004h]            Output Reference : 00000030
[DE8h 3560 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DECh 3564 004h]                  Input base : 0B030002
[DF0h 3568 004h]                    ID Count : 00000000
[DF4h 3572 004h]                 Output Base : 00000482
[DF8h 3576 004h]            Output Reference : 00000030
[DFCh 3580 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E00h 3584 004h]                  Input base : 0B030003
[E04h 3588 004h]                    ID Count : 00000000
[E08h 3592 004h]                 Output Base : 00000483
[E0Ch 3596 004h]            Output Reference : 00000030
[E10h 3600 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E14h 3604 004h]                  Input base : 0B030004
[E18h 3608 004h]                    ID Count : 00000000
[E1Ch 3612 004h]                 Output Base : 00000484
[E20h 3616 004h]            Output Reference : 00000030
[E24h 3620 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E28h 3624 001h]                        Type : 01
[E29h 3625 002h]                      Length : 0051
[E2Bh 3627 001h]                    Revision : 00
[E2Ch 3628 004h]                    Reserved : 00000000
[E30h 3632 004h]               Mapping Count : 00000001
[E34h 3636 004h]              Mapping Offset : 0000003D

[E38h 3640 004h]                  Node Flags : 00000000
[E3Ch 3644 008h]           Memory Properties : [IORT Memory Access Properties]
[E3Ch 3644 004h]             Cache Coherency : 00000000
[E40h 3648 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[E41h 3649 002h]                    Reserved : 0000
[E43h 3651 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[E44h 3652 001h]           Memory Size Limit : 24
[E45h 3653 00Ah]                 Device Name : "\_SB.USBA"
[E4Fh 3663 016h]                     Padding : 49 4F 52 54 5A 13 00 00 00 29 51 43 4F 4D 20 20 /* IORTZ....)QCOM   */\
/* E5Fh 3679   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[E65h 3685 004h]                  Input base : 07030002
[E69h 3689 004h]                    ID Count : 00000000
[E6Dh 3693 004h]                 Output Base : 0000180F
[E71h 3697 004h]            Output Reference : 00000030
[E75h 3701 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E79h 3705 001h]                        Type : 01
[E7Ah 3706 002h]                      Length : 0065
[E7Ch 3708 001h]                    Revision : 00
[E7Dh 3709 004h]                    Reserved : 00000000
[E81h 3713 004h]               Mapping Count : 00000002
[E85h 3717 004h]              Mapping Offset : 0000003D

[E89h 3721 004h]                  Node Flags : 00000000
[E8Dh 3725 008h]           Memory Properties : [IORT Memory Access Properties]
[E8Dh 3725 004h]             Cache Coherency : 00000000
[E91h 3729 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[E92h 3730 002h]                    Reserved : 0000
[E94h 3732 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[E95h 3733 001h]           Memory Size Limit : 24
[E96h 3734 00Ah]                 Device Name : "\_SB.QDSS"
[EA0h 3744 016h]                     Padding : 49 4F 52 54 5A 13 00 00 00 29 51 43 4F 4D 20 20 /* IORTZ....)QCOM   */\
/* EB0h 3760   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[EB6h 3766 004h]                  Input base : 19030000
[EBAh 3770 004h]                    ID Count : 00000000
[EBEh 3774 004h]                 Output Base : 000004A0
[EC2h 3778 004h]            Output Reference : 00000030
[EC6h 3782 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[ECAh 3786 004h]                  Input base : 19030001
[ECEh 3790 004h]                    ID Count : 00000000
[ED2h 3794 004h]                 Output Base : 000004C0
[ED6h 3798 004h]            Output Reference : 00000030
[EDAh 3802 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[EDEh 3806 001h]                        Type : 01
[EDFh 3807 002h]                      Length : 0051
[EE1h 3809 001h]                    Revision : 00
[EE2h 3810 004h]                    Reserved : 00000000
[EE6h 3814 004h]               Mapping Count : 00000001
[EEAh 3818 004h]              Mapping Offset : 0000003D

[EEEh 3822 004h]                  Node Flags : 00000000
[EF2h 3826 008h]           Memory Properties : [IORT Memory Access Properties]
[EF2h 3826 004h]             Cache Coherency : 00000000
[EF6h 3830 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[EF7h 3831 002h]                    Reserved : 0000
[EF9h 3833 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[EFAh 3834 001h]           Memory Size Limit : 24
[EFBh 3835 00Fh]                 Device Name : "\_SB.ADSP.ADCM"
[F0Ah 3850 011h]                     Padding : 49 4F 52 54 5A 13 00 00 00 29 51 43 4F 4D 20 20 /* IORTZ....)QCOM   */\
/* F1Ah 3866   1 */                            51                                              /* Q */\

[F1Bh 3867 004h]                  Input base : 07030000
[F1Fh 3871 004h]                    ID Count : 00000000
[F23h 3875 004h]                 Output Base : 00001801
[F27h 3879 004h]            Output Reference : 00000030
[F2Bh 3883 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F2Fh 3887 001h]                        Type : 01
[F30h 3888 002h]                      Length : 0051
[F32h 3890 001h]                    Revision : 00
[F33h 3891 004h]                    Reserved : 00000000
[F37h 3895 004h]               Mapping Count : 00000001
[F3Bh 3899 004h]              Mapping Offset : 0000003D

[F3Fh 3903 004h]                  Node Flags : 00000000
[F43h 3907 008h]           Memory Properties : [IORT Memory Access Properties]
[F43h 3907 004h]             Cache Coherency : 00000000
[F47h 3911 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[F48h 3912 002h]                    Reserved : 0000
[F4Ah 3914 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[F4Bh 3915 001h]           Memory Size Limit : 24
[F4Ch 3916 00Ah]                 Device Name : "\_SB.SDC1"
[F56h 3926 016h]                     Padding : 49 4F 52 54 5A 13 00 00 00 29 51 43 4F 4D 20 20 /* IORTZ....)QCOM   */\
/* F66h 3942   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[F6Ch 3948 004h]                  Input base : 88030000
[F70h 3952 004h]                    ID Count : 00000000
[F74h 3956 004h]                 Output Base : 00000C00
[F78h 3960 004h]            Output Reference : 00000030
[F7Ch 3964 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[F80h 3968 001h]                        Type : 01
[F81h 3969 002h]                      Length : 0065
[F83h 3971 001h]                    Revision : 00
[F84h 3972 004h]                    Reserved : 00000000
[F88h 3976 004h]               Mapping Count : 00000002
[F8Ch 3980 004h]              Mapping Offset : 0000003D

[F90h 3984 004h]                  Node Flags : 00000000
[F94h 3988 008h]           Memory Properties : [IORT Memory Access Properties]
[F94h 3988 004h]             Cache Coherency : 00000000
[F98h 3992 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[F99h 3993 002h]                    Reserved : 0000
[F9Bh 3995 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[F9Ch 3996 001h]           Memory Size Limit : 24
[F9Dh 3997 00Ah]                 Device Name : "\_SB.SDC2"
[FA7h 4007 016h]                     Padding : 49 4F 52 54 5A 13 00 00 00 29 51 43 4F 4D 20 20 /* IORTZ....)QCOM   */\
/* FB7h 4023   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[FBDh 4029 004h]                  Input base : 86030000
[FC1h 4033 004h]                    ID Count : 00000000
[FC5h 4037 004h]                 Output Base : 00000100
[FC9h 4041 004h]            Output Reference : 00000030
[FCDh 4045 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[FD1h 4049 004h]                  Input base : 86030001
[FD5h 4053 004h]                    ID Count : 00000000
[FD9h 4057 004h]                 Output Base : 00000060
[FDDh 4061 004h]            Output Reference : 00000030
[FE1h 4065 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[FE5h 4069 001h]                        Type : 01
[FE6h 4070 002h]                      Length : 0051
[FE8h 4072 001h]                    Revision : 00
[FE9h 4073 004h]                    Reserved : 00000000
[FEDh 4077 004h]               Mapping Count : 00000001
[FF1h 4081 004h]              Mapping Offset : 0000003D

[FF5h 4085 004h]                  Node Flags : 00000000
[FF9h 4089 008h]           Memory Properties : [IORT Memory Access Properties]
[FF9h 4089 004h]             Cache Coherency : 00000001
[FFDh 4093 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[FFEh 4094 002h]                    Reserved : 0000
[1000h 4096 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[1001h 4097 001h]           Memory Size Limit : 24
[1002h 4098 00Ah]                 Device Name : "\_SB.UFS0"
[100Ch 4108 016h]                     Padding : 49 4F 52 54 5A 13 00 00 00 29 51 43 4F 4D 20 20 /* IORTZ....)QCOM   */\
/* 101Ch 4124   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[1022h 4130 004h]                  Input base : 81030000
[1026h 4134 004h]                    ID Count : 00000000
[102Ah 4138 004h]                 Output Base : 00000080
[102Eh 4142 004h]            Output Reference : 00000030
[1032h 4146 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1036h 4150 001h]                        Type : 01
[1037h 4151 002h]                      Length : 0051
[1039h 4153 001h]                    Revision : 00
[103Ah 4154 004h]                    Reserved : 00000000
[103Eh 4158 004h]               Mapping Count : 00000001
[1042h 4162 004h]              Mapping Offset : 0000003D

[1046h 4166 004h]                  Node Flags : 00000000
[104Ah 4170 008h]           Memory Properties : [IORT Memory Access Properties]
[104Ah 4170 004h]             Cache Coherency : 00000000
[104Eh 4174 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[104Fh 4175 002h]                    Reserved : 0000
[1051h 4177 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1052h 4178 001h]           Memory Size Limit : 24
[1053h 4179 00Ah]                 Device Name : "\_SB.URS0"
[105Dh 4189 016h]                     Padding : 49 4F 52 54 5A 13 00 00 00 29 51 43 4F 4D 20 20 /* IORTZ....)QCOM   */\
/* 106Dh 4205   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[1073h 4211 004h]                  Input base : 80030000
[1077h 4215 004h]                    ID Count : 00000000
[107Bh 4219 004h]                 Output Base : 000000E0
[107Fh 4223 004h]            Output Reference : 00000030
[1083h 4227 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1087h 4231 001h]                        Type : 01
[1088h 4232 002h]                      Length : 0051
[108Ah 4234 001h]                    Revision : 00
[108Bh 4235 004h]                    Reserved : 00000000
[108Fh 4239 004h]               Mapping Count : 00000001
[1093h 4243 004h]              Mapping Offset : 0000003D

[1097h 4247 004h]                  Node Flags : 00000000
[109Bh 4251 008h]           Memory Properties : [IORT Memory Access Properties]
[109Bh 4251 004h]             Cache Coherency : 00000000
[109Fh 4255 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[10A0h 4256 002h]                    Reserved : 0000
[10A2h 4258 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[10A3h 4259 001h]           Memory Size Limit : 24
[10A4h 4260 00Ah]                 Device Name : "\_SB.URS1"
[10AEh 4270 016h]                     Padding : 49 4F 52 54 5A 13 00 00 00 29 51 43 4F 4D 20 20 /* IORTZ....)QCOM   */\
/* 10BEh 4286   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[10C4h 4292 004h]                  Input base : 80030001
[10C8h 4296 004h]                    ID Count : 00000000
[10CCh 4300 004h]                 Output Base : 000000A0
[10D0h 4304 004h]            Output Reference : 00000030
[10D4h 4308 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[10D8h 4312 001h]                        Type : 01
[10D9h 4313 002h]                      Length : 0231
[10DBh 4315 001h]                    Revision : 00
[10DCh 4316 004h]                    Reserved : 00000000
[10E0h 4320 004h]               Mapping Count : 00000019
[10E4h 4324 004h]              Mapping Offset : 0000003D

[10E8h 4328 004h]                  Node Flags : 00000000
[10ECh 4332 008h]           Memory Properties : [IORT Memory Access Properties]
[10ECh 4332 004h]             Cache Coherency : 00000000
[10F0h 4336 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[10F1h 4337 002h]                    Reserved : 0000
[10F3h 4339 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[10F4h 4340 001h]           Memory Size Limit : 24
[10F5h 4341 00Fh]                 Device Name : "\_SB.GPU0.AVS0"
[1104h 4356 011h]                     Padding : 49 4F 52 54 5A 13 00 00 00 29 51 43 4F 4D 20 20 /* IORTZ....)QCOM   */\
/* 1114h 4372   1 */                            51                                              /* Q */\

[1115h 4373 004h]                  Input base : 01030000
[1119h 4377 004h]                    ID Count : 00000000
[111Dh 4381 004h]                 Output Base : 00002000
[1121h 4385 004h]            Output Reference : 00000030
[1125h 4389 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1129h 4393 004h]                  Input base : 01030001
[112Dh 4397 004h]                    ID Count : 00000000
[1131h 4401 004h]                 Output Base : 00002020
[1135h 4405 004h]            Output Reference : 00000030
[1139h 4409 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[113Dh 4413 004h]                  Input base : 01030002
[1141h 4417 004h]                    ID Count : 00000000
[1145h 4421 004h]                 Output Base : 00002040
[1149h 4425 004h]            Output Reference : 00000030
[114Dh 4429 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1151h 4433 004h]                  Input base : 01030003
[1155h 4437 004h]                    ID Count : 00000000
[1159h 4441 004h]                 Output Base : 00002062
[115Dh 4445 004h]            Output Reference : 00000030
[1161h 4449 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1165h 4453 004h]                  Input base : 01030004
[1169h 4457 004h]                    ID Count : 00000000
[116Dh 4461 004h]                 Output Base : 00000800
[1171h 4465 004h]            Output Reference : 00000030
[1175h 4469 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1179h 4473 004h]                  Input base : 01030005
[117Dh 4477 004h]                    ID Count : 00000000
[1181h 4481 004h]                 Output Base : 00000820
[1185h 4485 004h]            Output Reference : 00000030
[1189h 4489 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[118Dh 4493 004h]                  Input base : 01030006
[1191h 4497 004h]                    ID Count : 00000000
[1195h 4501 004h]                 Output Base : 00000840
[1199h 4505 004h]            Output Reference : 00000030
[119Dh 4509 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11A1h 4513 004h]                  Input base : 01030007
[11A5h 4517 004h]                    ID Count : 00000000
[11A9h 4521 004h]                 Output Base : 00000860
[11ADh 4525 004h]            Output Reference : 00000030
[11B1h 4529 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11B5h 4533 004h]                  Input base : 01030008
[11B9h 4537 004h]                    ID Count : 00000000
[11BDh 4541 004h]                 Output Base : 00000880
[11C1h 4545 004h]            Output Reference : 00000030
[11C5h 4549 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11C9h 4553 004h]                  Input base : 01030009
[11CDh 4557 004h]                    ID Count : 00000000
[11D1h 4561 004h]                 Output Base : 000008A0
[11D5h 4565 004h]            Output Reference : 00000030
[11D9h 4569 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11DDh 4573 004h]                  Input base : 0103000A
[11E1h 4577 004h]                    ID Count : 00000000
[11E5h 4581 004h]                 Output Base : 000008C0
[11E9h 4585 004h]            Output Reference : 00000030
[11EDh 4589 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[11F1h 4593 004h]                  Input base : 0103000B
[11F5h 4597 004h]                    ID Count : 00000000
[11F9h 4601 004h]                 Output Base : 000008E0
[11FDh 4605 004h]            Output Reference : 00000030
[1201h 4609 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1205h 4613 004h]                  Input base : 0103000C
[1209h 4617 004h]                    ID Count : 00000000
[120Dh 4621 004h]                 Output Base : 00000C00
[1211h 4625 004h]            Output Reference : 00000030
[1215h 4629 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1219h 4633 004h]                  Input base : 0103000D
[121Dh 4637 004h]                    ID Count : 00000000
[1221h 4641 004h]                 Output Base : 00000C20
[1225h 4645 004h]            Output Reference : 00000030
[1229h 4649 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[122Dh 4653 004h]                  Input base : 0103000E
[1231h 4657 004h]                    ID Count : 00000000
[1235h 4661 004h]                 Output Base : 00000C40
[1239h 4665 004h]            Output Reference : 00000030
[123Dh 4669 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1241h 4673 004h]                  Input base : 0103000F
[1245h 4677 004h]                    ID Count : 00000000
[1249h 4681 004h]                 Output Base : 00000C60
[124Dh 4685 004h]            Output Reference : 00000030
[1251h 4689 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1255h 4693 004h]                  Input base : 01030010
[1259h 4697 004h]                    ID Count : 00000000
[125Dh 4701 004h]                 Output Base : 00000C80
[1261h 4705 004h]            Output Reference : 00000030
[1265h 4709 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1269h 4713 004h]                  Input base : 01030011
[126Dh 4717 004h]                    ID Count : 00000000
[1271h 4721 004h]                 Output Base : 00000CA0
[1275h 4725 004h]            Output Reference : 00000030
[1279h 4729 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[127Dh 4733 004h]                  Input base : 01030012
[1281h 4737 004h]                    ID Count : 00000000
[1285h 4741 004h]                 Output Base : 00000CC0
[1289h 4745 004h]            Output Reference : 00000030
[128Dh 4749 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1291h 4753 004h]                  Input base : 01030013
[1295h 4757 004h]                    ID Count : 00000000
[1299h 4761 004h]                 Output Base : 00000CE0
[129Dh 4765 004h]            Output Reference : 00000030
[12A1h 4769 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[12A5h 4773 004h]                  Input base : 01030014
[12A9h 4777 004h]                    ID Count : 00000000
[12ADh 4781 004h]                 Output Base : 00002080
[12B1h 4785 004h]            Output Reference : 00000030
[12B5h 4789 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[12B9h 4793 004h]                  Input base : 01030015
[12BDh 4797 004h]                    ID Count : 00000000
[12C1h 4801 004h]                 Output Base : 000020A0
[12C5h 4805 004h]            Output Reference : 00000030
[12C9h 4809 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[12CDh 4813 004h]                  Input base : 01030016
[12D1h 4817 004h]                    ID Count : 00000000
[12D5h 4821 004h]                 Output Base : 00002140
[12D9h 4825 004h]            Output Reference : 00000030
[12DDh 4829 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[12E1h 4833 004h]                  Input base : 01030017
[12E5h 4837 004h]                    ID Count : 00000000
[12E9h 4841 004h]                 Output Base : 00002100
[12EDh 4845 004h]            Output Reference : 00000030
[12F1h 4849 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[12F5h 4853 004h]                  Input base : 01030018
[12F9h 4857 004h]                    ID Count : 00000000
[12FDh 4861 004h]                 Output Base : 00002120
[1301h 4865 004h]            Output Reference : 00000030
[1305h 4869 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[1309h 4873 001h]                        Type : 01
[130Ah 4874 002h]                      Length : 0051
[130Ch 4876 001h]                    Revision : 00
[130Dh 4877 004h]                    Reserved : 00000000
[1311h 4881 004h]               Mapping Count : 00000001
[1315h 4885 004h]              Mapping Offset : 0000003D

[1319h 4889 004h]                  Node Flags : 00000000
[131Dh 4893 008h]           Memory Properties : [IORT Memory Access Properties]
[131Dh 4893 004h]             Cache Coherency : 00000000
[1321h 4897 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1322h 4898 002h]                    Reserved : 0000
[1324h 4900 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1325h 4901 001h]           Memory Size Limit : 24
[1326h 4902 00Fh]                 Device Name : "\_SB.WPSS.QWLN"
[1335h 4917 011h]                     Padding : 49 4F 52 54 5A 13 00 00 00 29 51 43 4F 4D 20 20 /* IORTZ....)QCOM   */\
/* 1345h 4933   1 */                            51                                              /* Q */\

[1346h 4934 004h]                  Input base : 11030000
[134Ah 4938 004h]                    ID Count : 00000001
[134Eh 4942 004h]                 Output Base : 00001C00
[1352h 4946 004h]            Output Reference : 00000030
[1356h 4950 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

Raw Table Data: Length 4954 (0x135A)

    0000: 49 4F 52 54 5A 13 00 00 00 29 51 43 4F 4D 20 20  // IORTZ....)QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 72 00 00 51 43 4F 4D  // QCOMEDK2.r..QCOM
    0020: 01 00 00 00 12 00 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0030: 03 14 03 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0040: 00 00 00 15 00 00 00 00 00 00 10 00 00 00 00 00  // ................
    0050: 03 00 00 00 00 00 00 00 3C 00 00 00 50 00 00 00  // ........<...P...
    0060: 4C 00 00 00 09 00 00 00 CC 02 00 00 61 00 00 00  // L...........a...
    0070: 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00  // ................
    0080: 01 00 00 00 81 00 00 00 01 00 00 00 82 00 00 00  // ................
    0090: 01 00 00 00 83 00 00 00 01 00 00 00 84 00 00 00  // ................
    00A0: 01 00 00 00 85 00 00 00 01 00 00 00 86 00 00 00  // ................
    00B0: 01 00 00 00 87 00 00 00 01 00 00 00 88 00 00 00  // ................
    00C0: 01 00 00 00 89 00 00 00 01 00 00 00 8A 00 00 00  // ................
    00D0: 01 00 00 00 8B 00 00 00 01 00 00 00 8C 00 00 00  // ................
    00E0: 01 00 00 00 8D 00 00 00 01 00 00 00 8E 00 00 00  // ................
    00F0: 01 00 00 00 8F 00 00 00 01 00 00 00 90 00 00 00  // ................
    0100: 01 00 00 00 91 00 00 00 01 00 00 00 92 00 00 00  // ................
    0110: 01 00 00 00 93 00 00 00 01 00 00 00 94 00 00 00  // ................
    0120: 01 00 00 00 95 00 00 00 01 00 00 00 96 00 00 00  // ................
    0130: 01 00 00 00 D5 00 00 00 01 00 00 00 D6 00 00 00  // ................
    0140: 01 00 00 00 D7 00 00 00 01 00 00 00 D8 00 00 00  // ................
    0150: 01 00 00 00 D9 00 00 00 01 00 00 00 DA 00 00 00  // ................
    0160: 01 00 00 00 DB 00 00 00 01 00 00 00 DC 00 00 00  // ................
    0170: 01 00 00 00 DD 00 00 00 01 00 00 00 DE 00 00 00  // ................
    0180: 01 00 00 00 DF 00 00 00 01 00 00 00 E0 00 00 00  // ................
    0190: 01 00 00 00 5B 01 00 00 01 00 00 00 5C 01 00 00  // ....[.......\...
    01A0: 01 00 00 00 5D 01 00 00 01 00 00 00 5E 01 00 00  // ....].......^...
    01B0: 01 00 00 00 5F 01 00 00 01 00 00 00 60 01 00 00  // ...._.......`...
    01C0: 01 00 00 00 61 01 00 00 01 00 00 00 62 01 00 00  // ....a.......b...
    01D0: 01 00 00 00 63 01 00 00 01 00 00 00 64 01 00 00  // ....c.......d...
    01E0: 01 00 00 00 65 01 00 00 01 00 00 00 66 01 00 00  // ....e.......f...
    01F0: 01 00 00 00 67 01 00 00 01 00 00 00 68 01 00 00  // ....g.......h...
    0200: 01 00 00 00 69 01 00 00 01 00 00 00 6A 01 00 00  // ....i.......j...
    0210: 01 00 00 00 6B 01 00 00 01 00 00 00 6C 01 00 00  // ....k.......l...
    0220: 01 00 00 00 6D 01 00 00 01 00 00 00 6E 01 00 00  // ....m.......n...
    0230: 01 00 00 00 6F 01 00 00 01 00 00 00 70 01 00 00  // ....o.......p...
    0240: 01 00 00 00 71 01 00 00 01 00 00 00 72 01 00 00  // ....q.......r...
    0250: 01 00 00 00 73 01 00 00 01 00 00 00 74 01 00 00  // ....s.......t...
    0260: 01 00 00 00 75 01 00 00 01 00 00 00 76 01 00 00  // ....u.......v...
    0270: 01 00 00 00 77 01 00 00 01 00 00 00 78 01 00 00  // ....w.......x...
    0280: 01 00 00 00 79 01 00 00 01 00 00 00 AB 01 00 00  // ....y...........
    0290: 01 00 00 00 AC 01 00 00 01 00 00 00 AD 01 00 00  // ................
    02A0: 01 00 00 00 AE 01 00 00 01 00 00 00 AF 01 00 00  // ................
    02B0: 01 00 00 00 B0 01 00 00 01 00 00 00 B1 01 00 00  // ................
    02C0: 01 00 00 00 B2 01 00 00 01 00 00 00 B3 01 00 00  // ................
    02D0: 01 00 00 00 B4 01 00 00 01 00 00 00 B5 01 00 00  // ................
    02E0: 01 00 00 00 B6 01 00 00 01 00 00 00 B7 01 00 00  // ................
    02F0: 01 00 00 00 B8 01 00 00 01 00 00 00 64 00 00 00  // ............d...
    0300: 01 00 00 00 65 00 00 00 01 00 00 00 66 00 00 00  // ....e.......f...
    0310: 01 00 00 00 67 00 00 00 01 00 00 00 68 00 00 00  // ....g.......h...
    0320: 01 00 00 00 69 00 00 00 01 00 00 00 7E 00 00 00  // ....i.......~...
    0330: 01 00 00 00 7F 00 00 00 01 00 00 00 CA 01 00 00  // ................
    0340: 01 00 00 00 03 AC 00 00 00 00 00 00 00 00 00 00  // ................
    0350: 00 00 00 00 00 00 DA 03 00 00 00 00 00 00 02 00  // ................
    0360: 00 00 00 00 03 00 00 00 00 00 00 00 3C 00 00 00  // ............<...
    0370: 0A 00 00 00 4C 00 00 00 02 00 00 00 9C 00 00 00  // ....L...........
    0380: C1 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0390: C6 02 00 00 01 00 00 00 C7 02 00 00 01 00 00 00  // ................
    03A0: C8 02 00 00 01 00 00 00 C9 02 00 00 01 00 00 00  // ................
    03B0: CA 02 00 00 01 00 00 00 CB 02 00 00 01 00 00 00  // ................
    03C0: CC 02 00 00 01 00 00 00 CD 02 00 00 01 00 00 00  // ................
    03D0: CE 02 00 00 01 00 00 00 CF 02 00 00 01 00 00 00  // ................
    03E0: C4 02 00 00 01 00 00 00 C5 02 00 00 01 00 00 00  // ................
    03F0: 02 88 00 00 00 00 00 00 05 00 00 00 24 00 00 00  // ............$...
    0400: 01 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00  // ................
    0410: 24 00 00 00 00 00 03 87 03 00 00 00 04 1C 00 00  // $...............
    0420: 30 00 00 00 00 00 00 00 04 00 03 87 07 00 00 00  // 0...............
    0430: 08 1C 00 00 30 00 00 00 00 00 00 00 0C 00 03 87  // ....0...........
    0440: 0F 00 00 00 10 1C 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0450: 1C 00 03 87 1F 00 00 00 20 1C 00 00 30 00 00 00  // ........ ...0...
    0460: 00 00 00 00 3C 00 03 87 3F 00 00 00 40 1C 00 00  // ....<...?...@...
    0470: 30 00 00 00 00 00 00 00 02 9C 00 00 00 00 00 00  // 0...............
    0480: 06 00 00 00 24 00 00 00 01 00 00 00 00 00 00 01  // ....$...........
    0490: 00 00 00 00 01 00 00 00 24 00 00 00 00 01 03 87  // ........$.......
    04A0: 01 00 00 00 80 1C 00 00 30 00 00 00 00 00 00 00  // ........0.......
    04B0: 02 01 03 87 03 00 00 00 84 1C 00 00 30 00 00 00  // ............0...
    04C0: 00 00 00 00 06 01 03 87 07 00 00 00 88 1C 00 00  // ................
    04D0: 30 00 00 00 00 00 00 00 10 01 03 87 0F 00 00 00  // 0...............
    04E0: 90 1C 00 00 30 00 00 00 00 00 00 00 20 01 03 87  // ....0....... ...
    04F0: 1F 00 00 00 A0 1C 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0500: 50 01 03 87 3F 00 00 00 C0 1C 00 00 30 00 00 00  // P...?.......0...
    0510: 00 00 00 00 01 5D 03 00 00 00 00 00 28 00 00 00  // .....]......(...
    0520: 3D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // =...............
    0530: 30 5C 5F 53 42 2E 47 50 55 30 00 00 00 00 00 00  // 0\_SB.GPU0......
    0540: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0550: 00 00 00 0A 03 00 00 00 00 02 00 00 00 44 03 00  // .............D..
    0560: 00 00 00 00 00 01 00 0A 03 00 00 00 00 02 04 00  // ................
    0570: 00 44 03 00 00 00 00 00 00 00 00 03 03 00 00 00  // .D..............
    0580: 00 00 00 00 00 44 03 00 00 00 00 00 00 01 00 03  // .....D..........
    0590: 03 00 00 00 00 00 04 00 00 44 03 00 00 00 00 00  // .........D......
    05A0: 00 02 00 03 03 00 00 00 00 04 00 00 00 44 03 00  // .............D..
    05B0: 00 00 00 00 00 03 00 03 03 00 00 00 00 04 04 00  // ................
    05C0: 00 44 03 00 00 00 00 00 00 04 00 03 03 00 00 00  // .D..............
    05D0: 00 05 00 00 00 44 03 00 00 00 00 00 00 05 00 03  // .....D..........
    05E0: 03 00 00 00 00 05 04 00 00 44 03 00 00 00 00 00  // .........D......
    05F0: 00 06 00 03 03 00 00 00 00 01 00 00 00 44 03 00  // .............D..
    0600: 00 00 00 00 00 07 00 03 03 00 00 00 00 01 04 00  // ................
    0610: 00 44 03 00 00 00 00 00 00 00 00 03 00 00 00 00  // .D..............
    0620: 00 00 09 00 00 30 00 00 00 00 00 00 00 01 00 03  // .....0..........
    0630: 00 00 00 00 00 02 09 00 00 30 00 00 00 00 00 00  // .........0......
    0640: 00 02 00 03 00 00 00 00 00 00 0D 00 00 30 00 00  // .............0..
    0650: 00 00 00 00 00 03 00 03 00 00 00 00 00 02 0D 00  // ................
    0660: 00 30 00 00 00 00 00 00 00 00 00 0A 00 00 00 00  // .0..............
    0670: 00 01 09 00 00 30 00 00 00 00 00 00 00 01 00 0A  // .....0..........
    0680: 00 00 00 00 00 01 0D 00 00 30 00 00 00 00 00 00  // .........0......
    0690: 00 00 00 03 06 00 00 00 00 DC 29 00 00 30 00 00  // ..........)..0..
    06A0: 00 00 00 00 00 01 00 03 06 00 00 00 00 DC 2D 00  // ..............-.
    06B0: 00 30 00 00 00 00 00 00 00 02 00 03 06 00 00 00  // .0..............
    06C0: 00 FC 29 00 00 30 00 00 00 00 00 00 00 03 00 03  // ..)..0..........
    06D0: 06 00 00 00 00 FC 2D 00 00 30 00 00 00 00 00 00  // ......-..0......
    06E0: 00 00 00 0A 06 00 00 00 00 DD 29 00 00 30 00 00  // ..........)..0..
    06F0: 00 00 00 00 00 01 00 0A 06 00 00 00 00 DD 2D 00  // ..............-.
    0700: 00 30 00 00 00 00 00 00 00 02 00 0A 06 00 00 00  // .0..............
    0710: 00 FD 29 00 00 30 00 00 00 00 00 00 00 03 00 0A  // ..)..0..........
    0720: 06 00 00 00 00 FD 2D 00 00 30 00 00 00 00 00 00  // ......-..0......
    0730: 00 00 00 03 0C 01 00 00 00 E6 04 00 00 30 00 00  // .............0..
    0740: 00 00 00 00 00 02 00 03 0C 00 00 00 00 F2 04 00  // ................
    0750: 00 30 00 00 00 00 00 00 00 03 00 03 0C 01 00 00  // .0..............
    0760: 00 F6 04 00 00 30 00 00 00 00 00 00 00 05 00 03  // .....0..........
    0770: 0C 01 00 00 00 F8 04 00 00 30 00 00 00 00 00 00  // .........0......
    0780: 00 07 00 03 0C 00 00 00 00 FF 04 00 00 30 00 00  // .............0..
    0790: 00 00 00 00 00 00 00 09 0C 00 00 00 00 F3 04 00  // ................
    07A0: 00 30 00 00 00 00 00 00 00 01 00 09 0C 01 00 00  // .0..............
    07B0: 00 FC 04 00 00 30 00 00 00 00 00 00 00 03 00 09  // .....0..........
    07C0: 0C 00 00 00 00 FE 04 00 00 30 00 00 00 00 00 00  // .........0......
    07D0: 00 00 00 03 04 00 00 00 00 80 21 00 00 30 00 00  // ..........!..0..
    07E0: 00 00 00 00 00 01 00 03 04 00 00 00 00 A0 21 00  // ..............!.
    07F0: 00 30 00 00 00 00 00 00 00 02 00 03 04 00 00 00  // .0..............
    0800: 00 87 21 00 00 30 00 00 00 00 00 00 00 00 00 09  // ..!..0..........
    0810: 04 00 00 00 00 81 21 00 00 30 00 00 00 00 00 00  // ......!..0......
    0820: 00 01 00 09 04 00 00 00 00 85 21 00 00 30 00 00  // ..........!..0..
    0830: 00 00 00 00 00 00 00 0A 04 00 00 00 00 83 21 00  // ..............!.
    0840: 00 30 00 00 00 00 00 00 00 00 00 0B 04 00 00 00  // .0..............
    0850: 00 84 21 00 00 30 00 00 00 00 00 00 00 01 00 0B  // ..!..0..........
    0860: 04 00 00 00 00 A4 21 00 00 30 00 00 00 00 00 00  // ......!..0......
    0870: 00 01 65 00 00 00 00 00 00 02 00 00 00 3D 00 00  // ..e..........=..
    0880: 00 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F  // .............$\_
    0890: 53 42 2E 4A 50 47 45 00 00 00 00 00 00 00 00 00  // SB.JPGE.........
    08A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    08B0: 03 02 00 00 00 00 C0 20 00 00 30 00 00 00 00 00  // ....... ..0.....
    08C0: 00 00 01 00 03 02 00 00 00 00 E0 20 00 00 30 00  // ........... ..0.
    08D0: 00 00 00 00 00 00 01 B1 04 00 00 00 00 00 39 00  // ..............9.
    08E0: 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00 00  // ..=.............
    08F0: 00 00 24 5C 5F 53 42 2E 41 52 50 43 00 00 00 00  // ..$\_SB.ARPC....
    0900: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0910: 00 00 00 34 00 03 17 00 00 00 00 03 18 00 00 30  // ...4...........0
    0920: 00 00 00 00 00 00 00 35 00 03 17 00 00 00 00 04  // .......5........
    0930: 18 00 00 30 00 00 00 00 00 00 00 36 00 03 17 00  // ...0.......6....
    0940: 00 00 00 05 18 00 00 30 00 00 00 00 00 00 00 37  // .......0.......7
    0950: 00 03 17 00 00 00 00 06 18 00 00 30 00 00 00 00  // ...........0....
    0960: 00 00 00 38 00 03 17 00 00 00 00 07 18 00 00 30  // ...8...........0
    0970: 00 00 00 00 00 00 00 00 00 03 17 00 00 00 00 81  // ................
    0980: 11 00 00 30 00 00 00 00 00 00 00 01 00 03 17 00  // ...0............
    0990: 00 00 00 A1 11 00 00 30 00 00 00 00 00 00 00 02  // .......0........
    09A0: 00 03 17 00 00 00 00 81 15 00 00 30 00 00 00 00  // ...........0....
    09B0: 00 00 00 03 00 03 17 00 00 00 00 A1 15 00 00 30  // ...............0
    09C0: 00 00 00 00 00 00 00 04 00 03 17 00 00 00 00 82  // ................
    09D0: 11 00 00 30 00 00 00 00 00 00 00 05 00 03 17 00  // ...0............
    09E0: 00 00 00 A2 11 00 00 30 00 00 00 00 00 00 00 06  // .......0........
    09F0: 00 03 17 00 00 00 00 82 15 00 00 30 00 00 00 00  // ...........0....
    0A00: 00 00 00 07 00 03 17 00 00 00 00 A2 15 00 00 30  // ...............0
    0A10: 00 00 00 00 00 00 00 08 00 03 17 00 00 00 00 83  // ................
    0A20: 11 00 00 30 00 00 00 00 00 00 00 09 00 03 17 00  // ...0............
    0A30: 00 00 00 A3 11 00 00 30 00 00 00 00 00 00 00 0A  // .......0........
    0A40: 00 03 17 00 00 00 00 83 15 00 00 30 00 00 00 00  // ...........0....
    0A50: 00 00 00 0B 00 03 17 00 00 00 00 A3 15 00 00 30  // ...............0
    0A60: 00 00 00 00 00 00 00 0C 00 03 17 00 00 00 00 84  // ................
    0A70: 11 00 00 30 00 00 00 00 00 00 00 0D 00 03 17 00  // ...0............
    0A80: 00 00 00 A4 11 00 00 30 00 00 00 00 00 00 00 0E  // .......0........
    0A90: 00 03 17 00 00 00 00 84 15 00 00 30 00 00 00 00  // ...........0....
    0AA0: 00 00 00 0F 00 03 17 00 00 00 00 A4 15 00 00 30  // ...............0
    0AB0: 00 00 00 00 00 00 00 10 00 03 17 00 00 00 00 85  // ................
    0AC0: 11 00 00 30 00 00 00 00 00 00 00 11 00 03 17 00  // ...0............
    0AD0: 00 00 00 A5 11 00 00 30 00 00 00 00 00 00 00 12  // .......0........
    0AE0: 00 03 17 00 00 00 00 85 15 00 00 30 00 00 00 00  // ...........0....
    0AF0: 00 00 00 13 00 03 17 00 00 00 00 A5 15 00 00 30  // ...............0
    0B00: 00 00 00 00 00 00 00 14 00 03 17 00 00 00 00 86  // ................
    0B10: 11 00 00 30 00 00 00 00 00 00 00 15 00 03 17 00  // ...0............
    0B20: 00 00 00 A6 11 00 00 30 00 00 00 00 00 00 00 16  // .......0........
    0B30: 00 03 17 00 00 00 00 86 15 00 00 30 00 00 00 00  // ...........0....
    0B40: 00 00 00 17 00 03 17 00 00 00 00 A6 15 00 00 30  // ...............0
    0B50: 00 00 00 00 00 00 00 18 00 03 17 00 00 00 00 87  // ................
    0B60: 11 00 00 30 00 00 00 00 00 00 00 19 00 03 17 00  // ...0............
    0B70: 00 00 00 A7 11 00 00 30 00 00 00 00 00 00 00 1A  // .......0........
    0B80: 00 03 17 00 00 00 00 87 15 00 00 30 00 00 00 00  // ...........0....
    0B90: 00 00 00 1B 00 03 17 00 00 00 00 A7 15 00 00 30  // ...............0
    0BA0: 00 00 00 00 00 00 00 1C 00 03 17 00 00 00 00 88  // ................
    0BB0: 11 00 00 30 00 00 00 00 00 00 00 1D 00 03 17 00  // ...0............
    0BC0: 00 00 00 A8 11 00 00 30 00 00 00 00 00 00 00 1E  // .......0........
    0BD0: 00 03 17 00 00 00 00 88 15 00 00 30 00 00 00 00  // ...........0....
    0BE0: 00 00 00 1F 00 03 17 00 00 00 00 A8 15 00 00 30  // ...............0
    0BF0: 00 00 00 00 00 00 00 20 00 03 17 00 00 00 00 8B  // ....... ........
    0C00: 11 00 00 30 00 00 00 00 00 00 00 21 00 03 17 00  // ...0.......!....
    0C10: 00 00 00 AB 11 00 00 30 00 00 00 00 00 00 00 22  // .......0......."
    0C20: 00 03 17 00 00 00 00 8B 15 00 00 30 00 00 00 00  // ...........0....
    0C30: 00 00 00 23 00 03 17 00 00 00 00 AB 15 00 00 30  // ...#...........0
    0C40: 00 00 00 00 00 00 00 24 00 03 17 00 00 00 00 8C  // .......$........
    0C50: 11 00 00 30 00 00 00 00 00 00 00 25 00 03 17 00  // ...0.......%....
    0C60: 00 00 00 AC 11 00 00 30 00 00 00 00 00 00 00 26  // .......0.......&
    0C70: 00 03 17 00 00 00 00 8C 15 00 00 30 00 00 00 00  // ...........0....
    0C80: 00 00 00 27 00 03 17 00 00 00 00 AC 15 00 00 30  // ...'...........0
    0C90: 00 00 00 00 00 00 00 28 00 03 17 00 00 00 00 8D  // .......(........
    0CA0: 11 00 00 30 00 00 00 00 00 00 00 29 00 03 17 00  // ...0.......)....
    0CB0: 00 00 00 AD 11 00 00 30 00 00 00 00 00 00 00 2A  // .......0.......*
    0CC0: 00 03 17 00 00 00 00 8D 15 00 00 30 00 00 00 00  // ...........0....
    0CD0: 00 00 00 2B 00 03 17 00 00 00 00 AD 15 00 00 30  // ...+...........0
    0CE0: 00 00 00 00 00 00 00 2C 00 03 17 00 00 00 00 8E  // .......,........
    0CF0: 11 00 00 30 00 00 00 00 00 00 00 2D 00 03 17 00  // ...0.......-....
    0D00: 00 00 00 AE 11 00 00 30 00 00 00 00 00 00 00 2E  // .......0........
    0D10: 00 03 17 00 00 00 00 8E 15 00 00 30 00 00 00 00  // ...........0....
    0D20: 00 00 00 2F 00 03 17 00 00 00 00 AE 15 00 00 30  // .../...........0
    0D30: 00 00 00 00 00 00 00 30 00 03 17 00 00 00 00 8F  // .......0........
    0D40: 11 00 00 30 00 00 00 00 00 00 00 31 00 03 17 00  // ...0.......1....
    0D50: 00 00 00 AF 11 00 00 30 00 00 00 00 00 00 00 32  // .......0.......2
    0D60: 00 03 17 00 00 00 00 8F 15 00 00 30 00 00 00 00  // ...........0....
    0D70: 00 00 00 33 00 03 17 00 00 00 00 AF 15 00 00 30  // ...3...........0
    0D80: 00 00 00 00 00 00 00 01 A1 00 00 00 00 00 00 05  // ................
    0D90: 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00  // ...=............
    0DA0: 00 00 00 24 5C 5F 53 42 2E 49 50 41 00 00 00 00  // ...$\_SB.IPA....
    0DB0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0DC0: 00 00 00 00 00 00 03 0B 00 00 00 00 80 04 00 00  // ................
    0DD0: 30 00 00 00 00 00 00 00 01 00 03 0B 00 00 00 00  // 0...............
    0DE0: 81 04 00 00 30 00 00 00 00 00 00 00 02 00 03 0B  // ....0...........
    0DF0: 00 00 00 00 82 04 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0E00: 03 00 03 0B 00 00 00 00 83 04 00 00 30 00 00 00  // ............0...
    0E10: 00 00 00 00 04 00 03 0B 00 00 00 00 84 04 00 00  // ................
    0E20: 30 00 00 00 00 00 00 00 01 51 00 00 00 00 00 00  // 0........Q......
    0E30: 01 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00  // ....=...........
    0E40: 00 00 00 00 24 5C 5F 53 42 2E 55 53 42 41 00 00  // ....$\_SB.USBA..
    0E50: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0E60: 00 00 00 00 00 02 00 03 07 00 00 00 00 0F 18 00  // ................
    0E70: 00 30 00 00 00 00 00 00 00 01 65 00 00 00 00 00  // .0........e.....
    0E80: 00 02 00 00 00 3D 00 00 00 00 00 00 00 00 00 00  // .....=..........
    0E90: 00 00 00 00 00 24 5C 5F 53 42 2E 51 44 53 53 00  // .....$\_SB.QDSS.
    0EA0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0EB0: 00 00 00 00 00 00 00 00 03 19 00 00 00 00 A0 04  // ................
    0EC0: 00 00 30 00 00 00 00 00 00 00 01 00 03 19 00 00  // ..0.............
    0ED0: 00 00 C0 04 00 00 30 00 00 00 00 00 00 00 01 51  // ......0........Q
    0EE0: 00 00 00 00 00 00 01 00 00 00 3D 00 00 00 00 00  // ..........=.....
    0EF0: 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E  // ..........$\_SB.
    0F00: 41 44 53 50 2E 41 44 43 4D 00 00 00 00 00 00 00  // ADSP.ADCM.......
    0F10: 00 00 00 00 00 00 00 00 00 00 00 00 00 03 07 00  // ................
    0F20: 00 00 00 01 18 00 00 30 00 00 00 00 00 00 00 01  // .......0........
    0F30: 51 00 00 00 00 00 00 01 00 00 00 3D 00 00 00 00  // Q..........=....
    0F40: 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42  // ...........$\_SB
    0F50: 2E 53 44 43 31 00 00 00 00 00 00 00 00 00 00 00  // .SDC1...........
    0F60: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 88  // ................
    0F70: 00 00 00 00 00 0C 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0F80: 01 65 00 00 00 00 00 00 02 00 00 00 3D 00 00 00  // .e..........=...
    0F90: 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53  // ............$\_S
    0FA0: 42 2E 53 44 43 32 00 00 00 00 00 00 00 00 00 00  // B.SDC2..........
    0FB0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03  // ................
    0FC0: 86 00 00 00 00 00 01 00 00 30 00 00 00 00 00 00  // .........0......
    0FD0: 00 01 00 03 86 00 00 00 00 60 00 00 00 30 00 00  // .........`...0..
    0FE0: 00 00 00 00 00 01 51 00 00 00 00 00 00 01 00 00  // ......Q.........
    0FF0: 00 3D 00 00 00 00 00 00 00 01 00 00 00 00 00 00  // .=..............
    1000: 01 24 5C 5F 53 42 2E 55 46 53 30 00 00 00 00 00  // .$\_SB.UFS0.....
    1010: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1020: 00 00 00 00 03 81 00 00 00 00 80 00 00 00 30 00  // ..............0.
    1030: 00 00 00 00 00 00 01 51 00 00 00 00 00 00 01 00  // .......Q........
    1040: 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00 00  // ..=.............
    1050: 00 00 24 5C 5F 53 42 2E 55 52 53 30 00 00 00 00  // ..$\_SB.URS0....
    1060: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1070: 00 00 00 00 00 03 80 00 00 00 00 E0 00 00 00 30  // ...............0
    1080: 00 00 00 00 00 00 00 01 51 00 00 00 00 00 00 01  // ........Q.......
    1090: 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00  // ...=............
    10A0: 00 00 00 24 5C 5F 53 42 2E 55 52 53 31 00 00 00  // ...$\_SB.URS1...
    10B0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    10C0: 00 00 00 00 01 00 03 80 00 00 00 00 A0 00 00 00  // ................
    10D0: 30 00 00 00 00 00 00 00 01 31 02 00 00 00 00 00  // 0........1......
    10E0: 19 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00  // ....=...........
    10F0: 00 00 00 00 24 5C 5F 53 42 2E 47 50 55 30 2E 41  // ....$\_SB.GPU0.A
    1100: 56 53 30 00 00 00 00 00 00 00 00 00 00 00 00 00  // VS0.............
    1110: 00 00 00 00 00 00 00 03 01 00 00 00 00 00 20 00  // .............. .
    1120: 00 30 00 00 00 00 00 00 00 01 00 03 01 00 00 00  // .0..............
    1130: 00 20 20 00 00 30 00 00 00 00 00 00 00 02 00 03  // .  ..0..........
    1140: 01 00 00 00 00 40 20 00 00 30 00 00 00 00 00 00  // .....@ ..0......
    1150: 00 03 00 03 01 00 00 00 00 62 20 00 00 30 00 00  // .........b ..0..
    1160: 00 00 00 00 00 04 00 03 01 00 00 00 00 00 08 00  // ................
    1170: 00 30 00 00 00 00 00 00 00 05 00 03 01 00 00 00  // .0..............
    1180: 00 20 08 00 00 30 00 00 00 00 00 00 00 06 00 03  // . ...0..........
    1190: 01 00 00 00 00 40 08 00 00 30 00 00 00 00 00 00  // .....@...0......
    11A0: 00 07 00 03 01 00 00 00 00 60 08 00 00 30 00 00  // .........`...0..
    11B0: 00 00 00 00 00 08 00 03 01 00 00 00 00 80 08 00  // ................
    11C0: 00 30 00 00 00 00 00 00 00 09 00 03 01 00 00 00  // .0..............
    11D0: 00 A0 08 00 00 30 00 00 00 00 00 00 00 0A 00 03  // .....0..........
    11E0: 01 00 00 00 00 C0 08 00 00 30 00 00 00 00 00 00  // .........0......
    11F0: 00 0B 00 03 01 00 00 00 00 E0 08 00 00 30 00 00  // .............0..
    1200: 00 00 00 00 00 0C 00 03 01 00 00 00 00 00 0C 00  // ................
    1210: 00 30 00 00 00 00 00 00 00 0D 00 03 01 00 00 00  // .0..............
    1220: 00 20 0C 00 00 30 00 00 00 00 00 00 00 0E 00 03  // . ...0..........
    1230: 01 00 00 00 00 40 0C 00 00 30 00 00 00 00 00 00  // .....@...0......
    1240: 00 0F 00 03 01 00 00 00 00 60 0C 00 00 30 00 00  // .........`...0..
    1250: 00 00 00 00 00 10 00 03 01 00 00 00 00 80 0C 00  // ................
    1260: 00 30 00 00 00 00 00 00 00 11 00 03 01 00 00 00  // .0..............
    1270: 00 A0 0C 00 00 30 00 00 00 00 00 00 00 12 00 03  // .....0..........
    1280: 01 00 00 00 00 C0 0C 00 00 30 00 00 00 00 00 00  // .........0......
    1290: 00 13 00 03 01 00 00 00 00 E0 0C 00 00 30 00 00  // .............0..
    12A0: 00 00 00 00 00 14 00 03 01 00 00 00 00 80 20 00  // .............. .
    12B0: 00 30 00 00 00 00 00 00 00 15 00 03 01 00 00 00  // .0..............
    12C0: 00 A0 20 00 00 30 00 00 00 00 00 00 00 16 00 03  // .. ..0..........
    12D0: 01 00 00 00 00 40 21 00 00 30 00 00 00 00 00 00  // .....@!..0......
    12E0: 00 17 00 03 01 00 00 00 00 00 21 00 00 30 00 00  // ..........!..0..
    12F0: 00 00 00 00 00 18 00 03 01 00 00 00 00 20 21 00  // ............. !.
    1300: 00 30 00 00 00 00 00 00 00 01 51 00 00 00 00 00  // .0........Q.....
    1310: 00 01 00 00 00 3D 00 00 00 00 00 00 00 00 00 00  // .....=..........
    1320: 00 00 00 00 00 24 5C 5F 53 42 2E 57 50 53 53 2E  // .....$\_SB.WPSS.
    1330: 51 57 4C 4E 00 00 00 00 00 00 00 00 00 00 00 00  // QWLN............
    1340: 00 00 00 00 00 00 00 00 03 11 01 00 00 00 00 1C  // ................
    1350: 00 00 30 00 00 00 00 00 00 00                    // ..0.......
