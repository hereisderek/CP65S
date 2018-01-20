{
    External (_SB_.PCI0.LPCB.EC__.AMBT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.CVRT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.DIM0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.DIM1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.ECOK, IntObj)
    External (_SB_.PCI0.LPCB.EC__.FANT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FCMD, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.GTVR, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.MCRT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PCAD, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PDT0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PDT1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PDT2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PDT3, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PEC0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PEC1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PEC2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PEC3, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PECC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PECD, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PECH, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PECI, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PEHI, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PEPL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PEPM, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PEWL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PMAX, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PMDT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PPDT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRC0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRC1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRCL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRCM, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRCS, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRFC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRIN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRS0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRS1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRS2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRS3, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRS4, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PSTE, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PWFC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PWRL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.SKNT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TSD0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TSD1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TSD2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TSD3, FieldUnitObj)
    External (_TZ_.TZ0_._TMP, MethodObj)    // 0 Arguments
    External (DTS1, FieldUnitObj)
    External (DTS2, FieldUnitObj)
    External (DTS3, FieldUnitObj)
    External (DTS4, FieldUnitObj)
    External (PDTS, FieldUnitObj)

    Scope (\_SB)
    {

  0024: 10 4D F6 5C 5F 53 42 5F                          // .M.\_SB_

        Device (PTID)
        {

  002C: 5B 82 44 F6 50 54 49 44                          // [.D.PTID

            Name (_HID, EisaId ("INT340E"))  // _HID: Hardware ID

  0034: 08 5F 48 49 44 0C 25 D4 34 0E                    // ._HID.%.4.

            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID

  003E: 08 5F 43 49 44 0C 41 D0 0C 02                    // ._CID.A...

            Name (IVER, 0x00030000)

  0048: 08 49 56 45 52 0C 00 00 03 00                    // .IVER.....

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {

  0052: 14 09 5F 53 54 41 00                             // .._STA.

                Return (0x0F)
            }


  0059: A4 0A 0F                                         // ...

            Name (TSDL, 
  005C: 08 54 53 44 4C                                   // .TSDL

Package (0x2E)
            {
                Zero, 
                "CPU Core 0 DTS", 
                Zero, 
                "CPU Core 1 DTS", 
                Zero, 
                "CPU Core 2 DTS", 
                Zero, 
                "CPU Core 3 DTS", 
                Zero, 
                "CPU Core Package DTS", 
                0x03, 
                "CPU Core VR (IMVP) Temperature", 
                0x03, 
                "CPU GT VR (IMVP) Temperature", 
                0x03, 
                "Heat Exchanger Fan Temperature", 
                0x03, 
                "Skin Temperature", 
                0x03, 
                "Ambient Temperature", 
                0x03, 
                "Minicard Region Temperature", 
                0x02, 
                "Channel 0 DIMM Temperature", 
                0x02, 
                "Channel 1 DIMM Temperature", 
                Zero, 
                "CPU Package Temperature", 
                0x05, 
                "PCH DTS Temperature from PCH", 
                Zero, 
                "CPU PECI reading", 
                0x05, 
                "SA DTS Temperature from PCH", 
                0x02, 
                "TS-on-DIMM0 Temperature", 
                0x02, 
                "TS-on-DIMM1 Temperature", 
                0x02, 
                "TS-on-DIMM2 Temperature", 
                0x02, 
                "TS-on-DIMM3 Temperature", 
                0x02, 
                "TZ00 _TMP", 
                0x02, 
                "TZ01 _TMP"
            })

  0061: 12 4A 23 2E 00 0D 43 50 55 20 43 6F 72 65 20 30  // .J#...CPU Core 0
  0071: 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72 65 20  //  DTS...CPU Core 
  0081: 31 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72 65  // 1 DTS...CPU Core
  0091: 20 32 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72  //  2 DTS...CPU Cor
  00A1: 65 20 33 20 44 54 53 00 00 0D 43 50 55 20 43 6F  // e 3 DTS...CPU Co
  00B1: 72 65 20 50 61 63 6B 61 67 65 20 44 54 53 00 0A  // re Package DTS..
  00C1: 03 0D 43 50 55 20 43 6F 72 65 20 56 52 20 28 49  // ..CPU Core VR (I
  00D1: 4D 56 50 29 20 54 65 6D 70 65 72 61 74 75 72 65  // MVP) Temperature
  00E1: 00 0A 03 0D 43 50 55 20 47 54 20 56 52 20 28 49  // ....CPU GT VR (I
  00F1: 4D 56 50 29 20 54 65 6D 70 65 72 61 74 75 72 65  // MVP) Temperature
  0101: 00 0A 03 0D 48 65 61 74 20 45 78 63 68 61 6E 67  // ....Heat Exchang
  0111: 65 72 20 46 61 6E 20 54 65 6D 70 65 72 61 74 75  // er Fan Temperatu
  0121: 72 65 00 0A 03 0D 53 6B 69 6E 20 54 65 6D 70 65  // re....Skin Tempe
  0131: 72 61 74 75 72 65 00 0A 03 0D 41 6D 62 69 65 6E  // rature....Ambien
  0141: 74 20 54 65 6D 70 65 72 61 74 75 72 65 00 0A 03  // t Temperature...
  0151: 0D 4D 69 6E 69 63 61 72 64 20 52 65 67 69 6F 6E  // .Minicard Region
  0161: 20 54 65 6D 70 65 72 61 74 75 72 65 00 0A 02 0D  //  Temperature....
  0171: 43 68 61 6E 6E 65 6C 20 30 20 44 49 4D 4D 20 54  // Channel 0 DIMM T
  0181: 65 6D 70 65 72 61 74 75 72 65 00 0A 02 0D 43 68  // emperature....Ch
  0191: 61 6E 6E 65 6C 20 31 20 44 49 4D 4D 20 54 65 6D  // annel 1 DIMM Tem
  01A1: 70 65 72 61 74 75 72 65 00 00 0D 43 50 55 20 50  // perature...CPU P
  01B1: 61 63 6B 61 67 65 20 54 65 6D 70 65 72 61 74 75  // ackage Temperatu
  01C1: 72 65 00 0A 05 0D 50 43 48 20 44 54 53 20 54 65  // re....PCH DTS Te
  01D1: 6D 70 65 72 61 74 75 72 65 20 66 72 6F 6D 20 50  // mperature from P
  01E1: 43 48 00 00 0D 43 50 55 20 50 45 43 49 20 72 65  // CH...CPU PECI re
  01F1: 61 64 69 6E 67 00 0A 05 0D 53 41 20 44 54 53 20  // ading....SA DTS 
  0201: 54 65 6D 70 65 72 61 74 75 72 65 20 66 72 6F 6D  // Temperature from
  0211: 20 50 43 48 00 0A 02 0D 54 53 2D 6F 6E 2D 44 49  //  PCH....TS-on-DI
  0221: 4D 4D 30 20 54 65 6D 70 65 72 61 74 75 72 65 00  // MM0 Temperature.
  0231: 0A 02 0D 54 53 2D 6F 6E 2D 44 49 4D 4D 31 20 54  // ...TS-on-DIMM1 T
  0241: 65 6D 70 65 72 61 74 75 72 65 00 0A 02 0D 54 53  // emperature....TS
  0251: 2D 6F 6E 2D 44 49 4D 4D 32 20 54 65 6D 70 65 72  // -on-DIMM2 Temper
  0261: 61 74 75 72 65 00 0A 02 0D 54 53 2D 6F 6E 2D 44  // ature....TS-on-D
  0271: 49 4D 4D 33 20 54 65 6D 70 65 72 61 74 75 72 65  // IMM3 Temperature
  0281: 00 0A 02 0D 54 5A 30 30 20 5F 54 4D 50 00 0A 02  // ....TZ00 _TMP...
  0291: 0D 54 5A 30 31 20 5F 54 4D 50 00                 // .TZ01 _TMP.

            Name (PSDL, 
  029C: 08 50 53 44 4C                                   // .PSDL

Package (0x0C)
            {
                Zero, 
                "CPU Power", 
                One, 
                "Gfx Core Power", 
                0x0A, 
                "System Power", 
                Zero, 
                "CPU Average Power", 
                One, 
                "Gfx Core Average Power", 
                0x0A, 
                "System Average Power"
            })

  02A1: 12 45 07 0C 00 0D 43 50 55 20 50 6F 77 65 72 00  // .E....CPU Power.
  02B1: 01 0D 47 66 78 20 43 6F 72 65 20 50 6F 77 65 72  // ..Gfx Core Power
  02C1: 00 0A 0A 0D 53 79 73 74 65 6D 20 50 6F 77 65 72  // ....System Power
  02D1: 00 00 0D 43 50 55 20 41 76 65 72 61 67 65 20 50  // ...CPU Average P
  02E1: 6F 77 65 72 00 01 0D 47 66 78 20 43 6F 72 65 20  // ower...Gfx Core 
  02F1: 41 76 65 72 61 67 65 20 50 6F 77 65 72 00 0A 0A  // Average Power...
  0301: 0D 53 79 73 74 65 6D 20 41 76 65 72 61 67 65 20  // .System Average 
  0311: 50 6F 77 65 72 00                                // Power.

            Name (OSDL, 
  0317: 08 4F 53 44 4C                                   // .OSDL

Package (0x06)
            {
                Zero, 
                "CPU Fan Speed", 
                "RPM", 
                Zero, 
                "CPU energy", 
                "RAW"
            })

  031C: 12 29 06 00 0D 43 50 55 20 46 61 6E 20 53 70 65  // .)...CPU Fan Spe
  032C: 65 64 00 0D 52 50 4D 00 00 0D 43 50 55 20 65 6E  // ed..RPM...CPU en
  033C: 65 72 67 79 00 0D 52 41 57 00                    // ergy..RAW.

            Method (TSDD, 0, NotSerialized)
            {

  0346: 14 4E 3C 54 53 44 44 00                          // .N<TSDD.

                Name (TMPV, 
  034E: 08 54 4D 50 56                                   // .TMPV

Package (0x17)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                Store (Add (Multiply (DTS1, 0x0A), 0x0AAC), 
  0353: 12 46 07 17 0C 00 00 00 80 0C 00 00 00 80 0C 00  // .F..............
  0363: 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00  // ................
  0373: 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00  // ................
  0383: 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80  // ................
  0393: 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C  // ................
  03A3: 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00  // ................
  03B3: 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00  // ................
  03C3: 00 80 0C 00 00 00 80 70 72 77 44 54 53 31 0A 0A  // .......prwDTS1..
  03D3: 00 0B AC 0A 00                                   // .....

Index (TMPV, Zero))
                Store (Add (Multiply (DTS2, 0x0A), 0x0AAC), 
  03D8: 88 54 4D 50 56 00 00 70 72 77 44 54 53 32 0A 0A  // .TMPV..prwDTS2..
  03E8: 00 0B AC 0A 00                                   // .....

Index (TMPV, One))
                Store (Add (Multiply (DTS3, 0x0A), 0x0AAC), 
  03ED: 88 54 4D 50 56 01 00 70 72 77 44 54 53 33 0A 0A  // .TMPV..prwDTS3..
  03FD: 00 0B AC 0A 00                                   // .....

Index (TMPV, 0x02))
                Store (Add (Multiply (DTS4, 0x0A), 0x0AAC), 
  0402: 88 54 4D 50 56 0A 02 00 70 72 77 44 54 53 34 0A  // .TMPV...prwDTS4.
  0412: 0A 00 0B AC 0A 00                                // ......

Index (TMPV, 0x03))
                Store (Add (Multiply (PDTS, 0x0A), 0x0AAC), 
  0418: 88 54 4D 50 56 0A 03 00 70 72 77 50 44 54 53 0A  // .TMPV...prwPDTS.
  0428: 0A 00 0B AC 0A 00                                // ......

Index (TMPV, 0x04))

  042E: 88 54 4D 50 56 0A 04 00                          // .TMPV...

                If (\_SB.PCI0.LPCB.EC.ECOK)
                {
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.CVRT, 0x0A), 0x0AAC), 
  0436: A0 49 2A 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .I*\/._SB_PCI0LP
  0446: 43 42 45 43 5F 5F 45 43 4F 4B 70 72 77 5C 2F 05  // CBEC__ECOKprw\/.
  0456: 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F  // _SB_PCI0LPCBEC__
  0466: 43 56 52 54 0A 0A 00 0B AC 0A 00                 // CVRT.......

Index (TMPV, 0x02))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.GTVR, 0x0A), 0x0AAC), 
  0471: 88 54 4D 50 56 0A 02 00 70 72 77 5C 2F 05 5F 53  // .TMPV...prw\/._S
  0481: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 47 54  // B_PCI0LPCBEC__GT
  0491: 56 52 0A 0A 00 0B AC 0A 00                       // VR.......

Index (TMPV, 0x03))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.FANT, 0x0A), 0x0AAC), 
  049A: 88 54 4D 50 56 0A 03 00 70 72 77 5C 2F 05 5F 53  // .TMPV...prw\/._S
  04AA: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 46 41  // B_PCI0LPCBEC__FA
  04BA: 4E 54 0A 0A 00 0B AC 0A 00                       // NT.......

Index (TMPV, 0x04))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.SKNT, 0x0A), 0x0AAC), 
  04C3: 88 54 4D 50 56 0A 04 00 70 72 77 5C 2F 05 5F 53  // .TMPV...prw\/._S
  04D3: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 53 4B  // B_PCI0LPCBEC__SK
  04E3: 4E 54 0A 0A 00 0B AC 0A 00                       // NT.......

Index (TMPV, 0x05))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.AMBT, 0x0A), 0x0AAC), 
  04EC: 88 54 4D 50 56 0A 05 00 70 72 77 5C 2F 05 5F 53  // .TMPV...prw\/._S
  04FC: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 41 4D  // B_PCI0LPCBEC__AM
  050C: 42 54 0A 0A 00 0B AC 0A 00                       // BT.......

Index (TMPV, 0x06))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.MCRT, 0x0A), 0x0AAC), 
  0515: 88 54 4D 50 56 0A 06 00 70 72 77 5C 2F 05 5F 53  // .TMPV...prw\/._S
  0525: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 4D 43  // B_PCI0LPCBEC__MC
  0535: 52 54 0A 0A 00 0B AC 0A 00                       // RT.......

Index (TMPV, 0x07))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.DIM0, 0x0A), 0x0AAC), 
  053E: 88 54 4D 50 56 0A 07 00 70 72 77 5C 2F 05 5F 53  // .TMPV...prw\/._S
  054E: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 44 49  // B_PCI0LPCBEC__DI
  055E: 4D 30 0A 0A 00 0B AC 0A 00                       // M0.......

Index (TMPV, 0x08))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.DIM1, 0x0A), 0x0AAC), 
  0567: 88 54 4D 50 56 0A 08 00 70 72 77 5C 2F 05 5F 53  // .TMPV...prw\/._S
  0577: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 44 49  // B_PCI0LPCBEC__DI
  0587: 4D 31 0A 0A 00 0B AC 0A 00                       // M1.......

Index (TMPV, 0x09))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.PMAX, 0x0A), 0x0AAC), 
  0590: 88 54 4D 50 56 0A 09 00 70 72 77 5C 2F 05 5F 53  // .TMPV...prw\/._S
  05A0: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 4D  // B_PCI0LPCBEC__PM
  05B0: 41 58 0A 0A 00 0B AC 0A 00                       // AX.......

Index (TMPV, 0x0A))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.PPDT, 0x0A), 0x0AAC), 
  05B9: 88 54 4D 50 56 0A 0A 00 70 72 77 5C 2F 05 5F 53  // .TMPV...prw\/._S
  05C9: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 50  // B_PCI0LPCBEC__PP
  05D9: 44 54 0A 0A 00 0B AC 0A 00                       // DT.......

Index (TMPV, 0x0B))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.PECH, 0x0A), 0x0AAC), 
  05E2: 88 54 4D 50 56 0A 0B 00 70 72 77 5C 2F 05 5F 53  // .TMPV...prw\/._S
  05F2: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 45  // B_PCI0LPCBEC__PE
  0602: 43 48 0A 0A 00 0B AC 0A 00                       // CH.......

Index (TMPV, 0x0C))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.PMDT, 0x0A), 0x0AAC), 
  060B: 88 54 4D 50 56 0A 0C 00 70 72 77 5C 2F 05 5F 53  // .TMPV...prw\/._S
  061B: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 4D  // B_PCI0LPCBEC__PM
  062B: 44 54 0A 0A 00 0B AC 0A 00                       // DT.......

Index (TMPV, 0x0E))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.TSD0, 0x0A), 0x0AAC), 
  0634: 88 54 4D 50 56 0A 0E 00 70 72 77 5C 2F 05 5F 53  // .TMPV...prw\/._S
  0644: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 54 53  // B_PCI0LPCBEC__TS
  0654: 44 30 0A 0A 00 0B AC 0A 00                       // D0.......

Index (TMPV, 0x0F))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.TSD1, 0x0A), 0x0AAC), 
  065D: 88 54 4D 50 56 0A 0F 00 70 72 77 5C 2F 05 5F 53  // .TMPV...prw\/._S
  066D: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 54 53  // B_PCI0LPCBEC__TS
  067D: 44 31 0A 0A 00 0B AC 0A 00                       // D1.......

Index (TMPV, 0x10))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.TSD2, 0x0A), 0x0AAC), 
  0686: 88 54 4D 50 56 0A 10 00 70 72 77 5C 2F 05 5F 53  // .TMPV...prw\/._S
  0696: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 54 53  // B_PCI0LPCBEC__TS
  06A6: 44 32 0A 0A 00 0B AC 0A 00                       // D2.......

Index (TMPV, 0x11))

  06AF: 88 54 4D 50 56 0A 11 00                          // .TMPV...

                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.TSD3, 0x0A), 0x0AAC), 
  06B7: 70 72 77 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // prw\/._SB_PCI0LP
  06C7: 43 42 45 43 5F 5F 54 53 44 33 0A 0A 00 0B AC 0A  // CBEC__TSD3......
  06D7: 00                                               // .

Index (TMPV, 0x12))
                }

                Store (\_TZ.TZ0._TMP (), 
  06D8: 88 54 4D 50 56 0A 12 00 70 5C 2F 03 5F 54 5A 5F  // .TMPV...p\/._TZ_
  06E8: 54 5A 30 5F 5F 54 4D 50                          // TZ0__TMP

Index (TMPV, 0x15))
                Store (\_TZ.TZ0._TMP (), 
  06F0: 88 54 4D 50 56 0A 15 00 70 5C 2F 03 5F 54 5A 5F  // .TMPV...p\/._TZ_
  0700: 54 5A 30 5F 5F 54 4D 50                          // TZ0__TMP

Index (TMPV, 0x16))

  0708: 88 54 4D 50 56 0A 16 00                          // .TMPV...

                Return (TMPV)
            }


  0710: A4 54 4D 50 56                                   // .TMPV

            Method (PSDD, 0, NotSerialized)
            {

  0715: 14 31 50 53 44 44 00                             // .1PSDD.

                Name (PWRV, 
  071C: 08 50 57 52 56                                   // .PWRV

Package (0x06)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })

  0721: 12 20 06 0C 00 00 00 80 0C 00 00 00 80 0C 00 00  // . ..............
  0731: 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00  // ................
  0741: 80                                               // .

                Return (PWRV)
            }


  0742: A4 50 57 52 56                                   // .PWRV

            Method (OSDD, 0, NotSerialized)
            {

  0747: 14 1D 4F 53 44 44 00                             // ..OSDD.

                Name (OSDV, 
  074E: 08 4F 53 44 56                                   // .OSDV

Package (0x02)
                {
                    0x80000000, 
                    0x80000000
                })

  0753: 12 0C 02 0C 00 00 00 80 0C 00 00 00 80           // .............

                Return (OSDV)
            }


  0760: A4 4F 53 44 56                                   // .OSDV

            Method (SDSP, 0, NotSerialized)
            {

  0765: 14 09 53 44 53 50 00                             // ..SDSP.

                Return (0x0A)
            }


  076C: A4 0A 0A                                         // ...

            Name (PADA, 
  076F: 08 50 41 44 41                                   // .PADA

Package (0x0A)
            {
                One, 
                Ones, 
                Ones, 
                0x1A, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones
            })

  0774: 12 0D 0A 01 FF FF 0A 1A FF FF FF FF FF FF        // ..............

            Name (PADD, 
  0782: 08 50 41 44 44                                   // .PADD

Package (0x0A)
            {
                0x02, 
                0x06A4, 
                0x06A0, 
                0x1A, 
                0x62, 
                0x63, 
                0x60, 
                0x61, 
                0x65, 
                0x64
            })

  0787: 12 18 0A 0A 02 0B A4 06 0B A0 06 0A 1A 0A 62 0A  // ..............b.
  0797: 63 0A 60 0A 61 0A 65 0A 64                       // c.`.a.e.d

            Method (PADT, 0, NotSerialized)
            {

  07A0: 14 0B 50 41 44 54 00                             // ..PADT.

                Return (PADA)
            }


  07A7: A4 50 41 44 41                                   // .PADA

            Method (RPMD, 0, NotSerialized)
            {

  07AC: 14 4D 36 52 50 4D 44 00                          // .M6RPMD.

                Name (MTMP, 
  07B4: 08 4D 54 4D 50                                   // .MTMP

Buffer (0x1A){})

  07B9: 11 03 0A 1A                                      // ....

                If (\_SB.PCI0.LPCB.EC.ECOK)
                {
                    Store (\_SB.PCI0.LPCB.EC.PRCL, 
  07BD: A0 47 35 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .G5\/._SB_PCI0LP
  07CD: 43 42 45 43 5F 5F 45 43 4F 4B 70 5C 2F 05 5F 53  // CBEC__ECOKp\/._S
  07DD: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 52  // B_PCI0LPCBEC__PR
  07ED: 43 4C                                            // CL

Index (MTMP, Zero))
                    Store (\_SB.PCI0.LPCB.EC.PRC0, 
  07EF: 88 4D 54 4D 50 00 00 70 5C 2F 05 5F 53 42 5F 50  // .MTMP..p\/._SB_P
  07FF: 43 49 30 4C 50 43 42 45 43 5F 5F 50 52 43 30     // CI0LPCBEC__PRC0

Index (MTMP, One))
                    Store (\_SB.PCI0.LPCB.EC.PRC1, 
  080E: 88 4D 54 4D 50 01 00 70 5C 2F 05 5F 53 42 5F 50  // .MTMP..p\/._SB_P
  081E: 43 49 30 4C 50 43 42 45 43 5F 5F 50 52 43 31     // CI0LPCBEC__PRC1

Index (MTMP, 0x02))
                    Store (\_SB.PCI0.LPCB.EC.PRCM, 
  082D: 88 4D 54 4D 50 0A 02 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  083D: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 52 43 4D  // PCI0LPCBEC__PRCM

Index (MTMP, 0x03))
                    Store (\_SB.PCI0.LPCB.EC.PRIN, 
  084D: 88 4D 54 4D 50 0A 03 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  085D: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 52 49 4E  // PCI0LPCBEC__PRIN

Index (MTMP, 0x04))
                    Store (\_SB.PCI0.LPCB.EC.PSTE, 
  086D: 88 4D 54 4D 50 0A 04 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  087D: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 53 54 45  // PCI0LPCBEC__PSTE

Index (MTMP, 0x05))
                    Store (\_SB.PCI0.LPCB.EC.PCAD, 
  088D: 88 4D 54 4D 50 0A 05 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  089D: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 43 41 44  // PCI0LPCBEC__PCAD

Index (MTMP, 0x06))
                    Store (\_SB.PCI0.LPCB.EC.PEWL, 
  08AD: 88 4D 54 4D 50 0A 06 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  08BD: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 45 57 4C  // PCI0LPCBEC__PEWL

Index (MTMP, 0x07))
                    Store (\_SB.PCI0.LPCB.EC.PWRL, 
  08CD: 88 4D 54 4D 50 0A 07 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  08DD: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 57 52 4C  // PCI0LPCBEC__PWRL

Index (MTMP, 0x08))
                    Store (\_SB.PCI0.LPCB.EC.PECD, 
  08ED: 88 4D 54 4D 50 0A 08 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  08FD: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 45 43 44  // PCI0LPCBEC__PECD

Index (MTMP, 0x09))
                    Store (\_SB.PCI0.LPCB.EC.PEHI, 
  090D: 88 4D 54 4D 50 0A 09 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  091D: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 45 48 49  // PCI0LPCBEC__PEHI

Index (MTMP, 0x0A))
                    Store (\_SB.PCI0.LPCB.EC.PECI, 
  092D: 88 4D 54 4D 50 0A 0A 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  093D: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 45 43 49  // PCI0LPCBEC__PECI

Index (MTMP, 0x0B))
                    Store (\_SB.PCI0.LPCB.EC.PEPL, 
  094D: 88 4D 54 4D 50 0A 0B 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  095D: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 45 50 4C  // PCI0LPCBEC__PEPL

Index (MTMP, 0x0C))
                    Store (\_SB.PCI0.LPCB.EC.PEPM, 
  096D: 88 4D 54 4D 50 0A 0C 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  097D: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 45 50 4D  // PCI0LPCBEC__PEPM

Index (MTMP, 0x0D))
                    Store (\_SB.PCI0.LPCB.EC.PWFC, 
  098D: 88 4D 54 4D 50 0A 0D 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  099D: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 57 46 43  // PCI0LPCBEC__PWFC

Index (MTMP, 0x0E))
                    Store (\_SB.PCI0.LPCB.EC.PECC, 
  09AD: 88 4D 54 4D 50 0A 0E 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  09BD: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 45 43 43  // PCI0LPCBEC__PECC

Index (MTMP, 0x0F))
                    Store (\_SB.PCI0.LPCB.EC.PDT0, 
  09CD: 88 4D 54 4D 50 0A 0F 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  09DD: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 44 54 30  // PCI0LPCBEC__PDT0

Index (MTMP, 0x10))
                    Store (\_SB.PCI0.LPCB.EC.PDT1, 
  09ED: 88 4D 54 4D 50 0A 10 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  09FD: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 44 54 31  // PCI0LPCBEC__PDT1

Index (MTMP, 0x11))
                    Store (\_SB.PCI0.LPCB.EC.PDT2, 
  0A0D: 88 4D 54 4D 50 0A 11 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  0A1D: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 44 54 32  // PCI0LPCBEC__PDT2

Index (MTMP, 0x12))
                    Store (\_SB.PCI0.LPCB.EC.PDT3, 
  0A2D: 88 4D 54 4D 50 0A 12 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  0A3D: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 44 54 33  // PCI0LPCBEC__PDT3

Index (MTMP, 0x13))
                    Store (\_SB.PCI0.LPCB.EC.PRFC, 
  0A4D: 88 4D 54 4D 50 0A 13 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  0A5D: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 52 46 43  // PCI0LPCBEC__PRFC

Index (MTMP, 0x14))
                    Store (\_SB.PCI0.LPCB.EC.PRS0, 
  0A6D: 88 4D 54 4D 50 0A 14 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  0A7D: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 52 53 30  // PCI0LPCBEC__PRS0

Index (MTMP, 0x15))
                    Store (\_SB.PCI0.LPCB.EC.PRS1, 
  0A8D: 88 4D 54 4D 50 0A 15 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  0A9D: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 52 53 31  // PCI0LPCBEC__PRS1

Index (MTMP, 0x16))
                    Store (\_SB.PCI0.LPCB.EC.PRS2, 
  0AAD: 88 4D 54 4D 50 0A 16 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  0ABD: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 52 53 32  // PCI0LPCBEC__PRS2

Index (MTMP, 0x17))
                    Store (\_SB.PCI0.LPCB.EC.PRS3, 
  0ACD: 88 4D 54 4D 50 0A 17 00 70 5C 2F 05 5F 53 42 5F  // .MTMP...p\/._SB_
  0ADD: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 52 53 33  // PCI0LPCBEC__PRS3

Index (MTMP, 0x18))

  0AED: 88 4D 54 4D 50 0A 18 00                          // .MTMP...

                    Store (\_SB.PCI0.LPCB.EC.PRS4, 
  0AF5: 70 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // p\/._SB_PCI0LPCB
  0B05: 45 43 5F 5F 50 52 53 34                          // EC__PRS4

Index (MTMP, 0x19))
                }


  0B0D: 88 4D 54 4D 50 0A 19 00                          // .MTMP...

                Return (MTMP)
            }


  0B15: A4 4D 54 4D 50                                   // .MTMP

            Method (WPMD, 1, NotSerialized)
            {

  0B1A: 14 41 35 57 50 4D 44 01                          // .A5WPMD.

                If (
  0B22: A0 09 92                                         // ...

LNotEqual (SizeOf (Arg0), 0x1A))
                {

  0B25: 93 87 68 0A 1A                                   // ..h..

                    Return (Ones)
                }


  0B2A: A4 FF                                            // ..

                If (\_SB.PCI0.LPCB.EC.ECOK)
                {
                    Store (DerefOf (
  0B2C: A0 4D 33 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .M3\/._SB_PCI0LP
  0B3C: 43 42 45 43 5F 5F 45 43 4F 4B 70 83              // CBEC__ECOKp.

Index (Arg0, Zero)), \_SB.PCI0.LPCB.EC.PRCL)
                    Store (DerefOf (
  0B48: 88 68 00 00 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .h..\/._SB_PCI0L
  0B58: 50 43 42 45 43 5F 5F 50 52 43 4C 70 83           // PCBEC__PRCLp.

Index (Arg0, One)), \_SB.PCI0.LPCB.EC.PRC0)
                    Store (DerefOf (
  0B65: 88 68 01 00 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .h..\/._SB_PCI0L
  0B75: 50 43 42 45 43 5F 5F 50 52 43 30 70 83           // PCBEC__PRC0p.

Index (Arg0, 0x02)), \_SB.PCI0.LPCB.EC.PRC1)
                    Store (DerefOf (
  0B82: 88 68 0A 02 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0B92: 4C 50 43 42 45 43 5F 5F 50 52 43 31 70 83        // LPCBEC__PRC1p.

Index (Arg0, 0x03)), \_SB.PCI0.LPCB.EC.PRCM)
                    Store (DerefOf (
  0BA0: 88 68 0A 03 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0BB0: 4C 50 43 42 45 43 5F 5F 50 52 43 4D 70 83        // LPCBEC__PRCMp.

Index (Arg0, 0x04)), \_SB.PCI0.LPCB.EC.PRIN)
                    Store (DerefOf (
  0BBE: 88 68 0A 04 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0BCE: 4C 50 43 42 45 43 5F 5F 50 52 49 4E 70 83        // LPCBEC__PRINp.

Index (Arg0, 0x05)), \_SB.PCI0.LPCB.EC.PSTE)
                    Store (DerefOf (
  0BDC: 88 68 0A 05 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0BEC: 4C 50 43 42 45 43 5F 5F 50 53 54 45 70 83        // LPCBEC__PSTEp.

Index (Arg0, 0x06)), \_SB.PCI0.LPCB.EC.PCAD)
                    Store (DerefOf (
  0BFA: 88 68 0A 06 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0C0A: 4C 50 43 42 45 43 5F 5F 50 43 41 44 70 83        // LPCBEC__PCADp.

Index (Arg0, 0x07)), \_SB.PCI0.LPCB.EC.PEWL)
                    Store (DerefOf (
  0C18: 88 68 0A 07 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0C28: 4C 50 43 42 45 43 5F 5F 50 45 57 4C 70 83        // LPCBEC__PEWLp.

Index (Arg0, 0x08)), \_SB.PCI0.LPCB.EC.PWRL)
                    Store (DerefOf (
  0C36: 88 68 0A 08 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0C46: 4C 50 43 42 45 43 5F 5F 50 57 52 4C 70 83        // LPCBEC__PWRLp.

Index (Arg0, 0x09)), \_SB.PCI0.LPCB.EC.PECD)
                    Store (DerefOf (
  0C54: 88 68 0A 09 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0C64: 4C 50 43 42 45 43 5F 5F 50 45 43 44 70 83        // LPCBEC__PECDp.

Index (Arg0, 0x0A)), \_SB.PCI0.LPCB.EC.PEHI)
                    Store (DerefOf (
  0C72: 88 68 0A 0A 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0C82: 4C 50 43 42 45 43 5F 5F 50 45 48 49 70 83        // LPCBEC__PEHIp.

Index (Arg0, 0x0B)), \_SB.PCI0.LPCB.EC.PECI)
                    Store (DerefOf (
  0C90: 88 68 0A 0B 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0CA0: 4C 50 43 42 45 43 5F 5F 50 45 43 49 70 83        // LPCBEC__PECIp.

Index (Arg0, 0x0C)), \_SB.PCI0.LPCB.EC.PEPL)
                    Store (DerefOf (
  0CAE: 88 68 0A 0C 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0CBE: 4C 50 43 42 45 43 5F 5F 50 45 50 4C 70 83        // LPCBEC__PEPLp.

Index (Arg0, 0x0D)), \_SB.PCI0.LPCB.EC.PEPM)
                    Store (DerefOf (
  0CCC: 88 68 0A 0D 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0CDC: 4C 50 43 42 45 43 5F 5F 50 45 50 4D 70 83        // LPCBEC__PEPMp.

Index (Arg0, 0x0E)), \_SB.PCI0.LPCB.EC.PWFC)
                    Store (DerefOf (
  0CEA: 88 68 0A 0E 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0CFA: 4C 50 43 42 45 43 5F 5F 50 57 46 43 70 83        // LPCBEC__PWFCp.

Index (Arg0, 0x0F)), \_SB.PCI0.LPCB.EC.PECC)
                    Store (DerefOf (
  0D08: 88 68 0A 0F 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0D18: 4C 50 43 42 45 43 5F 5F 50 45 43 43 70 83        // LPCBEC__PECCp.

Index (Arg0, 0x10)), \_SB.PCI0.LPCB.EC.PDT0)
                    Store (DerefOf (
  0D26: 88 68 0A 10 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0D36: 4C 50 43 42 45 43 5F 5F 50 44 54 30 70 83        // LPCBEC__PDT0p.

Index (Arg0, 0x11)), \_SB.PCI0.LPCB.EC.PDT1)
                    Store (DerefOf (
  0D44: 88 68 0A 11 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0D54: 4C 50 43 42 45 43 5F 5F 50 44 54 31 70 83        // LPCBEC__PDT1p.

Index (Arg0, 0x12)), \_SB.PCI0.LPCB.EC.PDT2)
                    Store (DerefOf (
  0D62: 88 68 0A 12 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0D72: 4C 50 43 42 45 43 5F 5F 50 44 54 32 70 83        // LPCBEC__PDT2p.

Index (Arg0, 0x13)), \_SB.PCI0.LPCB.EC.PDT3)
                    Store (DerefOf (
  0D80: 88 68 0A 13 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0D90: 4C 50 43 42 45 43 5F 5F 50 44 54 33 70 83        // LPCBEC__PDT3p.

Index (Arg0, 0x14)), \_SB.PCI0.LPCB.EC.PRFC)
                    Store (DerefOf (
  0D9E: 88 68 0A 14 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0DAE: 4C 50 43 42 45 43 5F 5F 50 52 46 43 70 83        // LPCBEC__PRFCp.

Index (Arg0, 0x15)), \_SB.PCI0.LPCB.EC.PRS0)
                    Store (DerefOf (
  0DBC: 88 68 0A 15 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0DCC: 4C 50 43 42 45 43 5F 5F 50 52 53 30 70 83        // LPCBEC__PRS0p.

Index (Arg0, 0x16)), \_SB.PCI0.LPCB.EC.PRS1)
                    Store (DerefOf (
  0DDA: 88 68 0A 16 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0DEA: 4C 50 43 42 45 43 5F 5F 50 52 53 31 70 83        // LPCBEC__PRS1p.

Index (Arg0, 0x17)), \_SB.PCI0.LPCB.EC.PRS2)
                    Store (DerefOf (
  0DF8: 88 68 0A 17 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0E08: 4C 50 43 42 45 43 5F 5F 50 52 53 32 70 83        // LPCBEC__PRS2p.

Index (Arg0, 0x18)), \_SB.PCI0.LPCB.EC.PRS3)
                    Store (DerefOf (
  0E16: 88 68 0A 18 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0E26: 4C 50 43 42 45 43 5F 5F 50 52 53 33 70 83        // LPCBEC__PRS3p.

Index (Arg0, 0x19)), \_SB.PCI0.LPCB.EC.PRS4)

  0E34: 88 68 0A 19 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // .h...\/._SB_PCI0
  0E44: 4C 50 43 42 45 43 5F 5F 50 52 53 34              // LPCBEC__PRS4

                    Store (0xB4, \_SB.PCI0.LPCB.EC.FCMD)
                }


  0E50: 70 0A B4 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // p..\/._SB_PCI0LP
  0E60: 43 42 45 43 5F 5F 46 43 4D 44                    // CBEC__FCMD

                Return (Zero)
            }


  0E6A: A4 00                                            // ..

            Method (ISPC, 0, NotSerialized)
            {

  0E6C: 14 21 49 53 50 43 00                             // .!ISPC.

                If (\_SB.PCI0.LPCB.EC.ECOK){}

  0E73: A0 18 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // ..\/._SB_PCI0LPC
  0E83: 42 45 43 5F 5F 45 43 4F 4B                       // BEC__ECOK

                Return (Zero)
            }


  0E8C: A4 00                                            // ..

            Method (ENPC, 0, NotSerialized)
            {

  0E8E: 14 21 45 4E 50 43 00                             // .!ENPC.

                If (\_SB.PCI0.LPCB.EC.ECOK){}

  0E95: A0 18 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // ..\/._SB_PCI0LPC
  0EA5: 42 45 43 5F 5F 45 43 4F 4B                       // BEC__ECOK

                Return (Zero)
            }


  0EAE: A4 00                                            // ..

            Method (RPCS, 0, NotSerialized)
            {

  0EB0: 14 3A 52 50 43 53 00                             // .:RPCS.

                If (\_SB.PCI0.LPCB.EC.ECOK)
                {

  0EB7: A0 31 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // .1\/._SB_PCI0LPC
  0EC7: 42 45 43 5F 5F 45 43 4F 4B                       // BEC__ECOK

                    Store (\_SB.PCI0.LPCB.EC.PRCS, Local0)
                }


  0ED0: 70 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // p\/._SB_PCI0LPCB
  0EE0: 45 43 5F 5F 50 52 43 53 60                       // EC__PRCS`

                Return (Zero)
            }


  0EE9: A4 00                                            // ..

            Method (RPEC, 0, NotSerialized)
            {
                Store (Zero, Local0)

  0EEB: 14 46 0A 52 50 45 43 00 70 00 60                 // .F.RPEC.p.`

                If (\_SB.PCI0.LPCB.EC.ECOK)
                {
                    Store (\_SB.PCI0.LPCB.EC.PEC0, Local1)
                    Or (Local0, Local1, Local0)
                    Store (\_SB.PCI0.LPCB.EC.PEC1, Local1)
                    Or (Local0, ShiftLeft (Local1, 0x08), Local0)
                    Store (\_SB.PCI0.LPCB.EC.PEC2, Local1)
                    Or (Local0, ShiftLeft (Local1, 0x10), Local0)
                    Store (\_SB.PCI0.LPCB.EC.PEC3, Local1)

  0EF6: A0 49 09 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .I.\/._SB_PCI0LP
  0F06: 43 42 45 43 5F 5F 45 43 4F 4B 70 5C 2F 05 5F 53  // CBEC__ECOKp\/._S
  0F16: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 45  // B_PCI0LPCBEC__PE
  0F26: 43 30 61 7D 60 61 60 70 5C 2F 05 5F 53 42 5F 50  // C0a}`a`p\/._SB_P
  0F36: 43 49 30 4C 50 43 42 45 43 5F 5F 50 45 43 31 61  // CI0LPCBEC__PEC1a
  0F46: 7D 60 79 61 0A 08 00 60 70 5C 2F 05 5F 53 42 5F  // }`ya...`p\/._SB_
  0F56: 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 45 43 32  // PCI0LPCBEC__PEC2
  0F66: 61 7D 60 79 61 0A 10 00 60 70 5C 2F 05 5F 53 42  // a}`ya...`p\/._SB
  0F76: 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 50 45 43  // _PCI0LPCBEC__PEC
  0F86: 33 61                                            // 3a

                    Or (Local0, ShiftLeft (Local1, 0x18), Local0)
                }


  0F88: 7D 60 79 61 0A 18 00 60                          // }`ya...`

                Return (Zero)
            }
        }
    }
}



Table Header:
Table Body (Length 0xF92)
