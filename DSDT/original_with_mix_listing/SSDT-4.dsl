{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.CPU0._PPC, IntObj)
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

    Scope (\)
    {

  0024: 10 4C 0B 5C 00                                   // .L.\.

        Name (SSDT, 
  0029: 08 53 53 44 54                                   // .SSDT

Package (0x0C)
        {
            "CPU0IST ", 
            0xAF0BAA98, 
            0x00000539, 
            "APIST   ", 
            0xB10FE618, 
            0x000005AA, 
            "CPU0CST ", 
            0xB10FEC18, 
            0x000003D3, 
            "APCST   ", 
            0xB10FDD98, 
            0x00000119
        })

  002E: 12 43 05 0C 0D 43 50 55 30 49 53 54 20 00 0C 98  // .C...CPU0IST ...
  003E: AA 0B AF 0C 39 05 00 00 0D 41 50 49 53 54 20 20  // ....9....APIST  
  004E: 20 00 0C 18 E6 0F B1 0C AA 05 00 00 0D 43 50 55  //  ............CPU
  005E: 30 43 53 54 20 00 0C 18 EC 0F B1 0C D3 03 00 00  // 0CST ...........
  006E: 0D 41 50 43 53 54 20 20 20 00 0C 98 DD 0F B1 0C  // .APCST   .......
  007E: 19 01 00 00                                      // ....

        Name (\PDC0, 0x80000000)

  0082: 08 5C 50 44 43 30 0C 00 00 00 80                 // .\PDC0.....

        Name (\PDC1, 0x80000000)

  008D: 08 5C 50 44 43 31 0C 00 00 00 80                 // .\PDC1.....

        Name (\PDC2, 0x80000000)

  0098: 08 5C 50 44 43 32 0C 00 00 00 80                 // .\PDC2.....

        Name (\PDC3, 0x80000000)

  00A3: 08 5C 50 44 43 33 0C 00 00 00 80                 // .\PDC3.....

        Name (\PDC4, 0x80000000)

  00AE: 08 5C 50 44 43 34 0C 00 00 00 80                 // .\PDC4.....

        Name (\PDC5, 0x80000000)

  00B9: 08 5C 50 44 43 35 0C 00 00 00 80                 // .\PDC5.....

        Name (\PDC6, 0x80000000)

  00C4: 08 5C 50 44 43 36 0C 00 00 00 80                 // .\PDC6.....

        Name (\PDC7, 0x80000000)

  00CF: 08 5C 50 44 43 37 0C 00 00 00 80                 // .\PDC7.....

        Name (\SDTL, Zero)
    }


  00DA: 08 5C 53 44 54 4C 00                             // .\SDTL.

    Scope (\_PR)
    {

  00E1: 10 44 0E 5C 5F 50 52 5F                          // .D.\_PR_

        OperationRegion (PPMT, SystemMemory, 0xB17A9F18, 0x003A)

  00E9: 5B 80 50 50 4D 54 00 0C 18 9F 7A B1 0B 3A 00     // [.PPMT....z..:.

        Field (PPMT, AnyAcc, Lock, Preserve)
        {
            PGRV,   8, 
            CFGD,   32, 
            Offset (0x06), 
            ACRT,   8, 
            APSV,   8, 
            AAC0,   8, 
            CPID,   32, 
            CPPC,   8, 
            CCTP,   8, 
            CLVL,   8, 
            CBMI,   8, 
            PL10,   16, 
            PL20,   16, 
            PLW0,   8, 
            CTC0,   8, 
            TAR0,   8, 
            PPC0,   8, 
            PL11,   16, 
            PL21,   16, 
            PLW1,   8, 
            CTC1,   8, 
            TAR1,   8, 
            PPC1,   8, 
            PL12,   16, 
            PL22,   16, 
            PLW2,   8, 
            CTC2,   8, 
            TAR2,   8, 
            PPC2,   8, 
            C3MW,   8, 
            C6MW,   8, 
            C7MW,   8, 
            CDMW,   8, 
            C3LT,   16, 
            C6LT,   16, 
            C7LT,   16, 
            CDLT,   16, 
            CDLV,   16, 
            CDPW,   16, 
            MPMF,   8
        }
    }


  00F8: 5B 81 4C 0C 50 50 4D 54 10 50 47 52 56 08 43 46  // [.L.PPMT.PGRV.CF
  0108: 47 44 20 00 08 41 43 52 54 08 41 50 53 56 08 41  // GD ..ACRT.APSV.A
  0118: 41 43 30 08 43 50 49 44 20 43 50 50 43 08 43 43  // AC0.CPID CPPC.CC
  0128: 54 50 08 43 4C 56 4C 08 43 42 4D 49 08 50 4C 31  // TP.CLVL.CBMI.PL1
  0138: 30 10 50 4C 32 30 10 50 4C 57 30 08 43 54 43 30  // 0.PL20.PLW0.CTC0
  0148: 08 54 41 52 30 08 50 50 43 30 08 50 4C 31 31 10  // .TAR0.PPC0.PL11.
  0158: 50 4C 32 31 10 50 4C 57 31 08 43 54 43 31 08 54  // PL21.PLW1.CTC1.T
  0168: 41 52 31 08 50 50 43 31 08 50 4C 31 32 10 50 4C  // AR1.PPC1.PL12.PL
  0178: 32 32 10 50 4C 57 32 08 43 54 43 32 08 54 41 52  // 22.PLW2.CTC2.TAR
  0188: 32 08 50 50 43 32 08 43 33 4D 57 08 43 36 4D 57  // 2.PPC2.C3MW.C6MW
  0198: 08 43 37 4D 57 08 43 44 4D 57 08 43 33 4C 54 10  // .C7MW.CDMW.C3LT.
  01A8: 43 36 4C 54 10 43 37 4C 54 10 43 44 4C 54 10 43  // C6LT.C7LT.CDLT.C
  01B8: 44 4C 56 10 43 44 50 57 10 4D 50 4D 46 08        // DLV.CDPW.MPMF.

    Scope (\_PR.CPU0)
    {

  01C6: 10 43 24 5C 2E 5F 50 52 5F 43 50 55 30           // .C$\._PR_CPU0

        Name (HI0, Zero)

  01D3: 08 48 49 30 5F 00                                // .HI0_.

        Name (HC0, Zero)

  01D9: 08 48 43 30 5F 00                                // .HC0_.

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {

  01DF: 14 3C 5F 50 44 43 01                             // .<_PDC.

            If (CondRefOf (\_PR.CPU0._PPC))
            {

  01E6: A0 27 5B 12 5C 2F 03 5F 50 52 5F 43 50 55 30 5F  // .'[.\/._PR_CPU0_
  01F6: 50 50 43 00                                      // PPC.

                Store (CPPC, \_PR.CPU0._PPC)
            }

            Store (CPDC (Arg0), Local0)
            GCAP (Local0)

  01FA: 70 43 50 50 43 5C 2F 03 5F 50 52 5F 43 50 55 30  // pCPPC\/._PR_CPU0
  020A: 5F 50 50 43 70 43 50 44 43 68 60 47 43 41 50 60  // _PPCpCPDCh`GCAP`

            Return (Local0)
        }


  021A: A4 60                                            // .`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)

  021C: 14 17 5F 4F 53 43 04 70 43 4F 53 43 68 69 6A 6B  // .._OSC.pCOSChijk
  022C: 60 47 43 41 50 60                                // `GCAP`

            Return (Local0)
        }


  0232: A4 60                                            // .`

        Method (CPDC, 1, NotSerialized)
        {

  0234: 14 48 06 43 50 44 43 01                          // .H.CPDC.

            CreateDWordField (Arg0, Zero, REVS)

  023C: 8A 68 00 52 45 56 53                             // .h.REVS

            CreateDWordField (Arg0, 0x04, SIZE)
            Store (SizeOf (Arg0), Local0)
            Store (Subtract (Local0, 0x08), Local1)

  0243: 8A 68 0A 04 53 49 5A 45 70 87 68 60 70 74 60 0A  // .h..SIZEp.h`pt`.
  0253: 08 00 61                                         // ..a

            CreateField (Arg0, 0x40, Multiply (Local1, 0x08), TEMP)

  0256: 5B 13 68 0A 40 77 61 0A 08 00 54 45 4D 50        // [.h.@wa...TEMP

            Name (STS0, 
  0264: 08 53 54 53 30                                   // .STS0

Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                         
            })
            Concatenate (STS0, TEMP, Local2)

  0269: 11 07 0A 04 00 00 00 00 73 53 54 53 30 54 45 4D  // ........sSTS0TEM
  0279: 50 62                                            // Pb

            Return (COSC (
  027B: A4 43 4F 53 43                                   // .COSC

ToUUID ("4077a616-290c-47be-9ebd-d87058713953"), REVS, SIZE, Local2))
        }


  0280: 11 13 0A 10 16 A6 77 40 0C 29 BE 47 9E BD D8 70  // ......w@.).G...p
  0290: 58 71 39 53 52 45 56 53 53 49 5A 45 62           // Xq9SREVSSIZEb

        Method (COSC, 4, NotSerialized)
        {

  029D: 14 4D 0B 43 4F 53 43 04                          // .M.COSC.

            CreateDWordField (Arg3, Zero, STS0)

  02A5: 8A 6B 00 53 54 53 30                             // .k.STS0

            CreateDWordField (Arg3, 0x04, CAP0)

  02AC: 8A 6B 0A 04 43 41 50 30                          // .k..CAP0

            CreateDWordField (Arg0, Zero, IID0)

  02B4: 8A 68 00 49 49 44 30                             // .h.IID0

            CreateDWordField (Arg0, 0x04, IID1)

  02BB: 8A 68 0A 04 49 49 44 31                          // .h..IID1

            CreateDWordField (Arg0, 0x08, IID2)

  02C3: 8A 68 0A 08 49 49 44 32                          // .h..IID2

            CreateDWordField (Arg0, 0x0C, IID3)

  02CB: 8A 68 0A 0C 49 49 44 33                          // .h..IID3

            Name (UID0, 
  02D3: 08 55 49 44 30                                   // .UID0

ToUUID ("4077a616-290c-47be-9ebd-d87058713953"))

  02D8: 11 13 0A 10 16 A6 77 40 0C 29 BE 47 9E BD D8 70  // ......w@.).G...p
  02E8: 58 71 39 53                                      // Xq9S

            CreateDWordField (UID0, Zero, EID0)

  02EC: 8A 55 49 44 30 00 45 49 44 30                    // .UID0.EID0

            CreateDWordField (UID0, 0x04, EID1)

  02F6: 8A 55 49 44 30 0A 04 45 49 44 31                 // .UID0..EID1

            CreateDWordField (UID0, 0x08, EID2)

  0301: 8A 55 49 44 30 0A 08 45 49 44 32                 // .UID0..EID2

            CreateDWordField (UID0, 0x0C, EID3)

  030C: 8A 55 49 44 30 0A 0C 45 49 44 33                 // .UID0..EID3

            If (LNot (
  0317: A0 32 92                                         // .2.

LAnd (LAnd (LEqual (IID0, EID0), 
  031A: 90 90 93 49 49 44 30 45 49 44 30                 // ...IID0EID0

LEqual (IID1, EID1)), 
  0325: 93 49 49 44 31 45 49 44 31                       // .IID1EID1

LAnd (LEqual (IID2, EID2), 
  032E: 90 93 49 49 44 32 45 49 44 32                    // ..IID2EID2

LEqual (IID3, EID3)))))
            {
                Store (0x06, STS0)

  0338: 93 49 49 44 33 45 49 44 33 70 0A 06 53 54 53 30  // .IID3EID3p..STS0

                Return (Arg3)
            }


  0348: A4 6B                                            // .k

            If (
  034A: A0 0E 92                                         // ...

LNotEqual (Arg1, One))
            {
                Store (0x0A, STS0)

  034D: 93 69 01 70 0A 0A 53 54 53 30                    // .i.p..STS0

                Return (Arg3)
            }


  0357: A4 6B                                            // .k

            Return (Arg3)
        }


  0359: A4 6B                                            // .k

        Method (GCAP, 1, NotSerialized)
        {

  035B: 14 4E 0A 47 43 41 50 01                          // .N.GCAP.

            CreateDWordField (Arg0, Zero, STS0)

  0363: 8A 68 00 53 54 53 30                             // .h.STS0

            CreateDWordField (Arg0, 0x04, CAP0)

  036A: 8A 68 0A 04 43 41 50 30                          // .h..CAP0

            If (LOr (LEqual (STS0, 0x06), 
  0372: A0 12 91 93 53 54 53 30 0A 06                    // ....STS0..

LEqual (STS0, 0x0A)))
            {

  037C: 93 53 54 53 30 0A 0A                             // .STS0..

                Return (Zero)
            }


  0383: A4 00                                            // ..

            If (And (STS0, One))
            {
                And (CAP0, 0x0BFF, CAP0)

  0385: A0 16 7B 53 54 53 30 01 00 7B 43 41 50 30 0B FF  // ..{STS0..{CAP0..
  0395: 0B 43 41 50 30                                   // .CAP0

                Return (Zero)
            }

            Or (And (PDC0, 0x7FFFFFFF), CAP0, PDC0)

  039A: A4 00 7D 7B 50 44 43 30 0C FF FF FF 7F 00 43 41  // ..}{PDC0......CA
  03AA: 50 30 50 44 43 30                                // P0PDC0

            If (And (CFGD, 0x7A))
            {

  03B0: A0 47 05 7B 43 46 47 44 0A 7A 00                 // .G.{CFGD.z.

                If (LAnd (LAnd (And (CFGD, 0x0200), 
  03BB: A0 4C 04 90 90 7B 43 46 47 44 0B 00 02 00        // .L...{CFGD....

And (PDC0, 0x18)), 
  03C9: 7B 50 44 43 30 0A 18 00                          // {PDC0...

LNot (
  03D1: 92                                               // .

And (SDTL, 0x02))))
                {
                    Or (SDTL, 0x02, SDTL)

  03D2: 7B 53 44 54 4C 0A 02 00 7D 53 44 54 4C 0A 02 53  // {SDTL...}SDTL..S
  03E2: 44 54 4C                                         // DTL

                    OperationRegion (CST0, SystemMemory, DerefOf (
  03E5: 5B 80 43 53 54 30 00 83                          // [.CST0..

Index (SSDT, 0x07)), 
  03ED: 88 53 53 44 54 0A 07 00                          // .SSDT...

DerefOf (
  03F5: 83                                               // .

Index (SSDT, 0x08)))

  03F6: 88 53 53 44 54 0A 08 00                          // .SSDT...

                    Load (CST0, HC0)
                }
            }


  03FE: 5B 20 43 53 54 30 48 43 30 5F                    // [ CST0HC0_

            Return (Zero)
        }
    }


  0408: A4 00                                            // ..

    Scope (\_PR.CPU1)
    {

  040A: 10 4F 16 5C 2E 5F 50 52 5F 43 50 55 31           // .O.\._PR_CPU1

        Name (HI1, Zero)

  0417: 08 48 49 31 5F 00                                // .HI1_.

        Name (HC1, Zero)

  041D: 08 48 43 31 5F 00                                // .HC1_.

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)

  0423: 14 1F 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 43  // .._PDC.p\/._PR_C
  0433: 50 55 30 43 50 44 43 68 60 47 43 41 50 60        // PU0CPDCh`GCAP`

            Return (Local0)
        }


  0441: A4 60                                            // .`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)

  0443: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 43  // ."_OSC.p\/._PR_C
  0453: 50 55 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // PU0COSChijk`GCAP
  0463: 60                                               // `

            Return (Local0)
        }


  0464: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

  0466: 14 4E 07 47 43 41 50 01                          // .N.GCAP.

            CreateDWordField (Arg0, Zero, STS1)

  046E: 8A 68 00 53 54 53 31                             // .h.STS1

            CreateDWordField (Arg0, 0x04, CAP1)

  0475: 8A 68 0A 04 43 41 50 31                          // .h..CAP1

            If (LOr (LEqual (STS1, 0x06), 
  047D: A0 12 91 93 53 54 53 31 0A 06                    // ....STS1..

LEqual (STS1, 0x0A)))
            {

  0487: 93 53 54 53 31 0A 0A                             // .STS1..

                Return (Zero)
            }


  048E: A4 00                                            // ..

            If (And (STS1, One))
            {
                And (CAP1, 0x0BFF, CAP1)

  0490: A0 16 7B 53 54 53 31 01 00 7B 43 41 50 31 0B FF  // ..{STS1..{CAP1..
  04A0: 0B 43 41 50 31                                   // .CAP1

                Return (Zero)
            }

            Or (And (PDC1, 0x7FFFFFFF), CAP1, PDC1)

  04A5: A4 00 7D 7B 50 44 43 31 0C FF FF FF 7F 00 43 41  // ..}{PDC1......CA
  04B5: 50 31 50 44 43 31                                // P1PDC1

            If (LEqual (And (PDC1, 0x09), 0x09))
            {
                APPT ()
            }


  04BB: A0 10 93 7B 50 44 43 31 0A 09 00 0A 09 41 50 50  // ...{PDC1.....APP
  04CB: 54                                               // T

            If (And (PDC1, 0x18))
            {
                APCT ()
            }

            Store (PDC1, PDC0)

  04CC: A0 0D 7B 50 44 43 31 0A 18 00 41 50 43 54 70 50  // ..{PDC1...APCTpP
  04DC: 44 43 31 50 44 43 30                             // DC1PDC0

            Return (Zero)
        }


  04E3: A4 00                                            // ..

        Method (APCT, 0, NotSerialized)
        {

  04E5: 14 4A 04 41 50 43 54 00                          // .J.APCT.

            If (LAnd (And (CFGD, 0x7A), 
  04ED: A0 42 04 90 7B 43 46 47 44 0A 7A 00              // .B..{CFGD.z.

LNot (
  04F9: 92                                               // .

And (SDTL, 0x20))))
            {
                Or (SDTL, 0x20, SDTL)

  04FA: 7B 53 44 54 4C 0A 20 00 7D 53 44 54 4C 0A 20 53  // {SDTL. .}SDTL. S
  050A: 44 54 4C                                         // DTL

                OperationRegion (CST1, SystemMemory, DerefOf (
  050D: 5B 80 43 53 54 31 00 83                          // [.CST1..

Index (SSDT, 0x0A)), 
  0515: 88 53 53 44 54 0A 0A 00                          // .SSDT...

DerefOf (
  051D: 83                                               // .

Index (SSDT, 0x0B)))

  051E: 88 53 53 44 54 0A 0B 00                          // .SSDT...

                Load (CST1, HC1)
            }
        }


  0526: 5B 20 43 53 54 31 48 43 31 5F                    // [ CST1HC1_

        Method (APPT, 0, NotSerialized)
        {

  0530: 14 49 04 41 50 50 54 00                          // .I.APPT.

            If (LAnd (And (CFGD, One), 
  0538: A0 41 04 90 7B 43 46 47 44 01 00                 // .A..{CFGD..

LNot (
  0543: 92                                               // .

And (SDTL, 0x10))))
            {
                Or (SDTL, 0x10, SDTL)

  0544: 7B 53 44 54 4C 0A 10 00 7D 53 44 54 4C 0A 10 53  // {SDTL...}SDTL..S
  0554: 44 54 4C                                         // DTL

                OperationRegion (IST1, SystemMemory, DerefOf (
  0557: 5B 80 49 53 54 31 00 83                          // [.IST1..

Index (SSDT, 0x04)), 
  055F: 88 53 53 44 54 0A 04 00                          // .SSDT...

DerefOf (
  0567: 83                                               // .

Index (SSDT, 0x05)))

  0568: 88 53 53 44 54 0A 05 00                          // .SSDT...

                Load (IST1, HI1)
            }
        }
    }


  0570: 5B 20 49 53 54 31 48 49 31 5F                    // [ IST1HI1_

    Scope (\_PR.CPU2)
    {

  057A: 10 44 0E 5C 2E 5F 50 52 5F 43 50 55 32           // .D.\._PR_CPU2

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)

  0587: 14 1F 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 43  // .._PDC.p\/._PR_C
  0597: 50 55 30 43 50 44 43 68 60 47 43 41 50 60        // PU0CPDCh`GCAP`

            Return (Local0)
        }


  05A5: A4 60                                            // .`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)

  05A7: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 43  // ."_OSC.p\/._PR_C
  05B7: 50 55 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // PU0COSChijk`GCAP
  05C7: 60                                               // `

            Return (Local0)
        }


  05C8: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

  05CA: 14 44 09 47 43 41 50 01                          // .D.GCAP.

            CreateDWordField (Arg0, Zero, STS2)

  05D2: 8A 68 00 53 54 53 32                             // .h.STS2

            CreateDWordField (Arg0, 0x04, CAP2)

  05D9: 8A 68 0A 04 43 41 50 32                          // .h..CAP2

            If (LOr (LEqual (STS2, 0x06), 
  05E1: A0 12 91 93 53 54 53 32 0A 06                    // ....STS2..

LEqual (STS2, 0x0A)))
            {

  05EB: 93 53 54 53 32 0A 0A                             // .STS2..

                Return (Zero)
            }


  05F2: A4 00                                            // ..

            If (And (STS2, One))
            {
                And (CAP2, 0x0BFF, CAP2)

  05F4: A0 16 7B 53 54 53 32 01 00 7B 43 41 50 32 0B FF  // ..{STS2..{CAP2..
  0604: 0B 43 41 50 32                                   // .CAP2

                Return (Zero)
            }

            Or (And (PDC2, 0x7FFFFFFF), CAP2, PDC2)

  0609: A4 00 7D 7B 50 44 43 32 0C FF FF FF 7F 00 43 41  // ..}{PDC2......CA
  0619: 50 32 50 44 43 32                                // P2PDC2

            If (LEqual (And (PDC2, 0x09), 0x09))
            {
                \_PR.CPU1.APPT ()
            }


  061F: A0 1B 93 7B 50 44 43 32 0A 09 00 0A 09 5C 2F 03  // ...{PDC2.....\/.
  062F: 5F 50 52 5F 43 50 55 31 41 50 50 54              // _PR_CPU1APPT

            If (And (PDC2, 0x18))
            {
                \_PR.CPU1.APCT ()
            }

            Store (PDC2, PDC0)

  063B: A0 18 7B 50 44 43 32 0A 18 00 5C 2F 03 5F 50 52  // ..{PDC2...\/._PR
  064B: 5F 43 50 55 31 41 50 43 54 70 50 44 43 32 50 44  // _CPU1APCTpPDC2PD
  065B: 43 30                                            // C0

            Return (Zero)
        }
    }


  065D: A4 00                                            // ..

    Scope (\_PR.CPU3)
    {

  065F: 10 44 0E 5C 2E 5F 50 52 5F 43 50 55 33           // .D.\._PR_CPU3

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)

  066C: 14 1F 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 43  // .._PDC.p\/._PR_C
  067C: 50 55 30 43 50 44 43 68 60 47 43 41 50 60        // PU0CPDCh`GCAP`

            Return (Local0)
        }


  068A: A4 60                                            // .`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)

  068C: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 43  // ."_OSC.p\/._PR_C
  069C: 50 55 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // PU0COSChijk`GCAP
  06AC: 60                                               // `

            Return (Local0)
        }


  06AD: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

  06AF: 14 44 09 47 43 41 50 01                          // .D.GCAP.

            CreateDWordField (Arg0, Zero, STS3)

  06B7: 8A 68 00 53 54 53 33                             // .h.STS3

            CreateDWordField (Arg0, 0x04, CAP3)

  06BE: 8A 68 0A 04 43 41 50 33                          // .h..CAP3

            If (LOr (LEqual (STS3, 0x06), 
  06C6: A0 12 91 93 53 54 53 33 0A 06                    // ....STS3..

LEqual (STS3, 0x0A)))
            {

  06D0: 93 53 54 53 33 0A 0A                             // .STS3..

                Return (Zero)
            }


  06D7: A4 00                                            // ..

            If (And (STS3, One))
            {
                And (CAP3, 0x0BFF, CAP3)

  06D9: A0 16 7B 53 54 53 33 01 00 7B 43 41 50 33 0B FF  // ..{STS3..{CAP3..
  06E9: 0B 43 41 50 33                                   // .CAP3

                Return (Zero)
            }

            Or (And (PDC3, 0x7FFFFFFF), CAP3, PDC3)

  06EE: A4 00 7D 7B 50 44 43 33 0C FF FF FF 7F 00 43 41  // ..}{PDC3......CA
  06FE: 50 33 50 44 43 33                                // P3PDC3

            If (LEqual (And (PDC3, 0x09), 0x09))
            {
                \_PR.CPU1.APPT ()
            }


  0704: A0 1B 93 7B 50 44 43 33 0A 09 00 0A 09 5C 2F 03  // ...{PDC3.....\/.
  0714: 5F 50 52 5F 43 50 55 31 41 50 50 54              // _PR_CPU1APPT

            If (And (PDC3, 0x18))
            {
                \_PR.CPU1.APCT ()
            }

            Store (PDC3, PDC0)

  0720: A0 18 7B 50 44 43 33 0A 18 00 5C 2F 03 5F 50 52  // ..{PDC3...\/._PR
  0730: 5F 43 50 55 31 41 50 43 54 70 50 44 43 33 50 44  // _CPU1APCTpPDC3PD
  0740: 43 30                                            // C0

            Return (Zero)
        }
    }


  0742: A4 00                                            // ..

    Scope (\_PR.CPU4)
    {

  0744: 10 44 0E 5C 2E 5F 50 52 5F 43 50 55 34           // .D.\._PR_CPU4

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)

  0751: 14 1F 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 43  // .._PDC.p\/._PR_C
  0761: 50 55 30 43 50 44 43 68 60 47 43 41 50 60        // PU0CPDCh`GCAP`

            Return (Local0)
        }


  076F: A4 60                                            // .`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)

  0771: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 43  // ."_OSC.p\/._PR_C
  0781: 50 55 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // PU0COSChijk`GCAP
  0791: 60                                               // `

            Return (Local0)
        }


  0792: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

  0794: 14 44 09 47 43 41 50 01                          // .D.GCAP.

            CreateDWordField (Arg0, Zero, STS4)

  079C: 8A 68 00 53 54 53 34                             // .h.STS4

            CreateDWordField (Arg0, 0x04, CAP4)

  07A3: 8A 68 0A 04 43 41 50 34                          // .h..CAP4

            If (LOr (LEqual (STS4, 0x06), 
  07AB: A0 12 91 93 53 54 53 34 0A 06                    // ....STS4..

LEqual (STS4, 0x0A)))
            {

  07B5: 93 53 54 53 34 0A 0A                             // .STS4..

                Return (Zero)
            }


  07BC: A4 00                                            // ..

            If (And (STS4, One))
            {
                And (CAP4, 0x0BFF, CAP4)

  07BE: A0 16 7B 53 54 53 34 01 00 7B 43 41 50 34 0B FF  // ..{STS4..{CAP4..
  07CE: 0B 43 41 50 34                                   // .CAP4

                Return (Zero)
            }

            Or (And (PDC4, 0x7FFFFFFF), CAP4, PDC4)

  07D3: A4 00 7D 7B 50 44 43 34 0C FF FF FF 7F 00 43 41  // ..}{PDC4......CA
  07E3: 50 34 50 44 43 34                                // P4PDC4

            If (LEqual (And (PDC4, 0x09), 0x09))
            {
                \_PR.CPU1.APPT ()
            }


  07E9: A0 1B 93 7B 50 44 43 34 0A 09 00 0A 09 5C 2F 03  // ...{PDC4.....\/.
  07F9: 5F 50 52 5F 43 50 55 31 41 50 50 54              // _PR_CPU1APPT

            If (And (PDC4, 0x18))
            {
                \_PR.CPU1.APCT ()
            }

            Store (PDC4, PDC0)

  0805: A0 18 7B 50 44 43 34 0A 18 00 5C 2F 03 5F 50 52  // ..{PDC4...\/._PR
  0815: 5F 43 50 55 31 41 50 43 54 70 50 44 43 34 50 44  // _CPU1APCTpPDC4PD
  0825: 43 30                                            // C0

            Return (Zero)
        }
    }


  0827: A4 00                                            // ..

    Scope (\_PR.CPU5)
    {

  0829: 10 44 0E 5C 2E 5F 50 52 5F 43 50 55 35           // .D.\._PR_CPU5

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)

  0836: 14 1F 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 43  // .._PDC.p\/._PR_C
  0846: 50 55 30 43 50 44 43 68 60 47 43 41 50 60        // PU0CPDCh`GCAP`

            Return (Local0)
        }


  0854: A4 60                                            // .`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)

  0856: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 43  // ."_OSC.p\/._PR_C
  0866: 50 55 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // PU0COSChijk`GCAP
  0876: 60                                               // `

            Return (Local0)
        }


  0877: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

  0879: 14 44 09 47 43 41 50 01                          // .D.GCAP.

            CreateDWordField (Arg0, Zero, STS5)

  0881: 8A 68 00 53 54 53 35                             // .h.STS5

            CreateDWordField (Arg0, 0x04, CAP5)

  0888: 8A 68 0A 04 43 41 50 35                          // .h..CAP5

            If (LOr (LEqual (STS5, 0x06), 
  0890: A0 12 91 93 53 54 53 35 0A 06                    // ....STS5..

LEqual (STS5, 0x0A)))
            {

  089A: 93 53 54 53 35 0A 0A                             // .STS5..

                Return (Zero)
            }


  08A1: A4 00                                            // ..

            If (And (STS5, One))
            {
                And (CAP5, 0x0BFF, CAP5)

  08A3: A0 16 7B 53 54 53 35 01 00 7B 43 41 50 35 0B FF  // ..{STS5..{CAP5..
  08B3: 0B 43 41 50 35                                   // .CAP5

                Return (Zero)
            }

            Or (And (PDC5, 0x7FFFFFFF), CAP5, PDC5)

  08B8: A4 00 7D 7B 50 44 43 35 0C FF FF FF 7F 00 43 41  // ..}{PDC5......CA
  08C8: 50 35 50 44 43 35                                // P5PDC5

            If (LEqual (And (PDC5, 0x09), 0x09))
            {
                \_PR.CPU1.APPT ()
            }


  08CE: A0 1B 93 7B 50 44 43 35 0A 09 00 0A 09 5C 2F 03  // ...{PDC5.....\/.
  08DE: 5F 50 52 5F 43 50 55 31 41 50 50 54              // _PR_CPU1APPT

            If (And (PDC5, 0x18))
            {
                \_PR.CPU1.APCT ()
            }

            Store (PDC5, PDC0)

  08EA: A0 18 7B 50 44 43 35 0A 18 00 5C 2F 03 5F 50 52  // ..{PDC5...\/._PR
  08FA: 5F 43 50 55 31 41 50 43 54 70 50 44 43 35 50 44  // _CPU1APCTpPDC5PD
  090A: 43 30                                            // C0

            Return (Zero)
        }
    }


  090C: A4 00                                            // ..

    Scope (\_PR.CPU6)
    {

  090E: 10 44 0E 5C 2E 5F 50 52 5F 43 50 55 36           // .D.\._PR_CPU6

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)

  091B: 14 1F 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 43  // .._PDC.p\/._PR_C
  092B: 50 55 30 43 50 44 43 68 60 47 43 41 50 60        // PU0CPDCh`GCAP`

            Return (Local0)
        }


  0939: A4 60                                            // .`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)

  093B: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 43  // ."_OSC.p\/._PR_C
  094B: 50 55 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // PU0COSChijk`GCAP
  095B: 60                                               // `

            Return (Local0)
        }


  095C: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

  095E: 14 44 09 47 43 41 50 01                          // .D.GCAP.

            CreateDWordField (Arg0, Zero, STS6)

  0966: 8A 68 00 53 54 53 36                             // .h.STS6

            CreateDWordField (Arg0, 0x04, CAP6)

  096D: 8A 68 0A 04 43 41 50 36                          // .h..CAP6

            If (LOr (LEqual (STS6, 0x06), 
  0975: A0 12 91 93 53 54 53 36 0A 06                    // ....STS6..

LEqual (STS6, 0x0A)))
            {

  097F: 93 53 54 53 36 0A 0A                             // .STS6..

                Return (Zero)
            }


  0986: A4 00                                            // ..

            If (And (STS6, One))
            {
                And (CAP6, 0x0BFF, CAP6)

  0988: A0 16 7B 53 54 53 36 01 00 7B 43 41 50 36 0B FF  // ..{STS6..{CAP6..
  0998: 0B 43 41 50 36                                   // .CAP6

                Return (Zero)
            }

            Or (And (PDC6, 0x7FFFFFFF), CAP6, PDC6)

  099D: A4 00 7D 7B 50 44 43 36 0C FF FF FF 7F 00 43 41  // ..}{PDC6......CA
  09AD: 50 36 50 44 43 36                                // P6PDC6

            If (LEqual (And (PDC6, 0x09), 0x09))
            {
                \_PR.CPU1.APPT ()
            }


  09B3: A0 1B 93 7B 50 44 43 36 0A 09 00 0A 09 5C 2F 03  // ...{PDC6.....\/.
  09C3: 5F 50 52 5F 43 50 55 31 41 50 50 54              // _PR_CPU1APPT

            If (And (PDC6, 0x18))
            {
                \_PR.CPU1.APCT ()
            }

            Store (PDC6, PDC0)

  09CF: A0 18 7B 50 44 43 36 0A 18 00 5C 2F 03 5F 50 52  // ..{PDC6...\/._PR
  09DF: 5F 43 50 55 31 41 50 43 54 70 50 44 43 36 50 44  // _CPU1APCTpPDC6PD
  09EF: 43 30                                            // C0

            Return (Zero)
        }
    }


  09F1: A4 00                                            // ..

    Scope (\_PR.CPU7)
    {

  09F3: 10 44 0E 5C 2E 5F 50 52 5F 43 50 55 37           // .D.\._PR_CPU7

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)

  0A00: 14 1F 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 43  // .._PDC.p\/._PR_C
  0A10: 50 55 30 43 50 44 43 68 60 47 43 41 50 60        // PU0CPDCh`GCAP`

            Return (Local0)
        }


  0A1E: A4 60                                            // .`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)

  0A20: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 43  // ."_OSC.p\/._PR_C
  0A30: 50 55 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // PU0COSChijk`GCAP
  0A40: 60                                               // `

            Return (Local0)
        }


  0A41: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

  0A43: 14 44 09 47 43 41 50 01                          // .D.GCAP.

            CreateDWordField (Arg0, Zero, STS7)

  0A4B: 8A 68 00 53 54 53 37                             // .h.STS7

            CreateDWordField (Arg0, 0x04, CAP7)

  0A52: 8A 68 0A 04 43 41 50 37                          // .h..CAP7

            If (LOr (LEqual (STS7, 0x06), 
  0A5A: A0 12 91 93 53 54 53 37 0A 06                    // ....STS7..

LEqual (STS7, 0x0A)))
            {

  0A64: 93 53 54 53 37 0A 0A                             // .STS7..

                Return (Zero)
            }


  0A6B: A4 00                                            // ..

            If (And (STS7, One))
            {
                And (CAP7, 0x0BFF, CAP7)

  0A6D: A0 16 7B 53 54 53 37 01 00 7B 43 41 50 37 0B FF  // ..{STS7..{CAP7..
  0A7D: 0B 43 41 50 37                                   // .CAP7

                Return (Zero)
            }

            Or (And (PDC7, 0x7FFFFFFF), CAP7, PDC7)

  0A82: A4 00 7D 7B 50 44 43 37 0C FF FF FF 7F 00 43 41  // ..}{PDC7......CA
  0A92: 50 37 50 44 43 37                                // P7PDC7

            If (LEqual (And (PDC7, 0x09), 0x09))
            {
                \_PR.CPU1.APPT ()
            }


  0A98: A0 1B 93 7B 50 44 43 37 0A 09 00 0A 09 5C 2F 03  // ...{PDC7.....\/.
  0AA8: 5F 50 52 5F 43 50 55 31 41 50 50 54              // _PR_CPU1APPT

            If (And (PDC7, 0x18))
            {
                \_PR.CPU1.APCT ()
            }

            Store (PDC7, PDC0)

  0AB4: A0 18 7B 50 44 43 37 0A 18 00 5C 2F 03 5F 50 52  // ..{PDC7...\/._PR
  0AC4: 5F 43 50 55 31 41 50 43 54 70 50 44 43 37 50 44  // _CPU1APCTpPDC7PD
  0AD4: 43 30                                            // C0

            Return (Zero)
        }
    }
}



Table Header:
Table Body (Length 0xAD8)
