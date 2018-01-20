{
    /*
     * iASL Warning: There were 7 external control methods found during
     * disassembly, but only 4 were resolved (3 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.AR02, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECOK, IntObj)
    External (_SB_.PCI0.LPCB.EC__.OEM2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.WINF, FieldUnitObj)
    External (_SB_.PCI0.PR02, MethodObj)    // 0 Arguments
    External (_SB_.PEPD, UnknownObj)
    External (_SB_.WMI_, UnknownObj)
    External (_SB_.WMI_.EVNT, IntObj)
    External (_SB_.WMI_.HKDR, IntObj)
    External (ADBG, MethodObj)    // 1 Arguments
    External (DSEN, FieldUnitObj)
    External (GPRW, MethodObj)    // 2 Arguments
    External (GUAM, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (HDOS, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (HNOT, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (OSYS, FieldUnitObj)
    External (P80H, FieldUnitObj)
    External (PICM, IntObj)
    External (PNHM, FieldUnitObj)
    External (S0ID, FieldUnitObj)
    External (SCIS, FieldUnitObj)

    OperationRegion (SANV, SystemMemory, 0xC7792E18, 0x016D)

  0024: 5B 80 53 41 4E 56 00 0C 18 2E 79 C7 0B 6D 01     // [.SANV....y..m.

    Field (SANV, AnyAcc, Lock, Preserve)
    {
        SARV,   32, 
        ASLB,   32, 
        IMON,   8, 
        IGDS,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        DID9,   32, 
        DIDA,   32, 
        DIDB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        LIDS,   8, 
        KSV0,   32, 
        KSV1,   8, 
        BBAR,   32, 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        ALFP,   8, 
        AUDA,   32, 
        AUDB,   32, 
        AUDC,   32, 
        DIDC,   32, 
        DIDD,   32, 
        DIDE,   32, 
        DIDF,   32, 
        CCSA,   32, 
        CCNT,   32, 
        Offset (0xC8), 
        SGMD,   8, 
        SGFL,   8, 
        PWOK,   8, 
        HLRS,   8, 
        PWEN,   8, 
        PRST,   8, 
        CPSP,   32, 
        EECP,   8, 
        EVCP,   16, 
        XBAS,   32, 
        GBAS,   16, 
        SGGP,   8, 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        LTRA,   8, 
        OBFA,   8, 
        LTRB,   8, 
        OBFB,   8, 
        LTRC,   8, 
        OBFC,   8, 
        SMSL,   16, 
        SNSL,   16, 
        P0UB,   8, 
        P1UB,   8, 
        P2UB,   8, 
        EDPV,   8, 
        NXDX,   32, 
        DIDX,   32, 
        PCSL,   8, 
        SC7A,   8, 
        DSEL,   8, 
        ESEL,   8, 
        PSEL,   8, 
        MXD1,   32, 
        MXD2,   32, 
        MXD3,   32, 
        MXD4,   32, 
        MXD5,   32, 
        MXD6,   32, 
        MXD7,   32, 
        MXD8,   32, 
        PXFD,   8, 
        EBAS,   32, 
        HYSS,   32
    }


  0033: 5B 81 4F 23 53 41 4E 56 10 53 41 52 56 20 41 53  // [.O#SANV.SARV AS
  0043: 4C 42 20 49 4D 4F 4E 08 49 47 44 53 08 43 41 44  // LB IMON.IGDS.CAD
  0053: 4C 08 50 41 44 4C 08 43 53 54 45 10 4E 53 54 45  // L.PADL.CSTE.NSTE
  0063: 10 44 49 44 39 20 44 49 44 41 20 44 49 44 42 20  // .DID9 DIDA DIDB 
  0073: 49 42 54 54 08 49 50 41 54 08 49 50 53 43 08 49  // IBTT.IPAT.IPSC.I
  0083: 42 4C 43 08 49 42 49 41 08 49 53 53 43 08 49 50  // BLC.IBIA.ISSC.IP
  0093: 43 46 08 49 44 4D 53 08 49 46 31 45 08 48 56 43  // CF.IDMS.IF1E.HVC
  00A3: 4F 08 4E 58 44 31 20 4E 58 44 32 20 4E 58 44 33  // O.NXD1 NXD2 NXD3
  00B3: 20 4E 58 44 34 20 4E 58 44 35 20 4E 58 44 36 20  //  NXD4 NXD5 NXD6 
  00C3: 4E 58 44 37 20 4E 58 44 38 20 47 53 4D 49 08 50  // NXD7 NXD8 GSMI.P
  00D3: 41 56 50 08 4C 49 44 53 08 4B 53 56 30 20 4B 53  // AVP.LIDS.KSV0 KS
  00E3: 56 31 08 42 42 41 52 20 42 4C 43 53 08 42 52 54  // V1.BBAR BLCS.BRT
  00F3: 4C 08 41 4C 53 45 08 41 4C 41 46 08 4C 4C 4F 57  // L.ALSE.ALAF.LLOW
  0103: 08 4C 48 49 48 08 41 4C 46 50 08 41 55 44 41 20  // .LHIH.ALFP.AUDA 
  0113: 41 55 44 42 20 41 55 44 43 20 44 49 44 43 20 44  // AUDB AUDC DIDC D
  0123: 49 44 44 20 44 49 44 45 20 44 49 44 46 20 43 43  // IDD DIDE DIDF CC
  0133: 53 41 20 43 43 4E 54 20 00 48 25 53 47 4D 44 08  // SA CCNT .H%SGMD.
  0143: 53 47 46 4C 08 50 57 4F 4B 08 48 4C 52 53 08 50  // SGFL.PWOK.HLRS.P
  0153: 57 45 4E 08 50 52 53 54 08 43 50 53 50 20 45 45  // WEN.PRST.CPSP EE
  0163: 43 50 08 45 56 43 50 10 58 42 41 53 20 47 42 41  // CP.EVCP.XBAS GBA
  0173: 53 10 53 47 47 50 08 4E 56 47 41 20 4E 56 48 41  // S.SGGP.NVGA NVHA
  0183: 20 41 4D 44 41 20 4E 44 49 44 08 44 49 44 31 20  //  AMDA NDID.DID1 
  0193: 44 49 44 32 20 44 49 44 33 20 44 49 44 34 20 44  // DID2 DID3 DID4 D
  01A3: 49 44 35 20 44 49 44 36 20 44 49 44 37 20 44 49  // ID5 DID6 DID7 DI
  01B3: 44 38 20 4F 42 53 31 20 4F 42 53 32 20 4F 42 53  // D8 OBS1 OBS2 OBS
  01C3: 33 20 4F 42 53 34 20 4F 42 53 35 20 4F 42 53 36  // 3 OBS4 OBS5 OBS6
  01D3: 20 4F 42 53 37 20 4F 42 53 38 20 4C 54 52 41 08  //  OBS7 OBS8 LTRA.
  01E3: 4F 42 46 41 08 4C 54 52 42 08 4F 42 46 42 08 4C  // OBFA.LTRB.OBFB.L
  01F3: 54 52 43 08 4F 42 46 43 08 53 4D 53 4C 10 53 4E  // TRC.OBFC.SMSL.SN
  0203: 53 4C 10 50 30 55 42 08 50 31 55 42 08 50 32 55  // SL.P0UB.P1UB.P2U
  0213: 42 08 45 44 50 56 08 4E 58 44 58 20 44 49 44 58  // B.EDPV.NXDX DIDX
  0223: 20 50 43 53 4C 08 53 43 37 41 08 44 53 45 4C 08  //  PCSL.SC7A.DSEL.
  0233: 45 53 45 4C 08 50 53 45 4C 08 4D 58 44 31 20 4D  // ESEL.PSEL.MXD1 M
  0243: 58 44 32 20 4D 58 44 33 20 4D 58 44 34 20 4D 58  // XD2 MXD3 MXD4 MX
  0253: 44 35 20 4D 58 44 36 20 4D 58 44 37 20 4D 58 44  // D5 MXD6 MXD7 MXD
  0263: 38 20 50 58 46 44 08 45 42 41 53 20 48 59 53 53  // 8 PXFD.EBAS HYSS
  0273: 20                                               //  

    Scope (\_SB.PCI0)
    {

  0274: 10 82 9D 01 5C 2E 5F 53 42 5F 50 43 49 30        // ....\._SB_PCI0

        Name (LTRS, Zero)

  0282: 08 4C 54 52 53 00                                // .LTRS.

        Name (OBFS, Zero)

  0288: 08 4F 42 46 53 00                                // .OBFS.

        Device (PEG0)
        {

  028E: 5B 82 4C 21 50 45 47 30                          // [.L!PEG0

            Name (_ADR, 0x00010000)  // _ADR: Address

  0296: 08 5F 41 44 52 0C 00 00 01 00                    // ._ADR.....

            OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)

  02A0: 5B 80 50 45 47 52 02 0A C0 0A 30                 // [.PEGR....0

            Field (PEGR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x02), 
                PSTS,   1, 
                Offset (0x2C), 
                GENG,   1, 
                    ,   1, 
                PMEG,   1
            }


  02AB: 5B 81 1C 50 45 47 52 03 00 10 50 53 54 53 01 00  // [..PEGR...PSTS..
  02BB: 4F 14 47 45 4E 47 01 00 01 50 4D 45 47 01        // O.GENG...PMEG.

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {

  02C9: 14 0F 5F 50 52 57 00                             // .._PRW.

                Return (GPRW (0x09, 0x04))
            }


  02D0: A4 47 50 52 57 0A 09 0A 04                       // .GPRW....

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {

  02D9: 14 23 5F 50 53 57 01                             // .#_PSW.

                If (Arg0)
                {
                    Store (One, GENG)

  02E0: A0 0E 68 70 01 47 45 4E 47                       // ..hp.GENG

                    Store (One, PMEG)
                }

  02E9: 70 01 50 4D 45 47                                // p.PMEG

                Else
                {
                    Store (Zero, GENG)

  02EF: A1 0D 70 00 47 45 4E 47                          // ..p.GENG

                    Store (Zero, PMEG)
                }
            }


  02F7: 70 00 50 4D 45 47                                // p.PMEG

            Method (HPME, 0, Serialized)
            {

  02FD: 14 0C 48 50 4D 45 08                             // ..HPME.

                Store (One, PSTS)
            }


  0304: 70 01 50 53 54 53                                // p.PSTS

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {

  030A: 14 16 5F 50 52 54 00                             // .._PRT.

                If (PICM)
                {

  0311: A0 0A 50 49 43 4D                                // ..PICM

                    Return (AR02 ())
                }


  0317: A4 41 52 30 32                                   // .AR02

                Return (PR02 ())
            }


  031C: A4 50 52 30 32                                   // .PR02

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (LTRA, LTRS)

  0321: 14 18 5F 49 4E 49 00 70 4C 54 52 41 4C 54 52 53  // .._INI.pLTRALTRS

                Store (OBFA, OBFS)
            }


  0331: 70 4F 42 46 41 4F 42 46 53                       // pOBFAOBFS

            Name (LTRV, 
  033A: 08 4C 54 52 56                                   // .LTRV

Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })

  033F: 12 06 04 00 00 00 00                             // .......

            Name (OPTS, Zero)

  0346: 08 4F 50 54 53 00                                // .OPTS.

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {

  034C: 14 42 14 5F 44 53 4D 0C                          // .B._DSM.


  0354: 08 5F 54 5F 31 00                                // ._T_1.


  035A: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (Arg0))
                {

  0360: A2 49 12 01 70 99 68 00 5F 54 5F 30              // .I..p.h._T_0

                    Case (
  036C: A0 4C 11 93 5F 54 5F 30                          // .L.._T_0

ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */){
  0374: 11 13 0A 10 D0 37 C9 E5 53 35 7A 4D 91 17 EA 4D  // .....7..S5zM...M
  0384: 19 C3 43 4D                                      // ..CM

                        Switch (ToInteger (Arg2))
                        {

  0388: A2 40 10 01 70 99 6A 00 5F 54 5F 31              // .@..p.j._T_1

                            Case (Zero)
                            {

  0394: A0 3E 93 5F 54 5F 31 00                          // .>._T_1.

                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (One, OPTS)

  039C: A0 32 93 69 0A 02 70 01 4F 50 54 53              // .2.i..p.OPTS

                                    If (LTRS)
                                    {

  03A8: A0 10 4C 54 52 53                                // ..LTRS

                                        Or (OPTS, 0x40, OPTS)
                                    }


  03AE: 7D 4F 50 54 53 0A 40 4F 50 54 53                 // }OPTS.@OPTS

                                    If (OBFS)
                                    {

  03B9: A0 10 4F 42 46 53                                // ..OBFS

                                        Or (OPTS, 0x10, OPTS)
                                    }


  03BF: 7D 4F 50 54 53 0A 10 4F 50 54 53                 // }OPTS..OPTS

                                    Return (OPTS)
                                }

  03CA: A4 4F 50 54 53                                   // .OPTS

                                Else
                                {

  03CF: A1 03                                            // ..

                                    Return (Zero)
                                }
                            }

  03D1: A4 00                                            // ..

                            Case
  03D3: A1 44 0B                                         // .D.

 (0x04)
                            {

  03D6: A0 41 04 93 5F 54 5F 31 0A 04                    // .A.._T_1..

                                If (LEqual (Arg1, 0x02))
                                {

  03E0: A0 37 93 69 0A 02                                // .7.i..

                                    If (OBFS)
                                    {

  03E6: A0 1A 4F 42 46 53                                // ..OBFS

                                        Return (
  03EC: A4                                               // .

Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                        })
                                    }

  03ED: 11 13 0A 10 00 00 00 00 00 00 00 00 00 00 00 08  // ................
  03FD: 00 00 00 00                                      // ....

                                    Else
                                    {

  0401: A1 16                                            // ..

                                        Return (
  0403: A4                                               // .

Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                        })
                                    }
                                }
                            }

  0404: 11 13 0A 10 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  0414: 00 00 00 00                                      // ....

                            Case
  0418: A1 4F 06                                         // .O.

 (0x06)
                            {

  041B: A0 4C 06 93 5F 54 5F 31 0A 06                    // .L.._T_1..

                                If (LEqual (Arg1, 0x02))
                                {

  0425: A0 42 06 93 69 0A 02                             // .B..i..

                                    If (LTRS)
                                    {
                                        Store (And (ShiftRight (SMSL, 0x0A), 0x07), 
  042C: A0 47 05 4C 54 52 53 70 7B 7A 53 4D 53 4C 0A 0A  // .G.LTRSp{zSMSL..
  043C: 00 0A 07 00                                      // ....

Index (LTRV, Zero))
                                        Store (And (SMSL, 0x03FF), 
  0440: 88 4C 54 52 56 00 00 70 7B 53 4D 53 4C 0B FF 03  // .LTRV..p{SMSL...
  0450: 00                                               // .

Index (LTRV, One))
                                        Store (And (ShiftRight (SNSL, 0x0A), 0x07), 
  0451: 88 4C 54 52 56 01 00 70 7B 7A 53 4E 53 4C 0A 0A  // .LTRV..p{zSNSL..
  0461: 00 0A 07 00                                      // ....

Index (LTRV, 0x02))
                                        Store (And (SNSL, 0x03FF), 
  0465: 88 4C 54 52 56 0A 02 00 70 7B 53 4E 53 4C 0B FF  // .LTRV...p{SNSL..
  0475: 03 00                                            // ..

Index (LTRV, 0x03))

  0477: 88 4C 54 52 56 0A 03 00                          // .LTRV...

                                        Return (LTRV)
                                    }

  047F: A4 4C 54 52 56                                   // .LTRV

                                    Else
                                    {

  0484: A1 03                                            // ..

                                        Return (Zero)
                                    }
                                }
                            }


  0486: A4 00                                            // ..

                        }
                    }


  0488: A5                                               // .

                }


  0489: A5                                               // .

                Return (
  048A: A4                                               // .

Buffer (One)
                {
                     0x00                                           
                })
            }


  048B: 11 03 01 00                                      // ....

            Device (PEGP)
            {

  048F: 5B 82 1B 50 45 47 50                             // [..PEGP

                Name (_ADR, Zero)  // _ADR: Address

  0496: 08 5F 41 44 52 00                                // ._ADR.

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {

  049C: 14 0F 5F 50 52 57 00                             // .._PRW.

                    Return (GPRW (0x09, 0x04))
                }
            }
        }


  04A3: A4 47 50 52 57 0A 09 0A 04                       // .GPRW....

        Device (B0D3)
        {

  04AC: 5B 82 40 53 42 30 44 33                          // [.@SB0D3

            Name (_ADR, 0x00030000)  // _ADR: Address

  04B4: 08 5F 41 44 52 0C 00 00 03 00                    // ._ADR.....

            Name (BARA, 0x80000000)

  04BE: 08 42 41 52 41 0C 00 00 00 80                    // .BARA.....

            Name (TBAR, Zero)

  04C8: 08 54 42 41 52 00                                // .TBAR.

            Name (TCMD, Zero)

  04CE: 08 54 43 4D 44 00                                // .TCMD.

            Name (MODB, Zero)

  04D4: 08 4D 4F 44 42 00                                // .MODB.

            Name (MODC, Zero)

  04DA: 08 4D 4F 44 43 00                                // .MODC.

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {

  04E0: 14 16 5F 53 54 41 00                             // .._STA.

                If (
  04E7: A0 0D 92                                         // ...

LNotEqual (AUVD, 0xFFFF))
                {

  04EA: 93 41 55 56 44 0B FF FF                          // .AUVD...

                    Return (0x0F)
                }


  04F2: A4 0A 0F                                         // ...

                Return (Zero)
            }


  04F5: A4 00                                            // ..

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {

  04F7: 14 32 5F 49 4E 49 00                             // .2_INI.

                If (LAnd (
  04FE: A0 2B 90 92                                      // .+..

LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), 
  0502: 93 7B 41 42 41 52 0C 04 C0 FF FF 00 0C 04 C0 FF  // .{ABAR..........
  0512: FF                                               // .


  0513: 92                                               // .

LNotEqual (And (ABAR, 0xFFFFC000), Zero)))
                {

  0514: 93 7B 41 42 41 52 0C 00 C0 FF FF 00 00           // .{ABAR.......

                    Store (ABAR, BARA)
                }
            }


  0521: 70 41 42 41 52 42 41 52 41                       // pABARBARA

            OperationRegion (RPCS, SystemMemory, \XBAS, 0x00018040)

  052A: 5B 80 52 50 43 53 00 5C 58 42 41 53 0C 40 80 01  // [.RPCS.\XBAS.@..
  053A: 00                                               // .

            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x18004), 
                ACMD,   8, 
                Offset (0x18010), 
                ABAR,   32
            }


  053B: 5B 81 17 52 50 43 53 00 00 80 02 C0 41 43 4D 44  // [..RPCS.....ACMD
  054B: 08 00 48 05 41 42 41 52 20                       // ..H.ABAR 

            OperationRegion (RPCZ, PCI_Config, Zero, 0x40)

  0554: 5B 80 52 50 43 5A 02 00 0A 40                    // [.RPCZ...@

            Field (RPCZ, DWordAcc, Lock, Preserve)
            {
                AUVD,   16
            }


  055E: 5B 81 0B 52 50 43 5A 13 41 55 56 44 10           // [..RPCZ.AUVD.

            Method (ASTR, 0, Serialized)
            {

  056B: 14 4A 08 41 53 54 52 08                          // .J.ASTR.

                If (LAnd (
  0573: A0 42 08 90 92                                   // .B...

LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), 
  0578: 93 7B 41 42 41 52 0C 04 C0 FF FF 00 0C 04 C0 FF  // .{ABAR..........
  0588: FF                                               // .


  0589: 92                                               // .

LNotEqual (And (ABAR, 0xFFFFC000), Zero)))
                {
                    And (ABAR, 0xFFFFFFF0, BBAR)
                    Add (BBAR, 0x1000, BBAR)

  058A: 93 7B 41 42 41 52 0C 00 C0 FF FF 00 00 7B 41 42  // .{ABAR.......{AB
  059A: 41 52 0C F0 FF FF FF 42 42 41 52 72 42 42 41 52  // AR.....BBARrBBAR
  05AA: 0B 00 10 42 42 41 52                             // ...BBAR

                    OperationRegion (RPCY, SystemMemory, BBAR, 0x25)

  05B1: 5B 80 52 50 43 59 00 42 42 41 52 0A 25           // [.RPCY.BBAR.%

                    Field (RPCY, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x0C), 
                        EM4W,   32, 
                        EMWA,   32, 
                        Offset (0x1C), 
                        ADWA,   32
                    }

                    Store (AUDA, EMWA)
                    Store (AUDB, ADWA)

  05BE: 5B 81 1B 52 50 43 59 03 00 40 06 45 4D 34 57 20  // [..RPCY..@.EM4W 
  05CE: 45 4D 57 41 20 00 40 04 41 44 57 41 20 70 41 55  // EMWA .@.ADWA pAU
  05DE: 44 41 45 4D 57 41 70 41 55 44 42 41 44 57 41     // DAEMWApAUDBADWA

                    Store (AUDC, EM4W)
                }
            }


  05ED: 70 41 55 44 43 45 4D 34 57                       // pAUDCEM4W

            Method (VSTR, 1, Serialized)
            {

  05F6: 14 4D 0F 56 53 54 52 09                          // .M.VSTR.

                Name (CONT, 0x03E8)

  05FE: 08 43 4F 4E 54 0B E8 03                          // .CONT...

                Name (ADDR, 0x80000000)
                Store (Arg0, ADDR)

  0606: 08 41 44 44 52 0C 00 00 00 80 70 68 41 44 44 52  // .ADDR.....phADDR

                OperationRegion (CCDC, SystemMemory, ADDR, 0x04)

  0616: 5B 80 43 43 44 43 00 41 44 44 52 0A 04           // [.CCDC.ADDR..

                Field (CCDC, ByteAcc, NoLock, Preserve)
                {
                    CDEC,   32
                }


  0623: 5B 81 0B 43 43 44 43 01 43 44 45 43 20           // [..CCDC.CDEC 

                If (LAnd (
  0630: A0 43 0C 90 92                                   // .C...

LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), 
  0635: 93 7B 41 42 41 52 0C 04 C0 FF FF 00 0C 04 C0 FF  // .{ABAR..........
  0645: FF                                               // .


  0646: 92                                               // .

LNotEqual (And (ABAR, 0xFFFFC000), Zero)))
                {

  0647: 93 7B 41 42 41 52 0C 00 C0 FF FF 00 00           // .{ABAR.......

                    If (
  0654: A0 4F 09 92                                      // .O..

LNotEqual (CDEC, Zero))
                    {
                        And (ABAR, 0xFFFFFFF0, BBAR)

  0658: 93 43 44 45 43 00 7B 41 42 41 52 0C F0 FF FF FF  // .CDEC.{ABAR.....
  0668: 42 42 41 52                                      // BBAR

                        OperationRegion (IPCV, SystemMemory, BBAR, 0x70)

  066C: 5B 80 49 50 43 56 00 42 42 41 52 0A 70           // [.IPCV.BBAR.p

                        Field (IPCV, DWordAcc, NoLock, Preserve)
                        {
                            Offset (0x60), 
                            AVIC,   32, 
                            Offset (0x68), 
                            AIRS,   16
                        }

                        Store (0x03E8, CONT)

  0679: 5B 81 15 49 50 43 56 03 00 40 30 41 56 49 43 20  // [..IPCV..@0AVIC 
  0689: 00 20 41 49 52 53 10 70 0B E8 03 43 4F 4E 54     // . AIRS.p...CONT

                        While (LAnd (LEqual (And (AIRS, One), One), 
  0698: A2 1A 90 93 7B 41 49 52 53 01 00 01              // ....{AIRS...


  06A4: 92                                               // .

LNotEqual (CONT, Zero)))
                        {
                            Stall (One)

  06A5: 93 43 4F 4E 54 00 5B 21 01                       // .CONT.[!.

                            Decrement (CONT)
                        }

                        Or (AIRS, 0x02, AIRS)
                        Store (CDEC, AVIC)
                        Or (AIRS, One, AIRS)
                        Store (0x03E8, CONT)

  06AE: 76 43 4F 4E 54 7D 41 49 52 53 0A 02 41 49 52 53  // vCONT}AIRS..AIRS
  06BE: 70 43 44 45 43 41 56 49 43 7D 41 49 52 53 01 41  // pCDECAVIC}AIRS.A
  06CE: 49 52 53 70 0B E8 03 43 4F 4E 54                 // IRSp...CONT

                        While (LAnd (LEqual (And (AIRS, One), One), 
  06D9: A2 1A 90 93 7B 41 49 52 53 01 00 01              // ....{AIRS...


  06E5: 92                                               // .

LNotEqual (CONT, Zero)))
                        {
                            Stall (One)

  06E6: 93 43 4F 4E 54 00 5B 21 01                       // .CONT.[!.

                            Decrement (CONT)
                        }
                    }
                }
            }


  06EF: 76 43 4F 4E 54                                   // vCONT

            Method (CXDC, 0, Serialized)
            {

  06F4: 14 44 05 43 58 44 43 08                          // .D.CXDC.

                Name (IDDX, 0x80000000)

  06FC: 08 49 44 44 58 0C 00 00 00 80                    // .IDDX.....

                If (LAnd (
  0706: A0 42 04 90 92                                   // .B...

LNotEqual (CCSA, Zero), 
  070B: 93 43 43 53 41 00                                // .CCSA.


  0711: 92                                               // .

LNotEqual (CCNT, Zero)))
                {
                    Store (CCSA, IDDX)

  0712: 93 43 43 4E 54 00 70 43 43 53 41 49 44 44 58     // .CCNT.pCCSAIDDX

                    While (LLess (IDDX, 
  0721: A2 27 95 49 44 44 58                             // .'.IDDX

Add (CCSA, Multiply (CCNT, 0x04))))
                    {
                        VSTR (IDDX)

  0728: 72 43 43 53 41 77 43 43 4E 54 0A 04 00 00 56 53  // rCCSAwCCNT....VS
  0738: 54 52 49 44 44 58                                // TRIDDX

                        Add (IDDX, 0x04, IDDX)
                    }
                }
            }


  073E: 72 49 44 44 58 0A 04 49 44 44 58                 // rIDDX..IDDX

            Method (ARST, 0, Serialized)
            {

  0749: 14 4C 0B 41 52 53 54 08                          // .L.ARST.

                If (LAnd (
  0751: A0 44 0B 90 92                                   // .D...

LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), 
  0756: 93 7B 41 42 41 52 0C 04 C0 FF FF 00 0C 04 C0 FF  // .{ABAR..........
  0766: FF                                               // .


  0767: 92                                               // .

LNotEqual (And (ABAR, 0xFFFFC000), Zero)))
                {
                    And (ABAR, 0xFFFFFFF0, BBAR)

  0768: 93 7B 41 42 41 52 0C 00 C0 FF FF 00 00 7B 41 42  // .{ABAR.......{AB
  0778: 41 52 0C F0 FF FF FF 42 42 41 52                 // AR.....BBAR

                    OperationRegion (IPCV, SystemMemory, BBAR, 0xBF)

  0783: 5B 80 49 50 43 56 00 42 42 41 52 0A BF           // [.IPCV.BBAR..

                    Field (IPCV, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x08), 
                        CRST,   32, 
                        Offset (0x4C), 
                        CORB,   32, 
                        Offset (0x5C), 
                        RIRB,   32, 
                        Offset (0x80), 
                        OSD1,   32, 
                        Offset (0xA0), 
                        OSD2,   32
                    }

                    And (CORB, 0xFFFFFFFD, CORB)
                    And (RIRB, 0xFFFFFFFD, RIRB)
                    And (OSD1, 0xFFFFFFFD, OSD1)
                    And (OSD2, 0xFFFFFFFD, OSD2)

  0790: 5B 81 2E 49 50 43 56 00 00 40 04 43 52 53 54 20  // [..IPCV..@.CRST 
  07A0: 00 40 20 43 4F 52 42 20 00 40 06 52 49 52 42 20  // .@ CORB .@.RIRB 
  07B0: 00 40 10 4F 53 44 31 20 00 40 0E 4F 53 44 32 20  // .@.OSD1 .@.OSD2 
  07C0: 7B 43 4F 52 42 0C FD FF FF FF 43 4F 52 42 7B 52  // {CORB.....CORB{R
  07D0: 49 52 42 0C FD FF FF FF 52 49 52 42 7B 4F 53 44  // IRB.....RIRB{OSD
  07E0: 31 0C FD FF FF FF 4F 53 44 31 7B 4F 53 44 32 0C  // 1.....OSD1{OSD2.
  07F0: FD FF FF FF 4F 53 44 32                          // ....OSD2

                    And (CRST, 0xFFFFFFFE, CRST)
                }
            }


  07F8: 7B 43 52 53 54 0C FE FF FF FF 43 52 53 54        // {CRST.....CRST

            Method (AINI, 0, Serialized)
            {

  0806: 14 4A 11 41 49 4E 49 08                          // .J.AINI.

                Name (CONT, 0x03E8)

  080E: 08 43 4F 4E 54 0B E8 03                          // .CONT...

                If (LAnd (
  0816: A0 4A 10 90 92                                   // .J...

LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), 
  081B: 93 7B 41 42 41 52 0C 04 C0 FF FF 00 0C 04 C0 FF  // .{ABAR..........
  082B: FF                                               // .


  082C: 92                                               // .

LNotEqual (And (ABAR, 0xFFFFC000), Zero)))
                {
                    And (ABAR, 0xFFFFFFF0, BBAR)

  082D: 93 7B 41 42 41 52 0C 00 C0 FF FF 00 00 7B 41 42  // .{ABAR.......{AB
  083D: 41 52 0C F0 FF FF FF 42 42 41 52                 // AR.....BBAR

                    OperationRegion (IPCV, SystemMemory, BBAR, 0x70)

  0848: 5B 80 49 50 43 56 00 42 42 41 52 0A 70           // [.IPCV.BBAR.p

                    Field (IPCV, DWordAcc, NoLock, Preserve)
                    {
                        GCAP,   16, 
                        Offset (0x08), 
                        GCTL,   32, 
                        Offset (0x0E), 
                        SSTS,   8, 
                        Offset (0x60), 
                        AVIC,   32, 
                        Offset (0x68), 
                        AIRS,   16
                    }

                    Or (GCTL, One, GCTL)
                    Store (0x03E8, CONT)

  0855: 5B 81 28 49 50 43 56 03 47 43 41 50 10 00 30 47  // [.(IPCV.GCAP..0G
  0865: 43 54 4C 20 00 10 53 53 54 53 08 00 48 28 41 56  // CTL ..SSTS..H(AV
  0875: 49 43 20 00 20 41 49 52 53 10 7D 47 43 54 4C 01  // IC . AIRS.}GCTL.
  0885: 47 43 54 4C 70 0B E8 03 43 4F 4E 54              // GCTLp...CONT

                    While (LAnd (LEqual (And (GCTL, One), Zero), 
  0891: A2 1A 90 93 7B 47 43 54 4C 01 00 00              // ....{GCTL...


  089D: 92                                               // .

LNotEqual (CONT, Zero)))
                    {
                        Stall (One)

  089E: 93 43 4F 4E 54 00 5B 21 01                       // .CONT.[!.

                        Decrement (CONT)
                    }

                    And (GCAP, 0xFFFF, GCAP)
                    Or (SSTS, 0x0F, SSTS)
                    And (GCTL, 0xFFFFFFFE, GCTL)
                    Store (0x03E8, CONT)

  08A7: 76 43 4F 4E 54 7B 47 43 41 50 0B FF FF 47 43 41  // vCONT{GCAP...GCA
  08B7: 50 7D 53 53 54 53 0A 0F 53 53 54 53 7B 47 43 54  // P}SSTS..SSTS{GCT
  08C7: 4C 0C FE FF FF FF 47 43 54 4C 70 0B E8 03 43 4F  // L.....GCTLp...CO
  08D7: 4E 54                                            // NT

                    While (LAnd (LEqual (And (GCTL, One), One), 
  08D9: A2 1A 90 93 7B 47 43 54 4C 01 00 01              // ....{GCTL...


  08E5: 92                                               // .

LNotEqual (CONT, Zero)))
                    {
                        Stall (One)

  08E6: 93 43 4F 4E 54 00 5B 21 01                       // .CONT.[!.

                        Decrement (CONT)
                    }

                    Or (GCTL, One, GCTL)
                    Store (0x03E8, CONT)

  08EF: 76 43 4F 4E 54 7D 47 43 54 4C 01 47 43 54 4C 70  // vCONT}GCTL.GCTLp
  08FF: 0B E8 03 43 4F 4E 54                             // ...CONT

                    While (LAnd (LEqual (And (GCTL, One), Zero), 
  0906: A2 1A 90 93 7B 47 43 54 4C 01 00 00              // ....{GCTL...


  0912: 92                                               // .

LNotEqual (CONT, Zero)))
                    {
                        Stall (One)

  0913: 93 43 4F 4E 54 00 5B 21 01                       // .CONT.[!.

                        Decrement (CONT)
                    }
                }
            }


  091C: 76 43 4F 4E 54                                   // vCONT

            Method (ABWA, 1, Serialized)
            {

  0921: 14 4C 0B 41 42 57 41 09                          // .L.ABWA.

                If (Arg0)
                {

  0929: A0 40 08 68                                      // .@.h

                    If (LOr (LEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), 
  092D: A0 46 05 91 93 7B 41 42 41 52 0C 04 C0 FF FF 00  // .F...{ABAR......
  093D: 0C 04 C0 FF FF                                   // .....

LEqual (And (ABAR, 0xFFFFC000), Zero)))
                    {

  0942: 93 7B 41 42 41 52 0C 00 C0 FF FF 00 00           // .{ABAR.......

                        If (
  094F: A0 34 92                                         // .4.

LNotEqual (BARA, 0x80000000))
                        {
                            Store (ABAR, TBAR)
                            Store (ACMD, TCMD)
                            Store (BARA, ABAR)
                            Store (0x06, ACMD)

  0952: 93 42 41 52 41 0C 00 00 00 80 70 41 42 41 52 54  // .BARA.....pABART
  0962: 42 41 52 70 41 43 4D 44 54 43 4D 44 70 42 41 52  // BARpACMDTCMDpBAR
  0972: 41 41 42 41 52 70 0A 06 41 43 4D 44              // AABARp..ACMD

                            Store (One, MODB)
                        }
                    }

  097E: 70 01 4D 4F 44 42                                // p.MODB

                    ElseIf
  0984: A1 25                                            // .%

 (
  0986: A0 23 92                                         // .#.

LNotEqual (And (ACMD, 0x06), 0x06))
                    {
                        Store (ACMD, TCMD)
                        Store (0x06, ACMD)

  0989: 93 7B 41 43 4D 44 0A 06 00 0A 06 70 41 43 4D 44  // .{ACMD.....pACMD
  0999: 54 43 4D 44 70 0A 06 41 43 4D 44                 // TCMDp..ACMD

                        Store (One, MODC)
                    }
                }

  09A4: 70 01 4D 4F 44 43                                // p.MODC

                Else
                {

  09AA: A1 33                                            // .3

                    If (MODB)
                    {

  09AC: A0 22 4D 4F 44 42                                // ."MODB

                        If (LEqual (ABAR, BARA))
                        {
                            Store (TBAR, ABAR)

  09B2: A0 1C 93 41 42 41 52 42 41 52 41 70 54 42 41 52  // ...ABARBARApTBAR
  09C2: 41 42 41 52                                      // ABAR

                            Store (TCMD, ACMD)
                        }
                    }


  09C6: 70 54 43 4D 44 41 43 4D 44                       // pTCMDACMD

                    If (MODC)
                    {

  09CF: A0 0E 4D 4F 44 43                                // ..MODC

                        Store (TCMD, ACMD)
                    }
                }
            }
        }


  09D5: 70 54 43 4D 44 41 43 4D 44                       // pTCMDACMD

        Device (GFX0)
        {

  09DE: 5B 82 87 26 01 47 46 58 30                       // [..&.GFX0

            Name (_ADR, 0x00020000)  // _ADR: Address

  09E7: 08 5F 41 44 52 0C 00 00 02 00                    // ._ADR.....

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("GFX0 DEP Call")

  09F1: 14 47 05 5F 44 45 50 00 41 44 42 47 0D 47 46 58  // .G._DEP.ADBG.GFX
  0A01: 30 20 44 45 50 20 43 61 6C 6C 00                 // 0 DEP Call.

                If (LEqual (S0ID, One))
                {
                    ADBG ("GFX0 DEP")

  0A0C: A0 23 93 53 30 49 44 01 41 44 42 47 0D 47 46 58  // .#.S0ID.ADBG.GFX
  0A1C: 30 20 44 45 50 00                                // 0 DEP.

                    Return (
  0A22: A4                                               // .

Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }

  0A23: 12 0C 01 5C 2E 5F 53 42 5F 50 45 50 44           // ...\._SB_PEPD

                Else
                {
                    ADBG ("GFX0 DEP NULL")

  0A30: A1 18 41 44 42 47 0D 47 46 58 30 20 44 45 50 20  // ..ADBG.GFX0 DEP 
  0A40: 4E 55 4C 4C 00                                   // NULL.

                    Return (
  0A45: A4                                               // .

Package (0x00){})
                }
            }


  0A46: 12 02 00                                         // ...

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {

  0A49: 14 10 5F 49 4E 49 00                             // .._INI.

                Store (\LIDS, CLID)
            }


  0A50: 70 5C 4C 49 44 53 43 4C 49 44                    // p\LIDSCLID

            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                Store (And (Arg0, 0x07), DSEN)

  0A5A: 14 26 5F 44 4F 53 01 70 7B 68 0A 07 00 44 53 45  // .&_DOS.p{h...DSE
  0A6A: 4E                                               // N

                If (LEqual (And (Arg0, 0x03), Zero))
                {

  0A6B: A0 15 93 7B 68 0A 03 00 00                       // ...{h....

                    If (CondRefOf (HDOS))
                    {
                        HDOS ()
                    }
                }
            }


  0A74: A0 0C 5B 12 48 44 4F 53 00 48 44 4F 53           // ..[.HDOS.HDOS

            Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
            {

  0A81: 14 1E 5F 44 4F 44 00                             // .._DOD.

                Return (
  0A88: A4                                               // .

Package (0x04)
                {
                    0x80010100, 
                    0x80010303, 
                    0x80010304, 
                    0x80010410
                })
            }


  0A89: 12 16 04 0C 00 01 01 80 0C 03 03 01 80 0C 04 03  // ................
  0A99: 01 80 0C 10 04 01 80                             // .......

            Device (CRT0)
            {

  0AA0: 5B 82 43 05 43 52 54 30                          // [.C.CRT0

                Name (_ADR, 0x0100)  // _ADR: Address

  0AA8: 08 5F 41 44 52 0B 00 01                          // ._ADR...

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {

  0AB0: 14 0E 5F 44 43 53 00                             // .._DCS.

                    Return (CDDS (0x0100))
                }


  0AB7: A4 43 44 44 53 0B 00 01                          // .CDDS...

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {

  0ABF: 14 15 5F 44 47 53 00                             // .._DGS.

                    If (And (NSTE, 0x0101))
                    {

  0AC6: A0 0C 7B 4E 53 54 45 0B 01 01 00                 // ..{NSTE....

                        Return (One)
                    }


  0AD1: A4 01                                            // ..

                    Return (Zero)
                }


  0AD3: A4 00                                            // ..

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {

  0AD5: 14 1F 5F 44 53 53 01                             // .._DSS.

                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {

  0ADC: A0 18 93 7B 68 0C 00 00 00 C0 00 0C 00 00 00 C0  // ...{h...........

                        Store (NSTE, CSTE)
                    }
                }
            }


  0AEC: 70 4E 53 54 45 43 53 54 45                       // pNSTECSTE

            Device (HDMI)
            {

  0AF5: 5B 82 43 05 48 44 4D 49                          // [.C.HDMI

                Name (_ADR, 0x0304)  // _ADR: Address

  0AFD: 08 5F 41 44 52 0B 04 03                          // ._ADR...

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {

  0B05: 14 0E 5F 44 43 53 00                             // .._DCS.

                    Return (CDDS (0x0300))
                }


  0B0C: A4 43 44 44 53 0B 00 03                          // .CDDS...

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {

  0B14: 14 15 5F 44 47 53 00                             // .._DGS.

                    If (And (NSTE, 0x0202))
                    {

  0B1B: A0 0C 7B 4E 53 54 45 0B 02 02 00                 // ..{NSTE....

                        Return (One)
                    }


  0B26: A4 01                                            // ..

                    Return (Zero)
                }


  0B28: A4 00                                            // ..

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {

  0B2A: 14 1F 5F 44 53 53 01                             // .._DSS.

                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {

  0B31: A0 18 93 7B 68 0C 00 00 00 C0 00 0C 00 00 00 C0  // ...{h...........

                        Store (NSTE, CSTE)
                    }
                }
            }


  0B41: 70 4E 53 54 45 43 53 54 45                       // pNSTECSTE

            Device (DP)
            {

  0B4A: 5B 82 43 05 44 50 5F 5F                          // [.C.DP__

                Name (_ADR, 0x0303)  // _ADR: Address

  0B52: 08 5F 41 44 52 0B 03 03                          // ._ADR...

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {

  0B5A: 14 0E 5F 44 43 53 00                             // .._DCS.

                    Return (CDDS (0x0300))
                }


  0B61: A4 43 44 44 53 0B 00 03                          // .CDDS...

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {

  0B69: 14 15 5F 44 47 53 00                             // .._DGS.

                    If (And (NSTE, 0x0202))
                    {

  0B70: A0 0C 7B 4E 53 54 45 0B 02 02 00                 // ..{NSTE....

                        Return (One)
                    }


  0B7B: A4 01                                            // ..

                    Return (Zero)
                }


  0B7D: A4 00                                            // ..

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {

  0B7F: 14 1F 5F 44 53 53 01                             // .._DSS.

                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {

  0B86: A0 18 93 7B 68 0C 00 00 00 C0 00 0C 00 00 00 C0  // ...{h...........

                        Store (NSTE, CSTE)
                    }
                }
            }


  0B96: 70 4E 53 54 45 43 53 54 45                       // pNSTECSTE

            Device (LCD0)
            {

  0B9F: 5B 82 43 2C 4C 43 44 30                          // [.C,LCD0

                Name (_ADR, 0x0410)  // _ADR: Address

  0BA7: 08 5F 41 44 52 0B 10 04                          // ._ADR...

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {

  0BAF: 14 0E 5F 44 43 53 00                             // .._DCS.

                    Return (CDDS (0x0400))
                }


  0BB6: A4 43 44 44 53 0B 00 04                          // .CDDS...

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {

  0BBE: 14 15 5F 44 47 53 00                             // .._DGS.

                    If (And (NSTE, 0x0808))
                    {

  0BC5: A0 0C 7B 4E 53 54 45 0B 08 08 00                 // ..{NSTE....

                        Return (One)
                    }


  0BD0: A4 01                                            // ..

                    Return (Zero)
                }


  0BD2: A4 00                                            // ..

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {

  0BD4: 14 1F 5F 44 53 53 01                             // .._DSS.

                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {

  0BDB: A0 18 93 7B 68 0C 00 00 00 C0 00 0C 00 00 00 C0  // ...{h...........

                        Store (NSTE, CSTE)
                    }
                }


  0BEB: 70 4E 53 54 45 43 53 54 45                       // pNSTECSTE

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {

  0BF4: 14 49 0F 5F 42 43 4C 00                          // .I._BCL.

                    If (LLess (OSYS, 0x07DC))
                    {

  0BFC: A0 20 95 4F 53 59 53 0B DC 07                    // . .OSYS...

                        Return (
  0C06: A4                                               // .

Package (0x0A)
                        {
                            0x54, 
                            0x1C, 
                            Zero, 
                            0x0E, 
                            0x1C, 
                            0x2A, 
                            0x38, 
                            0x46, 
                            0x54, 
                            0x64
                        })
                    }


  0C07: 12 15 0A 0A 54 0A 1C 00 0A 0E 0A 1C 0A 2A 0A 38  // ....T........*.8
  0C17: 0A 46 0A 54 0A 64                                // .F.T.d

                    Return (
  0C1D: A4                                               // .

Package (0x67)
                    {
                        0x50, 
                        0x1E, 
                        Zero, 
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }


  0C1E: 12 4F 0C 67 0A 50 0A 1E 00 01 0A 02 0A 03 0A 04  // .O.g.P..........
  0C2E: 0A 05 0A 06 0A 07 0A 08 0A 09 0A 0A 0A 0B 0A 0C  // ................
  0C3E: 0A 0D 0A 0E 0A 0F 0A 10 0A 11 0A 12 0A 13 0A 14  // ................
  0C4E: 0A 15 0A 16 0A 17 0A 18 0A 19 0A 1A 0A 1B 0A 1C  // ................
  0C5E: 0A 1D 0A 1E 0A 1F 0A 20 0A 21 0A 22 0A 23 0A 24  // ....... .!.".#.$
  0C6E: 0A 25 0A 26 0A 27 0A 28 0A 29 0A 2A 0A 2B 0A 2C  // .%.&.'.(.).*.+.,
  0C7E: 0A 2D 0A 2E 0A 2F 0A 30 0A 31 0A 32 0A 33 0A 34  // .-.../.0.1.2.3.4
  0C8E: 0A 35 0A 36 0A 37 0A 38 0A 39 0A 3A 0A 3B 0A 3C  // .5.6.7.8.9.:.;.<
  0C9E: 0A 3D 0A 3E 0A 3F 0A 40 0A 41 0A 42 0A 43 0A 44  // .=.>.?.@.A.B.C.D
  0CAE: 0A 45 0A 46 0A 47 0A 48 0A 49 0A 4A 0A 4B 0A 4C  // .E.F.G.H.I.J.K.L
  0CBE: 0A 4D 0A 4E 0A 4F 0A 50 0A 51 0A 52 0A 53 0A 54  // .M.N.O.P.Q.R.S.T
  0CCE: 0A 55 0A 56 0A 57 0A 58 0A 59 0A 5A 0A 5B 0A 5C  // .U.V.W.X.Y.Z.[.\
  0CDE: 0A 5D 0A 5E 0A 5F 0A 60 0A 61 0A 62 0A 63 0A 64  // .].^._.`.a.b.c.d

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {

  0CEE: 14 4D 0F 5F 42 43 4D 01                          // .M._BCM.

                    If (LEqual (Arg0, Zero))
                    {
                        \_SB.PCI0.GFX0.AINT (One, One)
                    }

  0CF6: A0 19 93 68 00 5C 2F 04 5F 53 42 5F 50 43 49 30  // ...h.\/._SB_PCI0
  0D06: 47 46 58 30 41 49 4E 54 01 01                    // GFX0AINT..

                    Else
                    {
                        \_SB.PCI0.GFX0.AINT (One, Arg0)
                    }

                    Store (Arg0, BRTL)
                    Store (0xE0, Local7)

  0D10: A1 16 5C 2F 04 5F 53 42 5F 50 43 49 30 47 46 58  // ..\/._SB_PCI0GFX
  0D20: 30 41 49 4E 54 01 68 70 68 42 52 54 4C 70 0A E0  // 0AINT.hphBRTLp..
  0D30: 67                                               // g

                    If (LLess (OSYS, 0x07DC))
                    {

  0D31: A0 0D 95 4F 53 59 53 0B DC 07                    // ...OSYS...

                        Store (0x0E, Local0)
                    }

  0D3B: 70 0A 0E 60                                      // p..`

                    Else
                    {

  0D3F: A1 05                                            // ..

                        Store (0x0A, Local0)
                    }


  0D41: 70 0A 0A 60                                      // p..`

                    If (LEqual (Arg0, Zero))
                    {

  0D45: A0 07 93 68 00                                   // ...h.

                        Store (Arg0, Local2)
                    }

  0D4A: 70 68 62                                         // phb

                    Else
                    {

  0D4D: A1 06                                            // ..

                        Divide (Arg0, Local0, Local1, Local2)
                    }


  0D4F: 78 68 60 61 62                                   // xh`ab

                    If (\_SB.PCI0.LPCB.EC.ECOK)
                    {

  0D54: A0 4E 08 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .N.\/._SB_PCI0LP
  0D64: 43 42 45 43 5F 5F 45 43 4F 4B                    // CBEC__ECOK

                        If (And (\_SB.PCI0.LPCB.EC.WINF, One))
                        {

  0D6E: A0 34 7B 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .4{\/._SB_PCI0LP
  0D7E: 43 42 45 43 5F 5F 57 49 4E 46 01 00              // CBEC__WINF..

                            Store (Local2, \_SB.PCI0.LPCB.EC.OEM2)
                        }


  0D8A: 70 62 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // pb\/._SB_PCI0LPC
  0D9A: 42 45 43 5F 5F 4F 45 4D 32                       // BEC__OEM2

                        If (\_SB.WMI.HKDR)
                        {

  0DA3: A0 3F 5C 2F 03 5F 53 42 5F 57 4D 49 5F 48 4B 44  // .?\/._SB_WMI_HKD
  0DB3: 52                                               // R

                            If (LLess (OSYS, 0x07DC))
                            {

  0DB4: A0 10 95 4F 53 59 53 0B DC 07                    // ...OSYS...

                                Add (BRTL, Local7, Local7)
                            }

                            Store (Local7, \_SB.WMI.EVNT)

  0DBE: 72 42 52 54 4C 67 67 70 67 5C 2F 03 5F 53 42 5F  // rBRTLggpg\/._SB_
  0DCE: 57 4D 49 5F 45 56 4E 54                          // WMI_EVNT

                            Notify (\_SB.WMI, 0xD0)
                        }
                    }


  0DD6: 86 5C 2E 5F 53 42 5F 57 4D 49 5F 0A D0           // .\._SB_WMI_..

                    Store (BRTL, P80H)
                }


  0DE3: 70 42 52 54 4C 50 38 30 48                       // pBRTLP80H

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {

  0DEC: 14 47 07 5F 42 51 43 00                          // .G._BQC.

                    If (\_SB.WMI.HKDR)
                    {

  0DF4: A0 48 06 5C 2F 03 5F 53 42 5F 57 4D 49 5F 48 4B  // .H.\/._SB_WMI_HK
  0E04: 44 52                                            // DR

                        If (\_SB.PCI0.LPCB.EC.ECOK)
                        {
                            Store (\_SB.PCI0.LPCB.EC.OEM2, Local0)

  0E06: A0 41 05 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .A.\/._SB_PCI0LP
  0E16: 43 42 45 43 5F 5F 45 43 4F 4B 70 5C 2F 05 5F 53  // CBEC__ECOKp\/._S
  0E26: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 4F 45  // B_PCI0LPCBEC__OE
  0E36: 4D 32 60                                         // M2`

                            If (LLess (OSYS, 0x07DC))
                            {

  0E39: A0 18 95 4F 53 59 53 0B DC 07                    // ...OSYS...

                                If (LEqual (Local0, 0x07))
                                {

  0E43: A0 08 93 60 0A 07                                // ...`..

                                    Return (0x64)
                                }


  0E49: A4 0A 64                                         // ..d

                                Return (
  0E4C: A4                                               // .

Multiply (Local0, 0x0E))
                            }


  0E4D: 77 60 0A 0E 00                                   // w`...

                            Return (
  0E52: A4                                               // .

Multiply (Local0, 0x0A))
                        }

  0E53: 77 60 0A 0A 00                                   // w`...

                        Else
                        {

  0E58: A1 04                                            // ..

                            Return (0x64)
                        }
                    }

  0E5A: A4 0A 64                                         // ..d

                    Else
                    {

  0E5D: A1 06                                            // ..

                        Return (BRTL)
                    }
                }
            }


  0E5F: A4 42 52 54 4C                                   // .BRTL

            Method (SDDL, 1, NotSerialized)
            {
                Increment (NDID)
                Store (And (Arg0, 0x0F0F), Local0)
                Or (0x80000000, Local0, Local1)

  0E64: 14 49 0B 53 44 44 4C 01 75 4E 44 49 44 70 7B 68  // .I.SDDL.uNDIDp{h
  0E74: 0B 0F 0F 00 60 7D 0C 00 00 00 80 60 61           // ....`}.....`a

                If (LEqual (DIDL, Local0))
                {

  0E81: A0 09 93 44 49 44 4C 60                          // ...DIDL`

                    Return (Local1)
                }


  0E89: A4 61                                            // .a

                If (LEqual (DDL2, Local0))
                {

  0E8B: A0 09 93 44 44 4C 32 60                          // ...DDL2`

                    Return (Local1)
                }


  0E93: A4 61                                            // .a

                If (LEqual (DDL3, Local0))
                {

  0E95: A0 09 93 44 44 4C 33 60                          // ...DDL3`

                    Return (Local1)
                }


  0E9D: A4 61                                            // .a

                If (LEqual (DDL4, Local0))
                {

  0E9F: A0 09 93 44 44 4C 34 60                          // ...DDL4`

                    Return (Local1)
                }


  0EA7: A4 61                                            // .a

                If (LEqual (DDL5, Local0))
                {

  0EA9: A0 09 93 44 44 4C 35 60                          // ...DDL5`

                    Return (Local1)
                }


  0EB1: A4 61                                            // .a

                If (LEqual (DDL6, Local0))
                {

  0EB3: A0 09 93 44 44 4C 36 60                          // ...DDL6`

                    Return (Local1)
                }


  0EBB: A4 61                                            // .a

                If (LEqual (DDL7, Local0))
                {

  0EBD: A0 09 93 44 44 4C 37 60                          // ...DDL7`

                    Return (Local1)
                }


  0EC5: A4 61                                            // .a

                If (LEqual (DDL8, Local0))
                {

  0EC7: A0 09 93 44 44 4C 38 60                          // ...DDL8`

                    Return (Local1)
                }


  0ECF: A4 61                                            // .a

                If (LEqual (DDL9, Local0))
                {

  0ED1: A0 09 93 44 44 4C 39 60                          // ...DDL9`

                    Return (Local1)
                }


  0ED9: A4 61                                            // .a

                If (LEqual (DD10, Local0))
                {

  0EDB: A0 09 93 44 44 31 30 60                          // ...DD10`

                    Return (Local1)
                }


  0EE3: A4 61                                            // .a

                If (LEqual (DD11, Local0))
                {

  0EE5: A0 09 93 44 44 31 31 60                          // ...DD11`

                    Return (Local1)
                }


  0EED: A4 61                                            // .a

                If (LEqual (DD12, Local0))
                {

  0EEF: A0 09 93 44 44 31 32 60                          // ...DD12`

                    Return (Local1)
                }


  0EF7: A4 61                                            // .a

                If (LEqual (DD13, Local0))
                {

  0EF9: A0 09 93 44 44 31 33 60                          // ...DD13`

                    Return (Local1)
                }


  0F01: A4 61                                            // .a

                If (LEqual (DD14, Local0))
                {

  0F03: A0 09 93 44 44 31 34 60                          // ...DD14`

                    Return (Local1)
                }


  0F0B: A4 61                                            // .a

                If (LEqual (DD15, Local0))
                {

  0F0D: A0 09 93 44 44 31 35 60                          // ...DD15`

                    Return (Local1)
                }

                Decrement (NDID)

  0F15: A4 61 76 4E 44 49 44                             // .avNDID

                Return (Zero)
            }


  0F1C: A4 00                                            // ..

            Method (CDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)

  0F1E: 14 42 07 43 44 44 53 01 70 7B 68 0B 0F 0F 00 60  // .B.CDDS.p{h....`

                If (LEqual (Zero, Local0))
                {

  0F2E: A0 07 93 00 60                                   // ....`

                    Return (0x1D)
                }


  0F33: A4 0A 1D                                         // ...

                If (LEqual (CADL, Local0))
                {

  0F36: A0 0A 93 43 41 44 4C 60                          // ...CADL`

                    Return (0x1F)
                }


  0F3E: A4 0A 1F                                         // ...

                If (LEqual (CAL2, Local0))
                {

  0F41: A0 0A 93 43 41 4C 32 60                          // ...CAL2`

                    Return (0x1F)
                }


  0F49: A4 0A 1F                                         // ...

                If (LEqual (CAL3, Local0))
                {

  0F4C: A0 0A 93 43 41 4C 33 60                          // ...CAL3`

                    Return (0x1F)
                }


  0F54: A4 0A 1F                                         // ...

                If (LEqual (CAL4, Local0))
                {

  0F57: A0 0A 93 43 41 4C 34 60                          // ...CAL4`

                    Return (0x1F)
                }


  0F5F: A4 0A 1F                                         // ...

                If (LEqual (CAL5, Local0))
                {

  0F62: A0 0A 93 43 41 4C 35 60                          // ...CAL5`

                    Return (0x1F)
                }


  0F6A: A4 0A 1F                                         // ...

                If (LEqual (CAL6, Local0))
                {

  0F6D: A0 0A 93 43 41 4C 36 60                          // ...CAL6`

                    Return (0x1F)
                }


  0F75: A4 0A 1F                                         // ...

                If (LEqual (CAL7, Local0))
                {

  0F78: A0 0A 93 43 41 4C 37 60                          // ...CAL7`

                    Return (0x1F)
                }


  0F80: A4 0A 1F                                         // ...

                If (LEqual (CAL8, Local0))
                {

  0F83: A0 0A 93 43 41 4C 38 60                          // ...CAL8`

                    Return (0x1F)
                }


  0F8B: A4 0A 1F                                         // ...

                Return (0x1D)
            }


  0F8E: A4 0A 1D                                         // ...

            Method (NDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)

  0F91: 14 48 06 4E 44 44 53 01 70 7B 68 0B 0F 0F 00 60  // .H.NDDS.p{h....`

                If (LEqual (Zero, Local0))
                {

  0FA1: A0 06 93 00 60                                   // ....`

                    Return (Zero)
                }


  0FA6: A4 00                                            // ..

                If (LEqual (NADL, Local0))
                {

  0FA8: A0 09 93 4E 41 44 4C 60                          // ...NADL`

                    Return (One)
                }


  0FB0: A4 01                                            // ..

                If (LEqual (NDL2, Local0))
                {

  0FB2: A0 09 93 4E 44 4C 32 60                          // ...NDL2`

                    Return (One)
                }


  0FBA: A4 01                                            // ..

                If (LEqual (NDL3, Local0))
                {

  0FBC: A0 09 93 4E 44 4C 33 60                          // ...NDL3`

                    Return (One)
                }


  0FC4: A4 01                                            // ..

                If (LEqual (NDL4, Local0))
                {

  0FC6: A0 09 93 4E 44 4C 34 60                          // ...NDL4`

                    Return (One)
                }


  0FCE: A4 01                                            // ..

                If (LEqual (NDL5, Local0))
                {

  0FD0: A0 09 93 4E 44 4C 35 60                          // ...NDL5`

                    Return (One)
                }


  0FD8: A4 01                                            // ..

                If (LEqual (NDL6, Local0))
                {

  0FDA: A0 09 93 4E 44 4C 36 60                          // ...NDL6`

                    Return (One)
                }


  0FE2: A4 01                                            // ..

                If (LEqual (NDL7, Local0))
                {

  0FE4: A0 09 93 4E 44 4C 37 60                          // ...NDL7`

                    Return (One)
                }


  0FEC: A4 01                                            // ..

                If (LEqual (NDL8, Local0))
                {

  0FEE: A0 09 93 4E 44 4C 38 60                          // ...NDL8`

                    Return (One)
                }


  0FF6: A4 01                                            // ..

                Return (Zero)
            }


  0FF8: A4 00                                            // ..

            Scope (\_SB.PCI0)
            {

  0FFA: 10 30 5C 2E 5F 53 42 5F 50 43 49 30              // .0\._SB_PCI0

                OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)

  1006: 5B 80 4D 43 48 50 02 0A 40 0A C0                 // [.MCHP..@..

                Field (MCHP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x14), 
                    AUDE,   8, 
                    Offset (0x60), 
                    TASM,   10, 
                    Offset (0x62)
                }
            }


  1011: 5B 81 18 4D 43 48 50 00 00 40 0A 41 55 44 45 08  // [..MCHP..@.AUDE.
  1021: 00 48 25 54 41 53 4D 0A 00 06                    // .H%TASM...

            OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)

  102B: 5B 80 49 47 44 50 02 0A 40 0A C0                 // [.IGDP..@..

            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x12), 
                    ,   1, 
                GIVD,   1, 
                    ,   2, 
                GUMA,   3, 
                Offset (0x14), 
                    ,   4, 
                GMFN,   1, 
                Offset (0x18), 
                Offset (0xA4), 
                ASLE,   8, 
                Offset (0xA8), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                Offset (0xB0), 
                    ,   12, 
                CDVL,   1, 
                Offset (0xB2), 
                Offset (0xB5), 
                LBPC,   8, 
                Offset (0xBC), 
                ASLS,   32
            }


  1036: 5B 81 45 05 49 47 44 50 00 00 40 09 00 01 47 49  // [.E.IGDP..@...GI
  1046: 56 44 01 00 02 47 55 4D 41 03 00 09 00 04 47 4D  // VD...GUMA.....GM
  1056: 46 4E 01 00 1B 00 40 46 41 53 4C 45 08 00 18 47  // FN....@FASLE...G
  1066: 53 53 45 01 47 53 53 42 0E 47 53 45 53 01 00 30  // SSE.GSSB.GSES..0
  1076: 00 0C 43 44 56 4C 01 00 03 00 18 4C 42 50 43 08  // ..CDVL.....LBPC.
  1086: 00 30 41 53 4C 53 20                             // .0ASLS 

            OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)

  108D: 5B 80 49 47 44 4D 00 41 53 4C 42 0B 00 20        // [.IGDM.ASLB.. 

            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                DMOD,   32, 
                PCON,   32, 
                DVER,   64, 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CADL,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                DDL9,   32, 
                DD10,   32, 
                DD11,   32, 
                DD12,   32, 
                DD13,   32, 
                DD14,   32, 
                DD15,   32, 
                CPL9,   32, 
                CP10,   32, 
                CP11,   32, 
                CP12,   32, 
                CP13,   32, 
                CP14,   32, 
                CP15,   32, 
                Offset (0x200), 
                SCIE,   1, 
                GEFC,   4, 
                GXFC,   3, 
                GESF,   8, 
                Offset (0x204), 
                PARM,   32, 
                DSLP,   32, 
                Offset (0x300), 
                ARDY,   32, 
                ASLC,   32, 
                TCHE,   32, 
                ALSI,   32, 
                BCLP,   32, 
                PFIT,   32, 
                CBLV,   32, 
                BCLM,   320, 
                CPFM,   32, 
                EPFM,   32, 
                PLUT,   592, 
                PFMB,   32, 
                CCDV,   32, 
                PCFT,   32, 
                SROT,   32, 
                IUER,   32, 
                FDSP,   64, 
                FDSS,   32, 
                STAT,   32, 
                Offset (0x400), 
                GVD1,   49152, 
                PHED,   32, 
                BDDC,   2048
            }


  109B: 5B 81 42 20 49 47 44 4D 00 53 49 47 4E 40 08 53  // [.B IGDM.SIGN@.S
  10AB: 49 5A 45 20 4F 56 45 52 20 53 56 45 52 40 10 56  // IZE OVER SVER@.V
  10BB: 56 45 52 40 08 47 56 45 52 40 08 4D 42 4F 58 20  // VER@.GVER@.MBOX 
  10CB: 44 4D 4F 44 20 50 43 4F 4E 20 44 56 45 52 40 04  // DMOD PCON DVER@.
  10DB: 00 40 4A 44 52 44 59 20 43 53 54 53 20 43 45 56  // .@JDRDY CSTS CEV
  10EB: 54 20 00 40 0A 44 49 44 4C 20 44 44 4C 32 20 44  // T .@.DIDL DDL2 D
  10FB: 44 4C 33 20 44 44 4C 34 20 44 44 4C 35 20 44 44  // DL3 DDL4 DDL5 DD
  110B: 4C 36 20 44 44 4C 37 20 44 44 4C 38 20 43 50 44  // L6 DDL7 DDL8 CPD
  111B: 4C 20 43 50 4C 32 20 43 50 4C 33 20 43 50 4C 34  // L CPL2 CPL3 CPL4
  112B: 20 43 50 4C 35 20 43 50 4C 36 20 43 50 4C 37 20  //  CPL5 CPL6 CPL7 
  113B: 43 50 4C 38 20 43 41 44 4C 20 43 41 4C 32 20 43  // CPL8 CADL CAL2 C
  114B: 41 4C 33 20 43 41 4C 34 20 43 41 4C 35 20 43 41  // AL3 CAL4 CAL5 CA
  115B: 4C 36 20 43 41 4C 37 20 43 41 4C 38 20 4E 41 44  // L6 CAL7 CAL8 NAD
  116B: 4C 20 4E 44 4C 32 20 4E 44 4C 33 20 4E 44 4C 34  // L NDL2 NDL3 NDL4
  117B: 20 4E 44 4C 35 20 4E 44 4C 36 20 4E 44 4C 37 20  //  NDL5 NDL6 NDL7 
  118B: 4E 44 4C 38 20 41 53 4C 50 20 54 49 44 58 20 43  // NDL8 ASLP TIDX C
  119B: 48 50 44 20 43 4C 49 44 20 43 44 43 4B 20 53 58  // HPD CLID CDCK SX
  11AB: 53 57 20 45 56 54 53 20 43 4E 4F 54 20 4E 52 44  // SW EVTS CNOT NRD
  11BB: 59 20 44 44 4C 39 20 44 44 31 30 20 44 44 31 31  // Y DDL9 DD10 DD11
  11CB: 20 44 44 31 32 20 44 44 31 33 20 44 44 31 34 20  //  DD12 DD13 DD14 
  11DB: 44 44 31 35 20 43 50 4C 39 20 43 50 31 30 20 43  // DD15 CPL9 CP10 C
  11EB: 50 31 31 20 43 50 31 32 20 43 50 31 33 20 43 50  // P11 CP12 CP13 CP
  11FB: 31 34 20 43 50 31 35 20 00 20 53 43 49 45 01 47  // 14 CP15 . SCIE.G
  120B: 45 46 43 04 47 58 46 43 03 47 45 53 46 08 00 10  // EFC.GXFC.GESF...
  121B: 50 41 52 4D 20 44 53 4C 50 20 00 40 7A 41 52 44  // PARM DSLP .@zARD
  122B: 59 20 41 53 4C 43 20 54 43 48 45 20 41 4C 53 49  // Y ASLC TCHE ALSI
  123B: 20 42 43 4C 50 20 50 46 49 54 20 43 42 4C 56 20  //  BCLP PFIT CBLV 
  124B: 42 43 4C 4D 40 14 43 50 46 4D 20 45 50 46 4D 20  // BCLM@.CPFM EPFM 
  125B: 50 4C 55 54 40 25 50 46 4D 42 20 43 43 44 56 20  // PLUT@%PFMB CCDV 
  126B: 50 43 46 54 20 53 52 4F 54 20 49 55 45 52 20 46  // PCFT SROT IUER F
  127B: 44 53 50 40 04 46 44 53 53 20 53 54 41 54 20 00  // DSP@.FDSS STAT .
  128B: 40 23 47 56 44 31 80 00 0C 50 48 45 44 20 42 44  // @#GVD1...PHED BD
  129B: 44 43 40 80                                      // DC@.

            Name (DBTB, 
  129F: 08 44 42 54 42                                   // .DBTB

Package (0x15)
            {
                Zero, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })

  12A4: 12 32 15 00 0A 07 0A 38 0B C0 01 0B 00 0E 0A 3F  // .2.....8.......?
  12B4: 0B C7 01 0B 07 0E 0B F8 01 0B 38 0E 0B C0 0F 00  // ..........8.....
  12C4: 00 00 00 00 0B 00 70 0B 07 70 0B 38 70 0B C0 71  // ......p..p.8p..q
  12D4: 0B 00 7E                                         // ..~

            Name (CDCT, 
  12D7: 08 43 44 43 54                                   // .CDCT

Package (0x05)
            {

  12DC: 12 27 05                                         // .'.

                Package (0x02)
                {
                    0xE4, 
                    0x0140
                }, 


  12DF: 12 07 02 0A E4 0B 40 01                          // ......@.

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 


  12E7: 12 07 02 0A DE 0B 4D 01                          // ......M.

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 


  12EF: 12 07 02 0A DE 0B 4D 01                          // ......M.

                Package (0x02)
                {
                    Zero, 
                    Zero
                }, 


  12F7: 12 04 02 00 00                                   // .....

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }
            })

  12FC: 12 07 02 0A DE 0B 4D 01                          // ......M.

            Name (SUCC, One)

  1304: 08 53 55 43 43 01                                // .SUCC.

            Name (NVLD, 0x02)

  130A: 08 4E 56 4C 44 0A 02                             // .NVLD..

            Name (CRIT, 0x04)

  1311: 08 43 52 49 54 0A 04                             // .CRIT..

            Name (NCRT, 0x06)

  1318: 08 4E 43 52 54 0A 06                             // .NCRT..

            Method (GSCI, 0, Serialized)
            {

  131F: 14 49 5E 47 53 43 49 08                          // .I^GSCI.

                Method (GBDA, 0, Serialized)
                {

  1327: 14 40 1D 47 42 44 41 08                          // .@.GBDA.

                    If (LEqual (GESF, Zero))
                    {
                        Store (0x0659, PARM)
                        Store (Zero, GESF)

  132F: A0 1A 93 47 45 53 46 00 70 0B 59 06 50 41 52 4D  // ...GESF.p.Y.PARM
  133F: 70 00 47 45 53 46                                // p.GESF

                        Return (SUCC)
                    }


  1345: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, One))
                    {
                        Store (0x00300482, PARM)

  134A: A0 30 93 47 45 53 46 01 70 0C 82 04 30 00 50 41  // .0.GESF.p...0.PA
  135A: 52 4D                                            // RM

                        If (LEqual (S0ID, One))
                        {

  135C: A0 13 93 53 30 49 44 01                          // ...S0ID.

                            Or (PARM, 0x0100, PARM)
                        }

                        Store (Zero, GESF)

  1364: 7D 50 41 52 4D 0B 00 01 50 41 52 4D 70 00 47 45  // }PARM...PARMp.GE
  1374: 53 46                                            // SF

                        Return (SUCC)
                    }


  1376: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x04))
                    {
                        And (PARM, 0xEFFF0000, PARM)
                        And (PARM, ShiftLeft (DerefOf (
  137B: A0 47 04 93 47 45 53 46 0A 04 7B 50 41 52 4D 0C  // .G..GESF..{PARM.
  138B: 00 00 FF EF 50 41 52 4D 7B 50 41 52 4D 79 83     // ....PARM{PARMy.

Index (DBTB, IBTT)), 0x10), PARM)
                        Or (IBTT, PARM, PARM)
                        Store (Zero, GESF)

  139A: 88 44 42 54 42 49 42 54 54 00 0A 10 00 50 41 52  // .DBTBIBTT....PAR
  13AA: 4D 7D 49 42 54 54 50 41 52 4D 50 41 52 4D 70 00  // M}IBTTPARMPARMp.
  13BA: 47 45 53 46                                      // GESF

                        Return (SUCC)
                    }


  13BE: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x05))
                    {
                        Store (IPSC, PARM)
                        Or (PARM, ShiftLeft (IPAT, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                        Add (PARM, 0x00010000, PARM)
                        Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                        Store (Zero, GESF)

  13C3: A0 4A 06 93 47 45 53 46 0A 05 70 49 50 53 43 50  // .J..GESF..pIPSCP
  13D3: 41 52 4D 7D 50 41 52 4D 79 49 50 41 54 0A 08 00  // ARM}PARMyIPAT...
  13E3: 50 41 52 4D 72 50 41 52 4D 0B 00 01 50 41 52 4D  // PARMrPARM...PARM
  13F3: 7D 50 41 52 4D 79 4C 49 44 53 0A 10 00 50 41 52  // }PARMyLIDS...PAR
  1403: 4D 72 50 41 52 4D 0C 00 00 01 00 50 41 52 4D 7D  // MrPARM.....PARM}
  1413: 50 41 52 4D 79 49 42 49 41 0A 14 00 50 41 52 4D  // PARMyIBIA...PARM
  1423: 70 00 47 45 53 46                                // p.GESF

                        Return (SUCC)
                    }


  1429: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x07))
                    {
                        Store (GIVD, PARM)
                        XOr (PARM, One, PARM)
                        Or (PARM, ShiftLeft (GMFN, One), PARM)
                        Or (PARM, 0x1800, PARM)
                        Or (PARM, ShiftLeft (IDMS, 0x11), PARM)
                        Or (ShiftLeft (DerefOf (
  142E: A0 43 07 93 47 45 53 46 0A 07 70 47 49 56 44 50  // .C..GESF..pGIVDP
  143E: 41 52 4D 7F 50 41 52 4D 01 50 41 52 4D 7D 50 41  // ARM.PARM.PARM}PA
  144E: 52 4D 79 47 4D 46 4E 01 00 50 41 52 4D 7D 50 41  // RMyGMFN..PARM}PA
  145E: 52 4D 0B 00 18 50 41 52 4D 7D 50 41 52 4D 79 49  // RM...PARM}PARMyI
  146E: 44 4D 53 0A 11 00 50 41 52 4D 7D 79 83           // DMS...PARM}y.

Index (DerefOf (
  147B: 88 83                                            // ..

Index (CDCT, HVCO)), CDVL)), 0x15), PARM, PARM)
                        Store (One, GESF)

  147D: 88 43 44 43 54 48 56 43 4F 00 43 44 56 4C 00 0A  // .CDCTHVCO.CDVL..
  148D: 15 00 50 41 52 4D 50 41 52 4D 70 01 47 45 53 46  // ..PARMPARMp.GESF

                        Return (SUCC)
                    }


  149D: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x0A))
                    {
                        Store (Zero, PARM)

  14A2: A0 2A 93 47 45 53 46 0A 0A 70 00 50 41 52 4D     // .*.GESF..p.PARM

                        If (ISSC)
                        {

  14B1: A0 10 49 53 53 43                                // ..ISSC

                            Or (PARM, 0x03, PARM)
                        }

                        Store (Zero, GESF)

  14B7: 7D 50 41 52 4D 0A 03 50 41 52 4D 70 00 47 45 53  // }PARM..PARMp.GES
  14C7: 46                                               // F

                        Return (SUCC)
                    }


  14C8: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x0B))
                    {
                        Store (KSV0, PARM)
                        Store (KSV1, GESF)

  14CD: A0 1F 93 47 45 53 46 0A 0B 70 4B 53 56 30 50 41  // ...GESF..pKSV0PA
  14DD: 52 4D 70 4B 53 56 31 47 45 53 46                 // RMpKSV1GESF

                        Return (SUCC)
                    }

                    Store (Zero, GESF)

  14E8: A4 53 55 43 43 70 00 47 45 53 46                 // .SUCCp.GESF

                    Return (CRIT)
                }


  14F3: A4 43 52 49 54                                   // .CRIT

                Method (SBCB, 0, Serialized)
                {

  14F8: 14 42 3D 53 42 43 42 08                          // .B=SBCB.

                    If (LEqual (GESF, Zero))
                    {
                        Store (Zero, PARM)
                        Store (0x000F87DD, PARM)
                        Store (Zero, GESF)

  1500: A0 22 93 47 45 53 46 00 70 00 50 41 52 4D 70 0C  // .".GESF.p.PARMp.
  1510: DD 87 0F 00 50 41 52 4D 70 00 47 45 53 46        // ....PARMp.GESF

                        Return (SUCC)
                    }


  151E: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, One))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)

  1523: A0 18 93 47 45 53 46 01 70 00 47 45 53 46 70 00  // ...GESF.p.GESFp.
  1533: 50 41 52 4D                                      // PARM

                        Return (SUCC)
                    }


  1537: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x03))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)

  153C: A0 19 93 47 45 53 46 0A 03 70 00 47 45 53 46 70  // ...GESF..p.GESFp
  154C: 00 50 41 52 4D                                   // .PARM

                        Return (SUCC)
                    }


  1551: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x04))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)

  1556: A0 19 93 47 45 53 46 0A 04 70 00 47 45 53 46 70  // ...GESF..p.GESFp
  1566: 00 50 41 52 4D                                   // .PARM

                        Return (SUCC)
                    }


  156B: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x05))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)

  1570: A0 19 93 47 45 53 46 0A 05 70 00 47 45 53 46 70  // ...GESF..p.GESFp
  1580: 00 50 41 52 4D                                   // .PARM

                        Return (SUCC)
                    }


  1585: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x07))
                    {

  158A: A0 4F 05 93 47 45 53 46 0A 07                    // .O..GESF..

                        If (LEqual (S0ID, One))
                        {

  1594: A0 19 93 53 30 49 44 01                          // ...S0ID.

                            If (LEqual (And (PARM, 0xFF), One))
                            {
                                \GUAM (One)
                            }
                        }


  159C: A0 11 93 7B 50 41 52 4D 0A FF 00 01 5C 47 55 41  // ...{PARM....\GUA
  15AC: 4D 01                                            // M.

                        If (LEqual (PARM, Zero))
                        {
                            Store (CLID, Local0)

  15AE: A0 2A 93 50 41 52 4D 00 70 43 4C 49 44 60        // .*.PARM.pCLID`

                            If (And (0x80000000, Local0))
                            {
                                And (CLID, 0x0F, CLID)
                                GLID (CLID)
                            }
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)

  15BC: A0 1C 7B 0C 00 00 00 80 60 00 7B 43 4C 49 44 0A  // ..{.....`.{CLID.
  15CC: 0F 43 4C 49 44 47 4C 49 44 43 4C 49 44 70 00 47  // .CLIDGLIDCLIDp.G
  15DC: 45 53 46 70 00 50 41 52 4D                       // ESFp.PARM

                        Return (SUCC)
                    }


  15E5: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x08))
                    {

  15EA: A0 3A 93 47 45 53 46 0A 08                       // .:.GESF..

                        If (LEqual (S0ID, One))
                        {
                            Store (And (ShiftRight (PARM, 0x08), 0xFF), Local0)

  15F3: A0 20 93 53 30 49 44 01 70 7B 7A 50 41 52 4D 0A  // . .S0ID.p{zPARM.
  1603: 08 00 0A FF 00 60                                // .....`

                            If (LEqual (Local0, Zero))
                            {
                                \GUAM (Zero)
                            }
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)

  1609: A0 0A 93 60 00 5C 47 55 41 4D 00 70 00 47 45 53  // ...`.\GUAM.p.GES
  1619: 46 70 00 50 41 52 4D                             // Fp.PARM

                        Return (SUCC)
                    }


  1620: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x09))
                    {
                        And (PARM, 0xFF, IBTT)
                        Store (Zero, GESF)
                        Store (Zero, PARM)

  1625: A0 24 93 47 45 53 46 0A 09 7B 50 41 52 4D 0A FF  // .$.GESF..{PARM..
  1635: 49 42 54 54 70 00 47 45 53 46 70 00 50 41 52 4D  // IBTTp.GESFp.PARM

                        Return (SUCC)
                    }


  1645: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x0A))
                    {
                        And (PARM, 0xFF, IPSC)

  164A: A0 46 05 93 47 45 53 46 0A 0A 7B 50 41 52 4D 0A  // .F..GESF..{PARM.
  165A: FF 49 50 53 43                                   // .IPSC

                        If (And (ShiftRight (PARM, 0x08), 0xFF))
                        {
                            And (ShiftRight (PARM, 0x08), 0xFF, IPAT)

  165F: A0 21 7B 7A 50 41 52 4D 0A 08 00 0A FF 00 7B 7A  // .!{zPARM......{z
  166F: 50 41 52 4D 0A 08 00 0A FF 49 50 41 54           // PARM.....IPAT

                            Decrement (IPAT)
                        }

                        And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                        Store (Zero, GESF)
                        Store (Zero, PARM)

  167C: 76 49 50 41 54 7B 7A 50 41 52 4D 0A 14 00 0A 07  // vIPAT{zPARM.....
  168C: 49 42 49 41 70 00 47 45 53 46 70 00 50 41 52 4D  // IBIAp.GESFp.PARM

                        Return (SUCC)
                    }


  169C: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x0B))
                    {
                        And (ShiftRight (PARM, One), One, IF1E)

  16A1: A0 44 05 93 47 45 53 46 0A 0B 7B 7A 50 41 52 4D  // .D..GESF..{zPARM
  16B1: 01 00 01 49 46 31 45                             // ...IF1E

                        If (And (PARM, 0x0001E000))
                        {

  16B8: A0 1B 7B 50 41 52 4D 0C 00 E0 01 00 00           // ..{PARM......

                            And (ShiftRight (PARM, 0x0D), 0x0F, IDMS)
                        }

  16C5: 7B 7A 50 41 52 4D 0A 0D 00 0A 0F 49 44 4D 53     // {zPARM.....IDMS

                        Else
                        {

  16D4: A1 10                                            // ..

                            And (ShiftRight (PARM, 0x11), 0x0F, IDMS)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)

  16D6: 7B 7A 50 41 52 4D 0A 11 00 0A 0F 49 44 4D 53 70  // {zPARM.....IDMSp
  16E6: 00 47 45 53 46 70 00 50 41 52 4D                 // .GESFp.PARM

                        Return (SUCC)
                    }


  16F1: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x10))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)

  16F6: A0 19 93 47 45 53 46 0A 10 70 00 47 45 53 46 70  // ...GESF..p.GESFp
  1706: 00 50 41 52 4D                                   // .PARM

                        Return (SUCC)
                    }


  170B: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x11))
                    {
                        Store (ShiftLeft (LIDS, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Store (Zero, GESF)

  1710: A0 2C 93 47 45 53 46 0A 11 70 79 4C 49 44 53 0A  // .,.GESF..pyLIDS.
  1720: 08 00 50 41 52 4D 72 50 41 52 4D 0B 00 01 50 41  // ..PARMrPARM...PA
  1730: 52 4D 70 00 47 45 53 46                          // RMp.GESF

                        Return (SUCC)
                    }


  1738: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x12))
                    {

  173D: A0 49 04 93 47 45 53 46 0A 12                    // .I..GESF..

                        If (And (PARM, One))
                        {

  1747: A0 26 7B 50 41 52 4D 01 00                       // .&{PARM..

                            If (LEqual (ShiftRight (PARM, One), One))
                            {

  1750: A0 10 93 7A 50 41 52 4D 01 00 01                 // ...zPARM...

                                Store (One, ISSC)
                            }

  175B: 70 01 49 53 53 43                                // p.ISSC

                            Else
                            {
                                Store (Zero, GESF)

  1761: A1 0C 70 00 47 45 53 46                          // ..p.GESF

                                Return (CRIT)
                            }
                        }

  1769: A4 43 52 49 54                                   // .CRIT

                        Else
                        {

  176E: A1 07                                            // ..

                            Store (Zero, ISSC)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)

  1770: 70 00 49 53 53 43 70 00 47 45 53 46 70 00 50 41  // p.ISSCp.GESFp.PA
  1780: 52 4D                                            // RM

                        Return (SUCC)
                    }


  1782: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x13))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)

  1787: A0 19 93 47 45 53 46 0A 13 70 00 47 45 53 46 70  // ...GESF..p.GESFp
  1797: 00 50 41 52 4D                                   // .PARM

                        Return (SUCC)
                    }


  179C: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x14))
                    {
                        And (PARM, 0x0F, PAVP)
                        Store (Zero, GESF)
                        Store (Zero, PARM)

  17A1: A0 24 93 47 45 53 46 0A 14 7B 50 41 52 4D 0A 0F  // .$.GESF..{PARM..
  17B1: 50 41 56 50 70 00 47 45 53 46 70 00 50 41 52 4D  // PAVPp.GESFp.PARM

                        Return (SUCC)
                    }


  17C1: A4 53 55 43 43                                   // .SUCC

                    If (LEqual (GESF, 0x15))
                    {

  17C6: A0 49 0F 93 47 45 53 46 0A 15                    // .I..GESF..

                        If (LEqual (PARM, One))
                        {
                            Or (\_SB.PCI0.AUDE, 0x20, \_SB.PCI0.AUDE)
                            \_SB.PCI0.B0D3.ABWA (One)
                            \_SB.PCI0.B0D3.ARST ()
                            \_SB.PCI0.B0D3.ASTR ()
                            \_SB.PCI0.B0D3.AINI ()
                            \_SB.PCI0.B0D3.CXDC ()
                            \_SB.PCI0.B0D3.ABWA (Zero)

  17D0: A0 49 0A 93 50 41 52 4D 01 7D 5C 2F 03 5F 53 42  // .I..PARM.}\/._SB
  17E0: 5F 50 43 49 30 41 55 44 45 0A 20 5C 2F 03 5F 53  // _PCI0AUDE. \/._S
  17F0: 42 5F 50 43 49 30 41 55 44 45 5C 2F 04 5F 53 42  // B_PCI0AUDE\/._SB
  1800: 5F 50 43 49 30 42 30 44 33 41 42 57 41 01 5C 2F  // _PCI0B0D3ABWA.\/
  1810: 04 5F 53 42 5F 50 43 49 30 42 30 44 33 41 52 53  // ._SB_PCI0B0D3ARS
  1820: 54 5C 2F 04 5F 53 42 5F 50 43 49 30 42 30 44 33  // T\/._SB_PCI0B0D3
  1830: 41 53 54 52 5C 2F 04 5F 53 42 5F 50 43 49 30 42  // ASTR\/._SB_PCI0B
  1840: 30 44 33 41 49 4E 49 5C 2F 04 5F 53 42 5F 50 43  // 0D3AINI\/._SB_PC
  1850: 49 30 42 30 44 33 43 58 44 43 5C 2F 04 5F 53 42  // I0B0D3CXDC\/._SB
  1860: 5F 50 43 49 30 42 30 44 33 41 42 57 41 00        // _PCI0B0D3ABWA.

                            Notify (\_SB.PCI0, Zero)
                        }


  186E: 86 5C 2E 5F 53 42 5F 50 43 49 30 00              // .\._SB_PCI0.

                        If (LEqual (PARM, Zero))
                        {
                            And (\_SB.PCI0.AUDE, 0xDF, \_SB.PCI0.AUDE)

  187A: A0 34 93 50 41 52 4D 00 7B 5C 2F 03 5F 53 42 5F  // .4.PARM.{\/._SB_
  188A: 50 43 49 30 41 55 44 45 0A DF 5C 2F 03 5F 53 42  // PCI0AUDE..\/._SB
  189A: 5F 50 43 49 30 41 55 44 45                       // _PCI0AUDE

                            Notify (\_SB.PCI0, Zero)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)

  18A3: 86 5C 2E 5F 53 42 5F 50 43 49 30 00 70 00 47 45  // .\._SB_PCI0.p.GE
  18B3: 53 46 70 00 50 41 52 4D                          // SFp.PARM

                        Return (SUCC)
                    }

                    Store (Zero, GESF)

  18BB: A4 53 55 43 43 70 00 47 45 53 46                 // .SUCCp.GESF

                    Return (SUCC)
                }


  18C6: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GEFC, 0x04))
                {

  18CB: A0 11 93 47 45 46 43 0A 04                       // ...GEFC..

                    Store (GBDA (), GXFC)
                }


  18D4: 70 47 42 44 41 47 58 46 43                       // pGBDAGXFC

                If (LEqual (GEFC, 0x06))
                {

  18DD: A0 11 93 47 45 46 43 0A 06                       // ...GEFC..

                    Store (SBCB (), GXFC)
                }

                Store (Zero, GEFC)
                Store (One, SCIS)
                Store (Zero, GSSE)
                Store (Zero, SCIE)

  18E6: 70 53 42 43 42 47 58 46 43 70 00 47 45 46 43 70  // pSBCBGXFCp.GEFCp
  18F6: 01 53 43 49 53 70 00 47 53 53 45 70 00 53 43 49  // .SCISp.GSSEp.SCI
  1906: 45                                               // E

                Return (Zero)
            }


  1907: A4 00                                            // ..

            Method (PDRD, 0, NotSerialized)
            {

  1909: 14 0C 50 44 52 44 00                             // ..PDRD.

                Return (
  1910: A4                                               // .

LNot (DRDY))
            }


  1911: 92 44 52 44 59                                   // .DRDY

            Method (PSTS, 0, NotSerialized)
            {

  1916: 14 1D 50 53 54 53 00                             // ..PSTS.

                If (LGreater (CSTS, 0x02))
                {

  191D: A0 0E 94 43 53 54 53 0A 02                       // ...CSTS..

                    Sleep (ASLP)
                }


  1926: 5B 22 41 53 4C 50                                // ["ASLP

                Return (
  192C: A4                                               // .

LEqual (CSTS, 0x03))
            }


  192D: 93 43 53 54 53 0A 03                             // .CSTS..

            Method (GNOT, 2, NotSerialized)
            {

  1934: 14 4E 07 47 4E 4F 54 02                          // .N.GNOT.

                If (PDRD ())
                {

  193C: A0 07 50 44 52 44                                // ..PDRD

                    Return (One)
                }

                Store (Arg0, CEVT)
                Store (0x03, CSTS)

  1942: A4 01 70 68 43 45 56 54 70 0A 03 43 53 54 53     // ..phCEVTp..CSTS

                If (LAnd (LEqual (CHPD, Zero), 
  1951: A0 3D 90 93 43 48 50 44 00                       // .=..CHPD.

LEqual (Arg1, Zero)))
                {

  195A: 93 69 00                                         // .i.

                    If (LOr (LGreater (OSYS, 0x07D0), 
  195D: A0 1E 91 94 4F 53 59 53 0B D0 07                 // ....OSYS...

LLess (OSYS, 0x07D6)))
                    {

  1968: 95 4F 53 59 53 0B D6 07                          // .OSYS...

                        Notify (\_SB.PCI0, Arg1)
                    }

  1970: 86 5C 2E 5F 53 42 5F 50 43 49 30 69              // .\._SB_PCI0i

                    Else
                    {

  197C: A1 12                                            // ..

                        Notify (\_SB.PCI0.GFX0, Arg1)
                    }
                }


  197E: 86 5C 2F 03 5F 53 42 5F 50 43 49 30 47 46 58 30  // .\/._SB_PCI0GFX0
  198E: 69                                               // i

                If (CondRefOf (HNOT))
                {
                    HNOT (Arg0)
                }

  198F: A0 0D 5B 12 48 4E 4F 54 00 48 4E 4F 54 68        // ..[.HNOT.HNOTh

                Else
                {

  199D: A1 13                                            // ..

                    Notify (\_SB.PCI0.GFX0, 0x80)
                }


  199F: 86 5C 2F 03 5F 53 42 5F 50 43 49 30 47 46 58 30  // .\/._SB_PCI0GFX0
  19AF: 0A 80                                            // ..

                Return (Zero)
            }


  19B1: A4 00                                            // ..

            Method (GHDS, 1, NotSerialized)
            {
                Store (Arg0, TIDX)

  19B3: 14 13 47 48 44 53 01 70 68 54 49 44 58           // ..GHDS.phTIDX

                Return (GNOT (One, Zero))
            }


  19C0: A4 47 4E 4F 54 01 00                             // .GNOT..

            Method (GLID, 1, NotSerialized)
            {

  19C7: 14 35 47 4C 49 44 01                             // .5GLID.

                If (LEqual (Arg0, One))
                {

  19CE: A0 0B 93 68 01                                   // ...h.

                    Store (0x03, CLID)
                }

  19D3: 70 0A 03 43 4C 49 44                             // p..CLID

                Else
                {

  19DA: A1 07                                            // ..

                    Store (Arg0, CLID)
                }


  19DC: 70 68 43 4C 49 44                                // phCLID

                If (GNOT (0x02, Zero))
                {
                    Or (CLID, 0x80000000, CLID)

  19E2: A0 18 47 4E 4F 54 0A 02 00 7D 43 4C 49 44 0C 00  // ..GNOT...}CLID..
  19F2: 00 00 80 43 4C 49 44                             // ...CLID

                    Return (One)
                }


  19F9: A4 01                                            // ..

                Return (Zero)
            }


  19FB: A4 00                                            // ..

            Method (GDCK, 1, NotSerialized)
            {
                Store (Arg0, CDCK)

  19FD: 14 14 47 44 43 4B 01 70 68 43 44 43 4B           // ..GDCK.phCDCK

                Return (GNOT (0x04, Zero))
            }


  1A0A: A4 47 4E 4F 54 0A 04 00                          // .GNOT...

            Method (PARD, 0, NotSerialized)
            {

  1A12: 14 19 50 41 52 44 00                             // ..PARD.

                If (LNot (ARDY))
                {

  1A19: A0 0C 92 41 52 44 59                             // ...ARDY

                    Sleep (ASLP)
                }


  1A20: 5B 22 41 53 4C 50                                // ["ASLP

                Return (
  1A26: A4                                               // .

LNot (ARDY))
            }


  1A27: 92 41 52 44 59                                   // .ARDY

            Method (IUEH, 1, Serialized)
            {
                And (IUER, 0xC0, IUER)
                XOr (IUER, ShiftLeft (One, Arg0), IUER)

  1A2C: 14 36 49 55 45 48 09 7B 49 55 45 52 0A C0 49 55  // .6IUEH.{IUER..IU
  1A3C: 45 52 7F 49 55 45 52 79 01 68 00 49 55 45 52     // ER.IUERy.h.IUER

                If (
  1A4B: A0 0E 92                                         // ...

LLessEqual (Arg0, 0x04))
                {

  1A4E: 94 68 0A 04                                      // .h..

                    Return (AINT (0x05, Zero))
                }

  1A52: A4 41 49 4E 54 0A 05 00                          // .AINT...

                Else
                {

  1A5A: A1 08                                            // ..

                    Return (AINT (Arg0, Zero))
                }
            }


  1A5C: A4 41 49 4E 54 68 00                             // .AINTh.

            Method (AINT, 2, NotSerialized)
            {

  1A63: 14 4F 15 41 49 4E 54 02                          // .O.AINT.

                If (LNot (
  1A6B: A0 0E 92                                         // ...

And (TCHE, ShiftLeft (One, Arg0))))
                {

  1A6E: 7B 54 43 48 45 79 01 68 00 00                    // {TCHEy.h..

                    Return (One)
                }


  1A78: A4 01                                            // ..

                If (PARD ())
                {

  1A7A: A0 07 50 41 52 44                                // ..PARD

                    Return (One)
                }


  1A80: A4 01                                            // ..

                If (LAnd (
  1A82: A0 34 90 92                                      // .4..

LGreaterEqual (Arg0, 0x05), 
  1A86: 95 68 0A 05                                      // .h..


  1A8A: 92                                               // .

LLessEqual (Arg0, 0x07)))
                {
                    Store (ShiftLeft (One, Arg0), ASLC)
                    Store (One, ASLE)
                    Store (Zero, Local2)

  1A8B: 94 68 0A 07 70 79 01 68 00 41 53 4C 43 70 01 41  // .h..py.h.ASLCp.A
  1A9B: 53 4C 45 70 00 62                                // SLEp.b

                    While (LAnd (LLess (Local2, 0xFA), 
  1AA1: A2 13 90 95 62 0A FA                             // ....b..


  1AA8: 92                                               // .

LNotEqual (ASLC, Zero)))
                    {
                        Sleep (0x04)

  1AA9: 93 41 53 4C 43 00 5B 22 0A 04                    // .ASLC.["..

                        Increment (Local2)
                    }


  1AB3: 75 62                                            // ub

                    Return (Zero)
                }


  1AB5: A4 00                                            // ..

                If (LEqual (Arg0, 0x02))
                {

  1AB7: A0 40 0C 93 68 0A 02                             // .@..h..

                    If (CPFM)
                    {
                        And (CPFM, 0x0F, Local0)
                        And (EPFM, 0x0F, Local1)

  1ABE: A0 47 09 43 50 46 4D 7B 43 50 46 4D 0A 0F 60 7B  // .G.CPFM{CPFM..`{
  1ACE: 45 50 46 4D 0A 0F 61                             // EPFM..a

                        If (LEqual (Local0, One))
                        {

  1AD5: A0 2A 93 60 01                                   // .*.`.

                            If (And (Local1, 0x06))
                            {

  1ADA: A0 0D 7B 61 0A 06 00                             // ..{a...

                                Store (0x06, PFIT)
                            }

  1AE1: 70 0A 06 50 46 49 54                             // p..PFIT

                            ElseIf
  1AE8: A1 17                                            // ..

 (And (Local1, 0x08))
                            {

  1AEA: A0 0D 7B 61 0A 08 00                             // ..{a...

                                Store (0x08, PFIT)
                            }

  1AF1: 70 0A 08 50 46 49 54                             // p..PFIT

                            Else
                            {

  1AF8: A1 07                                            // ..

                                Store (One, PFIT)
                            }
                        }


  1AFA: 70 01 50 46 49 54                                // p.PFIT

                        If (LEqual (Local0, 0x06))
                        {

  1B00: A0 2A 93 60 0A 06                                // .*.`..

                            If (And (Local1, 0x08))
                            {

  1B06: A0 0D 7B 61 0A 08 00                             // ..{a...

                                Store (0x08, PFIT)
                            }

  1B0D: 70 0A 08 50 46 49 54                             // p..PFIT

                            ElseIf
  1B14: A1 16                                            // ..

 (And (Local1, One))
                            {

  1B16: A0 0B 7B 61 01 00                                // ..{a..

                                Store (One, PFIT)
                            }

  1B1C: 70 01 50 46 49 54                                // p.PFIT

                            Else
                            {

  1B22: A1 08                                            // ..

                                Store (0x06, PFIT)
                            }
                        }


  1B24: 70 0A 06 50 46 49 54                             // p..PFIT

                        If (LEqual (Local0, 0x08))
                        {

  1B2B: A0 2A 93 60 0A 08                                // .*.`..

                            If (And (Local1, One))
                            {

  1B31: A0 0B 7B 61 01 00                                // ..{a..

                                Store (One, PFIT)
                            }

  1B37: 70 01 50 46 49 54                                // p.PFIT

                            ElseIf
  1B3D: A1 18                                            // ..

 (And (Local1, 0x06))
                            {

  1B3F: A0 0D 7B 61 0A 06 00                             // ..{a...

                                Store (0x06, PFIT)
                            }

  1B46: 70 0A 06 50 46 49 54                             // p..PFIT

                            Else
                            {

  1B4D: A1 08                                            // ..

                                Store (0x08, PFIT)
                            }
                        }
                    }

  1B4F: 70 0A 08 50 46 49 54                             // p..PFIT

                    Else
                    {

  1B56: A1 0C                                            // ..

                        XOr (PFIT, 0x07, PFIT)
                    }

                    Or (PFIT, 0x80000000, PFIT)

  1B58: 7F 50 46 49 54 0A 07 50 46 49 54 7D 50 46 49 54  // .PFIT..PFIT}PFIT
  1B68: 0C 00 00 00 80 50 46 49 54                       // .....PFIT

                    Store (0x04, ASLC)
                }

  1B71: 70 0A 04 41 53 4C 43                             // p..ASLC

                ElseIf
  1B78: A1 42 04                                         // .B.

 (LEqual (Arg0, One))
                {
                    Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP)
                    Or (BCLP, 0x80000000, BCLP)

  1B7B: A0 28 93 68 01 70 78 77 69 0A FF 00 0A 64 00 00  // .(.h.pxwi....d..
  1B8B: 42 43 4C 50 7D 42 43 4C 50 0C 00 00 00 80 42 43  // BCLP}BCLP.....BC
  1B9B: 4C 50                                            // LP

                    Store (0x02, ASLC)
                }

  1B9D: 70 0A 02 41 53 4C 43                             // p..ASLC

                ElseIf
  1BA4: A1 16                                            // ..

 (LEqual (Arg0, Zero))
                {
                    Store (Arg1, ALSI)

  1BA6: A0 10 93 68 00 70 69 41 4C 53 49                 // ...h.piALSI

                    Store (One, ASLC)
                }

  1BB1: 70 01 41 53 4C 43                                // p.ASLC

                Else
                {

  1BB7: A1 03                                            // ..

                    Return (One)
                }

                Store (One, ASLE)

  1BB9: A4 01 70 01 41 53 4C 45                          // ..p.ASLE

                Return (Zero)
            }


  1BC1: A4 00                                            // ..

            Method (SCIP, 0, NotSerialized)
            {

  1BC3: 14 17 53 43 49 50 00                             // ..SCIP.

                If (
  1BCA: A0 0E 92                                         // ...

LNotEqual (OVER, Zero))
                {

  1BCD: 93 4F 56 45 52 00                                // .OVER.

                    Return (
  1BD3: A4                                               // .

LNot (GSMI))
                }


  1BD4: 92 47 53 4D 49                                   // .GSMI

                Return (Zero)
            }


  1BD9: A4 00                                            // ..

            Device (\_SB.MEM2)
            {

  1BDB: 5B 82 4A 06 5C 2E 5F 53 42 5F 4D 45 4D 32        // [.J.\._SB_MEM2

                Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID

  1BE9: 08 5F 48 49 44 0C 41 D0 0C 01                    // ._HID.A...

                Name (_UID, 0x02)  // _UID: Unique ID

  1BF3: 08 5F 55 49 44 0A 02                             // ._UID..

                Name (CRS2, 
  1BFA: 08 43 52 53 32                                   // .CRS2

ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x20000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x40004000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })

  1BFF: 11 1D 0A 1A 86 09 00 01 00 00 00 20 00 00 20 00  // ........... .. .
  1C0F: 86 09 00 01 00 40 00 40 00 10 00 00 79 00        // .....@.@....y.

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {

  1C1D: 14 1D 5F 53 54 41 00                             // .._STA.

                    If (IGDS)
                    {

  1C24: A0 14 49 47 44 53                                // ..IGDS

                        If (LEqual (PNHM, 0x000306C1))
                        {

  1C2A: A0 0E 93 50 4E 48 4D 0C C1 06 03 00              // ...PNHM.....

                            Return (0x0F)
                        }
                    }


  1C36: A4 0A 0F                                         // ...

                    Return (Zero)
                }


  1C39: A4 00                                            // ..

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {

  1C3B: 14 0B 5F 43 52 53 00                             // .._CRS.

                    Return (CRS2)
                }
            }
        }
    }
}



Table Header:
Table Body (Length 0x1C47)
