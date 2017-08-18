{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (***S, UnknownObj)    // Warning: Unknown object
    External (**ZS, UnknownObj)    // Warning: Unknown object
    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.CPU0._PPC, IntObj)
    External (_PR_.CPU0._PSS, PkgObj)
    External (_PR_.CPU0._PTC, UnknownObj)    // Warning: Unknown object
    External (_PR_.CPU0._TSS, IntObj)    // Warning: Unknown object
    External (_SB_.AC__.ACFG, IntObj)
    External (_SB_.AC__.ADJP, MethodObj)    // 1 Arguments
    External (_SB_.OSCO, IntObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.GFX0._DSM, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.GPUT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TMP_, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0, DeviceObj)
    External (_SB_.PCI0.PEG0.ATID, FieldUnitObj)
    External (_SB_.PCI0.PEG0.CMDR, FieldUnitObj)
    External (_SB_.PCI0.PEG0.D0ST, FieldUnitObj)
    External (_SB_.PCI0.PEG0.LNKD, FieldUnitObj)
    External (_SB_.PCI0.PEG0.NVID, FieldUnitObj)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP.GFBE, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGP.RPP0, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGOF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGON, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPE, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPI, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SPP0, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.VEID, FieldUnitObj)
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (DSEL, FieldUnitObj)
    External (EBAS, FieldUnitObj)
    External (ESEL, FieldUnitObj)
    External (GPSC, FieldUnitObj)
    External (HYSS, FieldUnitObj)
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (NVGA, FieldUnitObj)
    External (NVHA, FieldUnitObj)
    External (OEMF, FieldUnitObj)
    External (P80H, FieldUnitObj)
    External (P8XH, MethodObj)    // 2 Arguments
    External (PSEL, FieldUnitObj)

    Scope (\_SB.PCI0)
    {

  0024: 10 2E 5C 2E 5F 53 42 5F 50 43 49 30              // ..\._SB_PCI0

        Name (OTM, "OTMACPI 2010-Mar-09 12:08:26")
    }


  0030: 08 4F 54 4D 5F 0D 4F 54 4D 41 43 50 49 20 32 30  // .OTM_.OTMACPI 20
  0040: 31 30 2D 4D 61 72 2D 30 39 20 31 32 3A 30 38 3A  // 10-Mar-09 12:08:
  0050: 32 36 00                                         // 26.

    Scope (\_SB.PCI0.PEG0.PEGP)
    {

  0053: 10 4C 41 5C 2F 04 5F 53 42 5F 50 43 49 30 50 45  // .LA\/._SB_PCI0PE
  0063: 47 30 50 45 47 50                                // G0PEGP

        OperationRegion (PCI2, SystemMemory, EBAS, 0x0500)

  0069: 5B 80 50 43 49 32 00 45 42 41 53 0B 00 05        // [.PCI2.EBAS...

        Field (PCI2, DWordAcc, Lock, Preserve)
        {
            Offset (0x04), 
            CMDR,   32, 
            VGAR,   1984, 
            Offset (0x488), 
                ,   25, 
            NHDM,   1
        }


  0077: 5B 81 1E 50 43 49 32 13 00 20 43 4D 44 52 20 56  // [..PCI2.. CMDR V
  0087: 47 41 52 40 7C 00 80 C4 01 00 19 4E 48 44 4D 01  // GAR@|......NHDM.

        Name (VGAB, 
  0097: 08 56 47 41 42                                   // .VGAB

Buffer (0xF8)
        {
             0x00                                           
        })

  009C: 11 04 0A F8 00                                   // .....

        Name (GPRF, Zero)

  00A1: 08 47 50 52 46 00                                // .GPRF.

        OperationRegion (NVHM, SystemMemory, NVHA, 0x00020400)

  00A7: 5B 80 4E 56 48 4D 00 4E 56 48 41 0C 00 04 02 00  // [.NVHM.NVHA.....

        Field (NVHM, DWordAcc, NoLock, Preserve)
        {
            NVSG,   128, 
            NVSZ,   32, 
            NVVR,   32, 
            NVHO,   32, 
            RVBS,   32, 
            RBF1,   262144, 
            RBF2,   262144, 
            RBF3,   262144, 
            RBF4,   262144, 
            MXML,   32, 
            MXM3,   1600
        }


  00B7: 5B 81 48 04 4E 56 48 4D 03 4E 56 53 47 40 08 4E  // [.H.NVHM.NVSG@.N
  00C7: 56 53 5A 20 4E 56 56 52 20 4E 56 48 4F 20 52 56  // VSZ NVVR NVHO RV
  00D7: 42 53 20 52 42 46 31 80 00 40 52 42 46 32 80 00  // BS RBF1..@RBF2..
  00E7: 40 52 42 46 33 80 00 40 52 42 46 34 80 00 40 4D  // @RBF3..@RBF4..@M
  00F7: 58 4D 4C 20 4D 58 4D 33 40 64                    // XML MXM3@d

        Name (OPCE, 0x02)

  0101: 08 4F 50 43 45 0A 02                             // .OPCE..

        Name (OPTF, One)

  0108: 08 4F 50 54 46 01                                // .OPTF.

        Name (DGPS, Zero)

  010E: 08 44 47 50 53 00                                // .DGPS.

        Name (_PSC, Zero)  // _PSC: Power State Current

  0114: 08 5F 50 53 43 00                                // ._PSC.

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            Store (Zero, _PSC)

  011A: 14 1F 5F 50 53 30 00 70 00 5F 50 53 43           // .._PS0.p._PSC

            If (
  0127: A0 12 92                                         // ...

LNotEqual (DGPS, Zero))
            {
                _ON ()

  012A: 93 44 47 50 53 00 5F 4F 4E 5F                    // .DGPS._ON_

                Store (Zero, DGPS)
            }
        }


  0134: 70 00 44 47 50 53                                // p.DGPS

        Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
        {

  013A: 14 0C 5F 50 53 31 00                             // .._PS1.

            Store (One, _PSC)
        }


  0141: 70 01 5F 50 53 43                                // p._PSC

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {

  0147: 14 2F 5F 50 53 33 00                             // ./_PS3.

            If (LEqual (OPCE, 0x03))
            {

  014E: A0 21 93 4F 50 43 45 0A 03                       // .!.OPCE..

                If (LEqual (DGPS, Zero))
                {
                    _OFF ()

  0157: A0 11 93 44 47 50 53 00 5F 4F 46 46              // ...DGPS._OFF

                    Store (One, DGPS)
                }


  0163: 70 01 44 47 50 53                                // p.DGPS

                Store (0x02, OPCE)
            }


  0169: 70 0A 02 4F 50 43 45                             // p..OPCE

            Store (0x03, _PSC)
        }


  0170: 70 0A 03 5F 50 53 43                             // p.._PSC

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {

  0177: 14 09 5F 53 54 41 00                             // .._STA.

            Return (0x0F)
        }


  017E: A4 0A 0F                                         // ...

        Method (_IRC, 0, Serialized)  // _IRC: Inrush Current
        {

  0181: 14 08 5F 49 52 43 08                             // .._IRC.

            Return (Zero)
        }


  0188: A4 00                                            // ..

        Method (MXMX, 1, Serialized)
        {

  018A: 14 2E 4D 58 4D 58 09                             // ..MXMX.

            If (LEqual (Arg0, Zero))
            {
                SGPO (ESEL, One)

  0191: A0 0F 93 68 00 53 47 50 4F 45 53 45 4C 01        // ...h.SGPOESEL.

                Return (One)
            }


  019F: A4 01                                            // ..

            If (LEqual (Arg0, One))
            {

  01A1: A0 06 93 68 01                                   // ...h.

                Return (One)
            }


  01A6: A4 01                                            // ..

            If (LEqual (Arg0, 0x02))
            {

  01A8: A0 0E 93 68 0A 02                                // ...h..

                Return (SGPI (ESEL))
            }


  01AE: A4 53 47 50 49 45 53 45 4C                       // .SGPIESEL

            Return (Zero)
        }


  01B7: A4 00                                            // ..

        Method (MXDS, 1, Serialized)
        {

  01B9: 14 2A 4D 58 44 53 09                             // .*MXDS.

            If (LEqual (Arg0, Zero))
            {

  01C0: A0 0D 93 68 00                                   // ...h.

                Return (SGPI (DSEL))
            }

  01C5: A4 53 47 50 49 44 53 45 4C                       // .SGPIDSEL

            Else
            {
                SGPO (DSEL, One)
                SGPO (PSEL, One)
            }


  01CE: A1 13 53 47 50 4F 44 53 45 4C 01 53 47 50 4F 50  // ..SGPODSEL.SGPOP
  01DE: 53 45 4C 01                                      // SEL.

            Return (Zero)
        }


  01E2: A4 00                                            // ..

        Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
        {
            Store (Arg0, Local0)
            Store (Arg1, Local1)

  01E4: 14 42 0C 5F 52 4F 4D 02 70 68 60 70 69 61        // .B._ROM.ph`pia

            If (LGreater (Local1, 0x1000))
            {

  01F2: A0 0B 94 61 0B 00 10                             // ...a...

                Store (0x1000, Local1)
            }


  01F9: 70 0B 00 10 61                                   // p...a

            If (LGreater (Local0, 0x00020000))
            {

  01FE: A0 0D 94 60 0C 00 00 02 00                       // ...`.....

                Return (
  0207: A4                                               // .

Buffer (Local1)
                {
                     0x00                                           
                })
            }

            Multiply (Local1, 0x08, Local3)

  0208: 11 03 61 00 77 61 0A 08 63                       // ..a.wa..c

            Name (ROM1, 
  0211: 08 52 4F 4D 31                                   // .ROM1

Buffer (0x8000)
            {
                 0x00                                           
            })

  0216: 11 05 0B 00 80 00                                // ......

            Name (ROM2, 
  021C: 08 52 4F 4D 32                                   // .ROM2

Buffer (Local1)
            {
                 0x00                                           
            })

  0221: 11 03 61 00                                      // ..a.

            If (LLess (Local0, 0x8000))
            {

  0225: A0 0F 95 60 0B 00 80                             // ...`...

                Store (RBF1, ROM1)
            }

  022C: 70 52 42 46 31 52 4F 4D 31                       // pRBF1ROM1

            ElseIf
  0235: A1 42 05                                         // .B.

 (LLess (Local0, 0x00010000))
            {
                Subtract (Local0, 0x8000, Local0)

  0238: A0 17 95 60 0C 00 00 01 00 74 60 0B 00 80 60     // ...`.....t`...`

                Store (RBF2, ROM1)
            }

  0247: 70 52 42 46 32 52 4F 4D 31                       // pRBF2ROM1

            ElseIf
  0250: A1 37                                            // .7

 (LLess (Local0, 0x00018000))
            {
                Subtract (Local0, 0x00010000, Local0)

  0252: A0 19 95 60 0C 00 80 01 00 74 60 0C 00 00 01 00  // ...`.....t`.....
  0262: 60                                               // `

                Store (RBF3, ROM1)
            }

  0263: 70 52 42 46 33 52 4F 4D 31                       // pRBF3ROM1

            ElseIf
  026C: A1 1B                                            // ..

 (LLess (Local0, 0x00020000))
            {
                Subtract (Local0, 0x00018000, Local0)

  026E: A0 19 95 60 0C 00 00 02 00 74 60 0C 00 80 01 00  // ...`.....t`.....
  027E: 60                                               // `

                Store (RBF4, ROM1)
            }

            Multiply (Local0, 0x08, Local2)

  027F: 70 52 42 46 34 52 4F 4D 31 77 60 0A 08 62        // pRBF4ROM1w`..b

            CreateField (ROM1, Local2, Local3, TMPB)
            Store (TMPB, ROM2)

  028D: 5B 13 52 4F 4D 31 62 63 54 4D 50 42 70 54 4D 50  // [.ROM1bcTMPBpTMP
  029D: 42 52 4F 4D 32                                   // BROM2

            Return (ROM2)
        }


  02A2: A4 52 4F 4D 32                                   // .ROM2

        Method (GMXM, 3, NotSerialized)
        {
            Store (0xC8, Local0)

  02A7: 14 4F 09 47 4D 58 4D 03 70 0A C8 60              // .O.GMXM.p..`

            Name (BUMA, 
  02B3: 08 42 55 4D 41                                   // .BUMA

Buffer (Local0) {})

  02B8: 11 02 60                                         // ..`

            If (CondRefOf (MXM3, Local6))
            {

  02BB: A0 11 5B 12 4D 58 4D 33 66                       // ..[.MXM3f

                Store (MXM3, BUMA)
            }

            Store (Zero, Local1)
            Store (Zero, Local5)

  02C4: 70 4D 58 4D 33 42 55 4D 41 70 00 61 70 00 65     // pMXM3BUMAp.ap.e

            While (One)
            {
                Add (Local1, 0x06, Local2)
                Store (DerefOf (
  02D3: A2 4D 06 01 72 61 0A 06 62 70 83                 // .M..ra..bp.

Index (BUMA, Local2)), Local3)

  02DE: 88 42 55 4D 41 62 00 63                          // .BUMAb.c

                If (Local3)
                {

  02E6: A0 07 63                                         // ..c

                    Add (Local3, 0x08, Local3)
                }

  02E9: 72 63 0A 08 63                                   // rc..c

                Else
                {

  02EE: A1 02                                            // ..

                    Break
                }

                Store (Local1, Local4)
                Add (Local4, 0x04, Local4)

  02F0: A5 70 61 64 72 64 0A 04 64                       // .padrd..d

                If (LEqual (DerefOf (
  02F9: A0 3D 93 83                                      // .=..

Index (BUMA, Local4)), Arg0))
                {
                    Increment (Local4)

  02FD: 88 42 55 4D 41 64 00 68 75 64                    // .BUMAd.hud

                    If (LEqual (DerefOf (
  0307: A0 2F 93 83                                      // ./..

Index (BUMA, Local4)), Arg1))
                    {

  030B: 88 42 55 4D 41 64 00 69                          // .BUMAd.i

                        If (LEqual (Local5, Arg2))
                        {
                            Multiply (Local1, 0x08, Local1)
                            Multiply (Local3, 0x08, Local3)

  0313: A0 1F 93 65 6A 77 61 0A 08 61 77 63 0A 08 63     // ...ejwa..awc..c

                            CreateField (BUMA, Local1, Local3, TMPB)

  0322: 5B 13 42 55 4D 41 61 63 54 4D 50 42              // [.BUMAacTMPB

                            Return (TMPB)
                        }

  032E: A4 54 4D 50 42                                   // .TMPB

                        Else
                        {

  0333: A1 03                                            // ..

                            Increment (Local5)
                        }
                    }
                }

                Add (Local1, Local3, Local1)

  0335: 75 65 72 61 63 61                                // ueraca

                If (LGreater (Local1, Local0))
                {

  033B: A0 05 94 61 60                                   // ...a`

                    Break
                }
            }


  0340: A5                                               // .

            Return (
  0341: A4                                               // .

Buffer (0x08)
            {
                 0x00                                           
            })
        }


  0342: 11 04 0A 08 00                                   // .....

        Method (HDSM, 4, Serialized)
        {

  0347: 14 4B 09 48 44 53 4D 0C                          // .K.HDSM.

            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler

  034F: 08 5F 54 5F 30 00                                // ._T_0.

            If (LEqual (Arg0, 
  0355: A0 47 08 93 68                                   // .G..h

ToUUID ("4004a400-917d-4cf2-b89c-79b62fd55665")))
            {

  035A: 11 13 0A 10 00 A4 04 40 7D 91 F2 4C B8 9C 79 B6  // .......@}..L..y.
  036A: 2F D5 56 65                                      // /.Ve

                While (One)
                {
                    Store (ToInteger (Arg2), _T_0)

  036E: A2 48 06 01 70 99 6A 00 5F 54 5F 30              // .H..p.j._T_0

                    If (LEqual (_T_0, Zero))
                    {

  037A: A0 10 93 5F 54 5F 30 00                          // ..._T_0.

                        Return (
  0382: A4                                               // .

Buffer (0x04)
                        {
                             0x01, 0x00, 0x01, 0x01                         
                        })
                    }

  0383: 11 07 0A 04 01 00 01 01                          // ........

                    ElseIf
  038B: A1 4A 04                                         // .J.

 (LEqual (_T_0, 0x18))
                    {

  038E: A0 11 93 5F 54 5F 30 0A 18                       // ..._T_0..

                        Return (
  0397: A4                                               // .

Buffer (0x04)
                        {
                             0x30, 0x00, 0x00, 0x00                         
                        })
                    }

  0398: 11 07 0A 04 30 00 00 00                          // ....0...

                    ElseIf
  03A0: A1 35                                            // .5

 (LEqual (_T_0, 0x10))
                    {

  03A2: A0 33 93 5F 54 5F 30 0A 10                       // .3._T_0..

                        Name (MXM3, 
  03AB: 08 4D 58 4D 33                                   // .MXM3

Buffer (0x1D)
                        {
                            /* 0000 */  0x4D, 0x58, 0x4D, 0x5F, 0x03, 0x00, 0x15, 0x00,
                            /* 0008 */  0x00, 0xFF, 0x09, 0xF0, 0xF9, 0x3E, 0x00, 0x00,
                            /* 0010 */  0x01, 0x1A, 0x04, 0x00, 0x03, 0x03, 0xF4, 0x01,
                            /* 0018 */  0x13, 0x02, 0xE8, 0x03, 0x4E                   
                        })

  03B0: 11 20 0A 1D 4D 58 4D 5F 03 00 15 00 00 FF 09 F0  // . ..MXM_........
  03C0: F9 3E 00 00 01 1A 04 00 03 03 F4 01 13 02 E8 03  // .>..............
  03D0: 4E                                               // N

                        Return (MXM3)
                    }


  03D1: A4 4D 58 4D 33                                   // .MXM3

                    Break
                }


  03D6: A5                                               // .

                Return (0x80000002)
            }


  03D7: A4 0C 02 00 00 80                                // ......

            Return (0x80000001)
        }


  03DD: A4 0C 01 00 00 80                                // ......

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {

  03E3: 14 26 5F 44 53 4D 0C                             // .&_DSM.

            CreateByteField (Arg0, 0x03, GUID)

  03EA: 8C 68 0A 03 47 55 49 44                          // .h..GUID

            Return (\_SB.PCI0.GFX0.HDSM (Arg0, Arg1, Arg2, Arg3))
        }


  03F2: A4 5C 2F 04 5F 53 42 5F 50 43 49 30 47 46 58 30  // .\/._SB_PCI0GFX0
  0402: 48 44 53 4D 68 69 6A 6B                          // HDSMhijk

        Name (CTXT, Zero)

  040A: 08 43 54 58 54 00                                // .CTXT.

        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            P8XH (Zero, 0x78)
            SGON ()
            Store (Zero, CMDR)
            Store (VGAB, VGAR)
            Store (0x00100006, CMDR)

  0410: 14 36 5F 4F 4E 5F 08 50 38 58 48 00 0A 78 53 47  // .6_ON_.P8XH..xSG
  0420: 4F 4E 70 00 43 4D 44 52 70 56 47 41 42 56 47 41  // ONp.CMDRpVGABVGA
  0430: 52 70 0C 06 00 10 00 43 4D 44 52                 // Rp.....CMDR

            If (OPTF)
            {

  043B: A0 0B 4F 50 54 46                                // ..OPTF

                Store (Zero, NHDM)
            }
        }


  0441: 70 00 4E 48 44 4D                                // p.NHDM

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            P8XH (Zero, 0x76)

  0447: 14 28 5F 4F 46 46 08 50 38 58 48 00 0A 76        // .(_OFF.P8XH..v

            If (LEqual (CTXT, Zero))
            {
                Store (VGAR, VGAB)

  0455: A0 16 93 43 54 58 54 00 70 56 47 41 52 56 47 41  // ...CTXT.pVGARVGA
  0465: 42                                               // B

                Store (One, CTXT)
            }

            SGOF ()
        }
    }


  0466: 70 01 43 54 58 54 53 47 4F 46                    // p.CTXTSGOF

    Scope (\_SB.PCI0.GFX0)
    {

  0470: 10 43 6B 5C 2F 03 5F 53 42 5F 50 43 49 30 47 46  // .Ck\/._SB_PCI0GF
  0480: 58 30                                            // X0

        OperationRegion (NVIG, SystemMemory, NVGA, 0x0400)

  0482: 5B 80 4E 56 49 47 00 4E 56 47 41 0B 00 04        // [.NVIG.NVGA...

        Field (NVIG, DWordAcc, NoLock, Preserve)
        {
            NISG,   128, 
            NISZ,   32, 
            NIVR,   32, 
            GPSS,   32, 
            GACD,   16, 
            GATD,   16, 
            LDES,   8, 
            DKST,   8, 
            DACE,   8, 
            DHPE,   8, 
            DHPS,   8, 
            SGNC,   8, 
            GPPO,   8, 
            USPM,   8, 
            GPSP,   8, 
            TLSN,   8, 
            DOSF,   8, 
            ELCL,   16
        }


  0490: 5B 81 42 06 4E 56 49 47 03 4E 49 53 47 40 08 4E  // [.B.NVIG.NISG@.N
  04A0: 49 53 5A 20 4E 49 56 52 20 47 50 53 53 20 47 41  // ISZ NIVR GPSS GA
  04B0: 43 44 10 47 41 54 44 10 4C 44 45 53 08 44 4B 53  // CD.GATD.LDES.DKS
  04C0: 54 08 44 41 43 45 08 44 48 50 45 08 44 48 50 53  // T.DACE.DHPE.DHPS
  04D0: 08 53 47 4E 43 08 47 50 50 4F 08 55 53 50 4D 08  // .SGNC.GPPO.USPM.
  04E0: 47 50 53 50 08 54 4C 53 4E 08 44 4F 53 46 08 45  // GPSP.TLSN.DOSF.E
  04F0: 4C 43 4C 10                                      // LCL.

        Method (HDSM, 4, Serialized)
        {

  04F4: 14 4F 62 48 44 53 4D 0C                          // .ObHDSM.

            If (LEqual (Arg0, 
  04FC: A0 33 93 68                                      // .3.h

ToUUID ("a3132d01-8cda-49ba-a52e-bc9d46df6b81")))
            {

  0500: 11 13 0A 10 01 2D 13 A3 DA 8C BA 49 A5 2E BC 9D  // .....-.....I....
  0510: 46 DF 6B 81                                      // F.k.

                Return (\_SB.PCI0.PEG0.PEGP.GPS (Arg0, Arg1, Arg2, Arg3))
            }


  0514: A4 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47 30  // .\/._SB_PCI0PEG0
  0524: 50 45 47 50 47 50 53 5F 68 69 6A 6B              // PEGPGPS_hijk

            If (LEqual (Arg0, 
  0530: A0 33 93 68                                      // .3.h

ToUUID ("cbeca351-067b-4924-9cbd-b46b00b86f34")))
            {

  0534: 11 13 0A 10 51 A3 EC CB 7B 06 24 49 9C BD B4 6B  // ....Q...{.$I...k
  0544: 00 B8 6F 34                                      // ..o4

                Return (\_SB.PCI0.PEG0.PEGP.NGC6 (Arg0, Arg1, Arg2, Arg3))
            }


  0548: A4 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47 30  // .\/._SB_PCI0PEG0
  0558: 50 45 47 50 4E 47 43 36 68 69 6A 6B              // PEGPNGC6hijk

            Name (SGCI, Zero)

  0564: 08 53 47 43 49 00                                // .SGCI.

            Name (NBCI, Zero)

  056A: 08 4E 42 43 49 00                                // .NBCI.

            Name (OPCI, Zero)

  0570: 08 4F 50 43 49 00                                // .OPCI.

            Name (BUFF, Zero)

  0576: 08 42 55 46 46 00                                // .BUFF.

            If (LEqual (Arg0, 
  057C: A0 1D 93 68                                      // ...h

ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
            {

  0580: 11 13 0A 10 F8 D8 86 A4 DA 0B 1B 47 A7 2B 60 42  // ...........G.+`B
  0590: A6 B5 BE E0                                      // ....

                Store (One, OPCI)
            }


  0594: 70 01 4F 50 43 49                                // p.OPCI

            If (LOr (OPCI, 
  059A: A0 4D 56 91 4F 50 43 49                          // .MV.OPCI

LOr (SGCI, NBCI)))
            {

  05A2: 91 53 47 43 49 4E 42 43 49                       // .SGCINBCI

                If (OPCI)
                {

  05AB: A0 13 4F 50 43 49                                // ..OPCI

                    If (
  05B1: A0 0D 92                                         // ...

LNotEqual (Arg1, 0x0100))
                    {

  05B4: 93 69 0B 00 01                                   // .i...

                        Return (0x80000002)
                    }
                }

  05B9: A4 0C 02 00 00 80                                // ......

                ElseIf
  05BF: A1 0F                                            // ..

 (
  05C1: A0 0D 92                                         // ...

LNotEqual (Arg1, 0x0102))
                {

  05C4: 93 69 0B 02 01                                   // .i...

                    Return (0x80000002)
                }


  05C9: A4 0C 02 00 00 80                                // ......

                If (LEqual (Arg2, Zero))
                {

  05CF: A0 35 93 6A 00                                   // .5.j.

                    If (SGCI)
                    {

  05D4: A0 0E 53 47 43 49                                // ..SGCI

                        Return (
  05DA: A4                                               // .

Buffer (0x04)
                        {
                             0x7F, 0x00, 0x04, 0x00                         
                        })
                    }

  05DB: 11 07 0A 04 7F 00 04 00                          // ........

                    ElseIf
  05E3: A1 21                                            // .!

 (NBCI)
                    {

  05E5: A0 0E 4E 42 43 49                                // ..NBCI

                        Return (
  05EB: A4                                               // .

Buffer (0x04)
                        {
                             0x73, 0x00, 0x04, 0x00                         
                        })
                    }

  05EC: 11 07 0A 04 73 00 04 00                          // ....s...

                    ElseIf
  05F4: A1 10                                            // ..

 (OPCI)
                    {

  05F6: A0 0E 4F 50 43 49                                // ..OPCI

                        Return (
  05FC: A4                                               // .

Buffer (0x04)
                        {
                             0x01, 0x18, 0x03, 0x0C                         
                        })
                    }
                }


  05FD: 11 07 0A 04 01 18 03 0C                          // ........

                If (LEqual (Arg2, One))
                {

  0605: A0 45 05 93 6A 01                                // .E..j.

                    Name (TEMP, 
  060B: 08 54 45 4D 50                                   // .TEMP

Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })

  0610: 11 07 0A 04 00 00 00 00                          // ........

                    CreateDWordField (TEMP, Zero, STS0)

  0618: 8A 54 45 4D 50 00 53 54 53 30                    // .TEMP.STS0

                    If (SGCI)
                    {
                        Or (STS0, 0x0B0000BF, STS0)

  0622: A0 27 53 47 43 49 7D 53 54 53 30 0C BF 00 00 0B  // .'SGCI}STS0.....
  0632: 53 54 53 30                                      // STS0

                        Or (STS0, ShiftLeft (SGNC, 0x08, SGNC), STS0)
                    }

  0636: 7D 53 54 53 30 79 53 47 4E 43 0A 08 53 47 4E 43  // }STS0ySGNC..SGNC
  0646: 53 54 53 30                                      // STS0

                    Else
                    {

  064A: A1 0B                                            // ..

                        Or (STS0, Zero, STS0)
                    }


  064C: 7D 53 54 53 30 00 53 54 53 30                    // }STS0.STS0

                    Return (TEMP)
                }


  0656: A4 54 45 4D 50                                   // .TEMP

                If (LEqual (Arg2, 0x02))
                {

  065B: A0 4A 08 93 6A 0A 02                             // .J..j..

                    Name (TMP1, 
  0662: 08 54 4D 50 31                                   // .TMP1

Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })

  0667: 11 07 0A 04 00 00 00 00                          // ........

                    CreateDWordField (TMP1, Zero, STS1)
                    ToInteger (Arg3, Local0)
                    And (Local0, 0x1F, Local0)

  066F: 8A 54 4D 50 31 00 53 54 53 31 99 6B 60 7B 60 0A  // .TMP1.STS1.k`{`.
  067F: 1F 60                                            // .`

                    If (And (Local0, 0x10))
                    {
                        And (Local0, 0x0F, Local0)
                        Store (Local0, GPSS)
                        Notify (\_SB.PCI0.GFX0, 0xD9)

  0681: A0 35 7B 60 0A 10 00 7B 60 0A 0F 60 70 60 47 50  // .5{`...{`..`p`GP
  0691: 53 53 86 5C 2F 03 5F 53 42 5F 50 43 49 30 47 46  // SS.\/._SB_PCI0GF
  06A1: 58 30 0A D9                                      // X0..

                        Notify (\_SB.PCI0.WMI1, 0xD9)
                    }

  06A5: 86 5C 2F 03 5F 53 42 5F 50 43 49 30 57 4D 49 31  // .\/._SB_PCI0WMI1
  06B5: 0A D9                                            // ..

                    Else
                    {
                        And (Local0, 0x0F, Local0)

  06B7: A1 1F 7B 60 0A 0F 60                             // ..{`..`

                        If (LEqual (GPPO, One))
                        {
                            Store (GPSS, Local0)
                            Or (Local0, 0x10, Local0)

  06BE: A0 18 93 47 50 50 4F 01 70 47 50 53 53 60 7D 60  // ...GPPO.pGPSS`}`
  06CE: 0A 10 60                                         // ..`

                            Store (Zero, GPPO)
                        }
                    }

                    Or (STS1, Local0, STS1)

  06D1: 70 00 47 50 50 4F 7D 53 54 53 31 60 53 54 53 31  // p.GPPO}STS1`STS1

                    Return (TMP1)
                }


  06E1: A4 54 4D 50 31                                   // .TMP1

                If (LEqual (Arg2, 0x03))
                {

  06E6: A0 45 0A 93 6A 0A 03                             // .E..j..

                    Name (TMP2, 
  06ED: 08 54 4D 50 32                                   // .TMP2

Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })

  06F2: 11 07 0A 04 00 00 00 00                          // ........

                    CreateDWordField (TMP2, Zero, STS2)
                    ToInteger (Arg3, Local0)
                    And (Local0, 0x03, Local0)

  06FA: 8A 54 4D 50 32 00 53 54 53 32 99 6B 60 7B 60 0A  // .TMP2.STS2.k`{`.
  070A: 03 60                                            // .`

                    If (LEqual (Local0, Zero))
                    {
                        \_SB.PCI0.PEG0.PEGP.SGST ()
                    }


  070C: A0 1B 93 60 00 5C 2F 05 5F 53 42 5F 50 43 49 30  // ...`.\/._SB_PCI0
  071C: 50 45 47 30 50 45 47 50 53 47 53 54              // PEG0PEGPSGST

                    If (LEqual (Local0, One))
                    {
                        \_SB.PCI0.PEG0.PEGP.SGON ()
                    }


  0728: A0 1B 93 60 01 5C 2F 05 5F 53 42 5F 50 43 49 30  // ...`.\/._SB_PCI0
  0738: 50 45 47 30 50 45 47 50 53 47 4F 4E              // PEG0PEGPSGON

                    If (LEqual (Local0, 0x02))
                    {
                        \_SB.PCI0.PEG0.PEGP.SGOF ()
                    }


  0744: A0 1C 93 60 0A 02 5C 2F 05 5F 53 42 5F 50 43 49  // ...`..\/._SB_PCI
  0754: 30 50 45 47 30 50 45 47 50 53 47 4F 46           // 0PEG0PEGPSGOF

                    If (LEqual (\_SB.PCI0.PEG0.PEGP.SGST (), 0x0F))
                    {

  0761: A0 25 93 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45  // .%.\/._SB_PCI0PE
  0771: 47 30 50 45 47 50 53 47 53 54 0A 0F              // G0PEGPSGST..

                        Or (STS2, One, STS2)
                    }


  077D: 7D 53 54 53 32 01 53 54 53 32                    // }STS2.STS2

                    Return (TMP2)
                }


  0787: A4 54 4D 50 32                                   // .TMP2

                If (LEqual (Arg2, 0x04))
                {

  078C: A0 47 07 93 6A 0A 04                             // .G..j..

                    Name (TMP3, 
  0793: 08 54 4D 50 33                                   // .TMP3

Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })

  0798: 11 07 0A 04 00 00 00 00                          // ........

                    CreateDWordField (TMP3, Zero, STS3)
                    ToInteger (Arg3, Local0)
                    Store (Local0, Local1)
                    ShiftRight (Local0, 0x10, Local0)
                    And (Local0, One, USPM)
                    ShiftRight (Local1, 0x0D, Local1)
                    And (Local1, 0x03, Local1)

  07A0: 8A 54 4D 50 33 00 53 54 53 33 99 6B 60 70 60 61  // .TMP3.STS3.k`p`a
  07B0: 7A 60 0A 10 60 7B 60 01 55 53 50 4D 7A 61 0A 0D  // z`..`{`.USPMza..
  07C0: 61 7B 61 0A 03 61                                // a{a..a

                    If (
  07C6: A0 2A 92                                         // .*.

LNotEqual (Local1, GPSP))
                    {

  07C9: 93 61 47 50 53 50                                // .aGPSP

                        If (LEqual (USPM, One))
                        {

  07CF: A0 0D 93 55 53 50 4D 01                          // ...USPM.

                            Store (Local1, GPSP)
                        }

  07D7: 70 61 47 50 53 50                                // paGPSP

                        Else
                        {
                            Store (GPSP, Local1)

  07DD: A1 13 70 47 50 53 50 61                          // ..pGPSPa

                            Or (STS3, 0x8000, STS3)
                        }
                    }

                    Or (STS3, ShiftLeft (Local1, 0x0D), STS3)

  07E5: 7D 53 54 53 33 0B 00 80 53 54 53 33 7D 53 54 53  // }STS3...STS3}STS
  07F5: 33 79 61 0A 0D 00 53 54 53 33                    // 3ya...STS3

                    Return (TMP3)
                }


  07FF: A4 54 4D 50 33                                   // .TMP3

                If (LEqual (Arg2, 0x10))
                {

  0804: A0 4F 10 93 6A 0A 10                             // .O..j..

                    CreateWordField (Arg3, 0x02, USRG)

  080B: 8B 6B 0A 02 55 53 52 47                          // .k..USRG

                    Name (OPVK, 
  0813: 08 4F 50 56 4B                                   // .OPVK

Buffer (0xE6)
                    {
                        /* 0000 */  0xE4, 0x42, 0x5F, 0x14, 0x36, 0x26, 0x16, 0x37,
                        /* 0008 */  0x4B, 0x56, 0xE6, 0x00, 0x00, 0x00, 0x01, 0x00,
                        /* 0010 */  0x31, 0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35,
                        /* 0018 */  0x36, 0x39, 0x38, 0x35, 0x47, 0x65, 0x6E, 0x75,
                        /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,
                        /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,
                        /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,
                        /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,
                        /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,
                        /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,
                        /* 0050 */  0x6F, 0x72, 0x20, 0x37, 0x33, 0x36, 0x30, 0x31,
                        /* 0058 */  0x39, 0x5F, 0x4D, 0x49, 0x52, 0x63, 0x20, 0x20,
                        /* 0060 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
                        /* 0068 */  0x2D, 0x20, 0x3C, 0x34, 0x27, 0x21, 0x58, 0x29,
                        /* 0070 */  0x57, 0x27, 0x58, 0x20, 0x27, 0x25, 0x59, 0x5D,
                        /* 0078 */  0x31, 0x29, 0x3A, 0x2A, 0x26, 0x39, 0x59, 0x43,
                        /* 0080 */  0x56, 0x3B, 0x58, 0x56, 0x58, 0x3D, 0x59, 0x4E,
                        /* 0088 */  0x3B, 0x3A, 0x35, 0x44, 0x25, 0x42, 0x5A, 0x48,
                        /* 0090 */  0x55, 0x3A, 0x58, 0x4C, 0x25, 0x48, 0x54, 0x21,
                        /* 0098 */  0x35, 0x4B, 0x4D, 0x37, 0x2C, 0x3C, 0x20, 0x2D,
                        /* 00A0 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,
                        /* 00A8 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x30, 0x20,
                        /* 00B0 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,
                        /* 00B8 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,
                        /* 00C0 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,
                        /* 00C8 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,
                        /* 00D0 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,
                        /* 00D8 */  0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 0x36,
                        /* 00E0 */  0x39, 0x38, 0x35, 0x28, 0x52, 0x29             
                    })

  0818: 11 4A 0E 0A E6 E4 42 5F 14 36 26 16 37 4B 56 E6  // .J....B_.6&.7KV.
  0828: 00 00 00 01 00 31 34 38 35 39 37 34 35 36 39 38  // .....14859745698
  0838: 35 47 65 6E 75 69 6E 65 20 4E 56 49 44 49 41 20  // 5Genuine NVIDIA 
  0848: 43 65 72 74 69 66 69 65 64 20 4F 70 74 69 6D 75  // Certified Optimu
  0858: 73 20 52 65 61 64 79 20 4D 6F 74 68 65 72 62 6F  // s Ready Motherbo
  0868: 61 72 64 20 66 6F 72 20 37 33 36 30 31 39 5F 4D  // ard for 736019_M
  0878: 49 52 63 20 20 20 20 20 20 20 20 20 20 2D 20 3C  // IRc          - <
  0888: 34 27 21 58 29 57 27 58 20 27 25 59 5D 31 29 3A  // 4'!X)W'X '%Y]1):
  0898: 2A 26 39 59 43 56 3B 58 56 58 3D 59 4E 3B 3A 35  // *&9YCV;XVX=YN;:5
  08A8: 44 25 42 5A 48 55 3A 58 4C 25 48 54 21 35 4B 4D  // D%BZHU:XL%HT!5KM
  08B8: 37 2C 3C 20 2D 20 43 6F 70 79 72 69 67 68 74 20  // 7,< - Copyright 
  08C8: 32 30 31 30 20 4E 56 49 44 49 41 20 43 6F 72 70  // 2010 NVIDIA Corp
  08D8: 6F 72 61 74 69 6F 6E 20 41 6C 6C 20 52 69 67 68  // oration All Righ
  08E8: 74 73 20 52 65 73 65 72 76 65 64 2D 31 34 38 35  // ts Reserved-1485
  08F8: 39 37 34 35 36 39 38 35 28 52 29                 // 97456985(R)

                    If (LEqual (USRG, 0x564B))
                    {

  0903: A0 0E 93 55 53 52 47 0B 4B 56                    // ...USRG.KV

                        Return (OPVK)
                    }


  090D: A4 4F 50 56 4B                                   // .OPVK

                    Return (Zero)
                }


  0912: A4 00                                            // ..

                If (LEqual (Arg2, 0x11))
                {

  0914: A0 07 93 6A 0A 11                                // ...j..

                    Return (Zero)
                }


  091A: A4 00                                            // ..

                If (LEqual (Arg2, 0x12))
                {

  091C: A0 49 07 93 6A 0A 12                             // .I..j..

                    Return (
  0923: A4                                               // .

Package (0x0A)
                    {
                        0xD0, 

  0924: 12 41 07 0A 0A D0                                // .A....

                        ToUUID ("921a2f40-0dc4-402d-ac18-b48444ef9ed2"), 
                        0xD9, 

  092A: 11 13 0A 10 40 2F 1A 92 C4 0D 2D 40 AC 18 B4 84  // ....@/....-@....
  093A: 44 EF 9E D2 0A D9                                // D.....

                        ToUUID ("c12ad361-9fa9-4c74-901f-95cb0945cf3e"), 
                        0xDB, 

  0940: 11 13 0A 10 61 D3 2A C1 A9 9F 74 4C 90 1F 95 CB  // ....a.*...tL....
  0950: 09 45 CF 3E 0A DB                                // .E.>..

                        ToUUID ("42848006-8886-490e-8c72-2bdca93a8a09"), 
                        0xEF, 

  0956: 11 13 0A 10 06 80 84 42 86 88 0E 49 8C 72 2B DC  // .......B...I.r+.
  0966: A9 3A 8A 09 0A EF                                // .:....

                        ToUUID ("b3e485d2-3cc1-4b54-8f31-77ba2fdc9ebe"), 
                        0xF0, 

  096C: 11 13 0A 10 D2 85 E4 B3 C1 3C 54 4B 8F 31 77 BA  // .........<TK.1w.
  097C: 2F DC 9E BE 0A F0                                // /.....

                        ToUUID ("360d6fb6-1d4e-4fa6-b848-1be33dd8ec7b")
                    })
                }


  0982: 11 13 0A 10 B6 6F 0D 36 4E 1D A6 4F B8 48 1B E3  // .....o.6N..O.H..
  0992: 3D D8 EC 7B                                      // =..{

                If (LEqual (Arg2, 0x1A))
                {

  0996: A0 48 13 93 6A 0A 1A                             // .H..j..

                    CreateField (Arg3, 0x18, 0x02, OMPR)

  099D: 5B 13 6B 0A 18 0A 02 4F 4D 50 52                 // [.k....OMPR

                    CreateField (Arg3, Zero, One, FLCH)

  09A8: 5B 13 6B 00 01 46 4C 43 48                       // [.k..FLCH

                    CreateField (Arg3, One, One, DVSR)

  09B1: 5B 13 6B 01 01 44 56 53 52                       // [.k..DVSR

                    CreateField (Arg3, 0x02, One, DVSC)

  09BA: 5B 13 6B 0A 02 01 44 56 53 43                    // [.k...DVSC

                    If (ToInteger (FLCH))
                    {

  09C4: A0 23 99 46 4C 43 48 00                          // .#.FLCH.

                        Store (OMPR, \_SB.PCI0.PEG0.PEGP.OPCE)
                    }

                    Store (
  09CC: 70 4F 4D 50 52 5C 2F 05 5F 53 42 5F 50 43 49 30  // pOMPR\/._SB_PCI0
  09DC: 50 45 47 30 50 45 47 50 4F 50 43 45 70           // PEG0PEGPOPCEp

Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }, Local0)

  09E9: 11 07 0A 04 00 00 00 00 60                       // ........`

                    CreateField (Local0, Zero, One, OPEN)

  09F2: 5B 13 60 00 01 4F 50 45 4E                       // [.`..OPEN

                    CreateField (Local0, 0x03, 0x02, CGCS)

  09FB: 5B 13 60 0A 03 0A 02 43 47 43 53                 // [.`....CGCS

                    CreateField (Local0, 0x06, One, SHPC)

  0A06: 5B 13 60 0A 06 01 53 48 50 43                    // [.`...SHPC

                    CreateField (Local0, 0x08, One, SNSR)

  0A10: 5B 13 60 0A 08 01 53 4E 53 52                    // [.`...SNSR

                    CreateField (Local0, 0x18, 0x03, DGPC)

  0A1A: 5B 13 60 0A 18 0A 03 44 47 50 43                 // [.`....DGPC

                    CreateField (Local0, 0x1B, 0x02, HDAC)
                    Store (One, OPEN)
                    Store (One, SHPC)
                    Store (0x02, HDAC)
                    Store (One, DGPC)

  0A25: 5B 13 60 0A 1B 0A 02 48 44 41 43 70 01 4F 50 45  // [.`....HDACp.OPE
  0A35: 4E 70 01 53 48 50 43 70 0A 02 48 44 41 43 70 01  // Np.SHPCp..HDACp.
  0A45: 44 47 50 43                                      // DGPC

                    If (ToInteger (DVSC))
                    {

  0A49: A0 44 04 99 44 56 53 43 00                       // .D..DVSC.

                        If (ToInteger (DVSR))
                        {

  0A52: A0 20 99 44 56 53 52 00                          // . .DVSR.

                            Store (One, \_SB.PCI0.PEG0.PEGP.GPRF)
                        }

  0A5A: 70 01 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47  // p.\/._SB_PCI0PEG
  0A6A: 30 50 45 47 50 47 50 52 46                       // 0PEGPGPRF

                        Else
                        {

  0A73: A1 1A                                            // ..

                            Store (Zero, \_SB.PCI0.PEG0.PEGP.GPRF)
                        }
                    }

                    Store (\_SB.PCI0.PEG0.PEGP.GPRF, SNSR)

  0A75: 70 00 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47  // p.\/._SB_PCI0PEG
  0A85: 30 50 45 47 50 47 50 52 46 70 5C 2F 05 5F 53 42  // 0PEGPGPRFp\/._SB
  0A95: 5F 50 43 49 30 50 45 47 30 50 45 47 50 47 50 52  // _PCI0PEG0PEGPGPR
  0AA5: 46 53 4E 53 52                                   // FSNSR

                    If (
  0AAA: A0 22 92                                         // .".

LNotEqual (\_SB.PCI0.PEG0.PEGP.SGST (), Zero))
                    {

  0AAD: 93 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47 30  // .\/._SB_PCI0PEG0
  0ABD: 50 45 47 50 53 47 53 54 00                       // PEGPSGST.

                        Store (0x03, CGCS)
                    }


  0AC6: 70 0A 03 43 47 43 53                             // p..CGCS

                    Return (Local0)
                }


  0ACD: A4 60                                            // .`

                If (LEqual (Arg2, 0x1B))
                {
                    Store (Arg3, Local0)

  0ACF: A0 32 93 6A 0A 1B 70 6B 60                       // .2.j..pk`

                    CreateField (Local0, Zero, One, OPFL)

  0AD8: 5B 13 60 00 01 4F 50 46 4C                       // [.`..OPFL

                    CreateField (Local0, One, One, OPVL)

  0AE1: 5B 13 60 01 01 4F 50 56 4C                       // [.`..OPVL

                    If (ToInteger (OPVL))
                    {
                        Store (Zero, Local0)

  0AEA: A0 15 99 4F 50 56 4C 00 70 00 60                 // ...OPVL.p.`

                        If (ToInteger (OPFL))
                        {

  0AF5: A0 0A 99 4F 50 46 4C 00                          // ...OPFL.

                            Store (One, Local0)
                        }
                    }


  0AFD: 70 01 60                                         // p.`

                    Return (Local0)
                }


  0B00: A4 60                                            // .`

                Return (0x80000002)
            }


  0B02: A4 0C 02 00 00 80                                // ......

            Return (\_SB.PCI0.PEG0.PEGP.HDSM (Arg0, Arg1, Arg2, Arg3))
        }
    }


  0B08: A4 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47 30  // .\/._SB_PCI0PEG0
  0B18: 50 45 47 50 48 44 53 4D 68 69 6A 6B              // PEGPHDSMhijk

    Scope (\_SB.PCI0)
    {

  0B24: 10 2E 5C 2E 5F 53 42 5F 50 43 49 30              // ..\._SB_PCI0

        Name (GPS, "GPSACPI 2012-Aug-12 14:56:05")
    }


  0B30: 08 47 50 53 5F 0D 47 50 53 41 43 50 49 20 32 30  // .GPS_.GPSACPI 20
  0B40: 31 32 2D 41 75 67 2D 31 32 20 31 34 3A 35 36 3A  // 12-Aug-12 14:56:
  0B50: 30 35 00                                         // 05.

    Scope (\_SB.PCI0.PEG0.PEGP)
    {

  0B53: 10 4D 51 5C 2F 04 5F 53 42 5F 50 43 49 30 50 45  // .MQ\/._SB_PCI0PE
  0B63: 47 30 50 45 47 50                                // G0PEGP

        Name (PSAP, Zero)

  0B69: 08 50 53 41 50 00                                // .PSAP.

        Name (ECBF, 
  0B6F: 08 45 43 42 46                                   // .ECBF

Buffer (0x14) {})

  0B74: 11 03 0A 14                                      // ....

        CreateDWordField (ECBF, Zero, EDS1)

  0B78: 8A 45 43 42 46 00 45 44 53 31                    // .ECBF.EDS1

        CreateDWordField (ECBF, 0x04, EDS2)

  0B82: 8A 45 43 42 46 0A 04 45 44 53 32                 // .ECBF..EDS2

        CreateDWordField (ECBF, 0x08, EDS3)

  0B8D: 8A 45 43 42 46 0A 08 45 44 53 33                 // .ECBF..EDS3

        CreateDWordField (ECBF, 0x0C, EDS4)

  0B98: 8A 45 43 42 46 0A 0C 45 44 53 34                 // .ECBF..EDS4

        CreateDWordField (ECBF, 0x10, EPDT)

  0BA3: 8A 45 43 42 46 0A 10 45 50 44 54                 // .ECBF..EPDT

        Name (GPSP, 
  0BAE: 08 47 50 53 50                                   // .GPSP

Buffer (0x24) {})

  0BB3: 11 03 0A 24                                      // ...$

        CreateDWordField (GPSP, Zero, RETN)

  0BB7: 8A 47 50 53 50 00 52 45 54 4E                    // .GPSP.RETN

        CreateDWordField (GPSP, 0x04, VRV1)

  0BC1: 8A 47 50 53 50 0A 04 56 52 56 31                 // .GPSP..VRV1

        CreateDWordField (GPSP, 0x08, TGPU)

  0BCC: 8A 47 50 53 50 0A 08 54 47 50 55                 // .GPSP..TGPU

        CreateDWordField (GPSP, 0x0C, PDTS)

  0BD7: 8A 47 50 53 50 0A 0C 50 44 54 53                 // .GPSP..PDTS

        CreateDWordField (GPSP, 0x10, SFAN)

  0BE2: 8A 47 50 53 50 0A 10 53 46 41 4E                 // .GPSP..SFAN

        CreateDWordField (GPSP, 0x14, SKNT)

  0BED: 8A 47 50 53 50 0A 14 53 4B 4E 54                 // .GPSP..SKNT

        CreateDWordField (GPSP, 0x18, CPUE)

  0BF8: 8A 47 50 53 50 0A 18 43 50 55 45                 // .GPSP..CPUE

        CreateDWordField (GPSP, 0x1C, TMP1)

  0C03: 8A 47 50 53 50 0A 1C 54 4D 50 31                 // .GPSP..TMP1

        CreateDWordField (GPSP, 0x20, TMP2)

  0C0E: 8A 47 50 53 50 0A 20 54 4D 50 32                 // .GPSP. TMP2

        Name (NLIM, Zero)

  0C19: 08 4E 4C 49 4D 00                                // .NLIM.

        Name (PSCP, Zero)

  0C1F: 08 50 53 43 50 00                                // .PSCP.

        Method (GPS, 4, Serialized)
        {

  0C25: 14 4B 44 47 50 53 5F 0C                          // .KDGPS_.

            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler

  0C2D: 08 5F 54 5F 31 00                                // ._T_1.

            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store ("------- GPS DSM --------", Debug)

  0C33: 08 5F 54 5F 30 00 70 0D 2D 2D 2D 2D 2D 2D 2D 20  // ._T_0.p.------- 
  0C43: 47 50 53 20 44 53 4D 20 2D 2D 2D 2D 2D 2D 2D 2D  // GPS DSM --------
  0C53: 00 5B 31                                         // .[1

            If (
  0C56: A0 0D 92                                         // ...

LNotEqual (Arg1, 0x0100))
            {

  0C59: 93 69 0B 00 01                                   // .i...

                Return (0x80000002)
            }


  0C5E: A4 0C 02 00 00 80                                // ......

            While (One)
            {
                Store (ToInteger (Arg2), _T_0)

  0C64: A2 46 40 01 70 99 6A 00 5F 54 5F 30              // .F@.p.j._T_0

                If (LEqual (_T_0, Zero))
                {

  0C70: A0 43 0E 93 5F 54 5F 30 00                       // .C.._T_0.

                    Name (FMSK, 
  0C79: 08 46 4D 53 4B                                   // .FMSK

Buffer (0x08)
                    {
                         0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF 
                    })
                    Store (
  0C7E: 11 0B 0A 08 FF FF FF FF FF FF FF FF 70           // ............p

Buffer (0x08)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }, Local0)
                    Divide (Zero, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (
  0C8B: 11 0B 0A 08 00 00 00 00 00 00 00 00 60 78 00 0A  // ............`x..
  0C9B: 08 62 61 79 01 62 62 7D 83                       // .bay.bb}.

Index (Local0, Local1)), Local2, 
  0CA4: 88 60 61 00 62                                   // .`a.b

Index (Local0, Local1))
                    Divide (0x13, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (
  0CA9: 88 60 61 00 78 0A 13 0A 08 62 61 79 01 62 62 7D  // .`a.x....bay.bb}
  0CB9: 83                                               // .

Index (Local0, Local1)), Local2, 
  0CBA: 88 60 61 00 62                                   // .`a.b

Index (Local0, Local1))
                    Divide (0x20, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (
  0CBF: 88 60 61 00 78 0A 20 0A 08 62 61 79 01 62 62 7D  // .`a.x. ..bay.bb}
  0CCF: 83                                               // .

Index (Local0, Local1)), Local2, 
  0CD0: 88 60 61 00 62                                   // .`a.b

Index (Local0, Local1))
                    Divide (0x21, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (
  0CD5: 88 60 61 00 78 0A 21 0A 08 62 61 79 01 62 62 7D  // .`a.x.!..bay.bb}
  0CE5: 83                                               // .

Index (Local0, Local1)), Local2, 
  0CE6: 88 60 61 00 62                                   // .`a.b

Index (Local0, Local1))
                    Divide (0x22, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (
  0CEB: 88 60 61 00 78 0A 22 0A 08 62 61 79 01 62 62 7D  // .`a.x."..bay.bb}
  0CFB: 83                                               // .

Index (Local0, Local1)), Local2, 
  0CFC: 88 60 61 00 62                                   // .`a.b

Index (Local0, Local1))
                    Divide (0x23, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (
  0D01: 88 60 61 00 78 0A 23 0A 08 62 61 79 01 62 62 7D  // .`a.x.#..bay.bb}
  0D11: 83                                               // .

Index (Local0, Local1)), Local2, 
  0D12: 88 60 61 00 62                                   // .`a.b

Index (Local0, Local1))
                    Divide (0x2A, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (
  0D17: 88 60 61 00 78 0A 2A 0A 08 62 61 79 01 62 62 7D  // .`a.x.*..bay.bb}
  0D27: 83                                               // .

Index (Local0, Local1)), Local2, 
  0D28: 88 60 61 00 62                                   // .`a.b

Index (Local0, Local1))
                    Store (SizeOf (Local0), Local1)

  0D2D: 88 60 61 00 70 87 60 61                          // .`a.p.`a

                    While (
  0D35: A2 1C 92                                         // ...

LNotEqual (Local1, Zero))
                    {
                        Decrement (Local1)
                        Store (DerefOf (
  0D38: 93 61 00 76 61 70 83                             // .a.vap.

Index (FMSK, Local1)), Local2)

  0D3F: 88 46 4D 53 4B 61 00 62                          // .FMSKa.b

                        And (DerefOf (
  0D47: 7B 83                                            // {.

Index (Local0, Local1)), Local2, 
  0D49: 88 60 61 00 62                                   // .`a.b

Index (Local0, Local1))
                    }


  0D4E: 88 60 61 00                                      // .`a.

                    Return (Local0)
                }

  0D52: A4 60                                            // .`

                ElseIf
  0D54: A1 45 31                                         // .E1

 (LEqual (_T_0, 0x13))
                {
                    Store ("GPS fun 19", Debug)

  0D57: A0 19 93 5F 54 5F 30 0A 13 70 0D 47 50 53 20 66  // ..._T_0..p.GPS f
  0D67: 75 6E 20 31 39 00 5B 31                          // un 19.[1

                    Return (Arg3)
                }

  0D6F: A4 6B                                            // .k

                ElseIf
  0D71: A1 48 2F                                         // .H/

 (LEqual (_T_0, 0x20))
                {
                    Store ("GPS fun 20", Debug)

  0D74: A0 4B 07 93 5F 54 5F 30 0A 20 70 0D 47 50 53 20  // .K.._T_0. p.GPS 
  0D84: 66 75 6E 20 32 30 00 5B 31                       // fun 20.[1

                    Name (RET1, Zero)

  0D8D: 08 52 45 54 31 00                                // .RET1.

                    CreateBitField (Arg3, 0x18, NRIT)

  0D93: 8D 6B 0A 18 4E 52 49 54                          // .k..NRIT

                    CreateBitField (Arg3, 0x19, NRIS)

  0D9B: 8D 6B 0A 19 4E 52 49 53                          // .k..NRIS

                    If (NRIS)
                    {

  0DA3: A0 29 4E 52 49 53                                // .)NRIS

                        If (NRIT)
                        {

  0DA9: A0 13 4E 52 49 54                                // ..NRIT

                            Or (RET1, 0x01000000, RET1)
                        }

  0DAF: 7D 52 45 54 31 0C 00 00 00 01 52 45 54 31        // }RET1.....RET1

                        Else
                        {

  0DBD: A1 0F                                            // ..

                            And (RET1, 0xFEFFFFFF, RET1)
                        }
                    }

                    Or (RET1, 0x40000000, RET1)

  0DBF: 7B 52 45 54 31 0C FF FF FF FE 52 45 54 31 7D 52  // {RET1.....RET1}R
  0DCF: 45 54 31 0C 00 00 00 40 52 45 54 31              // ET1....@RET1

                    If (NLIM)
                    {

  0DDB: A0 0F 4E 4C 49 4D                                // ..NLIM

                        Or (RET1, One, RET1)
                    }


  0DE1: 7D 52 45 54 31 01 52 45 54 31                    // }RET1.RET1

                    Return (RET1)
                }

  0DEB: A4 52 45 54 31                                   // .RET1

                ElseIf
  0DF0: A1 49 27                                         // .I'

 (LEqual (_T_0, 0x21))
                {

  0DF3: A0 18 93 5F 54 5F 30 0A 21                       // ..._T_0.!

                    Return (\_PR.CPU0._PSS)
                }

  0DFC: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS

                ElseIf
  0E0C: A1 4D 25                                         // .M%

 (LEqual (_T_0, 0x22))
                {

  0E0F: A0 4E 09 93 5F 54 5F 30 0A 22                    // .N.._T_0."

                    CreateByteField (Arg3, Zero, PCAP)

  0E19: 8C 6B 00 50 43 41 50                             // .k.PCAP

                    If (And (GPSC, One))
                    {

  0E20: A0 41 05 7B 47 50 53 43 01 00                    // .A.{GPSC..

                        If (LOr (LEqual (\_SB.AC.ACFG, Zero), 
  0E2A: A0 47 04 91 93 5C 2F 03 5F 53 42 5F 41 43 5F 5F  // .G...\/._SB_AC__
  0E3A: 41 43 46 47 00                                   // ACFG.

LEqual (And (OEMF, 0x02), One)))
                        {
                            Store (\_PR.CPU0._PSS, Local1)
                            Store (SizeOf (Local1), Local2)
                            ShiftRight (Local2, One, Local0)
                            Increment (Local0)

  0E3F: 93 7B 4F 45 4D 46 0A 02 00 01 70 5C 2F 03 5F 50  // .{OEMF....p\/._P
  0E4F: 52 5F 43 50 55 30 5F 50 53 53 61 70 87 61 62 7A  // R_CPU0_PSSap.abz
  0E5F: 62 01 60 75 60                                   // b.`u`

                            If (LLess (PCAP, Local0))
                            {

  0E64: A0 0D 95 50 43 41 50 60                          // ...PCAP`

                                Store (Local0, PCAP)
                            }
                        }
                    }

                    Store (PCAP, \_PR.CPU0._PPC)

  0E6C: 70 60 50 43 41 50 70 50 43 41 50 5C 2F 03 5F 50  // p`PCAPpPCAP\/._P
  0E7C: 52 5F 43 50 55 30 5F 50 50 43                    // R_CPU0_PPC

                    If (And (GPSC, One))
                    {

  0E86: A0 19 7B 47 50 53 43 01 00                       // ..{GPSC..

                        Notify (\_SB.AC.ADJP (Zero), 
  0E8F: 86 5C 2F 03 5F 53 42 5F 41 43 5F 5F 41 44 4A 50  // .\/._SB_AC__ADJP
  0E9F: 00                                               // .

Store (PCAP, PSAP))
                    }


  0EA0: 70 50 43 41 50 50 53 41 50                       // pPCAPPSAP

                    Return (PCAP)
                }

  0EA9: A4 50 43 41 50                                   // .PCAP

                ElseIf
  0EAE: A1 4B 1B                                         // .K.

 (LEqual (_T_0, 0x23))
                {

  0EB1: A0 18 93 5F 54 5F 30 0A 23                       // ..._T_0.#

                    Return (\_PR.CPU0._PPC)
                }

  0EBA: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC

                ElseIf
  0ECA: A1 4F 19                                         // .O.

 (LEqual (_T_0, 0x25))
                {
                    Store ("GPS fun 25", Debug)

  0ECD: A0 27 93 5F 54 5F 30 0A 25 70 0D 47 50 53 20 66  // .'._T_0.%p.GPS f
  0EDD: 75 6E 20 32 35 00 5B 31                          // un 25.[1

                    Return (\_PR.CPU0._TSS)
                }

  0EE5: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 54 53 53  // .\/._PR_CPU0_TSS

                ElseIf
  0EF5: A1 44 17                                         // .D.

 (LEqual (_T_0, 0x26))
                {
                    Store ("GPS fun 26", Debug)

  0EF8: A0 45 04 93 5F 54 5F 30 0A 26 70 0D 47 50 53 20  // .E.._T_0.&p.GPS 
  0F08: 66 75 6E 20 32 36 00 5B 31                       // fun 26.[1

                    CreateDWordField (Arg3, Zero, TCAP)
                    Store (TCAP, \_PR.CPU0._PTC)
                    Notify (\_PR.CPU0, 0x80)

  0F11: 8A 6B 00 54 43 41 50 70 54 43 41 50 5C 2F 03 5F  // .k.TCAPpTCAP\/._
  0F21: 50 52 5F 43 50 55 30 5F 50 54 43 86 5C 2E 5F 50  // PR_CPU0_PTC.\._P
  0F31: 52 5F 43 50 55 30 0A 80                          // R_CPU0..

                    Return (TCAP)
                }

  0F39: A4 54 43 41 50                                   // .TCAP

                ElseIf
  0F3E: A1 4B 12                                         // .K.

 (LEqual (_T_0, 0x2A))
                {
                    Store ("GPS fun 2a", Debug)

  0F41: A0 48 12 93 5F 54 5F 30 0A 2A 70 0D 47 50 53 20  // .H.._T_0.*p.GPS 
  0F51: 66 75 6E 20 32 61 00 5B 31                       // fun 2a.[1

                    CreateByteField (Arg3, Zero, PSH0)

  0F5A: 8C 6B 00 50 53 48 30                             // .k.PSH0

                    CreateByteField (Arg3, One, PSH1)

  0F61: 8C 6B 01 50 53 48 31                             // .k.PSH1

                    CreateBitField (Arg3, 0x08, GPUT)

  0F68: 8D 6B 0A 08 47 50 55 54                          // .k..GPUT

                    CreateBitField (Arg3, 0x09, CPUT)

  0F70: 8D 6B 0A 09 43 50 55 54                          // .k..CPUT

                    CreateBitField (Arg3, 0x0A, FANS)

  0F78: 8D 6B 0A 0A 46 41 4E 53                          // .k..FANS

                    CreateBitField (Arg3, 0x0B, SKIN)

  0F80: 8D 6B 0A 0B 53 4B 49 4E                          // .k..SKIN

                    CreateBitField (Arg3, 0x0C, ENGR)

  0F88: 8D 6B 0A 0C 45 4E 47 52                          // .k..ENGR

                    CreateBitField (Arg3, 0x0D, SEN1)

  0F90: 8D 6B 0A 0D 53 45 4E 31                          // .k..SEN1

                    CreateBitField (Arg3, 0x0E, SEN2)

  0F98: 8D 6B 0A 0E 53 45 4E 32                          // .k..SEN2

                    While (One)
                    {
                        Store (PSH0, _T_1)

  0FA0: A2 49 0C 01 70 50 53 48 30 5F 54 5F 31           // .I..pPSH0_T_1

                        If (LEqual (_T_1, Zero))
                        {

  0FAD: A0 44 04 93 5F 54 5F 31 00                       // .D.._T_1.

                            If (CPUT)
                            {
                                Store (0x0200, RETN)
                                Or (RETN, PSH0, RETN)

  0FB6: A0 36 43 50 55 54 70 0B 00 02 52 45 54 4E 7D 52  // .6CPUTp...RETN}R
  0FC6: 45 54 4E 50 53 48 30 52 45 54 4E                 // ETNPSH0RETN

                                Store (\_SB.PCI0.LPCB.EC.TMP, PDTS)
                            }


  0FD1: 70 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // p\/._SB_PCI0LPCB
  0FE1: 45 43 5F 5F 54 4D 50 5F 50 44 54 53              // EC__TMP_PDTS

                            Return (GPSP)
                        }

  0FED: A4 47 50 53 50                                   // .GPSP

                        ElseIf
  0FF2: A1 46 07                                         // .F.

 (LEqual (_T_1, One))
                        {
                            Store (0x0300, RETN)
                            Or (RETN, PSH0, RETN)
                            Store (0x03E8, PDTS)

  0FF5: A0 29 93 5F 54 5F 31 01 70 0B 00 03 52 45 54 4E  // .)._T_1.p...RETN
  1005: 7D 52 45 54 4E 50 53 48 30 52 45 54 4E 70 0B E8  // }RETNPSH0RETNp..
  1015: 03 50 44 54 53                                   // .PDTS

                            Return (GPSP)
                        }

  101A: A4 47 50 53 50                                   // .GPSP

                        ElseIf
  101F: A1 49 04                                         // .I.

 (LEqual (_T_1, 0x02))
                        {
                            Store (0x0102, RETN)
                            Store (Zero, VRV1)
                            Store (Zero, TGPU)
                            Store (Zero, PDTS)
                            Store (Zero, SFAN)
                            Store (Zero, CPUE)
                            Store (Zero, SKNT)
                            Store (Zero, TMP1)
                            Store (Zero, TMP2)

  1022: A0 46 04 93 5F 54 5F 31 0A 02 70 0B 02 01 52 45  // .F.._T_1..p...RE
  1032: 54 4E 70 00 56 52 56 31 70 00 54 47 50 55 70 00  // TNp.VRV1p.TGPUp.
  1042: 50 44 54 53 70 00 53 46 41 4E 70 00 43 50 55 45  // PDTSp.SFANp.CPUE
  1052: 70 00 53 4B 4E 54 70 00 54 4D 50 31 70 00 54 4D  // p.SKNTp.TMP1p.TM
  1062: 50 32                                            // P2

                            Return (GPSP)
                        }


  1064: A4 47 50 53 50                                   // .GPSP

                        Break
                    }
                }


  1069: A5                                               // .

                Break
            }


  106A: A5                                               // .

            Return (0x80000002)
        }
    }


  106B: A4 0C 02 00 00 80                                // ......

    Scope (\_SB.PCI0.PEG0.PEGP)
    {

  1071: 10 4A 78 5C 2F 04 5F 53 42 5F 50 43 49 30 50 45  // .Jx\/._SB_PCI0PE
  1081: 47 30 50 45 47 50                                // G0PEGP

        Name (SMBS, 0x0580)

  1087: 08 53 4D 42 53 0B 80 05                          // .SMBS...

        Name (SMBL, 0x20)

  108F: 08 53 4D 42 4C 0A 20                             // .SMBL. 

        Name (PMBS, 0x1800)

  1096: 08 50 4D 42 53 0B 00 18                          // .PMBS...

        Name (GPBS, 0x1C00)

  109E: 08 47 50 42 53 0B 00 1C                          // .GPBS...

        Name (SMIP, 0xB2)

  10A6: 08 53 4D 49 50 0A B2                             // .SMIP..

        Name (APCB, 0xFEC00000)

  10AD: 08 41 50 43 42 0C 00 00 C0 FE                    // .APCB.....

        Name (APCL, 0x1000)

  10B7: 08 41 50 43 4C 0B 00 10                          // .APCL...

        Name (SMCR, 0x1830)

  10BF: 08 53 4D 43 52 0B 30 18                          // .SMCR.0.

        Name (HPTB, 0xFED00000)

  10C7: 08 48 50 54 42 0C 00 00 D0 FE                    // .HPTB.....

        Name (HPTC, 0xFED1F404)

  10D1: 08 48 50 54 43 0C 04 F4 D1 FE                    // .HPTC.....

        Name (FLSZ, 0x00400000)

  10DB: 08 46 4C 53 5A 0C 00 00 40 00                    // .FLSZ...@.

        Name (SRCB, 0xFED1C000)

  10E5: 08 53 52 43 42 0C 00 C0 D1 FE                    // .SRCB.....

        Name (RCLN, 0x4000)

  10EF: 08 52 43 4C 4E 0B 00 40                          // .RCLN..@

        Name (PEBS, 0xF8000000)

  10F7: 08 50 45 42 53 0C 00 00 00 F8                    // .PEBS.....

        Name (PELN, 0x04000000)

  1101: 08 50 45 4C 4E 0C 00 00 00 04                    // .PELN.....

        Name (LAPB, 0xFEE00000)

  110B: 08 4C 41 50 42 0C 00 00 E0 FE                    // .LAPB.....

        Name (EGPB, 0xFED19000)

  1115: 08 45 47 50 42 0C 00 90 D1 FE                    // .EGPB.....

        Name (MCHB, 0xFED10000)

  111F: 08 4D 43 48 42 0C 00 00 D1 FE                    // .MCHB.....

        Name (VTBS, 0xFED90000)

  1129: 08 56 54 42 53 0C 00 00 D9 FE                    // .VTBS.....

        Name (VTLN, 0x4000)

  1133: 08 56 54 4C 4E 0B 00 40                          // .VTLN..@

        Name (ACPH, 0xDE)

  113B: 08 41 43 50 48 0A DE                             // .ACPH..

        Name (ASSB, Zero)

  1142: 08 41 53 53 42 00                                // .ASSB.

        Name (AOTB, Zero)

  1148: 08 41 4F 54 42 00                                // .AOTB.

        Name (AAXB, Zero)

  114E: 08 41 41 58 42 00                                // .AAXB.

        Name (PEHP, One)

  1154: 08 50 45 48 50 01                                // .PEHP.

        Name (SHPC, One)

  115A: 08 53 48 50 43 01                                // .SHPC.

        Name (PEPM, One)

  1160: 08 50 45 50 4D 01                                // .PEPM.

        Name (PEER, One)

  1166: 08 50 45 45 52 01                                // .PEER.

        Name (PECS, One)

  116C: 08 50 45 43 53 01                                // .PECS.

        Name (ITKE, Zero)

  1172: 08 49 54 4B 45 00                                // .ITKE.

        Name (SRSI, 0xB2)

  1178: 08 53 52 53 49 0A B2                             // .SRSI..

        Name (CSMI, 0x61)

  117F: 08 43 53 4D 49 0A 61                             // .CSMI.a

        Name (FMBL, One)

  1186: 08 46 4D 42 4C 01                                // .FMBL.

        Name (FDTP, 0x02)

  118C: 08 46 44 54 50 0A 02                             // .FDTP..

        Name (FUPS, 0x03)

  1193: 08 46 55 50 53 0A 03                             // .FUPS..

        Name (FUWS, 0x04)

  119A: 08 46 55 57 53 0A 04                             // .FUWS..

        Name (BGR, One)

  11A1: 08 42 47 52 5F 01                                // .BGR_.

        Name (BFR, 0x02)

  11A7: 08 42 46 52 5F 0A 02                             // .BFR_..

        Name (BBR, 0x03)

  11AE: 08 42 42 52 5F 0A 03                             // .BBR_..

        Name (BWC, 0x04)

  11B5: 08 42 57 43 5F 0A 04                             // .BWC_..

        Name (BWT1, 0x20)

  11BC: 08 42 57 54 31 0A 20                             // .BWT1. 

        Name (BFHC, 0x0100)

  11C3: 08 42 46 48 43 0B 00 01                          // .BFHC...

        Name (TRTP, One)

  11CB: 08 54 52 54 50 01                                // .TRTP.

        Name (WDTE, One)

  11D1: 08 57 44 54 45 01                                // .WDTE.

        Name (TRTD, 0x02)

  11D7: 08 54 52 54 44 0A 02                             // .TRTD..

        Name (TRTI, 0x03)

  11DE: 08 54 52 54 49 0A 03                             // .TRTI..

        Name (PFTI, 0x04)

  11E5: 08 50 46 54 49 0A 04                             // .PFTI..

        Name (GCDD, One)

  11EC: 08 47 43 44 44 01                                // .GCDD.

        Name (DSTA, 0x0A)

  11F2: 08 44 53 54 41 0A 0A                             // .DSTA..

        Name (DSLO, 0x0C)

  11F9: 08 44 53 4C 4F 0A 0C                             // .DSLO..

        Name (DSLC, 0x0E)

  1200: 08 44 53 4C 43 0A 0E                             // .DSLC..

        Name (PITS, 0x10)

  1207: 08 50 49 54 53 0A 10                             // .PITS..

        Name (SBCS, 0x12)

  120E: 08 53 42 43 53 0A 12                             // .SBCS..

        Name (SALS, 0x13)

  1215: 08 53 41 4C 53 0A 13                             // .SALS..

        Name (LSSS, 0x2A)

  121C: 08 4C 53 53 53 0A 2A                             // .LSSS.*

        Name (SOOT, 0x35)

  1223: 08 53 4F 4F 54 0A 35                             // .SOOT.5

        Name (PDBR, 0x4D)

  122A: 08 50 44 42 52 0A 4D                             // .PDBR.M

        Name (BW1P, 0x21)

  1231: 08 42 57 31 50 0A 21                             // .BW1P.!

        Name (BW2C, 0x22)

  1238: 08 42 57 32 43 0A 22                             // .BW2C."

        Name (BW2P, 0x23)

  123F: 08 42 57 32 50 0A 23                             // .BW2P.#

        Name (BSPC, 0x24)

  1246: 08 42 53 50 43 0A 24                             // .BSPC.$

        Name (BSPP, 0x25)

  124D: 08 42 53 50 50 0A 25                             // .BSPP.%

        Name (BICO, 0x27)

  1254: 08 42 49 43 4F 0A 27                             // .BICO.'

        Name (BICC, 0x28)

  125B: 08 42 49 43 43 0A 28                             // .BICC.(

        Name (BHB, 0x30)

  1262: 08 42 48 42 5F 0A 30                             // .BHB_.0

        Name (BFS2, 0x31)

  1269: 08 42 46 53 32 0A 31                             // .BFS2.1

        Name (BFS3, 0x32)

  1270: 08 42 46 53 33 0A 32                             // .BFS3.2

        Name (BFS4, 0x33)

  1277: 08 42 46 53 34 0A 33                             // .BFS4.3

        Name (BRH, 0x35)

  127E: 08 42 52 48 5F 0A 35                             // .BRH_.5

        Name (SMIA, 0xB2)

  1285: 08 53 4D 49 41 0A B2                             // .SMIA..

        Name (SMIB, 0xB3)

  128C: 08 53 4D 49 42 0A B3                             // .SMIB..

        Name (OFST, 0x35)

  1293: 08 4F 46 53 54 0A 35                             // .OFST.5

        Name (TRST, 0x02)

  129A: 08 54 52 53 54 0A 02                             // .TRST..

        Name (TCMF, Zero)

  12A1: 08 54 43 4D 46 00                                // .TCMF.

        Name (TMF1, Zero)

  12A7: 08 54 4D 46 31 00                                // .TMF1.

        Name (TMF2, Zero)

  12AD: 08 54 4D 46 32 00                                // .TMF2.

        Name (TMF3, Zero)

  12B3: 08 54 4D 46 33 00                                // .TMF3.

        Name (TTPF, One)

  12B9: 08 54 54 50 46 01                                // .TTPF.

        Name (TTDP, Zero)

  12BF: 08 54 54 44 50 00                                // .TTDP.

        Name (TPMF, Zero)

  12C5: 08 54 50 4D 46 00                                // .TPMF.

        Name (DSSP, Zero)

  12CB: 08 44 53 53 50 00                                // .DSSP.

        Name (FHPP, Zero)

  12D1: 08 46 48 50 50 00                                // .FHPP.

        Name (HIDK, "MSFT0001")

  12D7: 08 48 49 44 4B 0D 4D 53 46 54 30 30 30 31 00     // .HIDK.MSFT0001.

        Name (HIDM, "MSFT0003")

  12E6: 08 48 49 44 4D 0D 4D 53 46 54 30 30 30 33 00     // .HIDM.MSFT0003.

        Name (CIDK, 0x0303D041)

  12F5: 08 43 49 44 4B 0C 41 D0 03 03                    // .CIDK.A...

        Name (CIDM, 0x030FD041)

  12FF: 08 43 49 44 4D 0C 41 D0 0F 03                    // .CIDM.A...

        Name (MBEC, Zero)

  1309: 08 4D 42 45 43 00                                // .MBEC.

        Name (PMLN, 0x0100)

  130F: 08 50 4D 4C 4E 0B 00 01                          // .PMLN...

        Name (GPLN, 0x0400)

  1317: 08 47 50 4C 4E 0B 00 04                          // .GPLN...

        Name (ECBL, Zero)

  131F: 08 45 43 42 4C 00                                // .ECBL.

        Name (TPID, One)

  1325: 08 54 50 49 44 01                                // .TPID.

        Name (MOCD, Zero)

  132B: 08 4D 4F 43 44 00                                // .MOCD.

        Name (TGPC, 
  1331: 08 54 47 50 43                                   // .TGPC

Buffer (0x04)
        {
             0x00, 0x00, 0x00, 0x00                         
        })

  1336: 11 07 0A 04 00 00 00 00                          // ........

        Name (TDGC, Zero)

  133E: 08 54 44 47 43 00                                // .TDGC.

        Name (DGCX, Zero)

  1344: 08 44 47 43 58 00                                // .DGCX.

        Name (TRPC, Zero)

  134A: 08 54 52 50 43 00                                // .TRPC.

        Method (GC6I, 0, Serialized)
        {
            Store ("<<< GC6I >>>", Debug)
            Store (Zero, \_SB.PCI0.LPCB.EC.GPUT)
            \_SB.PCI0.PEG0.PEGP.SPP0 ()
            Store (One, \_SB.PCI0.PEG0.LNKD)

  1350: 14 41 06 47 43 36 49 08 70 0D 3C 3C 3C 20 47 43  // .A.GC6I.p.<<< GC
  1360: 36 49 20 3E 3E 3E 00 5B 31 70 00 5C 2F 05 5F 53  // 6I >>>.[1p.\/._S
  1370: 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F 47 50  // B_PCI0LPCBEC__GP
  1380: 55 54 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47  // UT\/._SB_PCI0PEG
  1390: 30 50 45 47 50 53 50 50 30 70 01 5C 2F 04 5F 53  // 0PEGPSPP0p.\/._S
  13A0: 42 5F 50 43 49 30 50 45 47 30 4C 4E 4B 44        // B_PCI0PEG0LNKD

            Sleep (0x64)
        }


  13AE: 5B 22 0A 64                                      // [".d

        Method (GC6O, 0, Serialized)
        {
            Store ("<<< GC6O >>>", Debug)

  13B2: 14 4B 0C 47 43 36 4F 08 70 0D 3C 3C 3C 20 47 43  // .K.GC6O.p.<<< GC
  13C2: 36 4F 20 3E 3E 3E 00 5B 31                       // 6O >>>.[1

            While (
  13CB: A2 1E 92                                         // ...

LNotEqual (\_SB.PCI0.PEG0.PEGP.GFBE (), One))
            {

  13CE: 93 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47 30  // .\/._SB_PCI0PEG0
  13DE: 50 45 47 50 47 46 42 45 01                       // PEGPGFBE.

                Sleep (One)
            }

            \_SB.PCI0.PEG0.PEGP.SGPE (Zero)
            Store (Zero, \_SB.PCI0.PEG0.LNKD)

  13E7: 5B 22 01 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45  // [".\/._SB_PCI0PE
  13F7: 47 30 50 45 47 50 53 47 50 45 00 70 00 5C 2F 04  // G0PEGPSGPE.p.\/.
  1407: 5F 53 42 5F 50 43 49 30 50 45 47 30 4C 4E 4B 44  // _SB_PCI0PEG0LNKD

            While (
  1417: A2 1E 92                                         // ...

LNotEqual (\_SB.PCI0.PEG0.PEGP.GFBE (), Zero))
            {

  141A: 93 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47 30  // .\/._SB_PCI0PEG0
  142A: 50 45 47 50 47 46 42 45 00                       // PEGPGFBE.

                Sleep (One)
            }

            \_SB.PCI0.PEG0.PEGP.SGPE (One)
            Store (One, \_SB.PCI0.LPCB.EC.GPUT)
            \_SB.PCI0.PEG0.PEGP.RPP0 ()
        }


  1433: 5B 22 01 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45  // [".\/._SB_PCI0PE
  1443: 47 30 50 45 47 50 53 47 50 45 01 70 01 5C 2F 05  // G0PEGPSGPE.p.\/.
  1453: 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 5F 5F  // _SB_PCI0LPCBEC__
  1463: 47 50 55 54 5C 2F 05 5F 53 42 5F 50 43 49 30 50  // GPUT\/._SB_PCI0P
  1473: 45 47 30 50 45 47 50 52 50 50 30                 // EG0PEGPRPP0

        Method (GETS, 0, Serialized)
        {
            Sleep (0x10)

  147E: 14 49 06 47 45 54 53 08 5B 22 0A 10              // .I.GETS.["..

            If (LEqual (\_SB.PCI0.PEG0.PEGP.GFBE (), One))
            {
                Store ("<<< GETS() return 0x3 >>>", Debug)

  148A: A0 3B 93 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45  // .;.\/._SB_PCI0PE
  149A: 47 30 50 45 47 50 47 46 42 45 01 70 0D 3C 3C 3C  // G0PEGPGFBE.p.<<<
  14AA: 20 47 45 54 53 28 29 20 72 65 74 75 72 6E 20 30  //  GETS() return 0
  14BA: 78 33 20 3E 3E 3E 00 5B 31                       // x3 >>>.[1

                Return (0x03)
            }

  14C3: A4 0A 03                                         // ...

            Else
            {
                Store ("<<< GETS() return 0x1 >>>", Debug)

  14C6: A1 21 70 0D 3C 3C 3C 20 47 45 54 53 28 29 20 72  // .!p.<<< GETS() r
  14D6: 65 74 75 72 6E 20 30 78 31 20 3E 3E 3E 00 5B 31  // eturn 0x1 >>>.[1

                Return (One)
            }
        }


  14E6: A4 01                                            // ..

        Method (NGC6, 4, Serialized)
        {

  14E8: 14 43 31 4E 47 43 36 0C                          // .C1NGC6.

            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store ("------- GC6 DSM --------", Debug)

  14F0: 08 5F 54 5F 30 00 70 0D 2D 2D 2D 2D 2D 2D 2D 20  // ._T_0.p.------- 
  1500: 47 43 36 20 44 53 4D 20 2D 2D 2D 2D 2D 2D 2D 2D  // GC6 DSM --------
  1510: 00 5B 31                                         // .[1

            If (LLess (Arg1, 0x0100))
            {

  1513: A0 0C 95 69 0B 00 01                             // ...i...

                Return (0x80000001)
            }


  151A: A4 0C 01 00 00 80                                // ......

            While (One)
            {
                Store (ToInteger (Arg2), _T_0)

  1520: A2 45 2D 01 70 99 6A 00 5F 54 5F 30              // .E-.p.j._T_0

                If (LEqual (_T_0, Zero))
                {

  152C: A0 10 93 5F 54 5F 30 00                          // ..._T_0.

                    Return (
  1534: A4                                               // .

Buffer (0x04)
                    {
                         0x1B, 0x00, 0x00, 0x00                         
                    })
                }

  1535: 11 07 0A 04 1B 00 00 00                          // ........

                ElseIf
  153D: A1 47 2B                                         // .G+

 (LEqual (_T_0, One))
                {

  1540: A0 4F 0E 93 5F 54 5F 30 01                       // .O.._T_0.

                    Name (JTB1, 
  1549: 08 4A 54 42 31                                   // .JTB1

Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })

  154E: 11 07 0A 04 00 00 00 00                          // ........

                    CreateField (JTB1, Zero, One, JTEN)

  1556: 5B 13 4A 54 42 31 00 01 4A 54 45 4E              // [.JTB1..JTEN

                    CreateField (JTB1, One, 0x02, SREN)

  1562: 5B 13 4A 54 42 31 01 0A 02 53 52 45 4E           // [.JTB1...SREN

                    CreateField (JTB1, 0x03, 0x03, PLPR)

  156F: 5B 13 4A 54 42 31 0A 03 0A 03 50 4C 50 52        // [.JTB1....PLPR

                    CreateField (JTB1, 0x06, 0x02, FBPR)

  157D: 5B 13 4A 54 42 31 0A 06 0A 02 46 42 50 52        // [.JTB1....FBPR

                    CreateField (JTB1, 0x08, 0x02, GUPR)

  158B: 5B 13 4A 54 42 31 0A 08 0A 02 47 55 50 52        // [.JTB1....GUPR

                    CreateField (JTB1, 0x0A, One, GC6R)

  1599: 5B 13 4A 54 42 31 0A 0A 01 47 43 36 52           // [.JTB1...GC6R

                    CreateField (JTB1, 0x0B, One, PTRH)

  15A6: 5B 13 4A 54 42 31 0A 0B 01 50 54 52 48           // [.JTB1...PTRH

                    CreateField (JTB1, 0x0D, One, MHYB)

  15B3: 5B 13 4A 54 42 31 0A 0D 01 4D 48 59 42           // [.JTB1...MHYB

                    CreateField (JTB1, 0x0E, One, RPCL)

  15C0: 5B 13 4A 54 42 31 0A 0E 01 52 50 43 4C           // [.JTB1...RPCL

                    CreateField (JTB1, 0x0F, 0x02, GC6V)

  15CD: 5B 13 4A 54 42 31 0A 0F 0A 02 47 43 36 56        // [.JTB1....GC6V

                    CreateField (JTB1, 0x14, 0x0C, JTRV)
                    Store (One, JTEN)
                    Store (One, GC6R)
                    Store (One, MHYB)
                    Store (One, RPCL)

  15DB: 5B 13 4A 54 42 31 0A 14 0A 0C 4A 54 52 56 70 01  // [.JTB1....JTRVp.
  15EB: 4A 54 45 4E 70 01 47 43 36 52 70 01 4D 48 59 42  // JTENp.GC6Rp.MHYB
  15FB: 70 01 52 50 43 4C                                // p.RPCL

                    If (LEqual (ToInteger (RPCL), One))
                    {

  1601: A0 0F 93 99 52 50 43 4C 00 01                    // ....RPCL..

                        Store (One, TRPC)
                    }

                    Store (One, GC6V)
                    Store (One, PTRH)
                    Store (One, SREN)
                    Store (0x0103, JTRV)

  160B: 70 01 54 52 50 43 70 01 47 43 36 56 70 01 50 54  // p.TRPCp.GC6Vp.PT
  161B: 52 48 70 01 53 52 45 4E 70 0B 03 01 4A 54 52 56  // RHp.SRENp...JTRV

                    Return (JTB1)
                }

  162B: A4 4A 54 42 31                                   // .JTB1

                ElseIf
  1630: A1 44 1C                                         // .D.

 (LEqual (_T_0, 0x02))
                {
                    Store ("GPS fun 19", Debug)

  1633: A0 19 93 5F 54 5F 30 0A 02 70 0D 47 50 53 20 66  // ..._T_0..p.GPS f
  1643: 75 6E 20 31 39 00 5B 31                          // un 19.[1

                    Return (Arg3)
                }

  164B: A4 6B                                            // .k

                ElseIf
  164D: A1 47 1A                                         // .G.

 (LEqual (_T_0, 0x03))
                {

  1650: A0 43 19 93 5F 54 5F 30 0A 03                    // .C.._T_0..

                    CreateField (Arg3, Zero, 0x03, GUPC)

  165A: 5B 13 6B 00 0A 03 47 55 50 43                    // [.k...GUPC

                    CreateField (Arg3, 0x04, One, PLPC)

  1664: 5B 13 6B 0A 04 01 50 4C 50 43                    // [.k...PLPC

                    CreateField (Arg3, 0x0E, 0x02, DFGC)

  166E: 5B 13 6B 0A 0E 0A 02 44 46 47 43                 // [.k....DFGC

                    CreateField (Arg3, 0x10, 0x03, GPCX)
                    Store (Arg3, TGPC)

  1679: 5B 13 6B 0A 10 0A 03 47 50 43 58 70 6B 54 47 50  // [.k....GPCXpkTGP
  1689: 43                                               // C

                    If (LOr (
  168A: A0 2A 91 92                                      // .*..

LNotEqual (ToInteger (GUPC), Zero), 
  168E: 93 99 47 55 50 43 00 00                          // ..GUPC..


  1696: 92                                               // .

LNotEqual (ToInteger (DFGC), Zero)))
                    {
                        Store (ToInteger (DFGC), TDGC)

  1697: 93 99 44 46 47 43 00 00 70 99 44 46 47 43 00 54  // ..DFGC..p.DFGC.T
  16A7: 44 47 43                                         // DGC

                        Store (ToInteger (GPCX), DGCX)
                    }


  16AA: 70 99 47 50 43 58 00 44 47 43 58                 // p.GPCX.DGCX

                    Name (JTB3, 
  16B5: 08 4A 54 42 33                                   // .JTB3

Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })

  16BA: 11 07 0A 04 00 00 00 00                          // ........

                    CreateField (JTB3, Zero, 0x03, GUPS)

  16C2: 5B 13 4A 54 42 33 00 0A 03 47 55 50 53           // [.JTB3...GUPS

                    CreateField (JTB3, 0x03, One, GPGS)

  16CF: 5B 13 4A 54 42 33 0A 03 01 47 50 47 53           // [.JTB3...GPGS

                    CreateField (JTB3, 0x07, One, PLST)

  16DC: 5B 13 4A 54 42 33 0A 07 01 50 4C 53 54           // [.JTB3...PLST

                    If (
  16E9: A0 1B 92                                         // ...

LNotEqual (ToInteger (DFGC), Zero))
                    {
                        Store (One, GPGS)
                        Store (One, GUPS)

  16EC: 93 99 44 46 47 43 00 00 70 01 47 50 47 53 70 01  // ..DFGC..p.GPGSp.
  16FC: 47 55 50 53                                      // GUPS

                        Return (JTB3)
                    }


  1700: A4 4A 54 42 33                                   // .JTB3

                    If (LEqual (ToInteger (GUPC), One))
                    {
                        GC6I ()
                        Store (One, PLST)

  1705: A0 19 93 99 47 55 50 43 00 01 47 43 36 49 70 01  // ....GUPC..GC6Ip.
  1715: 50 4C 53 54                                      // PLST

                        Store (Zero, GUPS)
                    }

  1719: 70 00 47 55 50 53                                // p.GUPS

                    ElseIf
  171F: A1 4F 0B                                         // .O.

 (LEqual (ToInteger (GUPC), 0x02))
                    {
                        GC6I ()

  1722: A0 24 93 99 47 55 50 43 00 0A 02 47 43 36 49     // .$..GUPC...GC6I

                        If (LEqual (ToInteger (PLPC), Zero))
                        {

  1731: A0 0F 93 99 50 4C 50 43 00 00                    // ....PLPC..

                            Store (Zero, PLST)
                        }


  173B: 70 00 50 4C 53 54                                // p.PLST

                        Store (Zero, GUPS)
                    }

  1741: 70 00 47 55 50 53                                // p.GUPS

                    ElseIf
  1747: A1 47 09                                         // .G.

 (LEqual (ToInteger (GUPC), 0x03))
                    {
                        GC6O ()

  174A: A0 2B 93 99 47 55 50 43 00 0A 03 47 43 36 4F     // .+..GUPC...GC6O

                        If (
  1759: A0 10 92                                         // ...

LNotEqual (ToInteger (PLPC), Zero))
                        {

  175C: 93 99 50 4C 50 43 00 00                          // ..PLPC..

                            Store (Zero, PLST)
                        }

                        Store (One, GPGS)

  1764: 70 00 50 4C 53 54 70 01 47 50 47 53              // p.PLSTp.GPGS

                        Store (Zero, GUPS)
                    }

  1770: 70 00 47 55 50 53                                // p.GUPS

                    ElseIf
  1776: A1 48 06                                         // .H.

 (LEqual (ToInteger (GUPC), 0x04))
                    {
                        GC6O ()

  1779: A0 2B 93 99 47 55 50 43 00 0A 04 47 43 36 4F     // .+..GUPC...GC6O

                        If (
  1788: A0 10 92                                         // ...

LNotEqual (ToInteger (PLPC), Zero))
                        {

  178B: 93 99 50 4C 50 43 00 00                          // ..PLPC..

                            Store (Zero, PLST)
                        }

                        Store (One, GPGS)

  1793: 70 00 50 4C 53 54 70 01 47 50 47 53              // p.PLSTp.GPGS

                        Store (Zero, GUPS)
                    }

  179F: 70 00 47 55 50 53                                // p.GUPS

                    ElseIf
  17A5: A1 39                                            // .9

 (LEqual (ToInteger (GUPC), Zero))
                    {
                        Store (GETS (), GUPS)

  17A7: A0 2A 93 99 47 55 50 43 00 00 70 47 45 54 53 47  // .*..GUPC..pGETSG
  17B7: 55 50 53                                         // UPS

                        If (LEqual (ToInteger (GUPS), One))
                        {

  17BA: A0 0F 93 99 47 55 50 53 00 01                    // ....GUPS..

                            Store (One, GPGS)
                        }

  17C4: 70 01 47 50 47 53                                // p.GPGS

                        Else
                        {

  17CA: A1 07                                            // ..

                            Store (Zero, GPGS)
                        }
                    }

  17CC: 70 00 47 50 47 53                                // p.GPGS

                    ElseIf
  17D2: A1 0C                                            // ..

 (
  17D4: A0 0A                                            // ..

LEqual (ToInteger (GUPC), 0x06)) {}

  17D6: 93 99 47 55 50 43 00 0A 06                       // ..GUPC...

                    Return (JTB3)
                }

  17DF: A4 4A 54 42 33                                   // .JTB3

                ElseIf
  17E4: A1 10                                            // ..

 (LEqual (_T_0, 0x04))
                {

  17E6: A0 0E 93 5F 54 5F 30 0A 04                       // ..._T_0..

                    Return (0x80000002)
                }


  17EF: A4 0C 02 00 00 80                                // ......

                Break
            }


  17F5: A5                                               // .

            Return (0x80000002)
        }
    }


  17F6: A4 0C 02 00 00 80                                // ......

    Name (MSD3, Zero)

  17FC: 08 4D 53 44 33 00                                // .MSD3.

    PowerResource (NVP3, 0x00, 0x0000)
    {

  1802: 5B 84 46 2B 4E 56 50 33 00 00 00                 // [.F+NVP3...

        Name (_STA, One)  // _STA: Status

  180D: 08 5F 53 54 41 01                                // ._STA.

        Name (INDX, Zero)

  1813: 08 49 4E 44 58 00                                // .INDX.

        Method (_ON, 0, NotSerialized)  // _ON_: Power On
        {
            Store (0x7C, P80H)

  1819: 14 47 1D 5F 4F 4E 5F 00 70 0A 7C 50 38 30 48     // .G._ON_.p.|P80H

            If (LEqual (\_SB.PCI0.PEG0.PEGP.TDGC, One))
            {

  1828: A0 41 0C 93 5C 2F 05 5F 53 42 5F 50 43 49 30 50  // .A..\/._SB_PCI0P
  1838: 45 47 30 50 45 47 50 54 44 47 43 01              // EG0PEGPTDGC.

                If (LEqual (\_SB.PCI0.PEG0.PEGP.DGCX, 0x03))
                {
                    Store (One, _STA)
                    \_SB.PCI0.PEG0.PEGP.GC6O ()
                }

  1844: A0 38 93 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45  // .8.\/._SB_PCI0PE
  1854: 47 30 50 45 47 50 44 47 43 58 0A 03 70 01 5F 53  // G0PEGPDGCX..p._S
  1864: 54 41 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47  // TA\/._SB_PCI0PEG
  1874: 30 50 45 47 50 47 43 36 4F                       // 0PEGPGC6O

                ElseIf
  187D: A1 3A                                            // .:

 (LEqual (\_SB.PCI0.PEG0.PEGP.DGCX, 0x04))
                {
                    Store (One, _STA)
                    \_SB.PCI0.PEG0.PEGP.GC6O ()
                }

                Store (Zero, \_SB.PCI0.PEG0.PEGP.TDGC)

  187F: A0 38 93 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45  // .8.\/._SB_PCI0PE
  188F: 47 30 50 45 47 50 44 47 43 58 0A 04 70 01 5F 53  // G0PEGPDGCX..p._S
  189F: 54 41 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47  // TA\/._SB_PCI0PEG
  18AF: 30 50 45 47 50 47 43 36 4F 70 00 5C 2F 05 5F 53  // 0PEGPGC6Op.\/._S
  18BF: 42 5F 50 43 49 30 50 45 47 30 50 45 47 50 54 44  // B_PCI0PEG0PEGPTD
  18CF: 47 43                                            // GC

                Store (Zero, \_SB.PCI0.PEG0.PEGP.DGCX)
            }

  18D1: 70 00 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47  // p.\/._SB_PCI0PEG
  18E1: 30 50 45 47 50 44 47 43 58                       // 0PEGPDGCX

            Else
            {
                \_SB.PCI0.PEG0.PEGP.SGON ()
                Store (\_SB.PCI0.PEG0.CMDR, Local0)
                Store (Or (Local0, 0x03), Local0)
                Store (Local0, \_SB.PCI0.PEG0.CMDR)
                Store (Zero, \_SB.PCI0.PEG0.D0ST)

  18EA: A1 4F 0F 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45  // .O.\/._SB_PCI0PE
  18FA: 47 30 50 45 47 50 53 47 4F 4E 70 5C 2F 04 5F 53  // G0PEGPSGONp\/._S
  190A: 42 5F 50 43 49 30 50 45 47 30 43 4D 44 52 60 70  // B_PCI0PEG0CMDR`p
  191A: 7D 60 0A 03 00 60 70 60 5C 2F 04 5F 53 42 5F 50  // }`...`p`\/._SB_P
  192A: 43 49 30 50 45 47 30 43 4D 44 52 70 00 5C 2F 04  // CI0PEG0CMDRp.\/.
  193A: 5F 53 42 5F 50 43 49 30 50 45 47 30 44 30 53 54  // _SB_PCI0PEG0D0ST

                If (LEqual (\_SB.PCI0.PEG0.VEID, 0x10DE))
                {

  194A: A0 30 93 5C 2F 04 5F 53 42 5F 50 43 49 30 50 45  // .0.\/._SB_PCI0PE
  195A: 47 30 56 45 49 44 0B DE 10                       // G0VEID...

                    Store (HYSS, \_SB.PCI0.PEG0.NVID)
                }


  1963: 70 48 59 53 53 5C 2F 04 5F 53 42 5F 50 43 49 30  // pHYSS\/._SB_PCI0
  1973: 50 45 47 30 4E 56 49 44                          // PEG0NVID

                If (LEqual (\_SB.PCI0.PEG0.VEID, 0x1002))
                {

  197B: A0 30 93 5C 2F 04 5F 53 42 5F 50 43 49 30 50 45  // .0.\/._SB_PCI0PE
  198B: 47 30 56 45 49 44 0B 02 10                       // G0VEID...

                    Store (HYSS, \_SB.PCI0.PEG0.ATID)
                }


  1994: 70 48 59 53 53 5C 2F 04 5F 53 42 5F 50 43 49 30  // pHYSS\/._SB_PCI0
  19A4: 50 45 47 30 41 54 49 44                          // PEG0ATID

                If (\_SB.PCI0.PEG0.PEGP.OPTF)
                {

  19AC: A0 31 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47  // .1\/._SB_PCI0PEG
  19BC: 30 50 45 47 50 4F 50 54 46                       // 0PEGPOPTF

                    Store (Zero, \_SB.PCI0.PEG0.PEGP.NHDM)
                }

                Store (One, _STA)

  19C5: 70 00 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47  // p.\/._SB_PCI0PEG
  19D5: 30 50 45 47 50 4E 48 44 4D 70 01 5F 53 54 41     // 0PEGPNHDMp._STA

                Store (Zero, MSD3)
            }


  19E4: 70 00 4D 53 44 33                                // p.MSD3

            Store (0x7D, P80H)
        }


  19EA: 70 0A 7D 50 38 30 48                             // p.}P80H

        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
        {
            Store (0x7E, P80H)

  19F1: 14 48 0C 5F 4F 46 46 00 70 0A 7E 50 38 30 48     // .H._OFF.p.~P80H

            If (LEqual (\_SB.PCI0.PEG0.PEGP.TDGC, One))
            {

  1A00: A0 4C 08 93 5C 2F 05 5F 53 42 5F 50 43 49 30 50  // .L..\/._SB_PCI0P
  1A10: 45 47 30 50 45 47 50 54 44 47 43 01              // EG0PEGPTDGC.

                CreateField (\_SB.PCI0.PEG0.PEGP.TGPC, Zero, 0x03, GUPC)

  1A1C: 5B 13 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47  // [.\/._SB_PCI0PEG
  1A2C: 30 50 45 47 50 54 47 50 43 00 0A 03 47 55 50 43  // 0PEGPTGPC...GUPC

                If (LEqual (ToInteger (GUPC), One))
                {
                    \_SB.PCI0.PEG0.PEGP.GC6I ()

  1A3C: A0 26 93 99 47 55 50 43 00 01 5C 2F 05 5F 53 42  // .&..GUPC..\/._SB
  1A4C: 5F 50 43 49 30 50 45 47 30 50 45 47 50 47 43 36  // _PCI0PEG0PEGPGC6
  1A5C: 49                                               // I

                    Store (Zero, _STA)
                }

  1A5D: 70 00 5F 53 54 41                                // p._STA

                ElseIf
  1A63: A1 29                                            // .)

 (LEqual (ToInteger (GUPC), 0x02))
                {
                    \_SB.PCI0.PEG0.PEGP.GC6I ()

  1A65: A0 27 93 99 47 55 50 43 00 0A 02 5C 2F 05 5F 53  // .'..GUPC...\/._S
  1A75: 42 5F 50 43 49 30 50 45 47 30 50 45 47 50 47 43  // B_PCI0PEG0PEGPGC
  1A85: 36 49                                            // 6I

                    Store (Zero, _STA)
                }
            }

  1A87: 70 00 5F 53 54 41                                // p._STA

            Else
            {
                \_SB.PCI0.PEG0.PEGP.SGOF ()
                Store (Zero, _STA)

  1A8D: A1 25 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47  // .%\/._SB_PCI0PEG
  1A9D: 30 50 45 47 50 53 47 4F 46 70 00 5F 53 54 41     // 0PEGPSGOFp._STA

                Store (0x03, MSD3)
            }


  1AAC: 70 0A 03 4D 53 44 33                             // p..MSD3

            Store (0x7F, P80H)
        }
    }


  1AB3: 70 0A 7F 50 38 30 48                             // p..P80H

    PowerResource (NVP2, 0x00, 0x0000)
    {

  1ABA: 5B 84 46 04 4E 56 50 32 00 00 00                 // [.F.NVP2...

        Name (_STA, One)  // _STA: Status

  1AC5: 08 5F 53 54 41 01                                // ._STA.

        Method (_ON, 0, NotSerialized)  // _ON_: Power On
        {
            Store (One, _STA)

  1ACB: 14 1A 5F 4F 4E 5F 00 70 01 5F 53 54 41           // .._ON_.p._STA

            Store ("NVP2-_On ", Debug)
        }


  1AD8: 70 0D 4E 56 50 32 2D 5F 4F 6E 20 00 5B 31        // p.NVP2-_On .[1

        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
        {
            Store (One, _STA)

  1AE6: 14 1B 5F 4F 46 46 00 70 01 5F 53 54 41           // .._OFF.p._STA

            Store ("NvP2-_Off ", Debug)
        }
    }


  1AF3: 70 0D 4E 76 50 32 2D 5F 4F 66 66 20 00 5B 31     // p.NvP2-_Off .[1

    Scope (\_SB.PCI0.PEG0)
    {

  1B02: 10 4E 0A 5C 2F 03 5F 53 42 5F 50 43 49 30 50 45  // .N.\/._SB_PCI0PE
  1B12: 47 30                                            // G0

        Name (_PR0, 
  1B14: 08 5F 50 52 30                                   // ._PR0

Package (0x01)  // _PR0: Power Resources for D0
        {
            \NVP3
        })

  1B19: 12 07 01 5C 4E 56 50 33                          // ...\NVP3

        Name (_PR2, 
  1B21: 08 5F 50 52 32                                   // ._PR2

Package (0x01)  // _PR2: Power Resources for D2
        {
            \NVP2
        })

  1B26: 12 07 01 5C 4E 56 50 32                          // ...\NVP2

        Name (_PR3, 
  1B2E: 08 5F 50 52 33                                   // ._PR3

Package (0x01)  // _PR3: Power Resources for D3hot
        {
            \NVP3
        })

  1B33: 12 07 01 5C 4E 56 50 33                          // ...\NVP3

        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {

  1B3B: 14 1E 5F 53 30 57 00                             // .._S0W.

            If (And (\_SB.OSCO, 0x04))
            {

  1B42: A0 12 7B 5C 2E 5F 53 42 5F 4F 53 43 4F 0A 04 00  // ..{\._SB_OSCO...

                Return (0x04)
            }

  1B52: A4 0A 04                                         // ...

            Else
            {

  1B55: A1 04                                            // ..

                Return (0x03)
            }
        }


  1B57: A4 0A 03                                         // ...

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {

  1B5A: 14 46 05 5F 44 53 57 03                          // .F._DSW.

            If (Arg1)
            {

  1B62: A0 17 69                                         // ..i

                Store ("PEG0 -_DSW call ", Debug)
            }

  1B65: 70 0D 50 45 47 30 20 2D 5F 44 53 57 20 63 61 6C  // p.PEG0 -_DSW cal
  1B75: 6C 20 00 5B 31                                   // l .[1

            ElseIf
  1B7A: A1 36                                            // .6

 (LAnd (Arg0, Arg2))
            {

  1B7C: A0 1B 90 68 6A                                   // ...hj

                Store ("PEG0 -_DSW call-1 ", Debug)
            }

  1B81: 70 0D 50 45 47 30 20 2D 5F 44 53 57 20 63 61 6C  // p.PEG0 -_DSW cal
  1B91: 6C 2D 31 20 00 5B 31                             // l-1 .[1

            Else
            {

  1B98: A1 18                                            // ..

                Store ("PEG0 -_DSW call-2 ", Debug)
            }
        }
    }


  1B9A: 70 0D 50 45 47 30 20 2D 5F 44 53 57 20 63 61 6C  // p.PEG0 -_DSW cal
  1BAA: 6C 2D 32 20 00 5B 31                             // l-2 .[1

    Scope (\_SB.PCI0)
    {

  1BB1: 10 47 11 5C 2E 5F 53 42 5F 50 43 49 30           // .G.\._SB_PCI0

        Device (WMI1)
        {

  1BBE: 5B 82 49 10 57 4D 49 31                          // [.I.WMI1

            Name (_HID, "PNP0C14")  // _HID: Hardware ID

  1BC6: 08 5F 48 49 44 0D 50 4E 50 30 43 31 34 00        // ._HID.PNP0C14.

            Name (_UID, "OPT1")  // _UID: Unique ID

  1BD4: 08 5F 55 49 44 0D 4F 50 54 31 00                 // ._UID.OPT1.

            Name (_WDG, 
  1BDF: 08 5F 57 44 47                                   // ._WDG

Buffer (0x14)
            {
                /* 0000 */  0x3C, 0x5C, 0xCB, 0xF6, 0xAE, 0x9C, 0xBD, 0x4E,
                /* 0008 */  0xB5, 0x77, 0x93, 0x1E, 0xA3, 0x2A, 0x2C, 0xC0,
                /* 0010 */  0x4D, 0x58, 0x01, 0x02                         
            })

  1BE4: 11 17 0A 14 3C 5C CB F6 AE 9C BD 4E B5 77 93 1E  // ....<\.....N.w..
  1BF4: A3 2A 2C C0 4D 58 01 02                          // .*,.MX..

            Method (WMMX, 3, NotSerialized)
            {

  1BFC: 14 4C 0C 57 4D 4D 58 03                          // .L.WMMX.

                CreateDWordField (Arg2, Zero, FUNC)

  1C04: 8A 6A 00 46 55 4E 43                             // .j.FUNC

                If (LEqual (FUNC, 0x534F525F))
                {

  1C0B: A0 44 04 93 46 55 4E 43 0C 5F 52 4F 53           // .D..FUNC._ROS

                    If (
  1C18: A0 37 92                                         // .7.

LGreaterEqual (SizeOf (Arg2), 0x08))
                    {

  1C1B: 95 87 6A 0A 08                                   // ..j..

                        CreateDWordField (Arg2, 0x04, ARGS)

  1C20: 8A 6A 0A 04 41 52 47 53                          // .j..ARGS

                        CreateDWordField (Arg2, 0x08, XARG)

  1C28: 8A 6A 0A 08 58 41 52 47                          // .j..XARG

                        Return (\_SB.PCI0.PEG0.PEGP._ROM (ARGS, XARG))
                    }
                }


  1C30: A4 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47 30  // .\/._SB_PCI0PEG0
  1C40: 50 45 47 50 5F 52 4F 4D 41 52 47 53 58 41 52 47  // PEGP_ROMARGSXARG

                If (LEqual (FUNC, 0x4D53445F))
                {

  1C50: A0 46 07 93 46 55 4E 43 0C 5F 44 53 4D           // .F..FUNC._DSM

                    If (
  1C5D: A0 49 06 92                                      // .I..

LGreaterEqual (SizeOf (Arg2), 0x1C))
                    {

  1C61: 95 87 6A 0A 1C                                   // ..j..

                        CreateField (Arg2, Zero, 0x80, MUID)

  1C66: 5B 13 6A 00 0A 80 4D 55 49 44                    // [.j...MUID

                        CreateDWordField (Arg2, 0x10, REVI)

  1C70: 8A 6A 0A 10 52 45 56 49                          // .j..REVI

                        CreateDWordField (Arg2, 0x14, SFNC)

  1C78: 8A 6A 0A 14 53 46 4E 43                          // .j..SFNC

                        CreateField (Arg2, 0xE0, 0x20, XRG0)

  1C80: 5B 13 6A 0A E0 0A 20 58 52 47 30                 // [.j... XRG0

                        If (CondRefOf (\_SB.PCI0.GFX0._DSM))
                        {

  1C8B: A0 3B 5B 12 5C 2F 04 5F 53 42 5F 50 43 49 30 47  // .;[.\/._SB_PCI0G
  1C9B: 46 58 30 5F 44 53 4D 00                          // FX0_DSM.

                            Return (\_SB.PCI0.GFX0._DSM)
                            MUID
                            REVI
                            SFNC
                            XRG0
                        }
                    }
                }


  1CA3: A4 5C 2F 04 5F 53 42 5F 50 43 49 30 47 46 58 30  // .\/._SB_PCI0GFX0
  1CB3: 5F 44 53 4D 4D 55 49 44 52 45 56 49 53 46 4E 43  // _DSMMUIDREVISFNC
  1CC3: 58 52 47 30                                      // XRG0

                Return (Zero)
            }
        }
    }
}



Table Header:
Table Body (Length 0x1CC9)
