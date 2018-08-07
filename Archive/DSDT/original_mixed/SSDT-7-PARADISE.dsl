{
    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.CPU0._PPC, IntObj)
    External (_PR_.CPU0._PSS, PkgObj)
    External (_PR_.CPU0._TSS, IntObj)    // Warning: Unknown object
    External (_PR_.CPU1, ProcessorObj)
    External (_PR_.CPU2, ProcessorObj)
    External (_PR_.CPU3, ProcessorObj)
    External (_PR_.CPU4, ProcessorObj)
    External (_PR_.CPU5, ProcessorObj)
    External (_PR_.CPU6, ProcessorObj)
    External (_PR_.CPU7, ProcessorObj)
    External (OSYS, FieldUnitObj)
    External (PDC0, IntObj)
    External (TCNT, FieldUnitObj)

    Scope (\_SB)
    {

  0024: 10 4E 36 5C 5F 53 42 5F                          // .N6\_SB_

        Device (PCCD)
        {

  002C: 5B 82 45 36 50 43 43 44                          // [.E6PCCD

            Name (PCCA, 0xC77A6018)

  0034: 08 50 43 43 41 0C 18 60 7A C7                    // .PCCA..`z.

            Name (PCCS, 0x00001000)

  003E: 08 50 43 43 53 0C 00 10 00 00                    // .PCCS.....

            Name (PENB, 0x00000001)

  0048: 08 50 45 4E 42 0C 01 00 00 00                    // .PENB.....

            Name (_HID, EisaId ("INT340F"))  // _HID: Hardware ID

  0052: 08 5F 48 49 44 0C 25 D4 34 0F                    // ._HID.%.4.

            Name (_STR, 
  005C: 08 5F 53 54 52                                   // ._STR

Unicode ("Collaborative Processor Performance Control (CPPC)"))  // _STR: Description String

  0061: 11 4A 06 0A 66 43 00 6F 00 6C 00 6C 00 61 00 62  // .J..fC.o.l.l.a.b
  0071: 00 6F 00 72 00 61 00 74 00 69 00 76 00 65 00 20  // .o.r.a.t.i.v.e. 
  0081: 00 50 00 72 00 6F 00 63 00 65 00 73 00 73 00 6F  // .P.r.o.c.e.s.s.o
  0091: 00 72 00 20 00 50 00 65 00 72 00 66 00 6F 00 72  // .r. .P.e.r.f.o.r
  00A1: 00 6D 00 61 00 6E 00 63 00 65 00 20 00 43 00 6F  // .m.a.n.c.e. .C.o
  00B1: 00 6E 00 74 00 72 00 6F 00 6C 00 20 00 28 00 43  // .n.t.r.o.l. .(.C
  00C1: 00 50 00 50 00 43 00 29 00 00 00                 // .P.P.C.)...

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {

  00CC: 14 18 5F 53 54 41 00                             // .._STA.

                If (
  00D3: A0 0D 92                                         // ...

LGreaterEqual (OSYS, 0x07DC))
                {

  00D6: 95 4F 53 59 53 0B DC 07                          // .OSYS...

                    Return (0x0F)
                }

  00DE: A4 0A 0F                                         // ...

                Else
                {

  00E1: A1 03                                            // ..

                    Return (Zero)
                }
            }


  00E3: A4 00                                            // ..

            Name (TMPP, 
  00E5: 08 54 4D 50 50                                   // .TMPP

Package (0x02)
            {
                0x80000000, 
                0x80000000
            })

  00EA: 12 0C 02 0C 00 00 00 80 0C 00 00 00 80           // .............

            Method (PADR, 0, NotSerialized)
            {
                Store (PCCA, 
  00F7: 14 23 50 41 44 52 00 70 50 43 43 41              // .#PADR.pPCCA

Index (TMPP, Zero))
                Store (PCCS, 
  0103: 88 54 4D 50 50 00 00 70 50 43 43 53              // .TMPP..pPCCS

Index (TMPP, One))

  010F: 88 54 4D 50 50 01 00                             // .TMPP..

                Return (TMPP)
            }


  0116: A4 54 4D 50 50                                   // .TMPP

            Method (GPRN, 0, Serialized)
            {

  011B: 14 43 10 47 50 52 4E 08                          // .C.GPRN.


  0123: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (TCNT))
                {

  0129: A2 45 0F 01 70 99 54 43 4E 54 00 5F 54 5F 30     // .E..p.TCNT._T_0

                    Case (0x08)
                    {
                        Notify (\_PR.CPU0, 0x83)
                        Notify (\_PR.CPU1, 0x83)
                        Notify (\_PR.CPU2, 0x83)
                        Notify (\_PR.CPU3, 0x83)
                        Notify (\_PR.CPU4, 0x83)
                        Notify (\_PR.CPU5, 0x83)
                        Notify (\_PR.CPU6, 0x83)

  0138: A0 41 07 93 5F 54 5F 30 0A 08 86 5C 2E 5F 50 52  // .A.._T_0...\._PR
  0148: 5F 43 50 55 30 0A 83 86 5C 2E 5F 50 52 5F 43 50  // _CPU0...\._PR_CP
  0158: 55 31 0A 83 86 5C 2E 5F 50 52 5F 43 50 55 32 0A  // U1...\._PR_CPU2.
  0168: 83 86 5C 2E 5F 50 52 5F 43 50 55 33 0A 83 86 5C  // ..\._PR_CPU3...\
  0178: 2E 5F 50 52 5F 43 50 55 34 0A 83 86 5C 2E 5F 50  // ._PR_CPU4...\._P
  0188: 52 5F 43 50 55 35 0A 83 86 5C 2E 5F 50 52 5F 43  // R_CPU5...\._PR_C
  0198: 50 55 36 0A 83                                   // PU6..

                        Notify (\_PR.CPU7, 0x83)
                    }

  019D: 86 5C 2E 5F 50 52 5F 43 50 55 37 0A 83           // .\._PR_CPU7..

                    Case
  01AA: A1 43 07                                         // .C.

 (0x04)
                    {
                        Notify (\_PR.CPU0, 0x83)
                        Notify (\_PR.CPU1, 0x83)
                        Notify (\_PR.CPU2, 0x83)

  01AD: A0 3C 93 5F 54 5F 30 0A 04 86 5C 2E 5F 50 52 5F  // .<._T_0...\._PR_
  01BD: 43 50 55 30 0A 83 86 5C 2E 5F 50 52 5F 43 50 55  // CPU0...\._PR_CPU
  01CD: 31 0A 83 86 5C 2E 5F 50 52 5F 43 50 55 32 0A 83  // 1...\._PR_CPU2..

                        Notify (\_PR.CPU3, 0x83)
                    }

  01DD: 86 5C 2E 5F 50 52 5F 43 50 55 33 0A 83           // .\._PR_CPU3..

                    Case
  01EA: A1 33                                            // .3

 (0x02)
                    {
                        Notify (\_PR.CPU0, 0x83)

  01EC: A0 22 93 5F 54 5F 30 0A 02 86 5C 2E 5F 50 52 5F  // ."._T_0...\._PR_
  01FC: 43 50 55 30 0A 83                                // CPU0..

                        Notify (\_PR.CPU1, 0x83)
                    }

  0202: 86 5C 2E 5F 50 52 5F 43 50 55 31 0A 83           // .\._PR_CPU1..

                    Default
                    {

  020F: A1 0E                                            // ..

                        Notify (\_PR.CPU0, 0x83)
                    }


  0211: 86 5C 2E 5F 50 52 5F 43 50 55 30 0A 83           // .\._PR_CPU0..

                }
            }


  021E: A5                                               // .

            Name (PCFG, Zero)

  021F: 08 50 43 46 47 00                                // .PCFG.

            Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
            {

  0225: 14 48 0B 5F 50 54 43 00                          // .H._PTC.

                If (LAnd (CondRefOf (\PDC0), 
  022D: A0 40 08 90 5B 12 5C 50 44 43 30 00              // .@..[.\PDC0.


  0239: 92                                               // .

LNotEqual (\PDC0, 0x80000000)))
                {

  023A: 93 5C 50 44 43 30 0C 00 00 00 80                 // .\PDC0.....

                    If (And (\PDC0, 0x04))
                    {

  0245: A0 38 7B 5C 50 44 43 30 0A 04 00                 // .8{\PDC0...

                        Return (
  0250: A4                                               // .

Package (0x02)
                        {

  0251: 12 2C 02                                         // .,.

                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 


  0254: 11 14 0A 11 82 0C 00 7F 00 00 00 00 00 00 00 00  // ................
  0264: 00 00 00 79 00                                   // ...y.

                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }
                        })
                    }

  0269: 11 14 0A 11 82 0C 00 7F 00 00 00 00 00 00 00 00  // ................
  0279: 00 00 00 79 00                                   // ...y.

                    Else
                    {

  027E: A1 2F                                            // ./

                        Return (
  0280: A4                                               // .

Package (0x02)
                        {

  0281: 12 2C 02                                         // .,.

                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x05,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000001810, // Address
                                    ,)
                            }, 


  0284: 11 14 0A 11 82 0C 00 01 05 00 00 10 18 00 00 00  // ................
  0294: 00 00 00 79 00                                   // ...y.

                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x05,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000001810, // Address
                                    ,)
                            }
                        })
                    }
                }

  0299: 11 14 0A 11 82 0C 00 01 05 00 00 10 18 00 00 00  // ................
  02A9: 00 00 00 79 00                                   // ...y.

                Else
                {

  02AE: A1 2F                                            // ./

                    Return (
  02B0: A4                                               // .

Package (0x02)
                    {

  02B1: 12 2C 02                                         // .,.

                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 


  02B4: 11 14 0A 11 82 0C 00 7F 00 00 00 00 00 00 00 00  // ................
  02C4: 00 00 00 79 00                                   // ...y.

                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }
                    })
                }
            }


  02C9: 11 14 0A 11 82 0C 00 7F 00 00 00 00 00 00 00 00  // ................
  02D9: 00 00 00 79 00                                   // ...y.

            Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
            {

  02DE: 14 43 04 5F 50 53 53 00                          // .C._PSS.

                If (CondRefOf (\_PR.CPU0._PSS))
                {

  02E6: A0 23 5B 12 5C 2F 03 5F 50 52 5F 43 50 55 30 5F  // .#[.\/._PR_CPU0_
  02F6: 50 53 53 00                                      // PSS.

                    Return (\_PR.CPU0._PSS)
                }

  02FA: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS

                Else
                {

  030A: A1 17                                            // ..

                    Return (
  030C: A4                                               // .

Package (0x02)
                    {

  030D: 12 14 02                                         // ...

                        Package (0x06)
                        {
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero
                        }, 


  0310: 12 08 06 00 00 00 00 00 00                       // .........

                        Package (0x06)
                        {
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero
                        }
                    })
                }
            }


  0319: 12 08 06 00 00 00 00 00 00                       // .........

            Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
            {

  0322: 14 2E 5F 50 50 43 00                             // .._PPC.

                If (CondRefOf (\_PR.CPU0._PPC))
                {

  0329: A0 23 5B 12 5C 2F 03 5F 50 52 5F 43 50 55 30 5F  // .#[.\/._PR_CPU0_
  0339: 50 50 43 00                                      // PPC.

                    Return (\_PR.CPU0._PPC)
                }

  033D: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC

                Else
                {

  034D: A1 03                                            // ..

                    Return (Zero)
                }
            }


  034F: A4 00                                            // ..

            Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
            {

  0351: 14 41 04 5F 54 53 53 00                          // .A._TSS.

                If (CondRefOf (\_PR.CPU0._TSS))
                {

  0359: A0 23 5B 12 5C 2F 03 5F 50 52 5F 43 50 55 30 5F  // .#[.\/._PR_CPU0_
  0369: 54 53 53 00                                      // TSS.

                    Return (\_PR.CPU0._TSS)
                }

  036D: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 54 53 53  // .\/._PR_CPU0_TSS

                Else
                {

  037D: A1 15                                            // ..

                    Return (
  037F: A4                                               // .

Package (0x02)
                    {

  0380: 12 12 02                                         // ...

                        Package (0x05)
                        {
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero
                        }, 


  0383: 12 07 05 00 00 00 00 00                          // ........

                        Package (0x05)
                        {
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero
                        }
                    })
                }
            }
        }
    }
}



Table Header:
Table Body (Length 0x393)
