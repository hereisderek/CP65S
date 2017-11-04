/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-14.aml, Wed Aug 16 21:41:46 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001CC9 (7369)
 *     Revision         0x01
 *     Checksum         0x2B
 *     OEM ID           "HASEE "
 *     OEM Table ID     "PARADISE"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "HASEE ", "PARADISE", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    //External (***D, UnknownObj)    // Warning: Unknown object
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
        Name (OTM, "OTMACPI 2010-Mar-09 12:08:26")
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        OperationRegion (PCI2, SystemMemory, EBAS, 0x0500)
        Field (PCI2, DWordAcc, Lock, Preserve)
        {
            Offset (0x04), 
            CMDR,   32, 
            VGAR,   1984, 
            Offset (0x488), 
                ,   25, 
            NHDM,   1
        }

        Name (VGAB, Buffer (0xF8)
        {
             0x00                                           
        })
        Name (GPRF, Zero)
        OperationRegion (NVHM, SystemMemory, NVHA, 0x00020400)
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

        Name (OPCE, 0x02)
        Name (OPTF, One)
        Name (DGPS, Zero)
        Name (_PSC, Zero)  // _PSC: Power State Current
        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            Store (Zero, _PSC)
            If (LNotEqual (DGPS, Zero))
            {
                _ON ()
                Store (Zero, DGPS)
            }
        }

        Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
        {
            Store (One, _PSC)
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If (LEqual (OPCE, 0x03))
            {
                If (LEqual (DGPS, Zero))
                {
                    _OFF ()
                    Store (One, DGPS)
                }

                Store (0x02, OPCE)
            }

            Store (0x03, _PSC)
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Method (_IRC, 0, Serialized)  // _IRC: Inrush Current
        {
            Return (Zero)
        }

        

        Method (MXDS, 1, Serialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Return (SGPI (DSEL))
            }
            Else
            {
                SGPO (DSEL, One)
                SGPO (PSEL, One)
            }

            Return (Zero)
        }

        Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
        {
            Store (Arg0, Local0)
            Store (Arg1, Local1)
            If (LGreater (Local1, 0x1000))
            {
                Store (0x1000, Local1)
            }

            If (LGreater (Local0, 0x00020000))
            {
                Return (Buffer (Local1)
                {
                     0x00                                           
                })
            }

            Multiply (Local1, 0x08, Local3)
            Name (ROM1, Buffer (0x8000)
            {
                 0x00                                           
            })
            Name (ROM2, Buffer (Local1)
            {
                 0x00                                           
            })
            If (LLess (Local0, 0x8000))
            {
                Store (RBF1, ROM1)
            }
            ElseIf (LLess (Local0, 0x00010000))
            {
                Subtract (Local0, 0x8000, Local0)
                Store (RBF2, ROM1)
            }
            ElseIf (LLess (Local0, 0x00018000))
            {
                Subtract (Local0, 0x00010000, Local0)
                Store (RBF3, ROM1)
            }
            ElseIf (LLess (Local0, 0x00020000))
            {
                Subtract (Local0, 0x00018000, Local0)
                Store (RBF4, ROM1)
            }

            Multiply (Local0, 0x08, Local2)
            CreateField (ROM1, Local2, Local3, TMPB)
            Store (TMPB, ROM2)
            Return (ROM2)
        }

        Method (GMXM, 3, NotSerialized)
        {
            Store (0xC8, Local0)
            Name (BUMA, Buffer (Local0) {})
            If (CondRefOf (MXM3, Local6))
            {
                Store (MXM3, BUMA)
            }

            Store (Zero, Local1)
            Store (Zero, Local5)
            While (One)
            {
                Add (Local1, 0x06, Local2)
                Store (DerefOf (Index (BUMA, Local2)), Local3)
                If (Local3)
                {
                    Add (Local3, 0x08, Local3)
                }
                Else
                {
                    Break
                }

                Store (Local1, Local4)
                Add (Local4, 0x04, Local4)
                If (LEqual (DerefOf (Index (BUMA, Local4)), Arg0))
                {
                    Increment (Local4)
                    If (LEqual (DerefOf (Index (BUMA, Local4)), Arg1))
                    {
                        If (LEqual (Local5, Arg2))
                        {
                            Multiply (Local1, 0x08, Local1)
                            Multiply (Local3, 0x08, Local3)
                            CreateField (BUMA, Local1, Local3, TMPB)
                            Return (TMPB)
                        }
                        Else
                        {
                            Increment (Local5)
                        }
                    }
                }

                Add (Local1, Local3, Local1)
                If (LGreater (Local1, Local0))
                {
                    Break
                }
            }

            Return (Buffer (0x08)
            {
                 0x00                                           
            })
        }

        

        

        Name (CTXT, Zero)
        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            P8XH (Zero, 0x78)
            SGON ()
            Store (Zero, CMDR)
            Store (VGAB, VGAR)
            Store (0x00100006, CMDR)
            If (OPTF)
            {
                Store (Zero, NHDM)
            }
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            P8XH (Zero, 0x76)
            If (LEqual (CTXT, Zero))
            {
                Store (VGAR, VGAB)
                Store (One, CTXT)
            }

            SGOF ()
        }
    }

    Scope (\_SB.PCI0.GFX0)
    {
        OperationRegion (NVIG, SystemMemory, NVGA, 0x0400)
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

        
    }

    Scope (\_SB.PCI0)
    {
        Name (GPS, "GPSACPI 2012-Aug-12 14:56:05")
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Name (PSAP, Zero)
        Name (ECBF, Buffer (0x14) {})
        CreateDWordField (ECBF, Zero, EDS1)
        CreateDWordField (ECBF, 0x04, EDS2)
        CreateDWordField (ECBF, 0x08, EDS3)
        CreateDWordField (ECBF, 0x0C, EDS4)
        CreateDWordField (ECBF, 0x10, EPDT)
        Name (GPSP, Buffer (0x24) {})
        CreateDWordField (GPSP, Zero, RETN)
        CreateDWordField (GPSP, 0x04, VRV1)
        CreateDWordField (GPSP, 0x08, TGPU)
        CreateDWordField (GPSP, 0x0C, PDTS)
        CreateDWordField (GPSP, 0x10, SFAN)
        CreateDWordField (GPSP, 0x14, SKNT)
        CreateDWordField (GPSP, 0x18, CPUE)
        CreateDWordField (GPSP, 0x1C, TMP1)
        CreateDWordField (GPSP, 0x20, TMP2)
        Name (NLIM, Zero)
        Name (PSCP, Zero)
        Method (GPS, 4, Serialized)
        {
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store ("------- GPS DSM --------", Debug)
            If (LNotEqual (Arg1, 0x0100))
            {
                Return (0x80000002)
            }

            While (One)
            {
                Store (ToInteger (Arg2), _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Name (FMSK, Buffer (0x08)
                    {
                         0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF 
                    })
                    Store (Buffer (0x08)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }, Local0)
                    Divide (Zero, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x13, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x20, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x21, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x22, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x23, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x2A, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Store (SizeOf (Local0), Local1)
                    While (LNotEqual (Local1, Zero))
                    {
                        Decrement (Local1)
                        Store (DerefOf (Index (FMSK, Local1)), Local2)
                        And (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    }

                    Return (Local0)
                }
                ElseIf (LEqual (_T_0, 0x13))
                {
                    Store ("GPS fun 19", Debug)
                    Return (Arg3)
                }
                ElseIf (LEqual (_T_0, 0x20))
                {
                    Store ("GPS fun 20", Debug)
                    Name (RET1, Zero)
                    CreateBitField (Arg3, 0x18, NRIT)
                    CreateBitField (Arg3, 0x19, NRIS)
                    If (NRIS)
                    {
                        If (NRIT)
                        {
                            Or (RET1, 0x01000000, RET1)
                        }
                        Else
                        {
                            And (RET1, 0xFEFFFFFF, RET1)
                        }
                    }

                    Or (RET1, 0x40000000, RET1)
                    If (NLIM)
                    {
                        Or (RET1, One, RET1)
                    }

                    Return (RET1)
                }
                ElseIf (LEqual (_T_0, 0x21))
                {
                    Return (\_PR.CPU0._PSS)
                }
                ElseIf (LEqual (_T_0, 0x22))
                {
                    CreateByteField (Arg3, Zero, PCAP)
                    If (And (GPSC, One))
                    {
                        If (LOr (LEqual (\_SB.AC.ACFG, Zero), LEqual (And (OEMF, 0x02), One)))
                        {
                            Store (\_PR.CPU0._PSS, Local1)
                            Store (SizeOf (Local1), Local2)
                            ShiftRight (Local2, One, Local0)
                            Increment (Local0)
                            If (LLess (PCAP, Local0))
                            {
                                Store (Local0, PCAP)
                            }
                        }
                    }

                    Store (PCAP, \_PR.CPU0._PPC)
                    If (And (GPSC, One))
                    {
                        Notify (\_SB.AC.ADJP (Zero), Store (PCAP, PSAP))
                    }

                    Return (PCAP)
                }
                ElseIf (LEqual (_T_0, 0x23))
                {
                    Return (\_PR.CPU0._PPC)
                }
                ElseIf (LEqual (_T_0, 0x25))
                {
                    Store ("GPS fun 25", Debug)
                    Return (\_PR.CPU0._TSS)
                }
                ElseIf (LEqual (_T_0, 0x26))
                {
                    Store ("GPS fun 26", Debug)
                    CreateDWordField (Arg3, Zero, TCAP)
                    Store (TCAP, \_PR.CPU0._PTC)
                    Notify (\_PR.CPU0, 0x80)
                    Return (TCAP)
                }
                ElseIf (LEqual (_T_0, 0x2A))
                {
                    Store ("GPS fun 2a", Debug)
                    CreateByteField (Arg3, Zero, PSH0)
                    CreateByteField (Arg3, One, PSH1)
                    CreateBitField (Arg3, 0x08, GPUT)
                    CreateBitField (Arg3, 0x09, CPUT)
                    CreateBitField (Arg3, 0x0A, FANS)
                    CreateBitField (Arg3, 0x0B, SKIN)
                    CreateBitField (Arg3, 0x0C, ENGR)
                    CreateBitField (Arg3, 0x0D, SEN1)
                    CreateBitField (Arg3, 0x0E, SEN2)
                    While (One)
                    {
                        Store (PSH0, _T_1)
                        If (LEqual (_T_1, Zero))
                        {
                            If (CPUT)
                            {
                                Store (0x0200, RETN)
                                Or (RETN, PSH0, RETN)
                                Store (\_SB.PCI0.LPCB.EC.TMP, PDTS)
                            }

                            Return (GPSP)
                        }
                        ElseIf (LEqual (_T_1, One))
                        {
                            Store (0x0300, RETN)
                            Or (RETN, PSH0, RETN)
                            Store (0x03E8, PDTS)
                            Return (GPSP)
                        }
                        ElseIf (LEqual (_T_1, 0x02))
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
                            Return (GPSP)
                        }

                        Break
                    }
                }

                Break
            }

            Return (0x80000002)
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Name (SMBS, 0x0580)
        Name (SMBL, 0x20)
        Name (PMBS, 0x1800)
        Name (GPBS, 0x1C00)
        Name (SMIP, 0xB2)
        Name (APCB, 0xFEC00000)
        Name (APCL, 0x1000)
        Name (SMCR, 0x1830)
        Name (HPTB, 0xFED00000)
        Name (HPTC, 0xFED1F404)
        Name (FLSZ, 0x00400000)
        Name (SRCB, 0xFED1C000)
        Name (RCLN, 0x4000)
        Name (PEBS, 0xF8000000)
        Name (PELN, 0x04000000)
        Name (LAPB, 0xFEE00000)
        Name (EGPB, 0xFED19000)
        Name (MCHB, 0xFED10000)
        Name (VTBS, 0xFED90000)
        Name (VTLN, 0x4000)
        Name (ACPH, 0xDE)
        Name (ASSB, Zero)
        Name (AOTB, Zero)
        Name (AAXB, Zero)
        Name (PEHP, One)
        Name (SHPC, One)
        Name (PEPM, One)
        Name (PEER, One)
        Name (PECS, One)
        Name (ITKE, Zero)
        Name (SRSI, 0xB2)
        Name (CSMI, 0x61)
        Name (FMBL, One)
        Name (FDTP, 0x02)
        Name (FUPS, 0x03)
        Name (FUWS, 0x04)
        Name (BGR, One)
        Name (BFR, 0x02)
        Name (BBR, 0x03)
        Name (BWC, 0x04)
        Name (BWT1, 0x20)
        Name (BFHC, 0x0100)
        Name (TRTP, One)
        Name (WDTE, One)
        Name (TRTD, 0x02)
        Name (TRTI, 0x03)
        Name (PFTI, 0x04)
        Name (GCDD, One)
        Name (DSTA, 0x0A)
        Name (DSLO, 0x0C)
        Name (DSLC, 0x0E)
        Name (PITS, 0x10)
        Name (SBCS, 0x12)
        Name (SALS, 0x13)
        Name (LSSS, 0x2A)
        Name (SOOT, 0x35)
        Name (PDBR, 0x4D)
        Name (BW1P, 0x21)
        Name (BW2C, 0x22)
        Name (BW2P, 0x23)
        Name (BSPC, 0x24)
        Name (BSPP, 0x25)
        Name (BICO, 0x27)
        Name (BICC, 0x28)
        Name (BHB, 0x30)
        Name (BFS2, 0x31)
        Name (BFS3, 0x32)
        Name (BFS4, 0x33)
        Name (BRH, 0x35)
        Name (SMIA, 0xB2)
        Name (SMIB, 0xB3)
        Name (OFST, 0x35)
        Name (TRST, 0x02)
        Name (TCMF, Zero)
        Name (TMF1, Zero)
        Name (TMF2, Zero)
        Name (TMF3, Zero)
        Name (TTPF, One)
        Name (TTDP, Zero)
        Name (TPMF, Zero)
        Name (DSSP, Zero)
        Name (FHPP, Zero)
        Name (HIDK, "MSFT0001")
        Name (HIDM, "MSFT0003")
        Name (CIDK, 0x0303D041)
        Name (CIDM, 0x030FD041)
        Name (MBEC, Zero)
        Name (PMLN, 0x0100)
        Name (GPLN, 0x0400)
        Name (ECBL, Zero)
        Name (TPID, One)
        Name (MOCD, Zero)
        Name (TGPC, Buffer (0x04)
        {
             0x00, 0x00, 0x00, 0x00                         
        })
        Name (TDGC, Zero)
        Name (DGCX, Zero)
        Name (TRPC, Zero)
        Method (GC6I, 0, Serialized)
        {
            Store ("<<< GC6I >>>", Debug)
            Store (Zero, \_SB.PCI0.LPCB.EC.GPUT)
            \_SB.PCI0.PEG0.PEGP.SPP0 ()
            Store (One, \_SB.PCI0.PEG0.LNKD)
            Sleep (0x64)
        }

        Method (GC6O, 0, Serialized)
        {
            Store ("<<< GC6O >>>", Debug)
            While (LNotEqual (\_SB.PCI0.PEG0.PEGP.GFBE (), One))
            {
                Sleep (One)
            }

            \_SB.PCI0.PEG0.PEGP.SGPE (Zero)
            Store (Zero, \_SB.PCI0.PEG0.LNKD)
            While (LNotEqual (\_SB.PCI0.PEG0.PEGP.GFBE (), Zero))
            {
                Sleep (One)
            }

            \_SB.PCI0.PEG0.PEGP.SGPE (One)
            Store (One, \_SB.PCI0.LPCB.EC.GPUT)
            \_SB.PCI0.PEG0.PEGP.RPP0 ()
        }

        Method (GETS, 0, Serialized)
        {
            Sleep (0x10)
            If (LEqual (\_SB.PCI0.PEG0.PEGP.GFBE (), One))
            {
                Store ("<<< GETS() return 0x3 >>>", Debug)
                Return (0x03)
            }
            Else
            {
                Store ("<<< GETS() return 0x1 >>>", Debug)
                Return (One)
            }
        }

        Method (NGC6, 4, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store ("------- GC6 DSM --------", Debug)
            If (LLess (Arg1, 0x0100))
            {
                Return (0x80000001)
            }

            While (One)
            {
                Store (ToInteger (Arg2), _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Return (Buffer (0x04)
                    {
                         0x1B, 0x00, 0x00, 0x00                         
                    })
                }
                ElseIf (LEqual (_T_0, One))
                {
                    Name (JTB1, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateField (JTB1, Zero, One, JTEN)
                    CreateField (JTB1, One, 0x02, SREN)
                    CreateField (JTB1, 0x03, 0x03, PLPR)
                    CreateField (JTB1, 0x06, 0x02, FBPR)
                    CreateField (JTB1, 0x08, 0x02, GUPR)
                    CreateField (JTB1, 0x0A, One, GC6R)
                    CreateField (JTB1, 0x0B, One, PTRH)
                    CreateField (JTB1, 0x0D, One, MHYB)
                    CreateField (JTB1, 0x0E, One, RPCL)
                    CreateField (JTB1, 0x0F, 0x02, GC6V)
                    CreateField (JTB1, 0x14, 0x0C, JTRV)
                    Store (One, JTEN)
                    Store (One, GC6R)
                    Store (One, MHYB)
                    Store (One, RPCL)
                    If (LEqual (ToInteger (RPCL), One))
                    {
                        Store (One, TRPC)
                    }

                    Store (One, GC6V)
                    Store (One, PTRH)
                    Store (One, SREN)
                    Store (0x0103, JTRV)
                    Return (JTB1)
                }
                ElseIf (LEqual (_T_0, 0x02))
                {
                    Store ("GPS fun 19", Debug)
                    Return (Arg3)
                }
                ElseIf (LEqual (_T_0, 0x03))
                {
                    CreateField (Arg3, Zero, 0x03, GUPC)
                    CreateField (Arg3, 0x04, One, PLPC)
                    CreateField (Arg3, 0x0E, 0x02, DFGC)
                    CreateField (Arg3, 0x10, 0x03, GPCX)
                    Store (Arg3, TGPC)
                    If (LOr (LNotEqual (ToInteger (GUPC), Zero), LNotEqual (ToInteger (DFGC), Zero)))
                    {
                        Store (ToInteger (DFGC), TDGC)
                        Store (ToInteger (GPCX), DGCX)
                    }

                    Name (JTB3, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateField (JTB3, Zero, 0x03, GUPS)
                    CreateField (JTB3, 0x03, One, GPGS)
                    CreateField (JTB3, 0x07, One, PLST)
                    If (LNotEqual (ToInteger (DFGC), Zero))
                    {
                        Store (One, GPGS)
                        Store (One, GUPS)
                        Return (JTB3)
                    }

                    If (LEqual (ToInteger (GUPC), One))
                    {
                        GC6I ()
                        Store (One, PLST)
                        Store (Zero, GUPS)
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x02))
                    {
                        GC6I ()
                        If (LEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST)
                        }

                        Store (Zero, GUPS)
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x03))
                    {
                        GC6O ()
                        If (LNotEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST)
                        }

                        Store (One, GPGS)
                        Store (Zero, GUPS)
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x04))
                    {
                        GC6O ()
                        If (LNotEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST)
                        }

                        Store (One, GPGS)
                        Store (Zero, GUPS)
                    }
                    ElseIf (LEqual (ToInteger (GUPC), Zero))
                    {
                        Store (GETS (), GUPS)
                        If (LEqual (ToInteger (GUPS), One))
                        {
                            Store (One, GPGS)
                        }
                        Else
                        {
                            Store (Zero, GPGS)
                        }
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x06)) {}
                    Return (JTB3)
                }
                ElseIf (LEqual (_T_0, 0x04))
                {
                    Return (0x80000002)
                }

                Break
            }

            Return (0x80000002)
        }
    }

    Name (MSD3, Zero)
    PowerResource (NVP3, 0x00, 0x0000)
    {
        Name (_STA, One)  // _STA: Status
        Name (INDX, Zero)
        Method (_ON, 0, NotSerialized)  // _ON_: Power On
        {
            Store (0x7C, P80H)
            If (LEqual (\_SB.PCI0.PEG0.PEGP.TDGC, One))
            {
                If (LEqual (\_SB.PCI0.PEG0.PEGP.DGCX, 0x03))
                {
                    Store (One, _STA)
                    \_SB.PCI0.PEG0.PEGP.GC6O ()
                }
                ElseIf (LEqual (\_SB.PCI0.PEG0.PEGP.DGCX, 0x04))
                {
                    Store (One, _STA)
                    \_SB.PCI0.PEG0.PEGP.GC6O ()
                }

                Store (Zero, \_SB.PCI0.PEG0.PEGP.TDGC)
                Store (Zero, \_SB.PCI0.PEG0.PEGP.DGCX)
            }
            Else
            {
                \_SB.PCI0.PEG0.PEGP.SGON ()
                Store (\_SB.PCI0.PEG0.CMDR, Local0)
                Store (Or (Local0, 0x03), Local0)
                Store (Local0, \_SB.PCI0.PEG0.CMDR)
                Store (Zero, \_SB.PCI0.PEG0.D0ST)
                If (LEqual (\_SB.PCI0.PEG0.VEID, 0x10DE))
                {
                    Store (HYSS, \_SB.PCI0.PEG0.NVID)
                }

                If (LEqual (\_SB.PCI0.PEG0.VEID, 0x1002))
                {
                    Store (HYSS, \_SB.PCI0.PEG0.ATID)
                }

                If (\_SB.PCI0.PEG0.PEGP.OPTF)
                {
                    Store (Zero, \_SB.PCI0.PEG0.PEGP.NHDM)
                }

                Store (One, _STA)
                Store (Zero, MSD3)
            }

            Store (0x7D, P80H)
        }

        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
        {
            Store (0x7E, P80H)
            If (LEqual (\_SB.PCI0.PEG0.PEGP.TDGC, One))
            {
                CreateField (\_SB.PCI0.PEG0.PEGP.TGPC, Zero, 0x03, GUPC)
                If (LEqual (ToInteger (GUPC), One))
                {
                    \_SB.PCI0.PEG0.PEGP.GC6I ()
                    Store (Zero, _STA)
                }
                ElseIf (LEqual (ToInteger (GUPC), 0x02))
                {
                    \_SB.PCI0.PEG0.PEGP.GC6I ()
                    Store (Zero, _STA)
                }
            }
            Else
            {
                \_SB.PCI0.PEG0.PEGP.SGOF ()
                Store (Zero, _STA)
                Store (0x03, MSD3)
            }

            Store (0x7F, P80H)
        }
    }

    PowerResource (NVP2, 0x00, 0x0000)
    {
        Name (_STA, One)  // _STA: Status
        Method (_ON, 0, NotSerialized)  // _ON_: Power On
        {
            Store (One, _STA)
            Store ("NVP2-_On ", Debug)
        }

        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
        {
            Store (One, _STA)
            Store ("NvP2-_Off ", Debug)
        }
    }

    Scope (\_SB.PCI0.PEG0)
    {
        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            \NVP3
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            \NVP2
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            \NVP3
        })
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            If (And (\_SB.OSCO, 0x04))
            {
                Return (0x04)
            }
            Else
            {
                Return (0x03)
            }
        }

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                Store ("PEG0 -_DSW call ", Debug)
            }
            ElseIf (LAnd (Arg0, Arg2))
            {
                Store ("PEG0 -_DSW call-1 ", Debug)
            }
            Else
            {
                Store ("PEG0 -_DSW call-2 ", Debug)
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        
    }
}

