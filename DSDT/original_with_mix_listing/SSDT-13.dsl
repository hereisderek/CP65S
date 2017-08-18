{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.CPU1, ProcessorObj)
    External (_PR_.CPU2, ProcessorObj)
    External (_PR_.CPU3, ProcessorObj)
    External (_PR_.CPU4, ProcessorObj)
    External (_PR_.CPU5, ProcessorObj)
    External (_PR_.CPU6, ProcessorObj)
    External (_PR_.CPU7, ProcessorObj)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (MDBG, MethodObj)    // Imported: 1 Arguments

    Scope (\_PR.CPU0)
    {

  0024: 10 43 15 5C 2E 5F 50 52 5F 43 50 55 30           // .C.\._PR_CPU0

        Name (_CPC, 
  0031: 08 5F 43 50 43                                   // ._CPC

Package (0x11)  // _CPC: Continuous Performance Control
        {
            0x11, 
            One, 

  0036: 12 41 14 11 0A 11 01                             // .A.....

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 


  003D: 11 14 0A 11 82 0C 00 0A 20 00 00 00 00 00 00 00  // ........ .......
  004D: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000004, // Address
                    ,)
            }, 


  0052: 11 14 0A 11 82 0C 00 0A 20 00 00 04 00 00 00 00  // ........ .......
  0062: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000008, // Address
                    ,)
            }, 


  0067: 11 14 0A 11 82 0C 00 0A 20 00 00 08 00 00 00 00  // ........ .......
  0077: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000000C, // Address
                    ,)
            }, 


  007C: 11 14 0A 11 82 0C 00 0A 20 00 00 0C 00 00 00 00  // ........ .......
  008C: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000010, // Address
                    ,)
            }, 


  0091: 11 14 0A 11 82 0C 00 0A 20 00 00 10 00 00 00 00  // ........ .......
  00A1: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000014, // Address
                    ,)
            }, 


  00A6: 11 14 0A 11 82 0C 00 0A 20 00 00 14 00 00 00 00  // ........ .......
  00B6: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000018, // Address
                    ,)
            }, 


  00BB: 11 14 0A 11 82 0C 00 0A 20 00 00 18 00 00 00 00  // ........ .......
  00CB: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000001C, // Address
                    ,)
            }, 


  00D0: 11 14 0A 11 82 0C 00 0A 20 00 00 1C 00 00 00 00  // ........ .......
  00E0: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000020, // Address
                    ,)
            }, 


  00E5: 11 14 0A 11 82 0C 00 0A 20 00 00 20 00 00 00 00  // ........ .. ....
  00F5: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000024, // Address
                    ,)
            }, 


  00FA: 11 14 0A 11 82 0C 00 0A 20 00 00 24 00 00 00 00  // ........ ..$....
  010A: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000028, // Address
                    ,)
            }, 


  010F: 11 14 0A 11 82 0C 00 0A 20 00 00 28 00 00 00 00  // ........ ..(....
  011F: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 


  0124: 11 14 0A 11 82 0C 00 7F 40 00 04 E7 00 00 00 00  // ........@.......
  0134: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 


  0139: 11 14 0A 11 82 0C 00 7F 40 00 04 E8 00 00 00 00  // ........@.......
  0149: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000003C, // Address
                    ,)
            }, 


  014E: 11 14 0A 11 82 0C 00 0A 20 00 00 3C 00 00 00 00  // ........ ..<....
  015E: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000040, // Address
                    ,)
            }
        })
    }


  0163: 11 14 0A 11 82 0C 00 0A 20 00 00 40 00 00 00 00  // ........ ..@....
  0173: 00 00 00 79 00                                   // ...y.

    Scope (\_PR.CPU1)
    {

  0178: 10 43 15 5C 2E 5F 50 52 5F 43 50 55 31           // .C.\._PR_CPU1

        Name (_CPC, 
  0185: 08 5F 43 50 43                                   // ._CPC

Package (0x11)  // _CPC: Continuous Performance Control
        {
            0x11, 
            One, 

  018A: 12 41 14 11 0A 11 01                             // .A.....

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000064, // Address
                    ,)
            }, 


  0191: 11 14 0A 11 82 0C 00 0A 20 00 00 64 00 00 00 00  // ........ ..d....
  01A1: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000068, // Address
                    ,)
            }, 


  01A6: 11 14 0A 11 82 0C 00 0A 20 00 00 68 00 00 00 00  // ........ ..h....
  01B6: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000006C, // Address
                    ,)
            }, 


  01BB: 11 14 0A 11 82 0C 00 0A 20 00 00 6C 00 00 00 00  // ........ ..l....
  01CB: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000070, // Address
                    ,)
            }, 


  01D0: 11 14 0A 11 82 0C 00 0A 20 00 00 70 00 00 00 00  // ........ ..p....
  01E0: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000074, // Address
                    ,)
            }, 


  01E5: 11 14 0A 11 82 0C 00 0A 20 00 00 74 00 00 00 00  // ........ ..t....
  01F5: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000078, // Address
                    ,)
            }, 


  01FA: 11 14 0A 11 82 0C 00 0A 20 00 00 78 00 00 00 00  // ........ ..x....
  020A: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000007C, // Address
                    ,)
            }, 


  020F: 11 14 0A 11 82 0C 00 0A 20 00 00 7C 00 00 00 00  // ........ ..|....
  021F: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000080, // Address
                    ,)
            }, 


  0224: 11 14 0A 11 82 0C 00 0A 20 00 00 80 00 00 00 00  // ........ .......
  0234: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000084, // Address
                    ,)
            }, 


  0239: 11 14 0A 11 82 0C 00 0A 20 00 00 84 00 00 00 00  // ........ .......
  0249: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000088, // Address
                    ,)
            }, 


  024E: 11 14 0A 11 82 0C 00 0A 20 00 00 88 00 00 00 00  // ........ .......
  025E: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000008C, // Address
                    ,)
            }, 


  0263: 11 14 0A 11 82 0C 00 0A 20 00 00 8C 00 00 00 00  // ........ .......
  0273: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 


  0278: 11 14 0A 11 82 0C 00 7F 40 00 04 E7 00 00 00 00  // ........@.......
  0288: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 


  028D: 11 14 0A 11 82 0C 00 7F 40 00 04 E8 00 00 00 00  // ........@.......
  029D: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000A0, // Address
                    ,)
            }, 


  02A2: 11 14 0A 11 82 0C 00 0A 20 00 00 A0 00 00 00 00  // ........ .......
  02B2: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000A4, // Address
                    ,)
            }
        })
    }


  02B7: 11 14 0A 11 82 0C 00 0A 20 00 00 A4 00 00 00 00  // ........ .......
  02C7: 00 00 00 79 00                                   // ...y.

    Scope (\_PR.CPU2)
    {

  02CC: 10 43 15 5C 2E 5F 50 52 5F 43 50 55 32           // .C.\._PR_CPU2

        Name (_CPC, 
  02D9: 08 5F 43 50 43                                   // ._CPC

Package (0x11)  // _CPC: Continuous Performance Control
        {
            0x11, 
            One, 

  02DE: 12 41 14 11 0A 11 01                             // .A.....

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000C8, // Address
                    ,)
            }, 


  02E5: 11 14 0A 11 82 0C 00 0A 20 00 00 C8 00 00 00 00  // ........ .......
  02F5: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000CC, // Address
                    ,)
            }, 


  02FA: 11 14 0A 11 82 0C 00 0A 20 00 00 CC 00 00 00 00  // ........ .......
  030A: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000D0, // Address
                    ,)
            }, 


  030F: 11 14 0A 11 82 0C 00 0A 20 00 00 D0 00 00 00 00  // ........ .......
  031F: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000D4, // Address
                    ,)
            }, 


  0324: 11 14 0A 11 82 0C 00 0A 20 00 00 D4 00 00 00 00  // ........ .......
  0334: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000D8, // Address
                    ,)
            }, 


  0339: 11 14 0A 11 82 0C 00 0A 20 00 00 D8 00 00 00 00  // ........ .......
  0349: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000DC, // Address
                    ,)
            }, 


  034E: 11 14 0A 11 82 0C 00 0A 20 00 00 DC 00 00 00 00  // ........ .......
  035E: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E0, // Address
                    ,)
            }, 


  0363: 11 14 0A 11 82 0C 00 0A 20 00 00 E0 00 00 00 00  // ........ .......
  0373: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E4, // Address
                    ,)
            }, 


  0378: 11 14 0A 11 82 0C 00 0A 20 00 00 E4 00 00 00 00  // ........ .......
  0388: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    ,)
            }, 


  038D: 11 14 0A 11 82 0C 00 0A 20 00 00 E8 00 00 00 00  // ........ .......
  039D: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000EC, // Address
                    ,)
            }, 


  03A2: 11 14 0A 11 82 0C 00 0A 20 00 00 EC 00 00 00 00  // ........ .......
  03B2: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000F0, // Address
                    ,)
            }, 


  03B7: 11 14 0A 11 82 0C 00 0A 20 00 00 F0 00 00 00 00  // ........ .......
  03C7: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 


  03CC: 11 14 0A 11 82 0C 00 7F 40 00 04 E7 00 00 00 00  // ........@.......
  03DC: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 


  03E1: 11 14 0A 11 82 0C 00 7F 40 00 04 E8 00 00 00 00  // ........@.......
  03F1: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000104, // Address
                    ,)
            }, 


  03F6: 11 14 0A 11 82 0C 00 0A 20 00 00 04 01 00 00 00  // ........ .......
  0406: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000108, // Address
                    ,)
            }
        })
    }


  040B: 11 14 0A 11 82 0C 00 0A 20 00 00 08 01 00 00 00  // ........ .......
  041B: 00 00 00 79 00                                   // ...y.

    Scope (\_PR.CPU3)
    {

  0420: 10 43 15 5C 2E 5F 50 52 5F 43 50 55 33           // .C.\._PR_CPU3

        Name (_CPC, 
  042D: 08 5F 43 50 43                                   // ._CPC

Package (0x11)  // _CPC: Continuous Performance Control
        {
            0x11, 
            One, 

  0432: 12 41 14 11 0A 11 01                             // .A.....

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000012C, // Address
                    ,)
            }, 


  0439: 11 14 0A 11 82 0C 00 0A 20 00 00 2C 01 00 00 00  // ........ ..,....
  0449: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000130, // Address
                    ,)
            }, 


  044E: 11 14 0A 11 82 0C 00 0A 20 00 00 30 01 00 00 00  // ........ ..0....
  045E: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000134, // Address
                    ,)
            }, 


  0463: 11 14 0A 11 82 0C 00 0A 20 00 00 34 01 00 00 00  // ........ ..4....
  0473: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000138, // Address
                    ,)
            }, 


  0478: 11 14 0A 11 82 0C 00 0A 20 00 00 38 01 00 00 00  // ........ ..8....
  0488: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000013C, // Address
                    ,)
            }, 


  048D: 11 14 0A 11 82 0C 00 0A 20 00 00 3C 01 00 00 00  // ........ ..<....
  049D: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000140, // Address
                    ,)
            }, 


  04A2: 11 14 0A 11 82 0C 00 0A 20 00 00 40 01 00 00 00  // ........ ..@....
  04B2: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000144, // Address
                    ,)
            }, 


  04B7: 11 14 0A 11 82 0C 00 0A 20 00 00 44 01 00 00 00  // ........ ..D....
  04C7: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000148, // Address
                    ,)
            }, 


  04CC: 11 14 0A 11 82 0C 00 0A 20 00 00 48 01 00 00 00  // ........ ..H....
  04DC: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000014C, // Address
                    ,)
            }, 


  04E1: 11 14 0A 11 82 0C 00 0A 20 00 00 4C 01 00 00 00  // ........ ..L....
  04F1: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000150, // Address
                    ,)
            }, 


  04F6: 11 14 0A 11 82 0C 00 0A 20 00 00 50 01 00 00 00  // ........ ..P....
  0506: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000154, // Address
                    ,)
            }, 


  050B: 11 14 0A 11 82 0C 00 0A 20 00 00 54 01 00 00 00  // ........ ..T....
  051B: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 


  0520: 11 14 0A 11 82 0C 00 7F 40 00 04 E7 00 00 00 00  // ........@.......
  0530: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 


  0535: 11 14 0A 11 82 0C 00 7F 40 00 04 E8 00 00 00 00  // ........@.......
  0545: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000168, // Address
                    ,)
            }, 


  054A: 11 14 0A 11 82 0C 00 0A 20 00 00 68 01 00 00 00  // ........ ..h....
  055A: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000016C, // Address
                    ,)
            }
        })
    }


  055F: 11 14 0A 11 82 0C 00 0A 20 00 00 6C 01 00 00 00  // ........ ..l....
  056F: 00 00 00 79 00                                   // ...y.

    Scope (\_PR.CPU4)
    {

  0574: 10 43 15 5C 2E 5F 50 52 5F 43 50 55 34           // .C.\._PR_CPU4

        Name (_CPC, 
  0581: 08 5F 43 50 43                                   // ._CPC

Package (0x11)  // _CPC: Continuous Performance Control
        {
            0x11, 
            One, 

  0586: 12 41 14 11 0A 11 01                             // .A.....

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000190, // Address
                    ,)
            }, 


  058D: 11 14 0A 11 82 0C 00 0A 20 00 00 90 01 00 00 00  // ........ .......
  059D: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000194, // Address
                    ,)
            }, 


  05A2: 11 14 0A 11 82 0C 00 0A 20 00 00 94 01 00 00 00  // ........ .......
  05B2: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000198, // Address
                    ,)
            }, 


  05B7: 11 14 0A 11 82 0C 00 0A 20 00 00 98 01 00 00 00  // ........ .......
  05C7: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000019C, // Address
                    ,)
            }, 


  05CC: 11 14 0A 11 82 0C 00 0A 20 00 00 9C 01 00 00 00  // ........ .......
  05DC: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001A0, // Address
                    ,)
            }, 


  05E1: 11 14 0A 11 82 0C 00 0A 20 00 00 A0 01 00 00 00  // ........ .......
  05F1: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001A4, // Address
                    ,)
            }, 


  05F6: 11 14 0A 11 82 0C 00 0A 20 00 00 A4 01 00 00 00  // ........ .......
  0606: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001A8, // Address
                    ,)
            }, 


  060B: 11 14 0A 11 82 0C 00 0A 20 00 00 A8 01 00 00 00  // ........ .......
  061B: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001AC, // Address
                    ,)
            }, 


  0620: 11 14 0A 11 82 0C 00 0A 20 00 00 AC 01 00 00 00  // ........ .......
  0630: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001B0, // Address
                    ,)
            }, 


  0635: 11 14 0A 11 82 0C 00 0A 20 00 00 B0 01 00 00 00  // ........ .......
  0645: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001B4, // Address
                    ,)
            }, 


  064A: 11 14 0A 11 82 0C 00 0A 20 00 00 B4 01 00 00 00  // ........ .......
  065A: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001B8, // Address
                    ,)
            }, 


  065F: 11 14 0A 11 82 0C 00 0A 20 00 00 B8 01 00 00 00  // ........ .......
  066F: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 


  0674: 11 14 0A 11 82 0C 00 7F 40 00 04 E7 00 00 00 00  // ........@.......
  0684: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 


  0689: 11 14 0A 11 82 0C 00 7F 40 00 04 E8 00 00 00 00  // ........@.......
  0699: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001CC, // Address
                    ,)
            }, 


  069E: 11 14 0A 11 82 0C 00 0A 20 00 00 CC 01 00 00 00  // ........ .......
  06AE: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001D0, // Address
                    ,)
            }
        })
    }


  06B3: 11 14 0A 11 82 0C 00 0A 20 00 00 D0 01 00 00 00  // ........ .......
  06C3: 00 00 00 79 00                                   // ...y.

    Scope (\_PR.CPU5)
    {

  06C8: 10 43 15 5C 2E 5F 50 52 5F 43 50 55 35           // .C.\._PR_CPU5

        Name (_CPC, 
  06D5: 08 5F 43 50 43                                   // ._CPC

Package (0x11)  // _CPC: Continuous Performance Control
        {
            0x11, 
            One, 

  06DA: 12 41 14 11 0A 11 01                             // .A.....

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001F4, // Address
                    ,)
            }, 


  06E1: 11 14 0A 11 82 0C 00 0A 20 00 00 F4 01 00 00 00  // ........ .......
  06F1: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001F8, // Address
                    ,)
            }, 


  06F6: 11 14 0A 11 82 0C 00 0A 20 00 00 F8 01 00 00 00  // ........ .......
  0706: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001FC, // Address
                    ,)
            }, 


  070B: 11 14 0A 11 82 0C 00 0A 20 00 00 FC 01 00 00 00  // ........ .......
  071B: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000200, // Address
                    ,)
            }, 


  0720: 11 14 0A 11 82 0C 00 0A 20 00 00 00 02 00 00 00  // ........ .......
  0730: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000204, // Address
                    ,)
            }, 


  0735: 11 14 0A 11 82 0C 00 0A 20 00 00 04 02 00 00 00  // ........ .......
  0745: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000208, // Address
                    ,)
            }, 


  074A: 11 14 0A 11 82 0C 00 0A 20 00 00 08 02 00 00 00  // ........ .......
  075A: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000020C, // Address
                    ,)
            }, 


  075F: 11 14 0A 11 82 0C 00 0A 20 00 00 0C 02 00 00 00  // ........ .......
  076F: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000210, // Address
                    ,)
            }, 


  0774: 11 14 0A 11 82 0C 00 0A 20 00 00 10 02 00 00 00  // ........ .......
  0784: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000214, // Address
                    ,)
            }, 


  0789: 11 14 0A 11 82 0C 00 0A 20 00 00 14 02 00 00 00  // ........ .......
  0799: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000218, // Address
                    ,)
            }, 


  079E: 11 14 0A 11 82 0C 00 0A 20 00 00 18 02 00 00 00  // ........ .......
  07AE: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000021C, // Address
                    ,)
            }, 


  07B3: 11 14 0A 11 82 0C 00 0A 20 00 00 1C 02 00 00 00  // ........ .......
  07C3: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 


  07C8: 11 14 0A 11 82 0C 00 7F 40 00 04 E7 00 00 00 00  // ........@.......
  07D8: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 


  07DD: 11 14 0A 11 82 0C 00 7F 40 00 04 E8 00 00 00 00  // ........@.......
  07ED: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000230, // Address
                    ,)
            }, 


  07F2: 11 14 0A 11 82 0C 00 0A 20 00 00 30 02 00 00 00  // ........ ..0....
  0802: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000234, // Address
                    ,)
            }
        })
    }


  0807: 11 14 0A 11 82 0C 00 0A 20 00 00 34 02 00 00 00  // ........ ..4....
  0817: 00 00 00 79 00                                   // ...y.

    Scope (\_PR.CPU6)
    {

  081C: 10 43 15 5C 2E 5F 50 52 5F 43 50 55 36           // .C.\._PR_CPU6

        Name (_CPC, 
  0829: 08 5F 43 50 43                                   // ._CPC

Package (0x11)  // _CPC: Continuous Performance Control
        {
            0x11, 
            One, 

  082E: 12 41 14 11 0A 11 01                             // .A.....

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000258, // Address
                    ,)
            }, 


  0835: 11 14 0A 11 82 0C 00 0A 20 00 00 58 02 00 00 00  // ........ ..X....
  0845: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000025C, // Address
                    ,)
            }, 


  084A: 11 14 0A 11 82 0C 00 0A 20 00 00 5C 02 00 00 00  // ........ ..\....
  085A: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000260, // Address
                    ,)
            }, 


  085F: 11 14 0A 11 82 0C 00 0A 20 00 00 60 02 00 00 00  // ........ ..`....
  086F: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000264, // Address
                    ,)
            }, 


  0874: 11 14 0A 11 82 0C 00 0A 20 00 00 64 02 00 00 00  // ........ ..d....
  0884: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000268, // Address
                    ,)
            }, 


  0889: 11 14 0A 11 82 0C 00 0A 20 00 00 68 02 00 00 00  // ........ ..h....
  0899: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000026C, // Address
                    ,)
            }, 


  089E: 11 14 0A 11 82 0C 00 0A 20 00 00 6C 02 00 00 00  // ........ ..l....
  08AE: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000270, // Address
                    ,)
            }, 


  08B3: 11 14 0A 11 82 0C 00 0A 20 00 00 70 02 00 00 00  // ........ ..p....
  08C3: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000274, // Address
                    ,)
            }, 


  08C8: 11 14 0A 11 82 0C 00 0A 20 00 00 74 02 00 00 00  // ........ ..t....
  08D8: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000278, // Address
                    ,)
            }, 


  08DD: 11 14 0A 11 82 0C 00 0A 20 00 00 78 02 00 00 00  // ........ ..x....
  08ED: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000027C, // Address
                    ,)
            }, 


  08F2: 11 14 0A 11 82 0C 00 0A 20 00 00 7C 02 00 00 00  // ........ ..|....
  0902: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000280, // Address
                    ,)
            }, 


  0907: 11 14 0A 11 82 0C 00 0A 20 00 00 80 02 00 00 00  // ........ .......
  0917: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 


  091C: 11 14 0A 11 82 0C 00 7F 40 00 04 E7 00 00 00 00  // ........@.......
  092C: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 


  0931: 11 14 0A 11 82 0C 00 7F 40 00 04 E8 00 00 00 00  // ........@.......
  0941: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000294, // Address
                    ,)
            }, 


  0946: 11 14 0A 11 82 0C 00 0A 20 00 00 94 02 00 00 00  // ........ .......
  0956: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000298, // Address
                    ,)
            }
        })
    }


  095B: 11 14 0A 11 82 0C 00 0A 20 00 00 98 02 00 00 00  // ........ .......
  096B: 00 00 00 79 00                                   // ...y.

    Scope (\_PR.CPU7)
    {

  0970: 10 43 15 5C 2E 5F 50 52 5F 43 50 55 37           // .C.\._PR_CPU7

        Name (_CPC, 
  097D: 08 5F 43 50 43                                   // ._CPC

Package (0x11)  // _CPC: Continuous Performance Control
        {
            0x11, 
            One, 

  0982: 12 41 14 11 0A 11 01                             // .A.....

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002BC, // Address
                    ,)
            }, 


  0989: 11 14 0A 11 82 0C 00 0A 20 00 00 BC 02 00 00 00  // ........ .......
  0999: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002C0, // Address
                    ,)
            }, 


  099E: 11 14 0A 11 82 0C 00 0A 20 00 00 C0 02 00 00 00  // ........ .......
  09AE: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002C4, // Address
                    ,)
            }, 


  09B3: 11 14 0A 11 82 0C 00 0A 20 00 00 C4 02 00 00 00  // ........ .......
  09C3: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002C8, // Address
                    ,)
            }, 


  09C8: 11 14 0A 11 82 0C 00 0A 20 00 00 C8 02 00 00 00  // ........ .......
  09D8: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002CC, // Address
                    ,)
            }, 


  09DD: 11 14 0A 11 82 0C 00 0A 20 00 00 CC 02 00 00 00  // ........ .......
  09ED: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002D0, // Address
                    ,)
            }, 


  09F2: 11 14 0A 11 82 0C 00 0A 20 00 00 D0 02 00 00 00  // ........ .......
  0A02: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002D4, // Address
                    ,)
            }, 


  0A07: 11 14 0A 11 82 0C 00 0A 20 00 00 D4 02 00 00 00  // ........ .......
  0A17: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002D8, // Address
                    ,)
            }, 


  0A1C: 11 14 0A 11 82 0C 00 0A 20 00 00 D8 02 00 00 00  // ........ .......
  0A2C: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002DC, // Address
                    ,)
            }, 


  0A31: 11 14 0A 11 82 0C 00 0A 20 00 00 DC 02 00 00 00  // ........ .......
  0A41: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002E0, // Address
                    ,)
            }, 


  0A46: 11 14 0A 11 82 0C 00 0A 20 00 00 E0 02 00 00 00  // ........ .......
  0A56: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002E4, // Address
                    ,)
            }, 


  0A5B: 11 14 0A 11 82 0C 00 0A 20 00 00 E4 02 00 00 00  // ........ .......
  0A6B: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 


  0A70: 11 14 0A 11 82 0C 00 7F 40 00 04 E7 00 00 00 00  // ........@.......
  0A80: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 


  0A85: 11 14 0A 11 82 0C 00 7F 40 00 04 E8 00 00 00 00  // ........@.......
  0A95: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002F8, // Address
                    ,)
            }, 


  0A9A: 11 14 0A 11 82 0C 00 0A 20 00 00 F8 02 00 00 00  // ........ .......
  0AAA: 00 00 00 79 00                                   // ...y.

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002FC, // Address
                    ,)
            }
        })
    }
}



Table Header:
Table Body (Length 0xAC4)
