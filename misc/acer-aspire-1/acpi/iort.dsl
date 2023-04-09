/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (32-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of iort.dat, Mon Jul  4 07:29:12 2022
 *
 * ACPI Data Table [IORT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000   4]                    Signature : "IORT"    [IO Remapping Table]
[004h 0004   4]                 Table Length : 00000E20
[008h 0008   1]                     Revision : 00
[009h 0009   1]                     Checksum : 22
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00007180
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   4]                   Node Count : 00000012
[028h 0040   4]                  Node Offset : 00000030
[02Ch 0044   4]                     Reserved : 00000000

[030h 0048   1]                         Type : 03
[031h 0049   2]                       Length : 02FC
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
[05Ch 0092   4]      Context Interrupt Count : 00000050
[060h 0096   4]     Context Interrupt Offset : 0000004C
[064h 0100   4]          PMU Interrupt Count : 00000006
[068h 0104   4]         PMU Interrupt Offset : 000002CC

[06Ch 0108   4]                      NSgIrpt : 00000061
[070h 0112   4] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[074h 0116   4]                   NSgCfgIrpt : 00000000
[078h 0120   4] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[07Ch 0124   8]            Context Interrupt : 000000010000007E
[084h 0132   8]            Context Interrupt : 000000010000007F
[08Ch 0140   8]            Context Interrupt : 0000000100000080
[094h 0148   8]            Context Interrupt : 0000000100000081
[09Ch 0156   8]            Context Interrupt : 0000000100000082
[0A4h 0164   8]            Context Interrupt : 0000000100000083
[0ACh 0172   8]            Context Interrupt : 0000000100000084
[0B4h 0180   8]            Context Interrupt : 0000000100000085
[0BCh 0188   8]            Context Interrupt : 0000000100000086
[0C4h 0196   8]            Context Interrupt : 0000000100000087
[0CCh 0204   8]            Context Interrupt : 0000000100000088
[0D4h 0212   8]            Context Interrupt : 0000000100000089
[0DCh 0220   8]            Context Interrupt : 000000010000008A
[0E4h 0228   8]            Context Interrupt : 000000010000008B
[0ECh 0236   8]            Context Interrupt : 000000010000008C
[0F4h 0244   8]            Context Interrupt : 000000010000008D
[0FCh 0252   8]            Context Interrupt : 000000010000008E
[104h 0260   8]            Context Interrupt : 000000010000008F
[10Ch 0268   8]            Context Interrupt : 0000000100000090
[114h 0276   8]            Context Interrupt : 0000000100000091
[11Ch 0284   8]            Context Interrupt : 0000000100000092
[124h 0292   8]            Context Interrupt : 0000000100000093
[12Ch 0300   8]            Context Interrupt : 0000000100000094
[134h 0308   8]            Context Interrupt : 0000000100000095
[13Ch 0316   8]            Context Interrupt : 0000000100000096
[144h 0324   8]            Context Interrupt : 00000001000000D5
[14Ch 0332   8]            Context Interrupt : 00000001000000D6
[154h 0340   8]            Context Interrupt : 00000001000000D7
[15Ch 0348   8]            Context Interrupt : 00000001000000D8
[164h 0356   8]            Context Interrupt : 00000001000000D9
[16Ch 0364   8]            Context Interrupt : 00000001000000DA
[174h 0372   8]            Context Interrupt : 00000001000000DB
[17Ch 0380   8]            Context Interrupt : 00000001000000DC
[184h 0388   8]            Context Interrupt : 00000001000000DD
[18Ch 0396   8]            Context Interrupt : 00000001000000DE
[194h 0404   8]            Context Interrupt : 00000001000000DF
[19Ch 0412   8]            Context Interrupt : 00000001000000E0
[1A4h 0420   8]            Context Interrupt : 000000010000015B
[1ACh 0428   8]            Context Interrupt : 000000010000015C
[1B4h 0436   8]            Context Interrupt : 000000010000015D
[1BCh 0444   8]            Context Interrupt : 000000010000015E
[1C4h 0452   8]            Context Interrupt : 000000010000015F
[1CCh 0460   8]            Context Interrupt : 0000000100000160
[1D4h 0468   8]            Context Interrupt : 0000000100000161
[1DCh 0476   8]            Context Interrupt : 0000000100000162
[1E4h 0484   8]            Context Interrupt : 0000000100000163
[1ECh 0492   8]            Context Interrupt : 0000000100000164
[1F4h 0500   8]            Context Interrupt : 0000000100000165
[1FCh 0508   8]            Context Interrupt : 0000000100000166
[204h 0516   8]            Context Interrupt : 0000000100000167
[20Ch 0524   8]            Context Interrupt : 0000000100000168
[214h 0532   8]            Context Interrupt : 0000000100000169
[21Ch 0540   8]            Context Interrupt : 000000010000016A
[224h 0548   8]            Context Interrupt : 000000010000016B
[22Ch 0556   8]            Context Interrupt : 000000010000016C
[234h 0564   8]            Context Interrupt : 000000010000016D
[23Ch 0572   8]            Context Interrupt : 000000010000016E
[244h 0580   8]            Context Interrupt : 000000010000016F
[24Ch 0588   8]            Context Interrupt : 0000000100000170
[254h 0596   8]            Context Interrupt : 0000000100000171
[25Ch 0604   8]            Context Interrupt : 0000000100000172
[264h 0612   8]            Context Interrupt : 0000000100000173
[26Ch 0620   8]            Context Interrupt : 0000000100000174
[274h 0628   8]            Context Interrupt : 0000000100000175
[27Ch 0636   8]            Context Interrupt : 0000000100000176
[284h 0644   8]            Context Interrupt : 0000000100000177
[28Ch 0652   8]            Context Interrupt : 0000000100000178
[294h 0660   8]            Context Interrupt : 0000000100000179
[29Ch 0668   8]            Context Interrupt : 00000001000001B1
[2A4h 0676   8]            Context Interrupt : 00000001000001B2
[2ACh 0684   8]            Context Interrupt : 00000001000001B3
[2B4h 0692   8]            Context Interrupt : 00000001000001B4
[2BCh 0700   8]            Context Interrupt : 00000001000001B5
[2C4h 0708   8]            Context Interrupt : 00000001000001B6
[2CCh 0716   8]            Context Interrupt : 00000001000001B7
[2D4h 0724   8]            Context Interrupt : 00000001000001B8
[2DCh 0732   8]            Context Interrupt : 00000001000001B9
[2E4h 0740   8]            Context Interrupt : 00000001000001BA
[2ECh 0748   8]            Context Interrupt : 00000001000001BB
[2F4h 0756   8]            Context Interrupt : 00000001000001BC
[2FCh 0764   8]                PMU Interrupt : 0000000100000064
[304h 0772   8]                PMU Interrupt : 0000000100000065
[30Ch 0780   8]                PMU Interrupt : 0000000100000066
[314h 0788   8]                PMU Interrupt : 0000000100000067
[31Ch 0796   8]                PMU Interrupt : 0000000100000068
[324h 0804   8]                PMU Interrupt : 0000000100000069

[32Ch 0812   1]                         Type : 03
[32Dh 0813   2]                       Length : 0094
[32Fh 0815   1]                     Revision : 00
[330h 0816   4]                     Reserved : 00000000
[334h 0820   4]                Mapping Count : 00000000
[338h 0824   4]               Mapping Offset : 00000000

[33Ch 0828   8]                 Base Address : 0000000005040000
[344h 0836   8]                         Span : 0000000000010000
[34Ch 0844   4]                        Model : 00000001
[350h 0848   4]        Flags (decoded below) : 00000000
                               DVM Supported : 0
                               Coherent Walk : 0
[354h 0852   4]      Global Interrupt Offset : 0000003C
[358h 0856   4]      Context Interrupt Count : 00000008
[35Ch 0860   4]     Context Interrupt Offset : 0000004C
[360h 0864   4]          PMU Interrupt Count : 00000001
[364h 0868   4]         PMU Interrupt Offset : 0000008C

[368h 0872   4]                      NSgIrpt : 00000107
[36Ch 0876   4] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[370h 0880   4]                   NSgCfgIrpt : 00000105
[374h 0884   4] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[378h 0888   8]            Context Interrupt : 000000010000018C
[380h 0896   8]            Context Interrupt : 000000010000018D
[388h 0904   8]            Context Interrupt : 000000010000018E
[390h 0912   8]            Context Interrupt : 000000010000018F
[398h 0920   8]            Context Interrupt : 0000000100000190
[3A0h 0928   8]            Context Interrupt : 0000000100000191
[3A8h 0936   8]            Context Interrupt : 0000000100000192
[3B0h 0944   8]            Context Interrupt : 0000000100000193
[3B8h 0952   8]                PMU Interrupt : 00000001000000E1

[3C0h 0960   1]                         Type : 01
[3C1h 0961   2]                       Length : 0259
[3C3h 0963   1]                     Revision : 00
[3C4h 0964   4]                     Reserved : 00000000
[3C8h 0968   4]                Mapping Count : 0000001B
[3CCh 0972   4]               Mapping Offset : 0000003D

[3D0h 0976   4]                   Node Flags : 00000000
[3D4h 0980   8]            Memory Properties : [IORT Memory Access Properties]
[3D4h 0980   4]              Cache Coherency : 00000000
[3D8h 0984   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[3D9h 0985   2]                     Reserved : 0000
[3DBh 0987   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[3DCh 0988   1]            Memory Size Limit : 28
[3DDh 0989  10]                  Device Name : "\_SB.GPU0"
[3E7h 0999  22]                      Padding : 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20 /* IORT ...."QCOM   */\
/* 3F7h 1015   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[3FDh 1021   4]                   Input base : 030A0000
[401h 1025   4]                     ID Count : 00000000
[405h 1029   4]                  Output Base : 00000002
[409h 1033   4]             Output Reference : 0000032C
[40Dh 1037   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[411h 1041   4]                   Input base : 03030000
[415h 1045   4]                     ID Count : 00000001
[419h 1049   4]                  Output Base : 00000000
[41Dh 1053   4]             Output Reference : 0000032C
[421h 1057   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[425h 1061   4]                   Input base : 03030002
[429h 1065   4]                     ID Count : 00000000
[42Dh 1069   4]                  Output Base : 00000004
[431h 1073   4]             Output Reference : 0000032C
[435h 1077   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[439h 1081   4]                   Input base : 03030003
[43Dh 1085   4]                     ID Count : 00000000
[441h 1089   4]                  Output Base : 00000005
[445h 1093   4]             Output Reference : 0000032C
[449h 1097   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[44Dh 1101   4]                   Input base : 00030000
[451h 1105   4]                     ID Count : 00000000
[455h 1109   4]                  Output Base : 00000800
[459h 1113   4]             Output Reference : 00000030
[45Dh 1117   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[461h 1121   4]                   Input base : 00030001
[465h 1125   4]                     ID Count : 00000000
[469h 1129   4]                  Output Base : 00000802
[46Dh 1133   4]             Output Reference : 00000030
[471h 1137   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[475h 1141   4]                   Input base : 000A0000
[479h 1145   4]                     ID Count : 00000000
[47Dh 1149   4]                  Output Base : 00000801
[481h 1153   4]             Output Reference : 00000030
[485h 1157   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[489h 1161   4]                   Input base : 06030000
[48Dh 1165   4]                     ID Count : 00000000
[491h 1169   4]                  Output Base : 00000C1C
[495h 1173   4]             Output Reference : 00000030
[499h 1177   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[49Dh 1181   4]                   Input base : 060A0000
[4A1h 1185   4]                     ID Count : 00000000
[4A5h 1189   4]                  Output Base : 00000C1D
[4A9h 1193   4]             Output Reference : 00000030
[4ADh 1197   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[4B1h 1201   4]                   Input base : 0C030000
[4B5h 1205   4]                     ID Count : 00000001
[4B9h 1209   4]                  Output Base : 00000434
[4BDh 1213   4]             Output Reference : 00000030
[4C1h 1217   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[4C5h 1221   4]                   Input base : 0C030002
[4C9h 1225   4]                     ID Count : 00000001
[4CDh 1229   4]                  Output Base : 00000424
[4D1h 1233   4]             Output Reference : 00000030
[4D5h 1237   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[4D9h 1241   4]                   Input base : 0C030004
[4DDh 1245   4]                     ID Count : 00000000
[4E1h 1249   4]                  Output Base : 0000043F
[4E5h 1253   4]             Output Reference : 00000030
[4E9h 1257   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[4EDh 1261   4]                   Input base : 0C030005
[4F1h 1265   4]                     ID Count : 00000000
[4F5h 1269   4]                  Output Base : 00000432
[4F9h 1273   4]             Output Reference : 00000030
[4FDh 1277   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[501h 1281   4]                   Input base : 0C030006
[505h 1285   4]                     ID Count : 00000001
[509h 1289   4]                  Output Base : 00000436
[50Dh 1293   4]             Output Reference : 00000030
[511h 1297   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[515h 1301   4]                   Input base : 0C030008
[519h 1305   4]                     ID Count : 00000001
[51Dh 1309   4]                  Output Base : 00000438
[521h 1313   4]             Output Reference : 00000030
[525h 1317   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[529h 1321   4]                   Input base : 0C03000A
[52Dh 1325   4]                     ID Count : 00000001
[531h 1329   4]                  Output Base : 00000426
[535h 1333   4]             Output Reference : 00000030
[539h 1337   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[53Dh 1341   4]                   Input base : 0C090000
[541h 1345   4]                     ID Count : 00000000
[545h 1349   4]                  Output Base : 0000043C
[549h 1353   4]             Output Reference : 00000030
[54Dh 1357   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[551h 1361   4]                   Input base : 0C090001
[555h 1365   4]                     ID Count : 00000000
[559h 1369   4]                  Output Base : 0000043D
[55Dh 1373   4]             Output Reference : 00000030
[561h 1377   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[565h 1381   4]                   Input base : 0C090002
[569h 1385   4]                     ID Count : 00000000
[56Dh 1389   4]                  Output Base : 0000043E
[571h 1393   4]             Output Reference : 00000030
[575h 1397   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[579h 1401   4]                   Input base : 0C090003
[57Dh 1405   4]                     ID Count : 00000000
[581h 1409   4]                  Output Base : 00000433
[585h 1413   4]             Output Reference : 00000030
[589h 1417   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[58Dh 1421   4]                   Input base : 04030000
[591h 1425   4]                     ID Count : 00000000
[595h 1429   4]                  Output Base : 00000C20
[599h 1433   4]             Output Reference : 00000030
[59Dh 1437   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5A1h 1441   4]                   Input base : 04030001
[5A5h 1445   4]                     ID Count : 00000000
[5A9h 1449   4]                  Output Base : 00000C40
[5ADh 1453   4]             Output Reference : 00000030
[5B1h 1457   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5B5h 1461   4]                   Input base : 04090000
[5B9h 1465   4]                     ID Count : 00000000
[5BDh 1469   4]                  Output Base : 00000C21
[5C1h 1473   4]             Output Reference : 00000030
[5C5h 1477   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5C9h 1481   4]                   Input base : 04090001
[5CDh 1485   4]                     ID Count : 00000000
[5D1h 1489   4]                  Output Base : 00000C25
[5D5h 1493   4]             Output Reference : 00000030
[5D9h 1497   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5DDh 1501   4]                   Input base : 040A0000
[5E1h 1505   4]                     ID Count : 00000000
[5E5h 1509   4]                  Output Base : 00000C23
[5E9h 1513   4]             Output Reference : 00000030
[5EDh 1517   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5F1h 1521   4]                   Input base : 040B0000
[5F5h 1525   4]                     ID Count : 00000000
[5F9h 1529   4]                  Output Base : 00000C24
[5FDh 1533   4]             Output Reference : 00000030
[601h 1537   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[605h 1541   4]                   Input base : 040B0001
[609h 1545   4]                     ID Count : 00000000
[60Dh 1549   4]                  Output Base : 00000C44
[611h 1553   4]             Output Reference : 00000030
[615h 1557   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[619h 1561   1]                         Type : 01
[61Ah 1562   2]                       Length : 0065
[61Ch 1564   1]                     Revision : 00
[61Dh 1565   4]                     Reserved : 00000000
[621h 1569   4]                Mapping Count : 00000002
[625h 1573   4]               Mapping Offset : 0000003D

[629h 1577   4]                   Node Flags : 00000000
[62Dh 1581   8]            Memory Properties : [IORT Memory Access Properties]
[62Dh 1581   4]              Cache Coherency : 00000000
[631h 1585   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[632h 1586   2]                     Reserved : 0000
[634h 1588   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[635h 1589   1]            Memory Size Limit : 24
[636h 1590  10]                  Device Name : "\_SB.JPGE"
[640h 1600  22]                      Padding : 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20 /* IORT ...."QCOM   */\
/* 650h 1616   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[656h 1622   4]                   Input base : 02030000
[65Ah 1626   4]                     ID Count : 00000000
[65Eh 1630   4]                  Output Base : 00000D80
[662h 1634   4]             Output Reference : 00000030
[666h 1638   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[66Ah 1642   4]                   Input base : 02030001
[66Eh 1646   4]                     ID Count : 00000000
[672h 1650   4]                  Output Base : 00000DA0
[676h 1654   4]             Output Reference : 00000030
[67Ah 1658   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[67Eh 1662   1]                         Type : 01
[67Fh 1663   2]                       Length : 01B9
[681h 1665   1]                     Revision : 00
[682h 1666   4]                     Reserved : 00000000
[686h 1670   4]                Mapping Count : 00000013
[68Ah 1674   4]               Mapping Offset : 0000003D

[68Eh 1678   4]                   Node Flags : 00000000
[692h 1682   8]            Memory Properties : [IORT Memory Access Properties]
[692h 1682   4]              Cache Coherency : 00000000
[696h 1686   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[697h 1687   2]                     Reserved : 0000
[699h 1689   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[69Ah 1690   1]            Memory Size Limit : 24
[69Bh 1691  10]                  Device Name : "\_SB.ARPC"
[6A5h 1701  22]                      Padding : 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20 /* IORT ...."QCOM   */\
/* 6B5h 1717   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[6BBh 1723   4]                   Input base : 17030010
[6BFh 1727   4]                     ID Count : 00000002
[6C3h 1731   4]                  Output Base : 00001003
[6C7h 1735   4]             Output Reference : 00000030
[6CBh 1739   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[6CFh 1743   4]                   Input base : 17030000
[6D3h 1747   4]                     ID Count : 00000000
[6D7h 1751   4]                  Output Base : 00001421
[6DBh 1755   4]             Output Reference : 00000030
[6DFh 1759   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[6E3h 1763   4]                   Input base : 17030002
[6E7h 1767   4]                     ID Count : 00000000
[6EBh 1771   4]                  Output Base : 00001422
[6EFh 1775   4]             Output Reference : 00000030
[6F3h 1779   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[6F7h 1783   4]                   Input base : 17030004
[6FBh 1787   4]                     ID Count : 00000000
[6FFh 1791   4]                  Output Base : 00001423
[703h 1795   4]             Output Reference : 00000030
[707h 1799   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[70Bh 1803   4]                   Input base : 17030006
[70Fh 1807   4]                     ID Count : 00000000
[713h 1811   4]                  Output Base : 00001424
[717h 1815   4]             Output Reference : 00000030
[71Bh 1819   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[71Fh 1823   4]                   Input base : 17030008
[723h 1827   4]                     ID Count : 00000000
[727h 1831   4]                  Output Base : 00001425
[72Bh 1835   4]             Output Reference : 00000030
[72Fh 1839   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[733h 1843   4]                   Input base : 1703000A
[737h 1847   4]                     ID Count : 00000000
[73Bh 1851   4]                  Output Base : 00001426
[73Fh 1855   4]             Output Reference : 00000030
[743h 1859   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[747h 1863   4]                   Input base : 1703000C
[74Bh 1867   4]                     ID Count : 00000000
[74Fh 1871   4]                  Output Base : 00001427
[753h 1875   4]             Output Reference : 00000030
[757h 1879   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[75Bh 1883   4]                   Input base : 1703000E
[75Fh 1887   4]                     ID Count : 00000000
[763h 1891   4]                  Output Base : 00001428
[767h 1895   4]             Output Reference : 00000030
[76Bh 1899   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[76Fh 1903   4]                   Input base : 17030001
[773h 1907   4]                     ID Count : 00000000
[777h 1911   4]                  Output Base : 00001401
[77Bh 1915   4]             Output Reference : 00000030
[77Fh 1919   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[783h 1923   4]                   Input base : 17030003
[787h 1927   4]                     ID Count : 00000000
[78Bh 1931   4]                  Output Base : 00001402
[78Fh 1935   4]             Output Reference : 00000030
[793h 1939   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[797h 1943   4]                   Input base : 17030005
[79Bh 1947   4]                     ID Count : 00000000
[79Fh 1951   4]                  Output Base : 00001403
[7A3h 1955   4]             Output Reference : 00000030
[7A7h 1959   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7ABh 1963   4]                   Input base : 17030007
[7AFh 1967   4]                     ID Count : 00000000
[7B3h 1971   4]                  Output Base : 00001404
[7B7h 1975   4]             Output Reference : 00000030
[7BBh 1979   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7BFh 1983   4]                   Input base : 17030009
[7C3h 1987   4]                     ID Count : 00000000
[7C7h 1991   4]                  Output Base : 00001405
[7CBh 1995   4]             Output Reference : 00000030
[7CFh 1999   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7D3h 2003   4]                   Input base : 1703000B
[7D7h 2007   4]                     ID Count : 00000000
[7DBh 2011   4]                  Output Base : 00001406
[7DFh 2015   4]             Output Reference : 00000030
[7E3h 2019   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7E7h 2023   4]                   Input base : 1703000D
[7EBh 2027   4]                     ID Count : 00000000
[7EFh 2031   4]                  Output Base : 00001407
[7F3h 2035   4]             Output Reference : 00000030
[7F7h 2039   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7FBh 2043   4]                   Input base : 1703000F
[7FFh 2047   4]                     ID Count : 00000000
[803h 2051   4]                  Output Base : 00001408
[807h 2055   4]             Output Reference : 00000030
[80Bh 2059   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[80Fh 2063   4]                   Input base : 170A0000
[813h 2067   4]                     ID Count : 00000000
[817h 2071   4]                  Output Base : 00001429
[81Bh 2075   4]             Output Reference : 00000030
[81Fh 2079   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[823h 2083   4]                   Input base : 170A0001
[827h 2087   4]                     ID Count : 00000000
[82Bh 2091   4]                  Output Base : 00001409
[82Fh 2095   4]             Output Reference : 00000030
[833h 2099   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[837h 2103   1]                         Type : 01
[838h 2104   2]                       Length : 0051
[83Ah 2106   1]                     Revision : 00
[83Bh 2107   4]                     Reserved : 00000000
[83Fh 2111   4]                Mapping Count : 00000001
[843h 2115   4]               Mapping Offset : 0000003D

[847h 2119   4]                   Node Flags : 00000000
[84Bh 2123   8]            Memory Properties : [IORT Memory Access Properties]
[84Bh 2123   4]              Cache Coherency : 00000000
[84Fh 2127   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[850h 2128   2]                     Reserved : 0000
[852h 2130   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[853h 2131   1]            Memory Size Limit : 24
[854h 2132   9]                  Device Name : "\_SB.IPA"
[85Dh 2141  23]                      Padding : 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20 /* IORT ...."QCOM   */\
/* 86Dh 2157   7 */                            51 43 4F 4D 45 44 4B                            /* QCOMEDK */\

[874h 2164   4]                   Input base : 0B030000
[878h 2168   4]                     ID Count : 00000003
[87Ch 2172   4]                  Output Base : 00000440
[880h 2176   4]             Output Reference : 00000030
[884h 2180   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[888h 2184   1]                         Type : 01
[889h 2185   2]                       Length : 0051
[88Bh 2187   1]                     Revision : 00
[88Ch 2188   4]                     Reserved : 00000000
[890h 2192   4]                Mapping Count : 00000001
[894h 2196   4]               Mapping Offset : 0000003D

[898h 2200   4]                   Node Flags : 00000000
[89Ch 2204   8]            Memory Properties : [IORT Memory Access Properties]
[89Ch 2204   4]              Cache Coherency : 00000000
[8A0h 2208   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[8A1h 2209   2]                     Reserved : 0000
[8A3h 2211   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[8A4h 2212   1]            Memory Size Limit : 24
[8A5h 2213  10]                  Device Name : "\_SB.USBA"
[8AFh 2223  22]                      Padding : 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20 /* IORT ...."QCOM   */\
/* 8BFh 2239   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[8C5h 2245   4]                   Input base : 07030005
[8C9h 2249   4]                     ID Count : 00000000
[8CDh 2253   4]                  Output Base : 0000100F
[8D1h 2257   4]             Output Reference : 00000030
[8D5h 2261   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[8D9h 2265   1]                         Type : 01
[8DAh 2266   2]                       Length : 00B5
[8DCh 2268   1]                     Revision : 00
[8DDh 2269   4]                     Reserved : 00000000
[8E1h 2273   4]                Mapping Count : 00000006
[8E5h 2277   4]               Mapping Offset : 0000003D

[8E9h 2281   4]                   Node Flags : 00000000
[8EDh 2285   8]            Memory Properties : [IORT Memory Access Properties]
[8EDh 2285   4]              Cache Coherency : 00000000
[8F1h 2289   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[8F2h 2290   2]                     Reserved : 0000
[8F4h 2292   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[8F5h 2293   1]            Memory Size Limit : 24
[8F6h 2294  10]                  Device Name : "\_SB.NPU0"
[900h 2304  22]                      Padding : 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20 /* IORT ...."QCOM   */\
/* 910h 2320   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[916h 2326   4]                   Input base : 18030000
[91Ah 2330   4]                     ID Count : 00000001
[91Eh 2334   4]                  Output Base : 00001441
[922h 2338   4]             Output Reference : 00000030
[926h 2342   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[92Ah 2346   4]                   Input base : 18030002
[92Eh 2350   4]                     ID Count : 00000001
[932h 2354   4]                  Output Base : 00001461
[936h 2358   4]             Output Reference : 00000030
[93Ah 2362   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[93Eh 2366   4]                   Input base : 18030004
[942h 2370   4]                     ID Count : 00000001
[946h 2374   4]                  Output Base : 00001481
[94Ah 2378   4]             Output Reference : 00000030
[94Eh 2382   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[952h 2386   4]                   Input base : 180A0000
[956h 2390   4]                     ID Count : 00000000
[95Ah 2394   4]                  Output Base : 00001445
[95Eh 2398   4]             Output Reference : 00000030
[962h 2402   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[966h 2406   4]                   Input base : 180A0001
[96Ah 2410   4]                     ID Count : 00000000
[96Eh 2414   4]                  Output Base : 00001465
[972h 2418   4]             Output Reference : 00000030
[976h 2422   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[97Ah 2426   4]                   Input base : 180A0002
[97Eh 2430   4]                     ID Count : 00000000
[982h 2434   4]                  Output Base : 00001485
[986h 2438   4]             Output Reference : 00000030
[98Ah 2442   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[98Eh 2446   1]                         Type : 01
[98Fh 2447   2]                       Length : 0065
[991h 2449   1]                     Revision : 00
[992h 2450   4]                     Reserved : 00000000
[996h 2454   4]                Mapping Count : 00000002
[99Ah 2458   4]               Mapping Offset : 0000003D

[99Eh 2462   4]                   Node Flags : 00000000
[9A2h 2466   8]            Memory Properties : [IORT Memory Access Properties]
[9A2h 2466   4]              Cache Coherency : 00000000
[9A6h 2470   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[9A7h 2471   2]                     Reserved : 0000
[9A9h 2473   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[9AAh 2474   1]            Memory Size Limit : 24
[9ABh 2475  10]                  Device Name : "\_SB.QDSS"
[9B5h 2485  22]                      Padding : 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20 /* IORT ...."QCOM   */\
/* 9C5h 2501   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[9CBh 2507   4]                   Input base : 89030000
[9CFh 2511   4]                     ID Count : 00000000
[9D3h 2515   4]                  Output Base : 000004A0
[9D7h 2519   4]             Output Reference : 00000030
[9DBh 2523   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9DFh 2527   4]                   Input base : 89030001
[9E3h 2531   4]                     ID Count : 00000000
[9E7h 2535   4]                  Output Base : 00000480
[9EBh 2539   4]             Output Reference : 00000030
[9EFh 2543   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9F3h 2547   1]                         Type : 01
[9F4h 2548   2]                       Length : 008D
[9F6h 2550   1]                     Revision : 00
[9F7h 2551   4]                     Reserved : 00000000
[9FBh 2555   4]                Mapping Count : 00000004
[9FFh 2559   4]               Mapping Offset : 0000003D

[A03h 2563   4]                   Node Flags : 00000000
[A07h 2567   8]            Memory Properties : [IORT Memory Access Properties]
[A07h 2567   4]              Cache Coherency : 00000000
[A0Bh 2571   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[A0Ch 2572   2]                     Reserved : 0000
[A0Eh 2574   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[A0Fh 2575   1]            Memory Size Limit : 24
[A10h 2576  15]                  Device Name : "\_SB.ADSP.ADCM"
[A1Fh 2591  17]                      Padding : 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20 /* IORT ...."QCOM   */\
/* A2Fh 2607   1 */                            51                                              /* Q */\

[A30h 2608   4]                   Input base : 07030000
[A34h 2612   4]                     ID Count : 00000000
[A38h 2616   4]                  Output Base : 00001001
[A3Ch 2620   4]             Output Reference : 00000030
[A40h 2624   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A44h 2628   4]                   Input base : 07030001
[A48h 2632   4]                     ID Count : 00000000
[A4Ch 2636   4]                  Output Base : 0000102F
[A50h 2640   4]             Output Reference : 00000030
[A54h 2644   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A58h 2648   4]                   Input base : 07030002
[A5Ch 2652   4]                     ID Count : 00000001
[A60h 2656   4]                  Output Base : 00001030
[A64h 2660   4]             Output Reference : 00000030
[A68h 2664   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A6Ch 2668   4]                   Input base : 07030004
[A70h 2672   4]                     ID Count : 00000000
[A74h 2676   4]                  Output Base : 00001026
[A78h 2680   4]             Output Reference : 00000030
[A7Ch 2684   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A80h 2688   1]                         Type : 01
[A81h 2689   2]                       Length : 0051
[A83h 2691   1]                     Revision : 00
[A84h 2692   4]                     Reserved : 00000000
[A88h 2696   4]                Mapping Count : 00000001
[A8Ch 2700   4]               Mapping Offset : 0000003D

[A90h 2704   4]                   Node Flags : 00000000
[A94h 2708   8]            Memory Properties : [IORT Memory Access Properties]
[A94h 2708   4]              Cache Coherency : 00000000
[A98h 2712   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[A99h 2713   2]                     Reserved : 0000
[A9Bh 2715   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[A9Ch 2716   1]            Memory Size Limit : 24
[A9Dh 2717  11]                  Device Name : "\_SB.QSPI0"
[AA8h 2728  21]                      Padding : 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20 /* IORT ...."QCOM   */\
/* AB8h 2744   5 */                            51 43 4F 4D 45                                  /* QCOME */\

[ABDh 2749   4]                   Input base : 14030000
[AC1h 2753   4]                     ID Count : 00000000
[AC5h 2757   4]                  Output Base : 00000020
[AC9h 2761   4]             Output Reference : 00000030
[ACDh 2765   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AD1h 2769   1]                         Type : 01
[AD2h 2770   2]                       Length : 008D
[AD4h 2772   1]                     Revision : 00
[AD5h 2773   4]                     Reserved : 00000000
[AD9h 2777   4]                Mapping Count : 00000004
[ADDh 2781   4]               Mapping Offset : 0000003D

[AE1h 2785   4]                   Node Flags : 00000000
[AE5h 2789   8]            Memory Properties : [IORT Memory Access Properties]
[AE5h 2789   4]              Cache Coherency : 00000000
[AE9h 2793   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[AEAh 2794   2]                     Reserved : 0000
[AECh 2796   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[AEDh 2797   1]            Memory Size Limit : 24
[AEEh 2798   9]                  Device Name : "\_SB.QUP"
[AF7h 2807  23]                      Padding : 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20 /* IORT ...."QCOM   */\
/* B07h 2823   7 */                            51 43 4F 4D 45 44 4B                            /* QCOMEDK */\

[B0Eh 2830   4]                   Input base : 13030000
[B12h 2834   4]                     ID Count : 00000000
[B16h 2838   4]                  Output Base : 00000056
[B1Ah 2842   4]             Output Reference : 00000030
[B1Eh 2846   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B22h 2850   4]                   Input base : 13030001
[B26h 2854   4]                     ID Count : 00000000
[B2Ah 2858   4]                  Output Base : 00000043
[B2Eh 2862   4]             Output Reference : 00000030
[B32h 2866   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B36h 2870   4]                   Input base : 10030000
[B3Ah 2874   4]                     ID Count : 00000000
[B3Eh 2878   4]                  Output Base : 000004D6
[B42h 2882   4]             Output Reference : 00000030
[B46h 2886   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B4Ah 2890   4]                   Input base : 10030001
[B4Eh 2894   4]                     ID Count : 00000000
[B52h 2898   4]                  Output Base : 000004C3
[B56h 2902   4]             Output Reference : 00000030
[B5Ah 2906   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B5Eh 2910   1]                         Type : 01
[B5Fh 2911   2]                       Length : 0065
[B61h 2913   1]                     Revision : 00
[B62h 2914   4]                     Reserved : 00000000
[B66h 2918   4]                Mapping Count : 00000002
[B6Ah 2922   4]               Mapping Offset : 0000003D

[B6Eh 2926   4]                   Node Flags : 00000000
[B72h 2930   8]            Memory Properties : [IORT Memory Access Properties]
[B72h 2930   4]              Cache Coherency : 00000000
[B76h 2934   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[B77h 2935   2]                     Reserved : 0000
[B79h 2937   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[B7Ah 2938   1]            Memory Size Limit : 24
[B7Bh 2939  10]                  Device Name : "\_SB.SDC2"
[B85h 2949  22]                      Padding : 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20 /* IORT ...."QCOM   */\
/* B95h 2965   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[B9Bh 2971   4]                   Input base : 86030000
[B9Fh 2975   4]                     ID Count : 00000000
[BA3h 2979   4]                  Output Base : 00000080
[BA7h 2983   4]             Output Reference : 00000030
[BABh 2987   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BAFh 2991   4]                   Input base : 86030001
[BB3h 2995   4]                     ID Count : 00000000
[BB7h 2999   4]                  Output Base : 00000060
[BBBh 3003   4]             Output Reference : 00000030
[BBFh 3007   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BC3h 3011   1]                         Type : 01
[BC4h 3012   2]                       Length : 0051
[BC6h 3014   1]                     Revision : 00
[BC7h 3015   4]                     Reserved : 00000000
[BCBh 3019   4]                Mapping Count : 00000001
[BCFh 3023   4]               Mapping Offset : 0000003D

[BD3h 3027   4]                   Node Flags : 00000000
[BD7h 3031   8]            Memory Properties : [IORT Memory Access Properties]
[BD7h 3031   4]              Cache Coherency : 00000000
[BDBh 3035   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[BDCh 3036   2]                     Reserved : 0000
[BDEh 3038   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[BDFh 3039   1]            Memory Size Limit : 24
[BE0h 3040  10]                  Device Name : "\_SB.URS0"
[BEAh 3050  22]                      Padding : 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20 /* IORT ...."QCOM   */\
/* BFAh 3066   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[C00h 3072   4]                   Input base : 80030000
[C04h 3076   4]                     ID Count : 00000000
[C08h 3080   4]                  Output Base : 00000540
[C0Ch 3084   4]             Output Reference : 00000030
[C10h 3088   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C14h 3092   1]                         Type : 01
[C15h 3093   2]                       Length : 0051
[C17h 3095   1]                     Revision : 00
[C18h 3096   4]                     Reserved : 00000000
[C1Ch 3100   4]                Mapping Count : 00000001
[C20h 3104   4]               Mapping Offset : 0000003D

[C24h 3108   4]                   Node Flags : 00000000
[C28h 3112   8]            Memory Properties : [IORT Memory Access Properties]
[C28h 3112   4]              Cache Coherency : 00000001
[C2Ch 3116   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[C2Dh 3117   2]                     Reserved : 0000
[C2Fh 3119   1] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[C30h 3120   1]            Memory Size Limit : 24
[C31h 3121  10]                  Device Name : "\_SB.UFS0"
[C3Bh 3131  22]                      Padding : 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20 /* IORT ...."QCOM   */\
/* C4Bh 3147   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[C51h 3153   4]                   Input base : 81030000
[C55h 3157   4]                     ID Count : 00000000
[C59h 3161   4]                  Output Base : 000000A0
[C5Dh 3165   4]             Output Reference : 00000030
[C61h 3169   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C65h 3173   1]                         Type : 01
[C66h 3174   2]                       Length : 0051
[C68h 3176   1]                     Revision : 00
[C69h 3177   4]                     Reserved : 00000000
[C6Dh 3181   4]                Mapping Count : 00000001
[C71h 3185   4]               Mapping Offset : 0000003D

[C75h 3189   4]                   Node Flags : 00000000
[C79h 3193   8]            Memory Properties : [IORT Memory Access Properties]
[C79h 3193   4]              Cache Coherency : 00000000
[C7Dh 3197   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[C7Eh 3198   2]                     Reserved : 0000
[C80h 3200   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[C81h 3201   1]            Memory Size Limit : 24
[C82h 3202  10]                  Device Name : "\_SB.USB0"
[C8Ch 3212  22]                      Padding : 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20 /* IORT ...."QCOM   */\
/* C9Ch 3228   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[CA2h 3234   4]                   Input base : 80030000
[CA6h 3238   4]                     ID Count : 00000000
[CAAh 3242   4]                  Output Base : 00000540
[CAEh 3246   4]             Output Reference : 00000030
[CB2h 3250   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[CB6h 3254   1]                         Type : 01
[CB7h 3255   2]                       Length : 0119
[CB9h 3257   1]                     Revision : 00
[CBAh 3258   4]                     Reserved : 00000000
[CBEh 3262   4]                Mapping Count : 0000000B
[CC2h 3266   4]               Mapping Offset : 0000003D

[CC6h 3270   4]                   Node Flags : 00000000
[CCAh 3274   8]            Memory Properties : [IORT Memory Access Properties]
[CCAh 3274   4]              Cache Coherency : 00000000
[CCEh 3278   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[CCFh 3279   2]                     Reserved : 0000
[CD1h 3281   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[CD2h 3282   1]            Memory Size Limit : 24
[CD3h 3283  15]                  Device Name : "\_SB.GPU0.AVS0"
[CE2h 3298  17]                      Padding : 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20 /* IORT ...."QCOM   */\
/* CF2h 3314   1 */                            51                                              /* Q */\

[CF3h 3315   4]                   Input base : 01030000
[CF7h 3319   4]                     ID Count : 00000000
[CFBh 3323   4]                  Output Base : 00000CA0
[CFFh 3327   4]             Output Reference : 00000030
[D03h 3331   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D07h 3335   4]                   Input base : 01030001
[D0Bh 3339   4]                     ID Count : 00000000
[D0Fh 3343   4]                  Output Base : 00000D20
[D13h 3347   4]             Output Reference : 00000030
[D17h 3351   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D1Bh 3355   4]                   Input base : 01030002
[D1Fh 3359   4]                     ID Count : 00000000
[D23h 3363   4]                  Output Base : 00000D60
[D27h 3367   4]             Output Reference : 00000030
[D2Bh 3371   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D2Fh 3375   4]                   Input base : 01030003
[D33h 3379   4]                     ID Count : 00000000
[D37h 3383   4]                  Output Base : 00000CE2
[D3Bh 3387   4]             Output Reference : 00000030
[D3Fh 3391   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D43h 3395   4]                   Input base : 01030004
[D47h 3399   4]                     ID Count : 00000000
[D4Bh 3403   4]                  Output Base : 00000820
[D4Fh 3407   4]             Output Reference : 00000030
[D53h 3411   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D57h 3415   4]                   Input base : 01030005
[D5Bh 3419   4]                     ID Count : 00000000
[D5Fh 3423   4]                  Output Base : 00000860
[D63h 3427   4]             Output Reference : 00000030
[D67h 3431   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D6Bh 3435   4]                   Input base : 01030006
[D6Fh 3439   4]                     ID Count : 00000000
[D73h 3443   4]                  Output Base : 00000840
[D77h 3447   4]             Output Reference : 00000030
[D7Bh 3451   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D7Fh 3455   4]                   Input base : 01030007
[D83h 3459   4]                     ID Count : 00000000
[D87h 3463   4]                  Output Base : 00000C80
[D8Bh 3467   4]             Output Reference : 00000030
[D8Fh 3471   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D93h 3475   4]                   Input base : 01030008
[D97h 3479   4]                     ID Count : 00000000
[D9Bh 3483   4]                  Output Base : 00000D00
[D9Fh 3487   4]             Output Reference : 00000030
[DA3h 3491   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DA7h 3495   4]                   Input base : 01030009
[DABh 3499   4]                     ID Count : 00000000
[DAFh 3503   4]                  Output Base : 00000CC0
[DB3h 3507   4]             Output Reference : 00000030
[DB7h 3511   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DBBh 3515   4]                   Input base : 0103000A
[DBFh 3519   4]                     ID Count : 00000000
[DC3h 3523   4]                  Output Base : 00000D40
[DC7h 3527   4]             Output Reference : 00000030
[DCBh 3531   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DCFh 3535   1]                         Type : 01
[DD0h 3536   2]                       Length : 0051
[DD2h 3538   1]                     Revision : 00
[DD3h 3539   4]                     Reserved : 00000000
[DD7h 3543   4]                Mapping Count : 00000001
[DDBh 3547   4]               Mapping Offset : 0000003D

[DDFh 3551   4]                   Node Flags : 00000000
[DE3h 3555   8]            Memory Properties : [IORT Memory Access Properties]
[DE3h 3555   4]              Cache Coherency : 00000000
[DE7h 3559   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[DE8h 3560   2]                     Reserved : 0000
[DEAh 3562   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[DEBh 3563   1]            Memory Size Limit : 24
[DECh 3564  15]                  Device Name : "\_SB.AMSS.QWLN"
[DFBh 3579  17]                      Padding : 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20 /* IORT ...."QCOM   */\
/* E0Bh 3595   1 */                            51                                              /* Q */\

[E0Ch 3596   4]                   Input base : 11030000
[E10h 3600   4]                     ID Count : 00000001
[E14h 3604   4]                  Output Base : 000000C0
[E18h 3608   4]             Output Reference : 00000030
[E1Ch 3612   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

Raw Table Data: Length 3616 (0xE20)

    0000: 49 4F 52 54 20 0E 00 00 00 22 51 43 4F 4D 20 20  // IORT ...."QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 71 00 00 51 43 4F 4D  // QCOMEDK2.q..QCOM
    0020: 01 00 00 00 12 00 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0030: 03 FC 02 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0040: 00 00 00 15 00 00 00 00 00 00 10 00 00 00 00 00  // ................
    0050: 03 00 00 00 00 00 00 00 3C 00 00 00 50 00 00 00  // ........<...P...
    0060: 4C 00 00 00 06 00 00 00 CC 02 00 00 61 00 00 00  // L...........a...
    0070: 00 00 00 00 00 00 00 00 00 00 00 00 7E 00 00 00  // ............~...
    0080: 01 00 00 00 7F 00 00 00 01 00 00 00 80 00 00 00  // ................
    0090: 01 00 00 00 81 00 00 00 01 00 00 00 82 00 00 00  // ................
    00A0: 01 00 00 00 83 00 00 00 01 00 00 00 84 00 00 00  // ................
    00B0: 01 00 00 00 85 00 00 00 01 00 00 00 86 00 00 00  // ................
    00C0: 01 00 00 00 87 00 00 00 01 00 00 00 88 00 00 00  // ................
    00D0: 01 00 00 00 89 00 00 00 01 00 00 00 8A 00 00 00  // ................
    00E0: 01 00 00 00 8B 00 00 00 01 00 00 00 8C 00 00 00  // ................
    00F0: 01 00 00 00 8D 00 00 00 01 00 00 00 8E 00 00 00  // ................
    0100: 01 00 00 00 8F 00 00 00 01 00 00 00 90 00 00 00  // ................
    0110: 01 00 00 00 91 00 00 00 01 00 00 00 92 00 00 00  // ................
    0120: 01 00 00 00 93 00 00 00 01 00 00 00 94 00 00 00  // ................
    0130: 01 00 00 00 95 00 00 00 01 00 00 00 96 00 00 00  // ................
    0140: 01 00 00 00 D5 00 00 00 01 00 00 00 D6 00 00 00  // ................
    0150: 01 00 00 00 D7 00 00 00 01 00 00 00 D8 00 00 00  // ................
    0160: 01 00 00 00 D9 00 00 00 01 00 00 00 DA 00 00 00  // ................
    0170: 01 00 00 00 DB 00 00 00 01 00 00 00 DC 00 00 00  // ................
    0180: 01 00 00 00 DD 00 00 00 01 00 00 00 DE 00 00 00  // ................
    0190: 01 00 00 00 DF 00 00 00 01 00 00 00 E0 00 00 00  // ................
    01A0: 01 00 00 00 5B 01 00 00 01 00 00 00 5C 01 00 00  // ....[.......\...
    01B0: 01 00 00 00 5D 01 00 00 01 00 00 00 5E 01 00 00  // ....].......^...
    01C0: 01 00 00 00 5F 01 00 00 01 00 00 00 60 01 00 00  // ...._.......`...
    01D0: 01 00 00 00 61 01 00 00 01 00 00 00 62 01 00 00  // ....a.......b...
    01E0: 01 00 00 00 63 01 00 00 01 00 00 00 64 01 00 00  // ....c.......d...
    01F0: 01 00 00 00 65 01 00 00 01 00 00 00 66 01 00 00  // ....e.......f...
    0200: 01 00 00 00 67 01 00 00 01 00 00 00 68 01 00 00  // ....g.......h...
    0210: 01 00 00 00 69 01 00 00 01 00 00 00 6A 01 00 00  // ....i.......j...
    0220: 01 00 00 00 6B 01 00 00 01 00 00 00 6C 01 00 00  // ....k.......l...
    0230: 01 00 00 00 6D 01 00 00 01 00 00 00 6E 01 00 00  // ....m.......n...
    0240: 01 00 00 00 6F 01 00 00 01 00 00 00 70 01 00 00  // ....o.......p...
    0250: 01 00 00 00 71 01 00 00 01 00 00 00 72 01 00 00  // ....q.......r...
    0260: 01 00 00 00 73 01 00 00 01 00 00 00 74 01 00 00  // ....s.......t...
    0270: 01 00 00 00 75 01 00 00 01 00 00 00 76 01 00 00  // ....u.......v...
    0280: 01 00 00 00 77 01 00 00 01 00 00 00 78 01 00 00  // ....w.......x...
    0290: 01 00 00 00 79 01 00 00 01 00 00 00 B1 01 00 00  // ....y...........
    02A0: 01 00 00 00 B2 01 00 00 01 00 00 00 B3 01 00 00  // ................
    02B0: 01 00 00 00 B4 01 00 00 01 00 00 00 B5 01 00 00  // ................
    02C0: 01 00 00 00 B6 01 00 00 01 00 00 00 B7 01 00 00  // ................
    02D0: 01 00 00 00 B8 01 00 00 01 00 00 00 B9 01 00 00  // ................
    02E0: 01 00 00 00 BA 01 00 00 01 00 00 00 BB 01 00 00  // ................
    02F0: 01 00 00 00 BC 01 00 00 01 00 00 00 64 00 00 00  // ............d...
    0300: 01 00 00 00 65 00 00 00 01 00 00 00 66 00 00 00  // ....e.......f...
    0310: 01 00 00 00 67 00 00 00 01 00 00 00 68 00 00 00  // ....g.......h...
    0320: 01 00 00 00 69 00 00 00 01 00 00 00 03 94 00 00  // ....i...........
    0330: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 04 05  // ................
    0340: 00 00 00 00 00 00 01 00 00 00 00 00 01 00 00 00  // ................
    0350: 00 00 00 00 3C 00 00 00 08 00 00 00 4C 00 00 00  // ....<.......L...
    0360: 01 00 00 00 8C 00 00 00 07 01 00 00 00 00 00 00  // ................
    0370: 05 01 00 00 00 00 00 00 8C 01 00 00 01 00 00 00  // ................
    0380: 8D 01 00 00 01 00 00 00 8E 01 00 00 01 00 00 00  // ................
    0390: 8F 01 00 00 01 00 00 00 90 01 00 00 01 00 00 00  // ................
    03A0: 91 01 00 00 01 00 00 00 92 01 00 00 01 00 00 00  // ................
    03B0: 93 01 00 00 01 00 00 00 E1 00 00 00 01 00 00 00  // ................
    03C0: 01 59 02 00 00 00 00 00 1B 00 00 00 3D 00 00 00  // .Y..........=...
    03D0: 00 00 00 00 00 00 00 00 00 00 00 00 28 5C 5F 53  // ............(\_S
    03E0: 42 2E 47 50 55 30 00 00 00 00 00 00 00 00 00 00  // B.GPU0..........
    03F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0A  // ................
    0400: 03 00 00 00 00 02 00 00 00 2C 03 00 00 00 00 00  // .........,......
    0410: 00 00 00 03 03 01 00 00 00 00 00 00 00 2C 03 00  // .............,..
    0420: 00 00 00 00 00 02 00 03 03 00 00 00 00 04 00 00  // ................
    0430: 00 2C 03 00 00 00 00 00 00 03 00 03 03 00 00 00  // .,..............
    0440: 00 05 00 00 00 2C 03 00 00 00 00 00 00 00 00 03  // .....,..........
    0450: 00 00 00 00 00 00 08 00 00 30 00 00 00 00 00 00  // .........0......
    0460: 00 01 00 03 00 00 00 00 00 02 08 00 00 30 00 00  // .............0..
    0470: 00 00 00 00 00 00 00 0A 00 00 00 00 00 01 08 00  // ................
    0480: 00 30 00 00 00 00 00 00 00 00 00 03 06 00 00 00  // .0..............
    0490: 00 1C 0C 00 00 30 00 00 00 00 00 00 00 00 00 0A  // .....0..........
    04A0: 06 00 00 00 00 1D 0C 00 00 30 00 00 00 00 00 00  // .........0......
    04B0: 00 00 00 03 0C 01 00 00 00 34 04 00 00 30 00 00  // .........4...0..
    04C0: 00 00 00 00 00 02 00 03 0C 01 00 00 00 24 04 00  // .............$..
    04D0: 00 30 00 00 00 00 00 00 00 04 00 03 0C 00 00 00  // .0..............
    04E0: 00 3F 04 00 00 30 00 00 00 00 00 00 00 05 00 03  // .?...0..........
    04F0: 0C 00 00 00 00 32 04 00 00 30 00 00 00 00 00 00  // .....2...0......
    0500: 00 06 00 03 0C 01 00 00 00 36 04 00 00 30 00 00  // .........6...0..
    0510: 00 00 00 00 00 08 00 03 0C 01 00 00 00 38 04 00  // .............8..
    0520: 00 30 00 00 00 00 00 00 00 0A 00 03 0C 01 00 00  // .0..............
    0530: 00 26 04 00 00 30 00 00 00 00 00 00 00 00 00 09  // .&...0..........
    0540: 0C 00 00 00 00 3C 04 00 00 30 00 00 00 00 00 00  // .....<...0......
    0550: 00 01 00 09 0C 00 00 00 00 3D 04 00 00 30 00 00  // .........=...0..
    0560: 00 00 00 00 00 02 00 09 0C 00 00 00 00 3E 04 00  // .............>..
    0570: 00 30 00 00 00 00 00 00 00 03 00 09 0C 00 00 00  // .0..............
    0580: 00 33 04 00 00 30 00 00 00 00 00 00 00 00 00 03  // .3...0..........
    0590: 04 00 00 00 00 20 0C 00 00 30 00 00 00 00 00 00  // ..... ...0......
    05A0: 00 01 00 03 04 00 00 00 00 40 0C 00 00 30 00 00  // .........@...0..
    05B0: 00 00 00 00 00 00 00 09 04 00 00 00 00 21 0C 00  // .............!..
    05C0: 00 30 00 00 00 00 00 00 00 01 00 09 04 00 00 00  // .0..............
    05D0: 00 25 0C 00 00 30 00 00 00 00 00 00 00 00 00 0A  // .%...0..........
    05E0: 04 00 00 00 00 23 0C 00 00 30 00 00 00 00 00 00  // .....#...0......
    05F0: 00 00 00 0B 04 00 00 00 00 24 0C 00 00 30 00 00  // .........$...0..
    0600: 00 00 00 00 00 01 00 0B 04 00 00 00 00 44 0C 00  // .............D..
    0610: 00 30 00 00 00 00 00 00 00 01 65 00 00 00 00 00  // .0........e.....
    0620: 00 02 00 00 00 3D 00 00 00 00 00 00 00 00 00 00  // .....=..........
    0630: 00 00 00 00 00 24 5C 5F 53 42 2E 4A 50 47 45 00  // .....$\_SB.JPGE.
    0640: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0650: 00 00 00 00 00 00 00 00 03 02 00 00 00 00 80 0D  // ................
    0660: 00 00 30 00 00 00 00 00 00 00 01 00 03 02 00 00  // ..0.............
    0670: 00 00 A0 0D 00 00 30 00 00 00 00 00 00 00 01 B9  // ......0.........
    0680: 01 00 00 00 00 00 13 00 00 00 3D 00 00 00 00 00  // ..........=.....
    0690: 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E  // ..........$\_SB.
    06A0: 41 52 50 43 00 00 00 00 00 00 00 00 00 00 00 00  // ARPC............
    06B0: 00 00 00 00 00 00 00 00 00 00 00 10 00 03 17 02  // ................
    06C0: 00 00 00 03 10 00 00 30 00 00 00 00 00 00 00 00  // .......0........
    06D0: 00 03 17 00 00 00 00 21 14 00 00 30 00 00 00 00  // .......!...0....
    06E0: 00 00 00 02 00 03 17 00 00 00 00 22 14 00 00 30  // ..........."...0
    06F0: 00 00 00 00 00 00 00 04 00 03 17 00 00 00 00 23  // ...............#
    0700: 14 00 00 30 00 00 00 00 00 00 00 06 00 03 17 00  // ...0............
    0710: 00 00 00 24 14 00 00 30 00 00 00 00 00 00 00 08  // ...$...0........
    0720: 00 03 17 00 00 00 00 25 14 00 00 30 00 00 00 00  // .......%...0....
    0730: 00 00 00 0A 00 03 17 00 00 00 00 26 14 00 00 30  // ...........&...0
    0740: 00 00 00 00 00 00 00 0C 00 03 17 00 00 00 00 27  // ...............'
    0750: 14 00 00 30 00 00 00 00 00 00 00 0E 00 03 17 00  // ...0............
    0760: 00 00 00 28 14 00 00 30 00 00 00 00 00 00 00 01  // ...(...0........
    0770: 00 03 17 00 00 00 00 01 14 00 00 30 00 00 00 00  // ...........0....
    0780: 00 00 00 03 00 03 17 00 00 00 00 02 14 00 00 30  // ...............0
    0790: 00 00 00 00 00 00 00 05 00 03 17 00 00 00 00 03  // ................
    07A0: 14 00 00 30 00 00 00 00 00 00 00 07 00 03 17 00  // ...0............
    07B0: 00 00 00 04 14 00 00 30 00 00 00 00 00 00 00 09  // .......0........
    07C0: 00 03 17 00 00 00 00 05 14 00 00 30 00 00 00 00  // ...........0....
    07D0: 00 00 00 0B 00 03 17 00 00 00 00 06 14 00 00 30  // ...............0
    07E0: 00 00 00 00 00 00 00 0D 00 03 17 00 00 00 00 07  // ................
    07F0: 14 00 00 30 00 00 00 00 00 00 00 0F 00 03 17 00  // ...0............
    0800: 00 00 00 08 14 00 00 30 00 00 00 00 00 00 00 00  // .......0........
    0810: 00 0A 17 00 00 00 00 29 14 00 00 30 00 00 00 00  // .......)...0....
    0820: 00 00 00 01 00 0A 17 00 00 00 00 09 14 00 00 30  // ...............0
    0830: 00 00 00 00 00 00 00 01 51 00 00 00 00 00 00 01  // ........Q.......
    0840: 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00  // ...=............
    0850: 00 00 00 24 5C 5F 53 42 2E 49 50 41 00 00 00 00  // ...$\_SB.IPA....
    0860: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0870: 00 00 00 00 00 00 03 0B 03 00 00 00 40 04 00 00  // ............@...
    0880: 30 00 00 00 00 00 00 00 01 51 00 00 00 00 00 00  // 0........Q......
    0890: 01 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00  // ....=...........
    08A0: 00 00 00 00 24 5C 5F 53 42 2E 55 53 42 41 00 00  // ....$\_SB.USBA..
    08B0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    08C0: 00 00 00 00 00 05 00 03 07 00 00 00 00 0F 10 00  // ................
    08D0: 00 30 00 00 00 00 00 00 00 01 B5 00 00 00 00 00  // .0..............
    08E0: 00 06 00 00 00 3D 00 00 00 00 00 00 00 00 00 00  // .....=..........
    08F0: 00 00 00 00 00 24 5C 5F 53 42 2E 4E 50 55 30 00  // .....$\_SB.NPU0.
    0900: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0910: 00 00 00 00 00 00 00 00 03 18 01 00 00 00 41 14  // ..............A.
    0920: 00 00 30 00 00 00 00 00 00 00 02 00 03 18 01 00  // ..0.............
    0930: 00 00 61 14 00 00 30 00 00 00 00 00 00 00 04 00  // ..a...0.........
    0940: 03 18 01 00 00 00 81 14 00 00 30 00 00 00 00 00  // ..........0.....
    0950: 00 00 00 00 0A 18 00 00 00 00 45 14 00 00 30 00  // ..........E...0.
    0960: 00 00 00 00 00 00 01 00 0A 18 00 00 00 00 65 14  // ..............e.
    0970: 00 00 30 00 00 00 00 00 00 00 02 00 0A 18 00 00  // ..0.............
    0980: 00 00 85 14 00 00 30 00 00 00 00 00 00 00 01 65  // ......0........e
    0990: 00 00 00 00 00 00 02 00 00 00 3D 00 00 00 00 00  // ..........=.....
    09A0: 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E  // ..........$\_SB.
    09B0: 51 44 53 53 00 00 00 00 00 00 00 00 00 00 00 00  // QDSS............
    09C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 03 89 00  // ................
    09D0: 00 00 00 A0 04 00 00 30 00 00 00 00 00 00 00 01  // .......0........
    09E0: 00 03 89 00 00 00 00 80 04 00 00 30 00 00 00 00  // ...........0....
    09F0: 00 00 00 01 8D 00 00 00 00 00 00 04 00 00 00 3D  // ...............=
    0A00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24  // ...............$
    0A10: 5C 5F 53 42 2E 41 44 53 50 2E 41 44 43 4D 00 00  // \_SB.ADSP.ADCM..
    0A20: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0A30: 00 00 03 07 00 00 00 00 01 10 00 00 30 00 00 00  // ............0...
    0A40: 00 00 00 00 01 00 03 07 00 00 00 00 2F 10 00 00  // ............/...
    0A50: 30 00 00 00 00 00 00 00 02 00 03 07 01 00 00 00  // 0...............
    0A60: 30 10 00 00 30 00 00 00 00 00 00 00 04 00 03 07  // 0...0...........
    0A70: 00 00 00 00 26 10 00 00 30 00 00 00 00 00 00 00  // ....&...0.......
    0A80: 01 51 00 00 00 00 00 00 01 00 00 00 3D 00 00 00  // .Q..........=...
    0A90: 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53  // ............$\_S
    0AA0: 42 2E 51 53 50 49 30 00 00 00 00 00 00 00 00 00  // B.QSPI0.........
    0AB0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03  // ................
    0AC0: 14 00 00 00 00 20 00 00 00 30 00 00 00 00 00 00  // ..... ...0......
    0AD0: 00 01 8D 00 00 00 00 00 00 04 00 00 00 3D 00 00  // .............=..
    0AE0: 00 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F  // .............$\_
    0AF0: 53 42 2E 51 55 50 00 00 00 00 00 00 00 00 00 00  // SB.QUP..........
    0B00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0B10: 03 13 00 00 00 00 56 00 00 00 30 00 00 00 00 00  // ......V...0.....
    0B20: 00 00 01 00 03 13 00 00 00 00 43 00 00 00 30 00  // ..........C...0.
    0B30: 00 00 00 00 00 00 00 00 03 10 00 00 00 00 D6 04  // ................
    0B40: 00 00 30 00 00 00 00 00 00 00 01 00 03 10 00 00  // ..0.............
    0B50: 00 00 C3 04 00 00 30 00 00 00 00 00 00 00 01 65  // ......0........e
    0B60: 00 00 00 00 00 00 02 00 00 00 3D 00 00 00 00 00  // ..........=.....
    0B70: 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E  // ..........$\_SB.
    0B80: 53 44 43 32 00 00 00 00 00 00 00 00 00 00 00 00  // SDC2............
    0B90: 00 00 00 00 00 00 00 00 00 00 00 00 00 03 86 00  // ................
    0BA0: 00 00 00 80 00 00 00 30 00 00 00 00 00 00 00 01  // .......0........
    0BB0: 00 03 86 00 00 00 00 60 00 00 00 30 00 00 00 00  // .......`...0....
    0BC0: 00 00 00 01 51 00 00 00 00 00 00 01 00 00 00 3D  // ....Q..........=
    0BD0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24  // ...............$
    0BE0: 5C 5F 53 42 2E 55 52 53 30 00 00 00 00 00 00 00  // \_SB.URS0.......
    0BF0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0C00: 00 00 03 80 00 00 00 00 40 05 00 00 30 00 00 00  // ........@...0...
    0C10: 00 00 00 00 01 51 00 00 00 00 00 00 01 00 00 00  // .....Q..........
    0C20: 3D 00 00 00 00 00 00 00 01 00 00 00 00 00 00 01  // =...............
    0C30: 24 5C 5F 53 42 2E 55 46 53 30 00 00 00 00 00 00  // $\_SB.UFS0......
    0C40: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0C50: 00 00 00 03 81 00 00 00 00 A0 00 00 00 30 00 00  // .............0..
    0C60: 00 00 00 00 00 01 51 00 00 00 00 00 00 01 00 00  // ......Q.........
    0C70: 00 3D 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // .=..............
    0C80: 00 24 5C 5F 53 42 2E 55 53 42 30 00 00 00 00 00  // .$\_SB.USB0.....
    0C90: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0CA0: 00 00 00 00 03 80 00 00 00 00 40 05 00 00 30 00  // ..........@...0.
    0CB0: 00 00 00 00 00 00 01 19 01 00 00 00 00 00 0B 00  // ................
    0CC0: 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00 00  // ..=.............
    0CD0: 00 00 24 5C 5F 53 42 2E 47 50 55 30 2E 41 56 53  // ..$\_SB.GPU0.AVS
    0CE0: 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // 0...............
    0CF0: 00 00 00 00 00 03 01 00 00 00 00 A0 0C 00 00 30  // ...............0
    0D00: 00 00 00 00 00 00 00 01 00 03 01 00 00 00 00 20  // ............... 
    0D10: 0D 00 00 30 00 00 00 00 00 00 00 02 00 03 01 00  // ...0............
    0D20: 00 00 00 60 0D 00 00 30 00 00 00 00 00 00 00 03  // ...`...0........
    0D30: 00 03 01 00 00 00 00 E2 0C 00 00 30 00 00 00 00  // ...........0....
    0D40: 00 00 00 04 00 03 01 00 00 00 00 20 08 00 00 30  // ........... ...0
    0D50: 00 00 00 00 00 00 00 05 00 03 01 00 00 00 00 60  // ...............`
    0D60: 08 00 00 30 00 00 00 00 00 00 00 06 00 03 01 00  // ...0............
    0D70: 00 00 00 40 08 00 00 30 00 00 00 00 00 00 00 07  // ...@...0........
    0D80: 00 03 01 00 00 00 00 80 0C 00 00 30 00 00 00 00  // ...........0....
    0D90: 00 00 00 08 00 03 01 00 00 00 00 00 0D 00 00 30  // ...............0
    0DA0: 00 00 00 00 00 00 00 09 00 03 01 00 00 00 00 C0  // ................
    0DB0: 0C 00 00 30 00 00 00 00 00 00 00 0A 00 03 01 00  // ...0............
    0DC0: 00 00 00 40 0D 00 00 30 00 00 00 00 00 00 00 01  // ...@...0........
    0DD0: 51 00 00 00 00 00 00 01 00 00 00 3D 00 00 00 00  // Q..........=....
    0DE0: 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42  // ...........$\_SB
    0DF0: 2E 41 4D 53 53 2E 51 57 4C 4E 00 00 00 00 00 00  // .AMSS.QWLN......
    0E00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 11  // ................
    0E10: 01 00 00 00 C0 00 00 00 30 00 00 00 00 00 00 00  // ........0.......
