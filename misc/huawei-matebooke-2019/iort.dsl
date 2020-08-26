/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200717 (32-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of iort.dat, Thu Aug 27 00:11:44 2020
 *
 * ACPI Data Table [IORT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "IORT"    [IO Remapping Table]
[004h 0004   4]                 Table Length : 0000111B
[008h 0008   1]                     Revision : 00
[009h 0009   1]                     Checksum : A2
[00Ah 0010   6]                       Oem ID : "HUAWEI"
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00000850
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   4]                   Node Count : 00000016
[028h 0040   4]                  Node Offset : 00000030
[02Ch 0044   4]                     Reserved : 00000000

[030h 0048   1]                         Type : 03
[031h 0049   2]                       Length : 028C
[033h 0051   1]                     Revision : 00
[034h 0052   4]                     Reserved : 00000000
[038h 0056   4]                Mapping Count : 00000000
[03Ch 0060   4]               Mapping Offset : 00000000

[040h 0064   8]                 Base Address : 0000000015000000
[048h 0072   8]                         Span : 0000000000110000
[050h 0080   4]                        Model : 00000003
[054h 0084   4]        Flags (decoded below) : 00000000
                               DVM Supported : 0
                               Coherent Walk : 0
[058h 0088   4]      Global Interrupt Offset : 0000003C
[05Ch 0092   4]      Context Interrupt Count : 00000040
[060h 0096   4]     Context Interrupt Offset : 0000004C
[064h 0100   4]          PMU Interrupt Count : 00000008
[068h 0104   4]         PMU Interrupt Offset : 0000024C

[06Ch 0108   4]                      NSgIrpt : 00000061
[070h 0112   4] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[074h 0116   4]                   NSgCfgIrpt : 00000105
[078h 0120   4] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[07Ch 0124   8]            Context Interrupt : 0000000100000080
[084h 0132   8]            Context Interrupt : 0000000100000081
[08Ch 0140   8]            Context Interrupt : 0000000100000082
[094h 0148   8]            Context Interrupt : 0000000100000083
[09Ch 0156   8]            Context Interrupt : 0000000100000084
[0A4h 0164   8]            Context Interrupt : 0000000100000085
[0ACh 0172   8]            Context Interrupt : 0000000100000086
[0B4h 0180   8]            Context Interrupt : 0000000100000087
[0BCh 0188   8]            Context Interrupt : 0000000100000088
[0C4h 0196   8]            Context Interrupt : 0000000100000089
[0CCh 0204   8]            Context Interrupt : 000000010000008A
[0D4h 0212   8]            Context Interrupt : 000000010000008B
[0DCh 0220   8]            Context Interrupt : 000000010000008C
[0E4h 0228   8]            Context Interrupt : 000000010000008D
[0ECh 0236   8]            Context Interrupt : 000000010000008E
[0F4h 0244   8]            Context Interrupt : 000000010000008F
[0FCh 0252   8]            Context Interrupt : 0000000100000090
[104h 0260   8]            Context Interrupt : 0000000100000091
[10Ch 0268   8]            Context Interrupt : 0000000100000092
[114h 0276   8]            Context Interrupt : 0000000100000093
[11Ch 0284   8]            Context Interrupt : 0000000100000094
[124h 0292   8]            Context Interrupt : 0000000100000095
[12Ch 0300   8]            Context Interrupt : 0000000100000096
[134h 0308   8]            Context Interrupt : 00000001000000D5
[13Ch 0316   8]            Context Interrupt : 00000001000000D6
[144h 0324   8]            Context Interrupt : 00000001000000D7
[14Ch 0332   8]            Context Interrupt : 00000001000000D8
[154h 0340   8]            Context Interrupt : 00000001000000D9
[15Ch 0348   8]            Context Interrupt : 00000001000000DA
[164h 0356   8]            Context Interrupt : 00000001000000DB
[16Ch 0364   8]            Context Interrupt : 00000001000000DC
[174h 0372   8]            Context Interrupt : 00000001000000DD
[17Ch 0380   8]            Context Interrupt : 00000001000000DE
[184h 0388   8]            Context Interrupt : 00000001000000DF
[18Ch 0396   8]            Context Interrupt : 00000001000000E0
[194h 0404   8]            Context Interrupt : 000000010000015B
[19Ch 0412   8]            Context Interrupt : 000000010000015C
[1A4h 0420   8]            Context Interrupt : 000000010000015D
[1ACh 0428   8]            Context Interrupt : 000000010000015E
[1B4h 0436   8]            Context Interrupt : 000000010000015F
[1BCh 0444   8]            Context Interrupt : 0000000100000160
[1C4h 0452   8]            Context Interrupt : 0000000100000161
[1CCh 0460   8]            Context Interrupt : 0000000100000162
[1D4h 0468   8]            Context Interrupt : 0000000100000163
[1DCh 0476   8]            Context Interrupt : 0000000100000164
[1E4h 0484   8]            Context Interrupt : 0000000100000165
[1ECh 0492   8]            Context Interrupt : 0000000100000166
[1F4h 0500   8]            Context Interrupt : 0000000100000167
[1FCh 0508   8]            Context Interrupt : 0000000100000168
[204h 0516   8]            Context Interrupt : 0000000100000169
[20Ch 0524   8]            Context Interrupt : 000000010000016A
[214h 0532   8]            Context Interrupt : 000000010000016B
[21Ch 0540   8]            Context Interrupt : 000000010000016C
[224h 0548   8]            Context Interrupt : 000000010000016D
[22Ch 0556   8]            Context Interrupt : 000000010000016E
[234h 0564   8]            Context Interrupt : 000000010000016F
[23Ch 0572   8]            Context Interrupt : 0000000100000170
[244h 0580   8]            Context Interrupt : 0000000100000171
[24Ch 0588   8]            Context Interrupt : 0000000100000172
[254h 0596   8]            Context Interrupt : 0000000100000173
[25Ch 0604   8]            Context Interrupt : 0000000100000174
[264h 0612   8]            Context Interrupt : 0000000100000175
[26Ch 0620   8]            Context Interrupt : 0000000100000176
[274h 0628   8]            Context Interrupt : 0000000100000177
[27Ch 0636   8]                PMU Interrupt : 0000000100000064
[284h 0644   8]                PMU Interrupt : 0000000100000065
[28Ch 0652   8]                PMU Interrupt : 0000000100000066
[294h 0660   8]                PMU Interrupt : 0000000100000067
[29Ch 0668   8]                PMU Interrupt : 0000000100000068
[2A4h 0676   8]                PMU Interrupt : 0000000100000069
[2ACh 0684   8]                PMU Interrupt : 000000010000007E
[2B4h 0692   8]                PMU Interrupt : 000000010000007F

[2BCh 0700   1]                         Type : 03
[2BDh 0701   2]                       Length : 0094
[2BFh 0703   1]                     Revision : 00
[2C0h 0704   4]                     Reserved : 00000000
[2C4h 0708   4]                Mapping Count : 00000000
[2C8h 0712   4]               Mapping Offset : 00000000

[2CCh 0716   8]                 Base Address : 0000000005040000
[2D4h 0724   8]                         Span : 0000000000010000
[2DCh 0732   4]                        Model : 00000001
[2E0h 0736   4]        Flags (decoded below) : 00000000
                               DVM Supported : 0
                               Coherent Walk : 0
[2E4h 0740   4]      Global Interrupt Offset : 0000003C
[2E8h 0744   4]      Context Interrupt Count : 00000008
[2ECh 0748   4]     Context Interrupt Offset : 0000004C
[2F0h 0752   4]          PMU Interrupt Count : 00000001
[2F4h 0756   4]         PMU Interrupt Offset : 0000008C

[2F8h 0760   4]                      NSgIrpt : 00000107
[2FCh 0764   4] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[300h 0768   4]                   NSgCfgIrpt : 00000105
[304h 0772   4] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[308h 0776   8]            Context Interrupt : 000000010000018C
[310h 0784   8]            Context Interrupt : 000000010000018D
[318h 0792   8]            Context Interrupt : 000000010000018E
[320h 0800   8]            Context Interrupt : 000000010000018F
[328h 0808   8]            Context Interrupt : 0000000100000190
[330h 0816   8]            Context Interrupt : 0000000100000191
[338h 0824   8]            Context Interrupt : 0000000100000192
[340h 0832   8]            Context Interrupt : 0000000100000193
[348h 0840   8]                PMU Interrupt : 00000001000000E1

[350h 0848   1]                         Type : 02
[351h 0849   2]                       Length : 0048
[353h 0851   1]                     Revision : 00
[354h 0852   4]                     Reserved : 00000000
[358h 0856   4]                Mapping Count : 00000002
[35Ch 0860   4]               Mapping Offset : 00000020

[360h 0864   8]            Memory Properties : [IORT Memory Access Properties]
[360h 0864   4]              Cache Coherency : 00000001
[364h 0868   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[365h 0869   2]                     Reserved : 0000
[367h 0871   1] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
[368h 0872   4]                ATS Attribute : 00000001
[36Ch 0876   4]           PCI Segment Number : 00000000
[370h 0880   1]            Memory Size Limit : 00
[371h 0881   3]                     Reserved : 870300

[370h 0880   4]                   Input base : 87030000
[374h 0884   4]                     ID Count : 0000000F
[378h 0888   4]                  Output Base : 00001C00
[37Ch 0892   4]             Output Reference : 00000030
[380h 0896   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[384h 0900   4]                   Input base : 87030010
[388h 0904   4]                     ID Count : 0000000F
[38Ch 0908   4]                  Output Base : 00001C10
[390h 0912   4]             Output Reference : 00000030
[394h 0916   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[398h 0920   1]                         Type : 01
[399h 0921   2]                       Length : 0321
[39Bh 0923   1]                     Revision : 00
[39Ch 0924   4]                     Reserved : 00000000
[3A0h 0928   4]                Mapping Count : 00000025
[3A4h 0932   4]               Mapping Offset : 0000003D

[3A8h 0936   4]                   Node Flags : 00000000
[3ACh 0940   8]            Memory Properties : [IORT Memory Access Properties]
[3ACh 0940   4]              Cache Coherency : 00000000
[3B0h 0944   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[3B1h 0945   2]                     Reserved : 0000
[3B3h 0947   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[3B4h 0948   1]            Memory Size Limit : 28
[3B5h 0949  10]                  Device Name : "\_SB.GPU0"
[3BFh 0959  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[3D5h 0981   4]                   Input base : 03030000
[3D9h 0985   4]                     ID Count : 00000000
[3DDh 0989   4]                  Output Base : 00000000
[3E1h 0993   4]             Output Reference : 000002BC
[3E5h 0997   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[3E9h 1001   4]                   Input base : 030A0000
[3EDh 1005   4]                     ID Count : 00000001
[3F1h 1009   4]                  Output Base : 00000001
[3F5h 1013   4]             Output Reference : 000002BC
[3F9h 1017   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[3FDh 1021   4]                   Input base : 031C0000
[401h 1025   4]                     ID Count : 00000000
[405h 1029   4]                  Output Base : 00000003
[409h 1033   4]             Output Reference : 000002BC
[40Dh 1037   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[411h 1041   4]                   Input base : 03030001
[415h 1045   4]                     ID Count : 00000000
[419h 1049   4]                  Output Base : 00000004
[41Dh 1053   4]             Output Reference : 000002BC
[421h 1057   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[425h 1061   4]                   Input base : 03030002
[429h 1065   4]                     ID Count : 00000000
[42Dh 1069   4]                  Output Base : 00000005
[431h 1073   4]             Output Reference : 000002BC
[435h 1077   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[439h 1081   4]                   Input base : 03030003
[43Dh 1085   4]                     ID Count : 00000000
[441h 1089   4]                  Output Base : 00000007
[445h 1093   4]             Output Reference : 000002BC
[449h 1097   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[44Dh 1101   4]                   Input base : 00030000
[451h 1105   4]                     ID Count : 00000000
[455h 1109   4]                  Output Base : 00000880
[459h 1113   4]             Output Reference : 00000030
[45Dh 1117   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[461h 1121   4]                   Input base : 00030001
[465h 1125   4]                     ID Count : 00000000
[469h 1129   4]                  Output Base : 00000888
[46Dh 1133   4]             Output Reference : 00000030
[471h 1137   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[475h 1141   4]                   Input base : 00030002
[479h 1145   4]                     ID Count : 00000000
[47Dh 1149   4]                  Output Base : 00000C80
[481h 1153   4]             Output Reference : 00000030
[485h 1157   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[489h 1161   4]                   Input base : 00030003
[48Dh 1165   4]                     ID Count : 00000000
[491h 1169   4]                  Output Base : 00000C88
[495h 1173   4]             Output Reference : 00000030
[499h 1177   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[49Dh 1181   4]                   Input base : 06030004
[4A1h 1185   4]                     ID Count : 00000000
[4A5h 1189   4]                  Output Base : 00001090
[4A9h 1193   4]             Output Reference : 00000030
[4ADh 1197   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[4B1h 1201   4]                   Input base : 04030000
[4B5h 1205   4]                     ID Count : 00000000
[4B9h 1209   4]                  Output Base : 000010A0
[4BDh 1213   4]             Output Reference : 00000030
[4C1h 1217   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[4C5h 1221   4]                   Input base : 04030001
[4C9h 1225   4]                     ID Count : 00000000
[4CDh 1229   4]                  Output Base : 000010A8
[4D1h 1233   4]             Output Reference : 00000030
[4D5h 1237   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[4D9h 1241   4]                   Input base : 04030002
[4DDh 1245   4]                     ID Count : 00000000
[4E1h 1249   4]                  Output Base : 000010B0
[4E5h 1253   4]             Output Reference : 00000030
[4E9h 1257   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[4EDh 1261   4]                   Input base : 000A0000
[4F1h 1265   4]                     ID Count : 00000000
[4F5h 1269   4]                  Output Base : 00000881
[4F9h 1273   4]             Output Reference : 00000030
[4FDh 1277   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[501h 1281   4]                   Input base : 000A0001
[505h 1285   4]                     ID Count : 00000000
[509h 1289   4]                  Output Base : 00000889
[50Dh 1293   4]             Output Reference : 00000030
[511h 1297   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[515h 1301   4]                   Input base : 000A0002
[519h 1305   4]                     ID Count : 00000000
[51Dh 1309   4]                  Output Base : 00000C81
[521h 1313   4]             Output Reference : 00000030
[525h 1317   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[529h 1321   4]                   Input base : 000A0003
[52Dh 1325   4]                     ID Count : 00000000
[531h 1329   4]                  Output Base : 00000C89
[535h 1333   4]             Output Reference : 00000030
[539h 1337   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[53Dh 1341   4]                   Input base : 060A0004
[541h 1345   4]                     ID Count : 00000000
[545h 1349   4]                  Output Base : 00001091
[549h 1353   4]             Output Reference : 00000030
[54Dh 1357   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[551h 1361   4]                   Input base : 040A0000
[555h 1365   4]                     ID Count : 00000000
[559h 1369   4]                  Output Base : 000010A3
[55Dh 1373   4]             Output Reference : 00000030
[561h 1377   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[565h 1381   4]                   Input base : 040A0001
[569h 1385   4]                     ID Count : 00000000
[56Dh 1389   4]                  Output Base : 000010AB
[571h 1393   4]             Output Reference : 00000030
[575h 1397   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[579h 1401   4]                   Input base : 040A0002
[57Dh 1405   4]                     ID Count : 00000000
[581h 1409   4]                  Output Base : 000010A4
[585h 1413   4]             Output Reference : 00000030
[589h 1417   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[58Dh 1421   4]                   Input base : 040A0003
[591h 1425   4]                     ID Count : 00000000
[595h 1429   4]                  Output Base : 000010AC
[599h 1433   4]             Output Reference : 00000030
[59Dh 1437   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5A1h 1441   4]                   Input base : 040A0004
[5A5h 1445   4]                     ID Count : 00000000
[5A9h 1449   4]                  Output Base : 000010B4
[5ADh 1453   4]             Output Reference : 00000030
[5B1h 1457   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5B5h 1461   4]                   Input base : 04090000
[5B9h 1465   4]                     ID Count : 00000000
[5BDh 1469   4]                  Output Base : 000010A1
[5C1h 1473   4]             Output Reference : 00000030
[5C5h 1477   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5C9h 1481   4]                   Input base : 04090001
[5CDh 1485   4]                     ID Count : 00000000
[5D1h 1489   4]                  Output Base : 000010A5
[5D5h 1493   4]             Output Reference : 00000030
[5D9h 1497   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5DDh 1501   4]                   Input base : 04090002
[5E1h 1505   4]                     ID Count : 00000000
[5E5h 1509   4]                  Output Base : 000010A9
[5E9h 1513   4]             Output Reference : 00000030
[5EDh 1517   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5F1h 1521   4]                   Input base : 04090003
[5F5h 1525   4]                     ID Count : 00000000
[5F9h 1529   4]                  Output Base : 000010AD
[5FDh 1533   4]             Output Reference : 00000030
[601h 1537   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[605h 1541   4]                   Input base : 040C0000
[609h 1545   4]                     ID Count : 00000000
[60Dh 1549   4]                  Output Base : 000010B2
[611h 1553   4]             Output Reference : 00000030
[615h 1557   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[619h 1561   4]                   Input base : 0C030000
[61Dh 1565   4]                     ID Count : 00000003
[621h 1569   4]                  Output Base : 00000704
[625h 1573   4]             Output Reference : 00000030
[629h 1577   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[62Dh 1581   4]                   Input base : 0C030004
[631h 1585   4]                     ID Count : 00000001
[635h 1589   4]                  Output Base : 00000708
[639h 1593   4]             Output Reference : 00000030
[63Dh 1597   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[641h 1601   4]                   Input base : 0C030006
[645h 1605   4]                     ID Count : 00000000
[649h 1609   4]                  Output Base : 00000712
[64Dh 1613   4]             Output Reference : 00000030
[651h 1617   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[655h 1621   4]                   Input base : 0C030007
[659h 1625   4]                     ID Count : 00000000
[65Dh 1629   4]                  Output Base : 0000071F
[661h 1633   4]             Output Reference : 00000030
[665h 1637   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[669h 1641   4]                   Input base : 0C030008
[66Dh 1645   4]                     ID Count : 00000005
[671h 1649   4]                  Output Base : 00000714
[675h 1653   4]             Output Reference : 00000030
[679h 1657   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[67Dh 1661   4]                   Input base : 0C03000E
[681h 1665   4]                     ID Count : 00000001
[685h 1669   4]                  Output Base : 0000071C
[689h 1673   4]             Output Reference : 00000030
[68Dh 1677   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[691h 1681   4]                   Input base : 0C090000
[695h 1685   4]                     ID Count : 00000000
[699h 1689   4]                  Output Base : 0000071E
[69Dh 1693   4]             Output Reference : 00000030
[6A1h 1697   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[6A5h 1701   4]                   Input base : 0C090001
[6A9h 1705   4]                     ID Count : 00000000
[6ADh 1709   4]                  Output Base : 00000713
[6B1h 1713   4]             Output Reference : 00000030
[6B5h 1717   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[6B9h 1721   1]                         Type : 01
[6BAh 1722   2]                       Length : 0065
[6BCh 1724   1]                     Revision : 00
[6BDh 1725   4]                     Reserved : 00000000
[6C1h 1729   4]                Mapping Count : 00000002
[6C5h 1733   4]               Mapping Offset : 0000003D

[6C9h 1737   4]                   Node Flags : 00000000
[6CDh 1741   8]            Memory Properties : [IORT Memory Access Properties]
[6CDh 1741   4]              Cache Coherency : 00000000
[6D1h 1745   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[6D2h 1746   2]                     Reserved : 0000
[6D4h 1748   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[6D5h 1749   1]            Memory Size Limit : 24
[6D6h 1750  10]                  Device Name : "\_SB.JPGE"
[6E0h 1760  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[6F6h 1782   4]                   Input base : 02030000
[6FAh 1786   4]                     ID Count : 00000000
[6FEh 1790   4]                  Output Base : 00001060
[702h 1794   4]             Output Reference : 00000030
[706h 1798   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[70Ah 1802   4]                   Input base : 02030001
[70Eh 1806   4]                     ID Count : 00000000
[712h 1810   4]                  Output Base : 00001068
[716h 1814   4]             Output Reference : 00000030
[71Ah 1818   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[71Eh 1822   1]                         Type : 01
[71Fh 1823   2]                       Length : 02D1
[721h 1825   1]                     Revision : 00
[722h 1826   4]                     Reserved : 00000000
[726h 1830   4]                Mapping Count : 00000021
[72Ah 1834   4]               Mapping Offset : 0000003D

[72Eh 1838   4]                   Node Flags : 00000000
[732h 1842   8]            Memory Properties : [IORT Memory Access Properties]
[732h 1842   4]              Cache Coherency : 00000000
[736h 1846   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[737h 1847   2]                     Reserved : 0000
[739h 1849   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[73Ah 1850   1]            Memory Size Limit : 24
[73Bh 1851  15]                  Device Name : "\_SB.GPU0.AVS0"
[74Ah 1866  17]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 

[75Bh 1883   4]                   Input base : 01030000
[75Fh 1887   4]                     ID Count : 00000000
[763h 1891   4]                  Output Base : 00001078
[767h 1895   4]             Output Reference : 00000030
[76Bh 1899   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[76Fh 1903   4]                   Input base : 01030001
[773h 1907   4]                     ID Count : 00000000
[777h 1911   4]                  Output Base : 0000107A
[77Bh 1915   4]             Output Reference : 00000030
[77Fh 1919   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[783h 1923   4]                   Input base : 01030002
[787h 1927   4]                     ID Count : 00000000
[78Bh 1931   4]                  Output Base : 00001070
[78Fh 1935   4]             Output Reference : 00000030
[793h 1939   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[797h 1943   4]                   Input base : 01030003
[79Bh 1947   4]                     ID Count : 00000000
[79Fh 1951   4]                  Output Base : 00001020
[7A3h 1955   4]             Output Reference : 00000030
[7A7h 1959   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7ABh 1963   4]                   Input base : 01030004
[7AFh 1967   4]                     ID Count : 00000000
[7B3h 1971   4]                  Output Base : 00001028
[7B7h 1975   4]             Output Reference : 00000030
[7BBh 1979   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7BFh 1983   4]                   Input base : 01030005
[7C3h 1987   4]                     ID Count : 00000000
[7C7h 1991   4]                  Output Base : 00001040
[7CBh 1995   4]             Output Reference : 00000030
[7CFh 1999   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7D3h 2003   4]                   Input base : 01030006
[7D7h 2007   4]                     ID Count : 00000000
[7DBh 2011   4]                  Output Base : 00001048
[7DFh 2015   4]             Output Reference : 00000030
[7E3h 2019   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7E7h 2023   4]                   Input base : 01030007
[7EBh 2027   4]                     ID Count : 00000000
[7EFh 2031   4]                  Output Base : 00001030
[7F3h 2035   4]             Output Reference : 00000030
[7F7h 2039   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[7FBh 2043   4]                   Input base : 01030008
[7FFh 2047   4]                     ID Count : 00000000
[803h 2051   4]                  Output Base : 00001050
[807h 2055   4]             Output Reference : 00000030
[80Bh 2059   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[80Fh 2063   4]                   Input base : 01030009
[813h 2067   4]                     ID Count : 00000000
[817h 2071   4]                  Output Base : 00001038
[81Bh 2075   4]             Output Reference : 00000030
[81Fh 2079   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[823h 2083   4]                   Input base : 0103000A
[827h 2087   4]                     ID Count : 00000000
[82Bh 2091   4]                  Output Base : 00001058
[82Fh 2095   4]             Output Reference : 00000030
[833h 2099   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[837h 2103   4]                   Input base : 0103000B
[83Bh 2107   4]                     ID Count : 00000000
[83Fh 2111   4]                  Output Base : 00000C08
[843h 2115   4]             Output Reference : 00000030
[847h 2119   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[84Bh 2123   4]                   Input base : 0103000C
[84Fh 2127   4]                     ID Count : 00000000
[853h 2131   4]                  Output Base : 00000C10
[857h 2135   4]             Output Reference : 00000030
[85Bh 2139   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[85Fh 2143   4]                   Input base : 0103000D
[863h 2147   4]                     ID Count : 00000000
[867h 2151   4]                  Output Base : 00000808
[86Bh 2155   4]             Output Reference : 00000030
[86Fh 2159   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[873h 2163   4]                   Input base : 0103000E
[877h 2167   4]                     ID Count : 00000000
[87Bh 2171   4]                  Output Base : 00000810
[87Fh 2175   4]             Output Reference : 00000030
[883h 2179   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[887h 2183   4]                   Input base : 0103000F
[88Bh 2187   4]                     ID Count : 00000000
[88Fh 2191   4]                  Output Base : 00000C18
[893h 2195   4]             Output Reference : 00000030
[897h 2199   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[89Bh 2203   4]                   Input base : 01030010
[89Fh 2207   4]                     ID Count : 00000000
[8A3h 2211   4]                  Output Base : 00000818
[8A7h 2215   4]             Output Reference : 00000030
[8ABh 2219   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[8AFh 2223   4]                   Input base : 01030011
[8B3h 2227   4]                     ID Count : 00000000
[8B7h 2231   4]                  Output Base : 00001000
[8BBh 2235   4]             Output Reference : 00000030
[8BFh 2239   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[8C3h 2243   4]                   Input base : 010D0000
[8C7h 2247   4]                     ID Count : 00000000
[8CBh 2251   4]                  Output Base : 00000809
[8CFh 2255   4]             Output Reference : 00000030
[8D3h 2259   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[8D7h 2263   4]                   Input base : 010D0001
[8DBh 2267   4]                     ID Count : 00000000
[8DFh 2271   4]                  Output Base : 00000811
[8E3h 2275   4]             Output Reference : 00000030
[8E7h 2279   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[8EBh 2283   4]                   Input base : 010D0002
[8EFh 2287   4]                     ID Count : 00000000
[8F3h 2291   4]                  Output Base : 00000819
[8F7h 2295   4]             Output Reference : 00000030
[8FBh 2299   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[8FFh 2303   4]                   Input base : 010D0003
[903h 2307   4]                     ID Count : 00000000
[907h 2311   4]                  Output Base : 00000C09
[90Bh 2315   4]             Output Reference : 00000030
[90Fh 2319   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[913h 2323   4]                   Input base : 010D0004
[917h 2327   4]                     ID Count : 00000000
[91Bh 2331   4]                  Output Base : 00000C11
[91Fh 2335   4]             Output Reference : 00000030
[923h 2339   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[927h 2343   4]                   Input base : 010D0005
[92Bh 2347   4]                     ID Count : 00000000
[92Fh 2351   4]                  Output Base : 00000C19
[933h 2355   4]             Output Reference : 00000030
[937h 2359   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[93Bh 2363   4]                   Input base : 010D0006
[93Fh 2367   4]                     ID Count : 00000000
[943h 2371   4]                  Output Base : 00001001
[947h 2375   4]             Output Reference : 00000030
[94Bh 2379   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[94Fh 2383   4]                   Input base : 010D0007
[953h 2387   4]                     ID Count : 00000000
[957h 2391   4]                  Output Base : 00001021
[95Bh 2395   4]             Output Reference : 00000030
[95Fh 2399   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[963h 2403   4]                   Input base : 010D0008
[967h 2407   4]                     ID Count : 00000000
[96Bh 2411   4]                  Output Base : 00001029
[96Fh 2415   4]             Output Reference : 00000030
[973h 2419   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[977h 2423   4]                   Input base : 010D0009
[97Bh 2427   4]                     ID Count : 00000000
[97Fh 2431   4]                  Output Base : 00001031
[983h 2435   4]             Output Reference : 00000030
[987h 2439   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[98Bh 2443   4]                   Input base : 010D000A
[98Fh 2447   4]                     ID Count : 00000000
[993h 2451   4]                  Output Base : 00001039
[997h 2455   4]             Output Reference : 00000030
[99Bh 2459   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[99Fh 2463   4]                   Input base : 010D000B
[9A3h 2467   4]                     ID Count : 00000000
[9A7h 2471   4]                  Output Base : 00001041
[9ABh 2475   4]             Output Reference : 00000030
[9AFh 2479   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9B3h 2483   4]                   Input base : 010D000C
[9B7h 2487   4]                     ID Count : 00000000
[9BBh 2491   4]                  Output Base : 00001049
[9BFh 2495   4]             Output Reference : 00000030
[9C3h 2499   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9C7h 2503   4]                   Input base : 010D000D
[9CBh 2507   4]                     ID Count : 00000000
[9CFh 2511   4]                  Output Base : 00001051
[9D3h 2515   4]             Output Reference : 00000030
[9D7h 2519   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9DBh 2523   4]                   Input base : 010D000E
[9DFh 2527   4]                     ID Count : 00000000
[9E3h 2531   4]                  Output Base : 00001059
[9E7h 2535   4]             Output Reference : 00000030
[9EBh 2539   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9EFh 2543   1]                         Type : 01
[9F0h 2544   2]                       Length : 0105
[9F2h 2546   1]                     Revision : 00
[9F3h 2547   4]                     Reserved : 00000000
[9F7h 2551   4]                Mapping Count : 0000000A
[9FBh 2555   4]               Mapping Offset : 0000003D

[9FFh 2559   4]                   Node Flags : 00000000
[A03h 2563   8]            Memory Properties : [IORT Memory Access Properties]
[A03h 2563   4]              Cache Coherency : 00000000
[A07h 2567   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[A08h 2568   2]                     Reserved : 0000
[A0Ah 2570   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[A0Bh 2571   1]            Memory Size Limit : 24
[A0Ch 2572  20]                  Device Name : "\_SB.ADSP.SLM1.ADCM"
[A20h 2592  12]                      Padding : 00 00 00 00 00 00 00 00 00 00 00 00 

[A2Ch 2604   4]                   Input base : 07030000
[A30h 2608   4]                     ID Count : 00000000
[A34h 2612   4]                  Output Base : 00001821
[A38h 2616   4]             Output Reference : 00000030
[A3Ch 2620   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A40h 2624   4]                   Input base : 07030004
[A44h 2628   4]                     ID Count : 00000000
[A48h 2632   4]                  Output Base : 00001806
[A4Ch 2636   4]             Output Reference : 00000030
[A50h 2640   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A54h 2644   4]                   Input base : 07030005
[A58h 2648   4]                     ID Count : 00000004
[A5Ch 2652   4]                  Output Base : 0000180D
[A60h 2656   4]             Output Reference : 00000030
[A64h 2660   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A68h 2664   4]                   Input base : 0703000A
[A6Ch 2668   4]                     ID Count : 00000000
[A70h 2672   4]                  Output Base : 00001813
[A74h 2676   4]             Output Reference : 00000030
[A78h 2680   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A7Ch 2684   4]                   Input base : 07160000
[A80h 2688   4]                     ID Count : 00000005
[A84h 2692   4]                  Output Base : 00001807
[A88h 2696   4]             Output Reference : 00000030
[A8Ch 2700   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A90h 2704   4]                   Input base : 07160006
[A94h 2708   4]                     ID Count : 00000005
[A98h 2712   4]                  Output Base : 00001800
[A9Ch 2716   4]             Output Reference : 00000030
[AA0h 2720   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AA4h 2724   4]                   Input base : 0716000C
[AA8h 2728   4]                     ID Count : 00000000
[AACh 2732   4]                  Output Base : 00001812
[AB0h 2736   4]             Output Reference : 00000030
[AB4h 2740   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AB8h 2744   4]                   Input base : 0716000D
[ABCh 2748   4]                     ID Count : 00000006
[AC0h 2752   4]                  Output Base : 00001814
[AC4h 2756   4]             Output Reference : 00000030
[AC8h 2760   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[ACCh 2764   4]                   Input base : 07060000
[AD0h 2768   4]                     ID Count : 00000000
[AD4h 2772   4]                  Output Base : 00001820
[AD8h 2776   4]             Output Reference : 00000030
[ADCh 2780   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AE0h 2784   4]                   Input base : 071F0000
[AE4h 2788   4]                     ID Count : 00000000
[AE8h 2792   4]                  Output Base : 00001822
[AECh 2796   4]             Output Reference : 00000030
[AF0h 2800   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AF4h 2804   1]                         Type : 01
[AF5h 2805   2]                       Length : 0051
[AF7h 2807   1]                     Revision : 00
[AF8h 2808   4]                     Reserved : 00000000
[AFCh 2812   4]                Mapping Count : 00000001
[B00h 2816   4]               Mapping Offset : 0000003D

[B04h 2820   4]                   Node Flags : 00000000
[B08h 2824   8]            Memory Properties : [IORT Memory Access Properties]
[B08h 2824   4]              Cache Coherency : 00000000
[B0Ch 2828   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[B0Dh 2829   2]                     Reserved : 0000
[B0Fh 2831   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[B10h 2832   1]            Memory Size Limit : 24
[B11h 2833  10]                  Device Name : "\_SB.URS0"
[B1Bh 2843  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[B31h 2865   4]                   Input base : 80030000
[B35h 2869   4]                     ID Count : 00000000
[B39h 2873   4]                  Output Base : 00000740
[B3Dh 2877   4]             Output Reference : 00000030
[B41h 2881   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B45h 2885   1]                         Type : 01
[B46h 2886   2]                       Length : 0051
[B48h 2888   1]                     Revision : 00
[B49h 2889   4]                     Reserved : 00000000
[B4Dh 2893   4]                Mapping Count : 00000001
[B51h 2897   4]               Mapping Offset : 0000003D

[B55h 2901   4]                   Node Flags : 00000000
[B59h 2905   8]            Memory Properties : [IORT Memory Access Properties]
[B59h 2905   4]              Cache Coherency : 00000000
[B5Dh 2909   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[B5Eh 2910   2]                     Reserved : 0000
[B60h 2912   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[B61h 2913   1]            Memory Size Limit : 24
[B62h 2914  10]                  Device Name : "\_SB.USB0"
[B6Ch 2924  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[B82h 2946   4]                   Input base : 80030000
[B86h 2950   4]                     ID Count : 00000000
[B8Ah 2954   4]                  Output Base : 00000740
[B8Eh 2958   4]             Output Reference : 00000030
[B92h 2962   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B96h 2966   1]                         Type : 01
[B97h 2967   2]                       Length : 0051
[B99h 2969   1]                     Revision : 00
[B9Ah 2970   4]                     Reserved : 00000000
[B9Eh 2974   4]                Mapping Count : 00000001
[BA2h 2978   4]               Mapping Offset : 0000003D

[BA6h 2982   4]                   Node Flags : 00000000
[BAAh 2986   8]            Memory Properties : [IORT Memory Access Properties]
[BAAh 2986   4]              Cache Coherency : 00000000
[BAEh 2990   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[BAFh 2991   2]                     Reserved : 0000
[BB1h 2993   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[BB2h 2994   1]            Memory Size Limit : 24
[BB3h 2995  10]                  Device Name : "\_SB.URS1"
[BBDh 3005  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[BD3h 3027   4]                   Input base : 80030001
[BD7h 3031   4]                     ID Count : 00000000
[BDBh 3035   4]                  Output Base : 00000760
[BDFh 3039   4]             Output Reference : 00000030
[BE3h 3043   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BE7h 3047   1]                         Type : 01
[BE8h 3048   2]                       Length : 0051
[BEAh 3050   1]                     Revision : 00
[BEBh 3051   4]                     Reserved : 00000000
[BEFh 3055   4]                Mapping Count : 00000001
[BF3h 3059   4]               Mapping Offset : 0000003D

[BF7h 3063   4]                   Node Flags : 00000000
[BFBh 3067   8]            Memory Properties : [IORT Memory Access Properties]
[BFBh 3067   4]              Cache Coherency : 00000000
[BFFh 3071   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[C00h 3072   2]                     Reserved : 0000
[C02h 3074   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[C03h 3075   1]            Memory Size Limit : 24
[C04h 3076  10]                  Device Name : "\_SB.USB1"
[C0Eh 3086  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[C24h 3108   4]                   Input base : 80030001
[C28h 3112   4]                     ID Count : 00000000
[C2Ch 3116   4]                  Output Base : 00000760
[C30h 3120   4]             Output Reference : 00000030
[C34h 3124   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C38h 3128   1]                         Type : 01
[C39h 3129   2]                       Length : 00A1
[C3Bh 3131   1]                     Revision : 00
[C3Ch 3132   4]                     Reserved : 00000000
[C40h 3136   4]                Mapping Count : 00000005
[C44h 3140   4]               Mapping Offset : 0000003D

[C48h 3144   4]                   Node Flags : 00000000
[C4Ch 3148   8]            Memory Properties : [IORT Memory Access Properties]
[C4Ch 3148   4]              Cache Coherency : 00000000
[C50h 3152   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[C51h 3153   2]                     Reserved : 0000
[C53h 3155   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[C54h 3156   1]            Memory Size Limit : 24
[C55h 3157  10]                  Device Name : "\_SB.CDSP"
[C5Fh 3167  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[C75h 3189   4]                   Input base : 830A0000
[C79h 3193   4]                     ID Count : 00000000
[C7Dh 3197   4]                  Output Base : 00001409
[C81h 3201   4]             Output Reference : 00000030
[C85h 3205   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C89h 3209   4]                   Input base : 84030000
[C8Dh 3213   4]                     ID Count : 00000005
[C91h 3217   4]                  Output Base : 00001411
[C95h 3221   4]             Output Reference : 00000030
[C99h 3225   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C9Dh 3229   4]                   Input base : 840A0000
[CA1h 3233   4]                     ID Count : 00000000
[CA5h 3237   4]                  Output Base : 00001419
[CA9h 3241   4]             Output Reference : 00000030
[CADh 3245   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[CB1h 3249   4]                   Input base : 0F1E0000
[CB5h 3253   4]                     ID Count : 00000000
[CB9h 3257   4]                  Output Base : 00001420
[CBDh 3261   4]             Output Reference : 00000030
[CC1h 3265   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[CC5h 3269   4]                   Input base : 0F2A0000
[CC9h 3273   4]                     ID Count : 00000000
[CCDh 3277   4]                  Output Base : 0000142A
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
[CF6h 3318   9]                  Device Name : "\_SB.IPA"
[CFFh 3327  23]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 

[D16h 3350   4]                   Input base : 0B030000
[D1Ah 3354   4]                     ID Count : 00000002
[D1Eh 3358   4]                  Output Base : 00000720
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
[D47h 3399   9]                  Device Name : "\_SB.QUP"
[D50h 3408  23]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 

[D67h 3431   4]                   Input base : 10030000
[D6Bh 3435   4]                     ID Count : 00000000
[D6Fh 3439   4]                  Output Base : 00000003
[D73h 3443   4]             Output Reference : 00000030
[D77h 3447   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D7Bh 3451   4]                   Input base : 10030001
[D7Fh 3455   4]                     ID Count : 00000000
[D83h 3459   4]                  Output Base : 00000016
[D87h 3463   4]             Output Reference : 00000030
[D8Bh 3467   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D8Fh 3471   4]                   Input base : 12030002
[D93h 3475   4]                     ID Count : 00000000
[D97h 3479   4]                  Output Base : 000006C3
[D9Bh 3483   4]             Output Reference : 00000030
[D9Fh 3487   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DA3h 3491   4]                   Input base : 12030003
[DA7h 3495   4]                     ID Count : 00000000
[DABh 3499   4]                  Output Base : 000006D6
[DAFh 3503   4]             Output Reference : 00000030
[DB3h 3507   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DB7h 3511   1]                         Type : 01
[DB8h 3512   2]                       Length : 008D
[DBAh 3514   1]                     Revision : 00
[DBBh 3515   4]                     Reserved : 00000000
[DBFh 3519   4]                Mapping Count : 00000004
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
[DD4h 3540  10]                  Device Name : "\_SB.SEN1"
[DDEh 3550  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[DF4h 3572   4]                   Input base : 85030000
[DF8h 3576   4]                     ID Count : 00000000
[DFCh 3580   4]                  Output Base : 000006E3
[E00h 3584   4]             Output Reference : 00000030
[E04h 3588   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E08h 3592   4]                   Input base : 85030001
[E0Ch 3596   4]                     ID Count : 00000002
[E10h 3600   4]                  Output Base : 000007A1
[E14h 3604   4]             Output Reference : 00000030
[E18h 3608   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E1Ch 3612   4]                   Input base : 85050000
[E20h 3616   4]                     ID Count : 00000000
[E24h 3620   4]                  Output Base : 000006EB
[E28h 3624   4]             Output Reference : 00000030
[E2Ch 3628   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E30h 3632   4]                   Input base : 85050001
[E34h 3636   4]                     ID Count : 00000000
[E38h 3640   4]                  Output Base : 000007A0
[E3Ch 3644   4]             Output Reference : 00000030
[E40h 3648   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E44h 3652   1]                         Type : 01
[E45h 3653   2]                       Length : 0079
[E47h 3655   1]                     Revision : 00
[E48h 3656   4]                     Reserved : 00000000
[E4Ch 3660   4]                Mapping Count : 00000003
[E50h 3664   4]               Mapping Offset : 0000003D

[E54h 3668   4]                   Node Flags : 00000000
[E58h 3672   8]            Memory Properties : [IORT Memory Access Properties]
[E58h 3672   4]              Cache Coherency : 00000000
[E5Ch 3676   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[E5Dh 3677   2]                     Reserved : 0000
[E5Fh 3679   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[E60h 3680   1]            Memory Size Limit : 24
[E61h 3681  15]                  Device Name : "\_SB.AMSS.QWLN"
[E70h 3696  17]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 

[E81h 3713   4]                   Input base : 11030000
[E85h 3717   4]                     ID Count : 00000001
[E89h 3721   4]                  Output Base : 00000040
[E8Dh 3725   4]             Output Reference : 00000030
[E91h 3729   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E95h 3733   4]                   Input base : 11190000
[E99h 3737   4]                     ID Count : 00000000
[E9Dh 3741   4]                  Output Base : 00000042
[EA1h 3745   4]             Output Reference : 00000030
[EA5h 3749   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[EA9h 3753   4]                   Input base : 11180000
[EADh 3757   4]                     ID Count : 00000000
[EB1h 3761   4]                  Output Base : 00000043
[EB5h 3765   4]             Output Reference : 00000030
[EB9h 3769   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[EBDh 3773   1]                         Type : 01
[EBEh 3774   2]                       Length : 0065
[EC0h 3776   1]                     Revision : 00
[EC1h 3777   4]                     Reserved : 00000000
[EC5h 3781   4]                Mapping Count : 00000002
[EC9h 3785   4]               Mapping Offset : 0000003D

[ECDh 3789   4]                   Node Flags : 00000000
[ED1h 3793   8]            Memory Properties : [IORT Memory Access Properties]
[ED1h 3793   4]              Cache Coherency : 00000000
[ED5h 3797   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[ED6h 3798   2]                     Reserved : 0000
[ED8h 3800   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[ED9h 3801   1]            Memory Size Limit : 24
[EDAh 3802  10]                  Device Name : "\_SB.UFS0"
[EE4h 3812  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[EFAh 3834   4]                   Input base : 81030000
[EFEh 3838   4]                     ID Count : 00000000
[F02h 3842   4]                  Output Base : 000000E0
[F06h 3846   4]             Output Reference : 00000030
[F0Ah 3850   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[F0Eh 3854   4]                   Input base : 81030001
[F12h 3858   4]                     ID Count : 00000000
[F16h 3862   4]                  Output Base : 00000100
[F1Ah 3866   4]             Output Reference : 00000030
[F1Eh 3870   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[F22h 3874   1]                         Type : 01
[F23h 3875   2]                       Length : 0065
[F25h 3877   1]                     Revision : 00
[F26h 3878   4]                     Reserved : 00000000
[F2Ah 3882   4]                Mapping Count : 00000002
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
[F3Fh 3903  10]                  Device Name : "\_SB.SDC2"
[F49h 3913  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[F5Fh 3935   4]                   Input base : 86030000
[F63h 3939   4]                     ID Count : 0000000F
[F67h 3943   4]                  Output Base : 000000A0
[F6Bh 3947   4]             Output Reference : 00000030
[F6Fh 3951   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[F73h 3955   4]                   Input base : 86030010
[F77h 3959   4]                     ID Count : 0000000F
[F7Bh 3963   4]                  Output Base : 000000C0
[F7Fh 3967   4]             Output Reference : 00000030
[F83h 3971   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[F87h 3975   1]                         Type : 01
[F88h 3976   2]                       Length : 0051
[F8Ah 3978   1]                     Revision : 00
[F8Bh 3979   4]                     Reserved : 00000000
[F8Fh 3983   4]                Mapping Count : 00000001
[F93h 3987   4]               Mapping Offset : 0000003D

[F97h 3991   4]                   Node Flags : 00000000
[F9Bh 3995   8]            Memory Properties : [IORT Memory Access Properties]
[F9Bh 3995   4]              Cache Coherency : 00000000
[F9Fh 3999   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[FA0h 4000   2]                     Reserved : 0000
[FA2h 4002   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[FA3h 4003   1]            Memory Size Limit : 24
[FA4h 4004  10]                  Device Name : "\_SB.TSC5"
[FAEh 4014  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[FC4h 4036   4]                   Input base : 88030000
[FC8h 4040   4]                     ID Count : 0000000F
[FCCh 4044   4]                  Output Base : 00000020
[FD0h 4048   4]             Output Reference : 00000030
[FD4h 4052   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[FD8h 4056   1]                         Type : 01
[FD9h 4057   2]                       Length : 0051
[FDBh 4059   1]                     Revision : 00
[FDCh 4060   4]                     Reserved : 00000000
[FE0h 4064   4]                Mapping Count : 00000001
[FE4h 4068   4]               Mapping Offset : 0000003D

[FE8h 4072   4]                   Node Flags : 00000000
[FECh 4076   8]            Memory Properties : [IORT Memory Access Properties]
[FECh 4076   4]              Cache Coherency : 00000000
[FF0h 4080   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[FF1h 4081   2]                     Reserved : 0000
[FF3h 4083   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[FF4h 4084   1]            Memory Size Limit : 24
[FF5h 4085  10]                  Device Name : "\_SB.QDSS"
[FFFh 4095  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[1015h 4117   4]                   Input base : 89030000
[1019h 4121   4]                     ID Count : 00000000
[101Dh 4125   4]                  Output Base : 00000460
[1021h 4129   4]             Output Reference : 00000030
[1025h 4133   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[1029h 4137   1]                         Type : 01
[102Ah 4138   2]                       Length : 00A1
[102Ch 4140   1]                     Revision : 00
[102Dh 4141   4]                     Reserved : 00000000
[1031h 4145   4]                Mapping Count : 00000005
[1035h 4149   4]               Mapping Offset : 0000003D

[1039h 4153   4]                   Node Flags : 00000000
[103Dh 4157   8]            Memory Properties : [IORT Memory Access Properties]
[103Dh 4157   4]              Cache Coherency : 00000000
[1041h 4161   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1042h 4162   2]                     Reserved : 0000
[1044h 4164   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[1045h 4165   1]            Memory Size Limit : 24
[1046h 4166  10]                  Device Name : "\_SB.ARPC"
[1050h 4176  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[1066h 4198   4]                   Input base : 1703000C
[106Ah 4202   4]                     ID Count : 00000000
[106Eh 4206   4]                  Output Base : 00001823
[1072h 4210   4]             Output Reference : 00000030
[1076h 4214   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[107Ah 4218   4]                   Input base : 1703000D
[107Eh 4222   4]                     ID Count : 00000000
[1082h 4226   4]                  Output Base : 00001824
[1086h 4230   4]             Output Reference : 00000030
[108Ah 4234   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[108Eh 4238   4]                   Input base : 17030000
[1092h 4242   4]                     ID Count : 00000005
[1096h 4246   4]                  Output Base : 00001401
[109Ah 4250   4]             Output Reference : 00000030
[109Eh 4254   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[10A2h 4258   4]                   Input base : 17030006
[10A6h 4262   4]                     ID Count : 00000005
[10AAh 4266   4]                  Output Base : 00001421
[10AEh 4270   4]             Output Reference : 00000030
[10B2h 4274   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[10B6h 4278   4]                   Input base : 170A0000
[10BAh 4282   4]                     ID Count : 00000000
[10BEh 4286   4]                  Output Base : 00001429
[10C2h 4290   4]             Output Reference : 00000030
[10C6h 4294   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[10CAh 4298   1]                         Type : 01
[10CBh 4299   2]                       Length : 0051
[10CDh 4301   1]                     Revision : 00
[10CEh 4302   4]                     Reserved : 00000000
[10D2h 4306   4]                Mapping Count : 00000001
[10D6h 4310   4]               Mapping Offset : 0000003D

[10DAh 4314   4]                   Node Flags : 00000000
[10DEh 4318   8]            Memory Properties : [IORT Memory Access Properties]
[10DEh 4318   4]              Cache Coherency : 00000000
[10E2h 4322   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[10E3h 4323   2]                     Reserved : 0000
[10E5h 4325   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[10E6h 4326   1]            Memory Size Limit : 24
[10E7h 4327  10]                  Device Name : "\_SB.USBA"
[10F1h 4337  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[1107h 4359   4]                   Input base : 0703000B
[110Bh 4363   4]                     ID Count : 00000000
[110Fh 4367   4]                  Output Base : 0000182C
[1113h 4371   4]             Output Reference : 00000030
[1117h 4375   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

Raw Table Data: Length 4379 (0x111B)

    0000: 49 4F 52 54 1B 11 00 00 00 A2 48 55 41 57 45 49  // IORT......HUAWEI
    0010: 51 43 4F 4D 45 44 4B 32 50 08 00 00 51 43 4F 4D  // QCOMEDK2P...QCOM
    0020: 01 00 00 00 16 00 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0030: 03 8C 02 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0040: 00 00 00 15 00 00 00 00 00 00 11 00 00 00 00 00  // ................
    0050: 03 00 00 00 00 00 00 00 3C 00 00 00 40 00 00 00  // ........<...@...
    0060: 4C 00 00 00 08 00 00 00 4C 02 00 00 61 00 00 00  // L.......L...a...
    0070: 00 00 00 00 05 01 00 00 00 00 00 00 80 00 00 00  // ................
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
    0270: 01 00 00 00 77 01 00 00 01 00 00 00 64 00 00 00  // ....w.......d...
    0280: 01 00 00 00 65 00 00 00 01 00 00 00 66 00 00 00  // ....e.......f...
    0290: 01 00 00 00 67 00 00 00 01 00 00 00 68 00 00 00  // ....g.......h...
    02A0: 01 00 00 00 69 00 00 00 01 00 00 00 7E 00 00 00  // ....i.......~...
    02B0: 01 00 00 00 7F 00 00 00 01 00 00 00 03 94 00 00  // ................
    02C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 04 05  // ................
    02D0: 00 00 00 00 00 00 01 00 00 00 00 00 01 00 00 00  // ................
    02E0: 00 00 00 00 3C 00 00 00 08 00 00 00 4C 00 00 00  // ....<.......L...
    02F0: 01 00 00 00 8C 00 00 00 07 01 00 00 00 00 00 00  // ................
    0300: 05 01 00 00 00 00 00 00 8C 01 00 00 01 00 00 00  // ................
    0310: 8D 01 00 00 01 00 00 00 8E 01 00 00 01 00 00 00  // ................
    0320: 8F 01 00 00 01 00 00 00 90 01 00 00 01 00 00 00  // ................
    0330: 91 01 00 00 01 00 00 00 92 01 00 00 01 00 00 00  // ................
    0340: 93 01 00 00 01 00 00 00 E1 00 00 00 01 00 00 00  // ................
    0350: 02 48 00 00 00 00 00 00 02 00 00 00 20 00 00 00  // .H.......... ...
    0360: 01 00 00 00 00 00 00 01 01 00 00 00 00 00 00 00  // ................
    0370: 00 00 03 87 0F 00 00 00 00 1C 00 00 30 00 00 00  // ............0...
    0380: 00 00 00 00 10 00 03 87 0F 00 00 00 10 1C 00 00  // ................
    0390: 30 00 00 00 00 00 00 00 01 21 03 00 00 00 00 00  // 0........!......
    03A0: 25 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00  // %...=...........
    03B0: 00 00 00 00 28 5C 5F 53 42 2E 47 50 55 30 00 00  // ....(\_SB.GPU0..
    03C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    03D0: 00 00 00 00 00 00 00 03 03 00 00 00 00 00 00 00  // ................
    03E0: 00 BC 02 00 00 00 00 00 00 00 00 0A 03 01 00 00  // ................
    03F0: 00 01 00 00 00 BC 02 00 00 00 00 00 00 00 00 1C  // ................
    0400: 03 00 00 00 00 03 00 00 00 BC 02 00 00 00 00 00  // ................
    0410: 00 01 00 03 03 00 00 00 00 04 00 00 00 BC 02 00  // ................
    0420: 00 00 00 00 00 02 00 03 03 00 00 00 00 05 00 00  // ................
    0430: 00 BC 02 00 00 00 00 00 00 03 00 03 03 00 00 00  // ................
    0440: 00 07 00 00 00 BC 02 00 00 00 00 00 00 00 00 03  // ................
    0450: 00 00 00 00 00 80 08 00 00 30 00 00 00 00 00 00  // .........0......
    0460: 00 01 00 03 00 00 00 00 00 88 08 00 00 30 00 00  // .............0..
    0470: 00 00 00 00 00 02 00 03 00 00 00 00 00 80 0C 00  // ................
    0480: 00 30 00 00 00 00 00 00 00 03 00 03 00 00 00 00  // .0..............
    0490: 00 88 0C 00 00 30 00 00 00 00 00 00 00 04 00 03  // .....0..........
    04A0: 06 00 00 00 00 90 10 00 00 30 00 00 00 00 00 00  // .........0......
    04B0: 00 00 00 03 04 00 00 00 00 A0 10 00 00 30 00 00  // .............0..
    04C0: 00 00 00 00 00 01 00 03 04 00 00 00 00 A8 10 00  // ................
    04D0: 00 30 00 00 00 00 00 00 00 02 00 03 04 00 00 00  // .0..............
    04E0: 00 B0 10 00 00 30 00 00 00 00 00 00 00 00 00 0A  // .....0..........
    04F0: 00 00 00 00 00 81 08 00 00 30 00 00 00 00 00 00  // .........0......
    0500: 00 01 00 0A 00 00 00 00 00 89 08 00 00 30 00 00  // .............0..
    0510: 00 00 00 00 00 02 00 0A 00 00 00 00 00 81 0C 00  // ................
    0520: 00 30 00 00 00 00 00 00 00 03 00 0A 00 00 00 00  // .0..............
    0530: 00 89 0C 00 00 30 00 00 00 00 00 00 00 04 00 0A  // .....0..........
    0540: 06 00 00 00 00 91 10 00 00 30 00 00 00 00 00 00  // .........0......
    0550: 00 00 00 0A 04 00 00 00 00 A3 10 00 00 30 00 00  // .............0..
    0560: 00 00 00 00 00 01 00 0A 04 00 00 00 00 AB 10 00  // ................
    0570: 00 30 00 00 00 00 00 00 00 02 00 0A 04 00 00 00  // .0..............
    0580: 00 A4 10 00 00 30 00 00 00 00 00 00 00 03 00 0A  // .....0..........
    0590: 04 00 00 00 00 AC 10 00 00 30 00 00 00 00 00 00  // .........0......
    05A0: 00 04 00 0A 04 00 00 00 00 B4 10 00 00 30 00 00  // .............0..
    05B0: 00 00 00 00 00 00 00 09 04 00 00 00 00 A1 10 00  // ................
    05C0: 00 30 00 00 00 00 00 00 00 01 00 09 04 00 00 00  // .0..............
    05D0: 00 A5 10 00 00 30 00 00 00 00 00 00 00 02 00 09  // .....0..........
    05E0: 04 00 00 00 00 A9 10 00 00 30 00 00 00 00 00 00  // .........0......
    05F0: 00 03 00 09 04 00 00 00 00 AD 10 00 00 30 00 00  // .............0..
    0600: 00 00 00 00 00 00 00 0C 04 00 00 00 00 B2 10 00  // ................
    0610: 00 30 00 00 00 00 00 00 00 00 00 03 0C 03 00 00  // .0..............
    0620: 00 04 07 00 00 30 00 00 00 00 00 00 00 04 00 03  // .....0..........
    0630: 0C 01 00 00 00 08 07 00 00 30 00 00 00 00 00 00  // .........0......
    0640: 00 06 00 03 0C 00 00 00 00 12 07 00 00 30 00 00  // .............0..
    0650: 00 00 00 00 00 07 00 03 0C 00 00 00 00 1F 07 00  // ................
    0660: 00 30 00 00 00 00 00 00 00 08 00 03 0C 05 00 00  // .0..............
    0670: 00 14 07 00 00 30 00 00 00 00 00 00 00 0E 00 03  // .....0..........
    0680: 0C 01 00 00 00 1C 07 00 00 30 00 00 00 00 00 00  // .........0......
    0690: 00 00 00 09 0C 00 00 00 00 1E 07 00 00 30 00 00  // .............0..
    06A0: 00 00 00 00 00 01 00 09 0C 00 00 00 00 13 07 00  // ................
    06B0: 00 30 00 00 00 00 00 00 00 01 65 00 00 00 00 00  // .0........e.....
    06C0: 00 02 00 00 00 3D 00 00 00 00 00 00 00 00 00 00  // .....=..........
    06D0: 00 00 00 00 00 24 5C 5F 53 42 2E 4A 50 47 45 00  // .....$\_SB.JPGE.
    06E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    06F0: 00 00 00 00 00 00 00 00 03 02 00 00 00 00 60 10  // ..............`.
    0700: 00 00 30 00 00 00 00 00 00 00 01 00 03 02 00 00  // ..0.............
    0710: 00 00 68 10 00 00 30 00 00 00 00 00 00 00 01 D1  // ..h...0.........
    0720: 02 00 00 00 00 00 21 00 00 00 3D 00 00 00 00 00  // ......!...=.....
    0730: 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E  // ..........$\_SB.
    0740: 47 50 55 30 2E 41 56 53 30 00 00 00 00 00 00 00  // GPU0.AVS0.......
    0750: 00 00 00 00 00 00 00 00 00 00 00 00 00 03 01 00  // ................
    0760: 00 00 00 78 10 00 00 30 00 00 00 00 00 00 00 01  // ...x...0........
    0770: 00 03 01 00 00 00 00 7A 10 00 00 30 00 00 00 00  // .......z...0....
    0780: 00 00 00 02 00 03 01 00 00 00 00 70 10 00 00 30  // ...........p...0
    0790: 00 00 00 00 00 00 00 03 00 03 01 00 00 00 00 20  // ............... 
    07A0: 10 00 00 30 00 00 00 00 00 00 00 04 00 03 01 00  // ...0............
    07B0: 00 00 00 28 10 00 00 30 00 00 00 00 00 00 00 05  // ...(...0........
    07C0: 00 03 01 00 00 00 00 40 10 00 00 30 00 00 00 00  // .......@...0....
    07D0: 00 00 00 06 00 03 01 00 00 00 00 48 10 00 00 30  // ...........H...0
    07E0: 00 00 00 00 00 00 00 07 00 03 01 00 00 00 00 30  // ...............0
    07F0: 10 00 00 30 00 00 00 00 00 00 00 08 00 03 01 00  // ...0............
    0800: 00 00 00 50 10 00 00 30 00 00 00 00 00 00 00 09  // ...P...0........
    0810: 00 03 01 00 00 00 00 38 10 00 00 30 00 00 00 00  // .......8...0....
    0820: 00 00 00 0A 00 03 01 00 00 00 00 58 10 00 00 30  // ...........X...0
    0830: 00 00 00 00 00 00 00 0B 00 03 01 00 00 00 00 08  // ................
    0840: 0C 00 00 30 00 00 00 00 00 00 00 0C 00 03 01 00  // ...0............
    0850: 00 00 00 10 0C 00 00 30 00 00 00 00 00 00 00 0D  // .......0........
    0860: 00 03 01 00 00 00 00 08 08 00 00 30 00 00 00 00  // ...........0....
    0870: 00 00 00 0E 00 03 01 00 00 00 00 10 08 00 00 30  // ...............0
    0880: 00 00 00 00 00 00 00 0F 00 03 01 00 00 00 00 18  // ................
    0890: 0C 00 00 30 00 00 00 00 00 00 00 10 00 03 01 00  // ...0............
    08A0: 00 00 00 18 08 00 00 30 00 00 00 00 00 00 00 11  // .......0........
    08B0: 00 03 01 00 00 00 00 00 10 00 00 30 00 00 00 00  // ...........0....
    08C0: 00 00 00 00 00 0D 01 00 00 00 00 09 08 00 00 30  // ...............0
    08D0: 00 00 00 00 00 00 00 01 00 0D 01 00 00 00 00 11  // ................
    08E0: 08 00 00 30 00 00 00 00 00 00 00 02 00 0D 01 00  // ...0............
    08F0: 00 00 00 19 08 00 00 30 00 00 00 00 00 00 00 03  // .......0........
    0900: 00 0D 01 00 00 00 00 09 0C 00 00 30 00 00 00 00  // ...........0....
    0910: 00 00 00 04 00 0D 01 00 00 00 00 11 0C 00 00 30  // ...............0
    0920: 00 00 00 00 00 00 00 05 00 0D 01 00 00 00 00 19  // ................
    0930: 0C 00 00 30 00 00 00 00 00 00 00 06 00 0D 01 00  // ...0............
    0940: 00 00 00 01 10 00 00 30 00 00 00 00 00 00 00 07  // .......0........
    0950: 00 0D 01 00 00 00 00 21 10 00 00 30 00 00 00 00  // .......!...0....
    0960: 00 00 00 08 00 0D 01 00 00 00 00 29 10 00 00 30  // ...........)...0
    0970: 00 00 00 00 00 00 00 09 00 0D 01 00 00 00 00 31  // ...............1
    0980: 10 00 00 30 00 00 00 00 00 00 00 0A 00 0D 01 00  // ...0............
    0990: 00 00 00 39 10 00 00 30 00 00 00 00 00 00 00 0B  // ...9...0........
    09A0: 00 0D 01 00 00 00 00 41 10 00 00 30 00 00 00 00  // .......A...0....
    09B0: 00 00 00 0C 00 0D 01 00 00 00 00 49 10 00 00 30  // ...........I...0
    09C0: 00 00 00 00 00 00 00 0D 00 0D 01 00 00 00 00 51  // ...............Q
    09D0: 10 00 00 30 00 00 00 00 00 00 00 0E 00 0D 01 00  // ...0............
    09E0: 00 00 00 59 10 00 00 30 00 00 00 00 00 00 00 01  // ...Y...0........
    09F0: 05 01 00 00 00 00 00 0A 00 00 00 3D 00 00 00 00  // ...........=....
    0A00: 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42  // ...........$\_SB
    0A10: 2E 41 44 53 50 2E 53 4C 4D 31 2E 41 44 43 4D 00  // .ADSP.SLM1.ADCM.
    0A20: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 07  // ................
    0A30: 00 00 00 00 21 18 00 00 30 00 00 00 00 00 00 00  // ....!...0.......
    0A40: 04 00 03 07 00 00 00 00 06 18 00 00 30 00 00 00  // ............0...
    0A50: 00 00 00 00 05 00 03 07 04 00 00 00 0D 18 00 00  // ................
    0A60: 30 00 00 00 00 00 00 00 0A 00 03 07 00 00 00 00  // 0...............
    0A70: 13 18 00 00 30 00 00 00 00 00 00 00 00 00 16 07  // ....0...........
    0A80: 05 00 00 00 07 18 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0A90: 06 00 16 07 05 00 00 00 00 18 00 00 30 00 00 00  // ............0...
    0AA0: 00 00 00 00 0C 00 16 07 00 00 00 00 12 18 00 00  // ................
    0AB0: 30 00 00 00 00 00 00 00 0D 00 16 07 06 00 00 00  // 0...............
    0AC0: 14 18 00 00 30 00 00 00 00 00 00 00 00 00 06 07  // ....0...........
    0AD0: 00 00 00 00 20 18 00 00 30 00 00 00 00 00 00 00  // .... ...0.......
    0AE0: 00 00 1F 07 00 00 00 00 22 18 00 00 30 00 00 00  // ........"...0...
    0AF0: 00 00 00 00 01 51 00 00 00 00 00 00 01 00 00 00  // .....Q..........
    0B00: 3D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // =...............
    0B10: 24 5C 5F 53 42 2E 55 52 53 30 00 00 00 00 00 00  // $\_SB.URS0......
    0B20: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0B30: 00 00 00 03 80 00 00 00 00 40 07 00 00 30 00 00  // .........@...0..
    0B40: 00 00 00 00 00 01 51 00 00 00 00 00 00 01 00 00  // ......Q.........
    0B50: 00 3D 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // .=..............
    0B60: 00 24 5C 5F 53 42 2E 55 53 42 30 00 00 00 00 00  // .$\_SB.USB0.....
    0B70: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0B80: 00 00 00 00 03 80 00 00 00 00 40 07 00 00 30 00  // ..........@...0.
    0B90: 00 00 00 00 00 00 01 51 00 00 00 00 00 00 01 00  // .......Q........
    0BA0: 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00 00  // ..=.............
    0BB0: 00 00 24 5C 5F 53 42 2E 55 52 53 31 00 00 00 00  // ..$\_SB.URS1....
    0BC0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0BD0: 00 00 00 01 00 03 80 00 00 00 00 60 07 00 00 30  // ...........`...0
    0BE0: 00 00 00 00 00 00 00 01 51 00 00 00 00 00 00 01  // ........Q.......
    0BF0: 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00  // ...=............
    0C00: 00 00 00 24 5C 5F 53 42 2E 55 53 42 31 00 00 00  // ...$\_SB.USB1...
    0C10: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0C20: 00 00 00 00 01 00 03 80 00 00 00 00 60 07 00 00  // ............`...
    0C30: 30 00 00 00 00 00 00 00 01 A1 00 00 00 00 00 00  // 0...............
    0C40: 05 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00  // ....=...........
    0C50: 00 00 00 00 24 5C 5F 53 42 2E 43 44 53 50 00 00  // ....$\_SB.CDSP..
    0C60: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0C70: 00 00 00 00 00 00 00 0A 83 00 00 00 00 09 14 00  // ................
    0C80: 00 30 00 00 00 00 00 00 00 00 00 03 84 05 00 00  // .0..............
    0C90: 00 11 14 00 00 30 00 00 00 00 00 00 00 00 00 0A  // .....0..........
    0CA0: 84 00 00 00 00 19 14 00 00 30 00 00 00 00 00 00  // .........0......
    0CB0: 00 00 00 1E 0F 00 00 00 00 20 14 00 00 30 00 00  // ......... ...0..
    0CC0: 00 00 00 00 00 00 00 2A 0F 00 00 00 00 2A 14 00  // .......*.....*..
    0CD0: 00 30 00 00 00 00 00 00 00 01 51 00 00 00 00 00  // .0........Q.....
    0CE0: 00 01 00 00 00 3D 00 00 00 00 00 00 00 00 00 00  // .....=..........
    0CF0: 00 00 00 00 00 24 5C 5F 53 42 2E 49 50 41 00 00  // .....$\_SB.IPA..
    0D00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0D10: 00 00 00 00 00 00 00 00 03 0B 02 00 00 00 20 07  // .............. .
    0D20: 00 00 30 00 00 00 00 00 00 00 01 8D 00 00 00 00  // ..0.............
    0D30: 00 00 04 00 00 00 3D 00 00 00 00 00 00 00 00 00  // ......=.........
    0D40: 00 00 00 00 00 00 24 5C 5F 53 42 2E 51 55 50 00  // ......$\_SB.QUP.
    0D50: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0D60: 00 00 00 00 00 00 00 00 00 03 10 00 00 00 00 03  // ................
    0D70: 00 00 00 30 00 00 00 00 00 00 00 01 00 03 10 00  // ...0............
    0D80: 00 00 00 16 00 00 00 30 00 00 00 00 00 00 00 02  // .......0........
    0D90: 00 03 12 00 00 00 00 C3 06 00 00 30 00 00 00 00  // ...........0....
    0DA0: 00 00 00 03 00 03 12 00 00 00 00 D6 06 00 00 30  // ...............0
    0DB0: 00 00 00 00 00 00 00 01 8D 00 00 00 00 00 00 04  // ................
    0DC0: 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00  // ...=............
    0DD0: 00 00 00 24 5C 5F 53 42 2E 53 45 4E 31 00 00 00  // ...$\_SB.SEN1...
    0DE0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0DF0: 00 00 00 00 00 00 03 85 00 00 00 00 E3 06 00 00  // ................
    0E00: 30 00 00 00 00 00 00 00 01 00 03 85 02 00 00 00  // 0...............
    0E10: A1 07 00 00 30 00 00 00 00 00 00 00 00 00 05 85  // ....0...........
    0E20: 00 00 00 00 EB 06 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0E30: 01 00 05 85 00 00 00 00 A0 07 00 00 30 00 00 00  // ............0...
    0E40: 00 00 00 00 01 79 00 00 00 00 00 00 03 00 00 00  // .....y..........
    0E50: 3D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // =...............
    0E60: 24 5C 5F 53 42 2E 41 4D 53 53 2E 51 57 4C 4E 00  // $\_SB.AMSS.QWLN.
    0E70: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0E80: 00 00 00 03 11 01 00 00 00 40 00 00 00 30 00 00  // .........@...0..
    0E90: 00 00 00 00 00 00 00 19 11 00 00 00 00 42 00 00  // .............B..
    0EA0: 00 30 00 00 00 00 00 00 00 00 00 18 11 00 00 00  // .0..............
    0EB0: 00 43 00 00 00 30 00 00 00 00 00 00 00 01 65 00  // .C...0........e.
    0EC0: 00 00 00 00 00 02 00 00 00 3D 00 00 00 00 00 00  // .........=......
    0ED0: 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E 55  // .........$\_SB.U
    0EE0: 46 53 30 00 00 00 00 00 00 00 00 00 00 00 00 00  // FS0.............
    0EF0: 00 00 00 00 00 00 00 00 00 00 00 00 03 81 00 00  // ................
    0F00: 00 00 E0 00 00 00 30 00 00 00 00 00 00 00 01 00  // ......0.........
    0F10: 03 81 00 00 00 00 00 01 00 00 30 00 00 00 00 00  // ..........0.....
    0F20: 00 00 01 65 00 00 00 00 00 00 02 00 00 00 3D 00  // ...e..........=.
    0F30: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24 5C  // ..............$\
    0F40: 5F 53 42 2E 53 44 43 32 00 00 00 00 00 00 00 00  // _SB.SDC2........
    0F50: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0F60: 00 03 86 0F 00 00 00 A0 00 00 00 30 00 00 00 00  // ...........0....
    0F70: 00 00 00 10 00 03 86 0F 00 00 00 C0 00 00 00 30  // ...............0
    0F80: 00 00 00 00 00 00 00 01 51 00 00 00 00 00 00 01  // ........Q.......
    0F90: 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00  // ...=............
    0FA0: 00 00 00 24 5C 5F 53 42 2E 54 53 43 35 00 00 00  // ...$\_SB.TSC5...
    0FB0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0FC0: 00 00 00 00 00 00 03 88 0F 00 00 00 20 00 00 00  // ............ ...
    0FD0: 30 00 00 00 00 00 00 00 01 51 00 00 00 00 00 00  // 0........Q......
    0FE0: 01 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00  // ....=...........
    0FF0: 00 00 00 00 24 5C 5F 53 42 2E 51 44 53 53 00 00  // ....$\_SB.QDSS..
    1000: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1010: 00 00 00 00 00 00 00 03 89 00 00 00 00 60 04 00  // .............`..
    1020: 00 30 00 00 00 00 00 00 00 01 A1 00 00 00 00 00  // .0..............
    1030: 00 05 00 00 00 3D 00 00 00 00 00 00 00 00 00 00  // .....=..........
    1040: 00 00 00 00 00 24 5C 5F 53 42 2E 41 52 50 43 00  // .....$\_SB.ARPC.
    1050: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1060: 00 00 00 00 00 00 0C 00 03 17 00 00 00 00 23 18  // ..............#.
    1070: 00 00 30 00 00 00 00 00 00 00 0D 00 03 17 00 00  // ..0.............
    1080: 00 00 24 18 00 00 30 00 00 00 00 00 00 00 00 00  // ..$...0.........
    1090: 03 17 05 00 00 00 01 14 00 00 30 00 00 00 00 00  // ..........0.....
    10A0: 00 00 06 00 03 17 05 00 00 00 21 14 00 00 30 00  // ..........!...0.
    10B0: 00 00 00 00 00 00 00 00 0A 17 00 00 00 00 29 14  // ..............).
    10C0: 00 00 30 00 00 00 00 00 00 00 01 51 00 00 00 00  // ..0........Q....
    10D0: 00 00 01 00 00 00 3D 00 00 00 00 00 00 00 00 00  // ......=.........
    10E0: 00 00 00 00 00 00 24 5C 5F 53 42 2E 55 53 42 41  // ......$\_SB.USBA
    10F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1100: 00 00 00 00 00 00 00 0B 00 03 07 00 00 00 00 2C  // ...............,
    1110: 18 00 00 30 00 00 00 00 00 00 00                 // ...0.......
