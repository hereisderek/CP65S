{
    External (_PR_.CPU0._PCT, MethodObj)    // 0 Arguments
    External (_PR_.CPU0._PPC, IntObj)
    External (_PR_.CPU0._PSS, PkgObj)
    External (_PR_.CPU1, ProcessorObj)
    External (_PR_.CPU2, ProcessorObj)
    External (_PR_.CPU3, ProcessorObj)
    External (_PR_.CPU4, ProcessorObj)
    External (_PR_.CPU5, ProcessorObj)
    External (_PR_.CPU6, ProcessorObj)
    External (_PR_.CPU7, ProcessorObj)
    External (PDC0, IntObj)
    External (TCNT, FieldUnitObj)

    Scope (\_PR.CPU1)
    {

  0024: 10 49 0C 5C 2E 5F 50 52 5F 43 50 55 31           // .I.\._PR_CPU1

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {

  0031: 14 16 5F 50 50 43 00                             // .._PPC.

            Return (\_PR.CPU0._PPC)
        }


  0038: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {

  0048: 14 16 5F 50 43 54 00                             // .._PCT.

            Return (\_PR.CPU0._PCT ())
        }


  004F: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43 54  // .\/._PR_CPU0_PCT

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {

  005F: 14 16 5F 50 53 53 00                             // .._PSS.

            Return (\_PR.CPU0._PSS)
        }


  0066: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS

        Name (PSDF, Zero)

  0076: 08 50 53 44 46 00                                // .PSDF.

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {

  007C: 14 4B 04 5F 50 53 44 00                          // .K._PSD.

            If (LNot (PSDF))
            {
                Store (TCNT, 
  0084: A0 2E 92 50 53 44 46 70 54 43 4E 54              // ...PSDFpTCNT

Index (DerefOf (
  0090: 88 83                                            // ..

Index (HPSD, Zero)), 0x04))
                Store (TCNT, 
  0092: 88 48 50 53 44 00 00 0A 04 00 70 54 43 4E 54     // .HPSD.....pTCNT

Index (DerefOf (
  00A1: 88 83                                            // ..

Index (SPSD, Zero)), 0x04))

  00A3: 88 53 50 53 44 00 00 0A 04 00                    // .SPSD.....

                Store (Ones, PSDF)
            }


  00AD: 70 FF 50 53 44 46                                // p.PSDF

            If (And (PDC0, 0x0800))
            {

  00B3: A0 0F 7B 50 44 43 30 0B 00 08 00                 // ..{PDC0....

                Return (HPSD)
            }


  00BE: A4 48 50 53 44                                   // .HPSD

            Return (SPSD)
        }


  00C3: A4 53 50 53 44                                   // .SPSD

        Name (HPSD, 
  00C8: 08 48 50 53 44                                   // .HPSD

Package (0x01)
        {

  00CD: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })

  00D0: 12 0A 05 0A 05 00 00 0A FE 0A 80                 // ...........

        Name (SPSD, 
  00DB: 08 53 50 53 44                                   // .SPSD

Package (0x01)
        {

  00E0: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }


  00E3: 12 0A 05 0A 05 00 00 0A FC 0A 80                 // ...........

    Scope (\_PR.CPU2)
    {

  00EE: 10 49 0C 5C 2E 5F 50 52 5F 43 50 55 32           // .I.\._PR_CPU2

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {

  00FB: 14 16 5F 50 50 43 00                             // .._PPC.

            Return (\_PR.CPU0._PPC)
        }


  0102: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {

  0112: 14 16 5F 50 43 54 00                             // .._PCT.

            Return (\_PR.CPU0._PCT ())
        }


  0119: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43 54  // .\/._PR_CPU0_PCT

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {

  0129: 14 16 5F 50 53 53 00                             // .._PSS.

            Return (\_PR.CPU0._PSS)
        }


  0130: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS

        Name (PSDF, Zero)

  0140: 08 50 53 44 46 00                                // .PSDF.

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {

  0146: 14 4B 04 5F 50 53 44 00                          // .K._PSD.

            If (LNot (PSDF))
            {
                Store (TCNT, 
  014E: A0 2E 92 50 53 44 46 70 54 43 4E 54              // ...PSDFpTCNT

Index (DerefOf (
  015A: 88 83                                            // ..

Index (HPSD, Zero)), 0x04))
                Store (TCNT, 
  015C: 88 48 50 53 44 00 00 0A 04 00 70 54 43 4E 54     // .HPSD.....pTCNT

Index (DerefOf (
  016B: 88 83                                            // ..

Index (SPSD, Zero)), 0x04))

  016D: 88 53 50 53 44 00 00 0A 04 00                    // .SPSD.....

                Store (Ones, PSDF)
            }


  0177: 70 FF 50 53 44 46                                // p.PSDF

            If (And (PDC0, 0x0800))
            {

  017D: A0 0F 7B 50 44 43 30 0B 00 08 00                 // ..{PDC0....

                Return (HPSD)
            }


  0188: A4 48 50 53 44                                   // .HPSD

            Return (SPSD)
        }


  018D: A4 53 50 53 44                                   // .SPSD

        Name (HPSD, 
  0192: 08 48 50 53 44                                   // .HPSD

Package (0x01)
        {

  0197: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })

  019A: 12 0A 05 0A 05 00 00 0A FE 0A 80                 // ...........

        Name (SPSD, 
  01A5: 08 53 50 53 44                                   // .SPSD

Package (0x01)
        {

  01AA: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }


  01AD: 12 0A 05 0A 05 00 00 0A FC 0A 80                 // ...........

    Scope (\_PR.CPU3)
    {

  01B8: 10 49 0C 5C 2E 5F 50 52 5F 43 50 55 33           // .I.\._PR_CPU3

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {

  01C5: 14 16 5F 50 50 43 00                             // .._PPC.

            Return (\_PR.CPU0._PPC)
        }


  01CC: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {

  01DC: 14 16 5F 50 43 54 00                             // .._PCT.

            Return (\_PR.CPU0._PCT ())
        }


  01E3: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43 54  // .\/._PR_CPU0_PCT

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {

  01F3: 14 16 5F 50 53 53 00                             // .._PSS.

            Return (\_PR.CPU0._PSS)
        }


  01FA: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS

        Name (PSDF, Zero)

  020A: 08 50 53 44 46 00                                // .PSDF.

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {

  0210: 14 4B 04 5F 50 53 44 00                          // .K._PSD.

            If (LNot (PSDF))
            {
                Store (TCNT, 
  0218: A0 2E 92 50 53 44 46 70 54 43 4E 54              // ...PSDFpTCNT

Index (DerefOf (
  0224: 88 83                                            // ..

Index (HPSD, Zero)), 0x04))
                Store (TCNT, 
  0226: 88 48 50 53 44 00 00 0A 04 00 70 54 43 4E 54     // .HPSD.....pTCNT

Index (DerefOf (
  0235: 88 83                                            // ..

Index (SPSD, Zero)), 0x04))

  0237: 88 53 50 53 44 00 00 0A 04 00                    // .SPSD.....

                Store (Ones, PSDF)
            }


  0241: 70 FF 50 53 44 46                                // p.PSDF

            If (And (PDC0, 0x0800))
            {

  0247: A0 0F 7B 50 44 43 30 0B 00 08 00                 // ..{PDC0....

                Return (HPSD)
            }


  0252: A4 48 50 53 44                                   // .HPSD

            Return (SPSD)
        }


  0257: A4 53 50 53 44                                   // .SPSD

        Name (HPSD, 
  025C: 08 48 50 53 44                                   // .HPSD

Package (0x01)
        {

  0261: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })

  0264: 12 0A 05 0A 05 00 00 0A FE 0A 80                 // ...........

        Name (SPSD, 
  026F: 08 53 50 53 44                                   // .SPSD

Package (0x01)
        {

  0274: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }


  0277: 12 0A 05 0A 05 00 00 0A FC 0A 80                 // ...........

    Scope (\_PR.CPU4)
    {

  0282: 10 49 0C 5C 2E 5F 50 52 5F 43 50 55 34           // .I.\._PR_CPU4

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {

  028F: 14 16 5F 50 50 43 00                             // .._PPC.

            Return (\_PR.CPU0._PPC)
        }


  0296: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {

  02A6: 14 16 5F 50 43 54 00                             // .._PCT.

            Return (\_PR.CPU0._PCT ())
        }


  02AD: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43 54  // .\/._PR_CPU0_PCT

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {

  02BD: 14 16 5F 50 53 53 00                             // .._PSS.

            Return (\_PR.CPU0._PSS)
        }


  02C4: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS

        Name (PSDF, Zero)

  02D4: 08 50 53 44 46 00                                // .PSDF.

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {

  02DA: 14 4B 04 5F 50 53 44 00                          // .K._PSD.

            If (LNot (PSDF))
            {
                Store (TCNT, 
  02E2: A0 2E 92 50 53 44 46 70 54 43 4E 54              // ...PSDFpTCNT

Index (DerefOf (
  02EE: 88 83                                            // ..

Index (HPSD, Zero)), 0x04))
                Store (TCNT, 
  02F0: 88 48 50 53 44 00 00 0A 04 00 70 54 43 4E 54     // .HPSD.....pTCNT

Index (DerefOf (
  02FF: 88 83                                            // ..

Index (SPSD, Zero)), 0x04))

  0301: 88 53 50 53 44 00 00 0A 04 00                    // .SPSD.....

                Store (Ones, PSDF)
            }


  030B: 70 FF 50 53 44 46                                // p.PSDF

            If (And (PDC0, 0x0800))
            {

  0311: A0 0F 7B 50 44 43 30 0B 00 08 00                 // ..{PDC0....

                Return (HPSD)
            }


  031C: A4 48 50 53 44                                   // .HPSD

            Return (SPSD)
        }


  0321: A4 53 50 53 44                                   // .SPSD

        Name (HPSD, 
  0326: 08 48 50 53 44                                   // .HPSD

Package (0x01)
        {

  032B: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })

  032E: 12 0A 05 0A 05 00 00 0A FE 0A 80                 // ...........

        Name (SPSD, 
  0339: 08 53 50 53 44                                   // .SPSD

Package (0x01)
        {

  033E: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }


  0341: 12 0A 05 0A 05 00 00 0A FC 0A 80                 // ...........

    Scope (\_PR.CPU5)
    {

  034C: 10 49 0C 5C 2E 5F 50 52 5F 43 50 55 35           // .I.\._PR_CPU5

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {

  0359: 14 16 5F 50 50 43 00                             // .._PPC.

            Return (\_PR.CPU0._PPC)
        }


  0360: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {

  0370: 14 16 5F 50 43 54 00                             // .._PCT.

            Return (\_PR.CPU0._PCT ())
        }


  0377: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43 54  // .\/._PR_CPU0_PCT

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {

  0387: 14 16 5F 50 53 53 00                             // .._PSS.

            Return (\_PR.CPU0._PSS)
        }


  038E: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS

        Name (PSDF, Zero)

  039E: 08 50 53 44 46 00                                // .PSDF.

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {

  03A4: 14 4B 04 5F 50 53 44 00                          // .K._PSD.

            If (LNot (PSDF))
            {
                Store (TCNT, 
  03AC: A0 2E 92 50 53 44 46 70 54 43 4E 54              // ...PSDFpTCNT

Index (DerefOf (
  03B8: 88 83                                            // ..

Index (HPSD, Zero)), 0x04))
                Store (TCNT, 
  03BA: 88 48 50 53 44 00 00 0A 04 00 70 54 43 4E 54     // .HPSD.....pTCNT

Index (DerefOf (
  03C9: 88 83                                            // ..

Index (SPSD, Zero)), 0x04))

  03CB: 88 53 50 53 44 00 00 0A 04 00                    // .SPSD.....

                Store (Ones, PSDF)
            }


  03D5: 70 FF 50 53 44 46                                // p.PSDF

            If (And (PDC0, 0x0800))
            {

  03DB: A0 0F 7B 50 44 43 30 0B 00 08 00                 // ..{PDC0....

                Return (HPSD)
            }


  03E6: A4 48 50 53 44                                   // .HPSD

            Return (SPSD)
        }


  03EB: A4 53 50 53 44                                   // .SPSD

        Name (HPSD, 
  03F0: 08 48 50 53 44                                   // .HPSD

Package (0x01)
        {

  03F5: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })

  03F8: 12 0A 05 0A 05 00 00 0A FE 0A 80                 // ...........

        Name (SPSD, 
  0403: 08 53 50 53 44                                   // .SPSD

Package (0x01)
        {

  0408: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }


  040B: 12 0A 05 0A 05 00 00 0A FC 0A 80                 // ...........

    Scope (\_PR.CPU6)
    {

  0416: 10 49 0C 5C 2E 5F 50 52 5F 43 50 55 36           // .I.\._PR_CPU6

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {

  0423: 14 16 5F 50 50 43 00                             // .._PPC.

            Return (\_PR.CPU0._PPC)
        }


  042A: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {

  043A: 14 16 5F 50 43 54 00                             // .._PCT.

            Return (\_PR.CPU0._PCT ())
        }


  0441: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43 54  // .\/._PR_CPU0_PCT

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {

  0451: 14 16 5F 50 53 53 00                             // .._PSS.

            Return (\_PR.CPU0._PSS)
        }


  0458: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS

        Name (PSDF, Zero)

  0468: 08 50 53 44 46 00                                // .PSDF.

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {

  046E: 14 4B 04 5F 50 53 44 00                          // .K._PSD.

            If (LNot (PSDF))
            {
                Store (TCNT, 
  0476: A0 2E 92 50 53 44 46 70 54 43 4E 54              // ...PSDFpTCNT

Index (DerefOf (
  0482: 88 83                                            // ..

Index (HPSD, Zero)), 0x04))
                Store (TCNT, 
  0484: 88 48 50 53 44 00 00 0A 04 00 70 54 43 4E 54     // .HPSD.....pTCNT

Index (DerefOf (
  0493: 88 83                                            // ..

Index (SPSD, Zero)), 0x04))

  0495: 88 53 50 53 44 00 00 0A 04 00                    // .SPSD.....

                Store (Ones, PSDF)
            }


  049F: 70 FF 50 53 44 46                                // p.PSDF

            If (And (PDC0, 0x0800))
            {

  04A5: A0 0F 7B 50 44 43 30 0B 00 08 00                 // ..{PDC0....

                Return (HPSD)
            }


  04B0: A4 48 50 53 44                                   // .HPSD

            Return (SPSD)
        }


  04B5: A4 53 50 53 44                                   // .SPSD

        Name (HPSD, 
  04BA: 08 48 50 53 44                                   // .HPSD

Package (0x01)
        {

  04BF: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })

  04C2: 12 0A 05 0A 05 00 00 0A FE 0A 80                 // ...........

        Name (SPSD, 
  04CD: 08 53 50 53 44                                   // .SPSD

Package (0x01)
        {

  04D2: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }


  04D5: 12 0A 05 0A 05 00 00 0A FC 0A 80                 // ...........

    Scope (\_PR.CPU7)
    {

  04E0: 10 49 0C 5C 2E 5F 50 52 5F 43 50 55 37           // .I.\._PR_CPU7

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {

  04ED: 14 16 5F 50 50 43 00                             // .._PPC.

            Return (\_PR.CPU0._PPC)
        }


  04F4: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {

  0504: 14 16 5F 50 43 54 00                             // .._PCT.

            Return (\_PR.CPU0._PCT ())
        }


  050B: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43 54  // .\/._PR_CPU0_PCT

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {

  051B: 14 16 5F 50 53 53 00                             // .._PSS.

            Return (\_PR.CPU0._PSS)
        }


  0522: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS

        Name (PSDF, Zero)

  0532: 08 50 53 44 46 00                                // .PSDF.

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {

  0538: 14 4B 04 5F 50 53 44 00                          // .K._PSD.

            If (LNot (PSDF))
            {
                Store (TCNT, 
  0540: A0 2E 92 50 53 44 46 70 54 43 4E 54              // ...PSDFpTCNT

Index (DerefOf (
  054C: 88 83                                            // ..

Index (HPSD, Zero)), 0x04))
                Store (TCNT, 
  054E: 88 48 50 53 44 00 00 0A 04 00 70 54 43 4E 54     // .HPSD.....pTCNT

Index (DerefOf (
  055D: 88 83                                            // ..

Index (SPSD, Zero)), 0x04))

  055F: 88 53 50 53 44 00 00 0A 04 00                    // .SPSD.....

                Store (Ones, PSDF)
            }


  0569: 70 FF 50 53 44 46                                // p.PSDF

            If (And (PDC0, 0x0800))
            {

  056F: A0 0F 7B 50 44 43 30 0B 00 08 00                 // ..{PDC0....

                Return (HPSD)
            }


  057A: A4 48 50 53 44                                   // .HPSD

            Return (SPSD)
        }


  057F: A4 53 50 53 44                                   // .SPSD

        Name (HPSD, 
  0584: 08 48 50 53 44                                   // .HPSD

Package (0x01)
        {

  0589: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })

  058C: 12 0A 05 0A 05 00 00 0A FE 0A 80                 // ...........

        Name (SPSD, 
  0597: 08 53 50 53 44                                   // .SPSD

Package (0x01)
        {

  059C: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }
}



Table Header:
Table Body (Length 0x5AA)
