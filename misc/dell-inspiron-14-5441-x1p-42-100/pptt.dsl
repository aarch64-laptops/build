/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of pptt.dat, Tue Oct  1 20:38:53 2024
 *
 * ACPI Data Table [PPTT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "PPTT"    [Processor Properties Topology Table]
[004h 0004   4]                 Table Length : 0000023A
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : C7
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00008380
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001


[024h 0036   1]                Subtable Type : 02 [ID]
[025h 0037   1]                       Length : 1E
[026h 0038   2]                     Reserved : 0000
[028h 0040   4]                    Vendor ID : 4D4F4351
[02Ch 0044   8]                    Level1 ID : 000000000000009A
[034h 0052   8]                    Level2 ID : 000000000000027B
[03Ch 0060   2]               Major revision : 0001
[03Eh 0062   2]               Minor revision : 0000
[040h 0064   2]                Spin revision : 0000

[042h 0066   1]                Subtable Type : 00 [Processor Hierarchy Node]
[043h 0067   1]                       Length : 18
[044h 0068   2]                     Reserved : 0000
[046h 0070   4]        Flags (decoded below) : 00000001
                            Physical package : 1
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[04Ah 0074   4]                       Parent : 00000000
[04Eh 0078   4]            ACPI Processor ID : 00000000
[052h 0082   4]      Private Resource Number : 00000001
[056h 0086   4]             Private Resource : 00000024

[05Ah 0090   1]                Subtable Type : 01 [Cache Type]
[05Bh 0091   1]                       Length : 18
[05Ch 0092   2]                     Reserved : 0000
[05Eh 0094   4]        Flags (decoded below) : 00000000
                                  Size valid : 0
                        Number of Sets valid : 0
                         Associativity valid : 0
                       Allocation Type valid : 0
                            Cache Type valid : 0
                          Write Policy valid : 0
                             Line Size valid : 0
[062h 0098   4]          Next Level of Cache : 00000000
[066h 0102   4]                         Size : 00000000
[06Ah 0106   4]               Number of Sets : 00000000
[06Eh 0110   1]                Associativity : 00
[06Fh 0111   1]                   Attributes : 00
                             Allocation Type : 0
                                  Cache Type : 0
                                Write Policy : 0
[070h 0112   2]                    Line Size : 0000

[072h 0114   1]                Subtable Type : 00 [Processor Hierarchy Node]
[073h 0115   1]                       Length : 18
[074h 0116   2]                     Reserved : 0000
[076h 0118   4]        Flags (decoded below) : 00000000
                            Physical package : 0
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[07Ah 0122   4]                       Parent : 00000042
[07Eh 0126   4]            ACPI Processor ID : 00000000
[082h 0130   4]      Private Resource Number : 00000001
[086h 0134   4]             Private Resource : 0000005A

[08Ah 0138   1]                Subtable Type : 00 [Processor Hierarchy Node]
[08Bh 0139   1]                       Length : 18
[08Ch 0140   2]                     Reserved : 0000
[08Eh 0142   4]        Flags (decoded below) : 00000000
                            Physical package : 0
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[092h 0146   4]                       Parent : 00000042
[096h 0150   4]            ACPI Processor ID : 00000000
[09Ah 0154   4]      Private Resource Number : 00000001
[09Eh 0158   4]             Private Resource : 0000005A

[0A2h 0162   1]                Subtable Type : 00 [Processor Hierarchy Node]
[0A3h 0163   1]                       Length : 18
[0A4h 0164   2]                     Reserved : 0000
[0A6h 0166   4]        Flags (decoded below) : 00000000
                            Physical package : 0
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[0AAh 0170   4]                       Parent : 00000042
[0AEh 0174   4]            ACPI Processor ID : 00000000
[0B2h 0178   4]      Private Resource Number : 00000001
[0B6h 0182   4]             Private Resource : 0000005A

[0BAh 0186   1]                Subtable Type : 01 [Cache Type]
[0BBh 0187   1]                       Length : 18
[0BCh 0188   2]                     Reserved : 0000
[0BEh 0190   4]        Flags (decoded below) : 00000000
                                  Size valid : 0
                        Number of Sets valid : 0
                         Associativity valid : 0
                       Allocation Type valid : 0
                            Cache Type valid : 0
                          Write Policy valid : 0
                             Line Size valid : 0
[0C2h 0194   4]          Next Level of Cache : 00000000
[0C6h 0198   4]                         Size : 00000000
[0CAh 0202   4]               Number of Sets : 00000000
[0CEh 0206   1]                Associativity : 00
[0CFh 0207   1]                   Attributes : 00
                             Allocation Type : 0
                                  Cache Type : 0
                                Write Policy : 0
[0D0h 0208   2]                    Line Size : 0000

[0D2h 0210   1]                Subtable Type : 01 [Cache Type]
[0D3h 0211   1]                       Length : 18
[0D4h 0212   2]                     Reserved : 0000
[0D6h 0214   4]        Flags (decoded below) : 00000000
                                  Size valid : 0
                        Number of Sets valid : 0
                         Associativity valid : 0
                       Allocation Type valid : 0
                            Cache Type valid : 0
                          Write Policy valid : 0
                             Line Size valid : 0
[0DAh 0218   4]          Next Level of Cache : 00000000
[0DEh 0222   4]                         Size : 00000000
[0E2h 0226   4]               Number of Sets : 00000000
[0E6h 0230   1]                Associativity : 00
[0E7h 0231   1]                   Attributes : 00
                             Allocation Type : 0
                                  Cache Type : 0
                                Write Policy : 0
[0E8h 0232   2]                    Line Size : 0000

[0EAh 0234   1]                Subtable Type : 00 [Processor Hierarchy Node]
[0EBh 0235   1]                       Length : 1C
[0ECh 0236   2]                     Reserved : 0000
[0EEh 0238   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[0F2h 0242   4]                       Parent : 00000072
[0F6h 0246   4]            ACPI Processor ID : 00000000
[0FAh 0250   4]      Private Resource Number : 00000002
[0FEh 0254   4]             Private Resource : 000000BA
[102h 0258   4]             Private Resource : 000000D2

[106h 0262   1]                Subtable Type : 00 [Processor Hierarchy Node]
[107h 0263   1]                       Length : 1C
[108h 0264   2]                     Reserved : 0000
[10Ah 0266   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[10Eh 0270   4]                       Parent : 00000072
[112h 0274   4]            ACPI Processor ID : 00000001
[116h 0278   4]      Private Resource Number : 00000002
[11Ah 0282   4]             Private Resource : 000000BA
[11Eh 0286   4]             Private Resource : 000000D2

[122h 0290   1]                Subtable Type : 00 [Processor Hierarchy Node]
[123h 0291   1]                       Length : 1C
[124h 0292   2]                     Reserved : 0000
[126h 0294   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[12Ah 0298   4]                       Parent : 00000072
[12Eh 0302   4]            ACPI Processor ID : 00000002
[132h 0306   4]      Private Resource Number : 00000002
[136h 0310   4]             Private Resource : 000000BA
[13Ah 0314   4]             Private Resource : 000000D2

[13Eh 0318   1]                Subtable Type : 00 [Processor Hierarchy Node]
[13Fh 0319   1]                       Length : 1C
[140h 0320   2]                     Reserved : 0000
[142h 0322   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[146h 0326   4]                       Parent : 00000072
[14Ah 0330   4]            ACPI Processor ID : 00000003
[14Eh 0334   4]      Private Resource Number : 00000002
[152h 0338   4]             Private Resource : 000000BA
[156h 0342   4]             Private Resource : 000000D2

[15Ah 0346   1]                Subtable Type : 00 [Processor Hierarchy Node]
[15Bh 0347   1]                       Length : 1C
[15Ch 0348   2]                     Reserved : 0000
[15Eh 0350   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[162h 0354   4]                       Parent : 0000008A
[166h 0358   4]            ACPI Processor ID : 00000004
[16Ah 0362   4]      Private Resource Number : 00000002
[16Eh 0366   4]             Private Resource : 000000BA
[172h 0370   4]             Private Resource : 000000D2

[176h 0374   1]                Subtable Type : 00 [Processor Hierarchy Node]
[177h 0375   1]                       Length : 1C
[178h 0376   2]                     Reserved : 0000
[17Ah 0378   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[17Eh 0382   4]                       Parent : 0000008A
[182h 0386   4]            ACPI Processor ID : 00000005
[186h 0390   4]      Private Resource Number : 00000002
[18Ah 0394   4]             Private Resource : 000000BA
[18Eh 0398   4]             Private Resource : 000000D2

[192h 0402   1]                Subtable Type : 00 [Processor Hierarchy Node]
[193h 0403   1]                       Length : 1C
[194h 0404   2]                     Reserved : 0000
[196h 0406   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[19Ah 0410   4]                       Parent : 0000008A
[19Eh 0414   4]            ACPI Processor ID : 00000006
[1A2h 0418   4]      Private Resource Number : 00000002
[1A6h 0422   4]             Private Resource : 000000BA
[1AAh 0426   4]             Private Resource : 000000D2

[1AEh 0430   1]                Subtable Type : 00 [Processor Hierarchy Node]
[1AFh 0431   1]                       Length : 1C
[1B0h 0432   2]                     Reserved : 0000
[1B2h 0434   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[1B6h 0438   4]                       Parent : 0000008A
[1BAh 0442   4]            ACPI Processor ID : 00000007
[1BEh 0446   4]      Private Resource Number : 00000002
[1C2h 0450   4]             Private Resource : 000000BA
[1C6h 0454   4]             Private Resource : 000000D2

[1CAh 0458   1]                Subtable Type : 00 [Processor Hierarchy Node]
[1CBh 0459   1]                       Length : 1C
[1CCh 0460   2]                     Reserved : 0000
[1CEh 0462   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[1D2h 0466   4]                       Parent : 000000A2
[1D6h 0470   4]            ACPI Processor ID : 00000008
[1DAh 0474   4]      Private Resource Number : 00000002
[1DEh 0478   4]             Private Resource : 000000BA
[1E2h 0482   4]             Private Resource : 000000D2

[1E6h 0486   1]                Subtable Type : 00 [Processor Hierarchy Node]
[1E7h 0487   1]                       Length : 1C
[1E8h 0488   2]                     Reserved : 0000
[1EAh 0490   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[1EEh 0494   4]                       Parent : 000000A2
[1F2h 0498   4]            ACPI Processor ID : 00000009
[1F6h 0502   4]      Private Resource Number : 00000002
[1FAh 0506   4]             Private Resource : 000000BA
[1FEh 0510   4]             Private Resource : 000000D2

[202h 0514   1]                Subtable Type : 00 [Processor Hierarchy Node]
[203h 0515   1]                       Length : 1C
[204h 0516   2]                     Reserved : 0000
[206h 0518   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[20Ah 0522   4]                       Parent : 000000A2
[20Eh 0526   4]            ACPI Processor ID : 0000000A
[212h 0530   4]      Private Resource Number : 00000002
[216h 0534   4]             Private Resource : 000000BA
[21Ah 0538   4]             Private Resource : 000000D2

[21Eh 0542   1]                Subtable Type : 00 [Processor Hierarchy Node]
[21Fh 0543   1]                       Length : 1C
[220h 0544   2]                     Reserved : 0000
[222h 0546   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[226h 0550   4]                       Parent : 000000A2
[22Ah 0554   4]            ACPI Processor ID : 0000000B
[22Eh 0558   4]      Private Resource Number : 00000002
[232h 0562   4]             Private Resource : 000000BA
[236h 0566   4]             Private Resource : 000000D2

Raw Table Data: Length 570 (0x23A)

    0000: 50 50 54 54 3A 02 00 00 01 C7 51 43 4F 4D 20 20  // PPTT:.....QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 80 83 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 02 1E 00 00 51 43 4F 4D 9A 00 00 00  // ........QCOM....
    0030: 00 00 00 00 7B 02 00 00 00 00 00 00 01 00 00 00  // ....{...........
    0040: 00 00 00 18 00 00 01 00 00 00 00 00 00 00 00 00  // ................
    0050: 00 00 01 00 00 00 24 00 00 00 01 18 00 00 00 00  // ......$.........
    0060: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0070: 00 00 00 18 00 00 00 00 00 00 42 00 00 00 00 00  // ..........B.....
    0080: 00 00 01 00 00 00 5A 00 00 00 00 18 00 00 00 00  // ......Z.........
    0090: 00 00 42 00 00 00 00 00 00 00 01 00 00 00 5A 00  // ..B...........Z.
    00A0: 00 00 00 18 00 00 00 00 00 00 42 00 00 00 00 00  // ..........B.....
    00B0: 00 00 01 00 00 00 5A 00 00 00 01 18 00 00 00 00  // ......Z.........
    00C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    00D0: 00 00 01 18 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    00E0: 00 00 00 00 00 00 00 00 00 00 00 1C 00 00 02 00  // ................
    00F0: 00 00 72 00 00 00 00 00 00 00 02 00 00 00 BA 00  // ..r.............
    0100: 00 00 D2 00 00 00 00 1C 00 00 02 00 00 00 72 00  // ..............r.
    0110: 00 00 01 00 00 00 02 00 00 00 BA 00 00 00 D2 00  // ................
    0120: 00 00 00 1C 00 00 02 00 00 00 72 00 00 00 02 00  // ..........r.....
    0130: 00 00 02 00 00 00 BA 00 00 00 D2 00 00 00 00 1C  // ................
    0140: 00 00 02 00 00 00 72 00 00 00 03 00 00 00 02 00  // ......r.........
    0150: 00 00 BA 00 00 00 D2 00 00 00 00 1C 00 00 02 00  // ................
    0160: 00 00 8A 00 00 00 04 00 00 00 02 00 00 00 BA 00  // ................
    0170: 00 00 D2 00 00 00 00 1C 00 00 02 00 00 00 8A 00  // ................
    0180: 00 00 05 00 00 00 02 00 00 00 BA 00 00 00 D2 00  // ................
    0190: 00 00 00 1C 00 00 02 00 00 00 8A 00 00 00 06 00  // ................
    01A0: 00 00 02 00 00 00 BA 00 00 00 D2 00 00 00 00 1C  // ................
    01B0: 00 00 02 00 00 00 8A 00 00 00 07 00 00 00 02 00  // ................
    01C0: 00 00 BA 00 00 00 D2 00 00 00 00 1C 00 00 02 00  // ................
    01D0: 00 00 A2 00 00 00 08 00 00 00 02 00 00 00 BA 00  // ................
    01E0: 00 00 D2 00 00 00 00 1C 00 00 02 00 00 00 A2 00  // ................
    01F0: 00 00 09 00 00 00 02 00 00 00 BA 00 00 00 D2 00  // ................
    0200: 00 00 00 1C 00 00 02 00 00 00 A2 00 00 00 0A 00  // ................
    0210: 00 00 02 00 00 00 BA 00 00 00 D2 00 00 00 00 1C  // ................
    0220: 00 00 02 00 00 00 A2 00 00 00 0B 00 00 00 02 00  // ................
    0230: 00 00 BA 00 00 00 D2 00 00 00                    // ..........
