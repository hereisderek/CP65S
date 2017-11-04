/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170929 (64-bit version)(RM)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-9-PARADISE.aml, Sun Nov  5 03:46:45 2017
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
     * a reference file -- ../refs.txt
     */

    External (**42, UnknownObj)    // Warning: Unknown object
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
    External (_SB_.PCI0.LPCB.EC__.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.LPCB.EC__.GPUT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TMP_, FieldUnitObj)
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
    External (DTGP, MethodObj)    // Imported: 5 Arguments
    External (EBAS, FieldUnitObj)
    External (ESEL, FieldUnitObj)
    External (GPSC, FieldUnitObj)
    External (HYSS, FieldUnitObj)
    External (NVGA, FieldUnitObj)
    External (NVHA, FieldUnitObj)
    External (OEMF, FieldUnitObj)
    External (P80H, FieldUnitObj)
    External (P8XH, MethodObj)    // 2 Arguments
    External (PSEL, FieldUnitObj)
    External (RMDT.P1__, MethodObj)    // Imported: 1 Arguments
    External (RMDT.P2__, MethodObj)    // Imported: 2 Arguments
    External (RMDT.P3__, MethodObj)    // Imported: 3 Arguments
    External (RMDT.P4__, MethodObj)    // Imported: 4 Arguments
    External (RMDT.P5__, MethodObj)    // Imported: 5 Arguments
    External (RMDT.P6__, MethodObj)    // Imported: 6 Arguments
    External (RMDT.P7__, MethodObj)    // Imported: 7 Arguments
    External (RMDT.PUSH, MethodObj)    // Imported: 1 Arguments

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

        Method (MXMX, 1, Serialized)
        {
            If (LEqual (Arg0, Zero))
            {
                SGPO (ESEL, One)
                Return (One)
            }

            If (LEqual (Arg0, One))
            {
                Return (One)
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (SGPI (ESEL))
            }

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
            Name (BUMA, Buffer (Local0){})
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

        Method (HDSM, 4, Serialized)
        {
            If (LEqual (Arg0, ToUUID ("4004a400-917d-4cf2-b89c-79b62fd55665")))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Return (Buffer (0x04)
                        {
                             0x01, 0x00, 0x01, 0x01                         
                        })
                    }
                    Case (0x18)
                    {
                        Return (Buffer (0x04)
                        {
                             0x30, 0x00, 0x00, 0x00                         
                        })
                    }
                    Case (0x10)
                    {
                        Name (MXM3, Buffer (0x1D)
                        {
                            /* 0000 */  0x4D, 0x58, 0x4D, 0x5F, 0x03, 0x00, 0x15, 0x00,
                            /* 0008 */  0x00, 0xFF, 0x09, 0xF0, 0xF9, 0x3E, 0x00, 0x00,
                            /* 0010 */  0x01, 0x1A, 0x04, 0x00, 0x03, 0x03, 0xF4, 0x01,
                            /* 0018 */  0x13, 0x02, 0xE8, 0x03, 0x4E                   
                        })
                        Return (MXM3)
                    }

                }

                Return (0x80000002)
            }

            Return (0x80000001)
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            CreateByteField (Arg0, 0x03, GUID)
            Return (\_SB.PCI0.GFX0.HDSM (Arg0, Arg1, Arg2, Arg3))
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

        Method (HDSM, 4, Serialized)
        {
            If (LEqual (Arg0, ToUUID ("a3132d01-8cda-49ba-a52e-bc9d46df6b81")))
            {
                Return (\_SB.PCI0.PEG0.PEGP.GPS (Arg0, Arg1, Arg2, Arg3))
            }

            If (LEqual (Arg0, ToUUID ("cbeca351-067b-4924-9cbd-b46b00b86f34")))
            {
                Return (\_SB.PCI0.PEG0.PEGP.NGC6 (Arg0, Arg1, Arg2, Arg3))
            }

            Name (SGCI, Zero)
            Name (NBCI, Zero)
            Name (OPCI, Zero)
            Name (BUFF, Zero)
            If (LEqual (Arg0, ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
            {
                Store (One, OPCI)
            }

            If (LOr (OPCI, LOr (SGCI, NBCI)))
            {
                If (OPCI)
                {
                    If (LNotEqual (Arg1, 0x0100))
                    {
                        Return (0x80000002)
                    }
                }
                ElseIf (LNotEqual (Arg1, 0x0102))
                {
                    Return (0x80000002)
                }

                If (LEqual (Arg2, Zero))
                {
                    If (SGCI)
                    {
                        Return (Buffer (0x04)
                        {
                             0x7F, 0x00, 0x04, 0x00                         
                        })
                    }
                    ElseIf (NBCI)
                    {
                        Return (Buffer (0x04)
                        {
                             0x73, 0x00, 0x04, 0x00                         
                        })
                    }
                    ElseIf (OPCI)
                    {
                        Return (Buffer (0x04)
                        {
                             0x01, 0x18, 0x03, 0x0C                         
                        })
                    }
                }

                If (LEqual (Arg2, One))
                {
                    Name (TEMP, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateDWordField (TEMP, Zero, STS0)
                    If (SGCI)
                    {
                        Or (STS0, 0x0B0000BF, STS0)
                        Or (STS0, ShiftLeft (SGNC, 0x08, SGNC), STS0)
                    }
                    Else
                    {
                        Or (STS0, Zero, STS0)
                    }

                    Return (TEMP)
                }

                If (LEqual (Arg2, 0x02))
                {
                    Name (TMP1, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateDWordField (TMP1, Zero, STS1)
                    ToInteger (Arg3, Local0)
                    And (Local0, 0x1F, Local0)
                    If (And (Local0, 0x10))
                    {
                        And (Local0, 0x0F, Local0)
                        Store (Local0, GPSS)
                        Notify (\_SB.PCI0.GFX0, 0xD9)
                        Notify (\_SB.PCI0.WMI1, 0xD9)
                    }
                    Else
                    {
                        And (Local0, 0x0F, Local0)
                        If (LEqual (GPPO, One))
                        {
                            Store (GPSS, Local0)
                            Or (Local0, 0x10, Local0)
                            Store (Zero, GPPO)
                        }
                    }

                    Or (STS1, Local0, STS1)
                    Return (TMP1)
                }

                If (LEqual (Arg2, 0x03))
                {
                    Name (TMP2, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateDWordField (TMP2, Zero, STS2)
                    ToInteger (Arg3, Local0)
                    And (Local0, 0x03, Local0)
                    If (LEqual (Local0, Zero))
                    {
                        \_SB.PCI0.PEG0.PEGP.SGST ()
                    }

                    If (LEqual (Local0, One))
                    {
                        \_SB.PCI0.PEG0.PEGP.SGON ()
                    }

                    If (LEqual (Local0, 0x02))
                    {
                        \_SB.PCI0.PEG0.PEGP.SGOF ()
                    }

                    If (LEqual (\_SB.PCI0.PEG0.PEGP.SGST (), 0x0F))
                    {
                        Or (STS2, One, STS2)
                    }

                    Return (TMP2)
                }

                If (LEqual (Arg2, 0x04))
                {
                    Name (TMP3, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateDWordField (TMP3, Zero, STS3)
                    ToInteger (Arg3, Local0)
                    Store (Local0, Local1)
                    ShiftRight (Local0, 0x10, Local0)
                    And (Local0, One, USPM)
                    ShiftRight (Local1, 0x0D, Local1)
                    And (Local1, 0x03, Local1)
                    If (LNotEqual (Local1, GPSP))
                    {
                        If (LEqual (USPM, One))
                        {
                            Store (Local1, GPSP)
                        }
                        Else
                        {
                            Store (GPSP, Local1)
                            Or (STS3, 0x8000, STS3)
                        }
                    }

                    Or (STS3, ShiftLeft (Local1, 0x0D), STS3)
                    Return (TMP3)
                }

                If (LEqual (Arg2, 0x10))
                {
                    CreateWordField (Arg3, 0x02, USRG)
                    Name (OPVK, Buffer (0xE6)
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
                    If (LEqual (USRG, 0x564B))
                    {
                        Return (OPVK)
                    }

                    Return (Zero)
                }

                If (LEqual (Arg2, 0x11))
                {
                    Return (Zero)
                }

                If (LEqual (Arg2, 0x12))
                {
                    Return (Package (0x0A)
                    {
                        0xD0, 
                        ToUUID ("921a2f40-0dc4-402d-ac18-b48444ef9ed2"), 
                        0xD9, 
                        ToUUID ("c12ad361-9fa9-4c74-901f-95cb0945cf3e"), 
                        0xDB, 
                        ToUUID ("42848006-8886-490e-8c72-2bdca93a8a09"), 
                        0xEF, 
                        ToUUID ("b3e485d2-3cc1-4b54-8f31-77ba2fdc9ebe"), 
                        0xF0, 
                        ToUUID ("360d6fb6-1d4e-4fa6-b848-1be33dd8ec7b")
                    })
                }

                If (LEqual (Arg2, 0x1A))
                {
                    CreateField (Arg3, 0x18, 0x02, OMPR)
                    CreateField (Arg3, Zero, One, FLCH)
                    CreateField (Arg3, One, One, DVSR)
                    CreateField (Arg3, 0x02, One, DVSC)
                    If (ToInteger (FLCH))
                    {
                        Store (OMPR, \_SB.PCI0.PEG0.PEGP.OPCE)
                    }

                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }, Local0)
                    CreateField (Local0, Zero, One, OPEN)
                    CreateField (Local0, 0x03, 0x02, CGCS)
                    CreateField (Local0, 0x06, One, SHPC)
                    CreateField (Local0, 0x08, One, SNSR)
                    CreateField (Local0, 0x18, 0x03, DGPC)
                    CreateField (Local0, 0x1B, 0x02, HDAC)
                    Store (One, OPEN)
                    Store (One, SHPC)
                    Store (0x02, HDAC)
                    Store (One, DGPC)
                    If (ToInteger (DVSC))
                    {
                        If (ToInteger (DVSR))
                        {
                            Store (One, \_SB.PCI0.PEG0.PEGP.GPRF)
                        }
                        Else
                        {
                            Store (Zero, \_SB.PCI0.PEG0.PEGP.GPRF)
                        }
                    }

                    Store (\_SB.PCI0.PEG0.PEGP.GPRF, SNSR)
                    If (LNotEqual (\_SB.PCI0.PEG0.PEGP.SGST (), Zero))
                    {
                        Store (0x03, CGCS)
                    }

                    Return (Local0)
                }

                If (LEqual (Arg2, 0x1B))
                {
                    Store (Arg3, Local0)
                    CreateField (Local0, Zero, One, OPFL)
                    CreateField (Local0, One, One, OPVL)
                    If (ToInteger (OPVL))
                    {
                        Store (Zero, Local0)
                        If (ToInteger (OPFL))
                        {
                            Store (One, Local0)
                        }
                    }

                    Return (Local0)
                }

                Return (0x80000002)
            }

            Return (\_SB.PCI0.PEG0.PEGP.HDSM (Arg0, Arg1, Arg2, Arg3))
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (GPS, "GPSACPI 2012-Aug-12 14:56:05")
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Name (PSAP, Zero)
        Name (ECBF, Buffer (0x14){})
        CreateDWordField (ECBF, Zero, EDS1)
        CreateDWordField (ECBF, 0x04, EDS2)
        CreateDWordField (ECBF, 0x08, EDS3)
        CreateDWordField (ECBF, 0x0C, EDS4)
        CreateDWordField (ECBF, 0x10, EPDT)
        Name (GPSP, Buffer (0x24){})
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
            Store ("------- GPS DSM --------", Debug)
            If (LNotEqual (Arg1, 0x0100))
            {
                Return (0x80000002)
            }

            Switch (ToInteger (Arg2))
            {
                Case (Zero)
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
                Case (0x13)
                {
                    Store ("GPS fun 19", Debug)
                    Return (Arg3)
                }
                Case (0x20)
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
                Case (0x21)
                {
                    Return (\_PR.CPU0._PSS)
                }
                Case (0x22)
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
                Case (0x23)
                {
                    Return (\_PR.CPU0._PPC)
                }
                Case (0x25)
                {
                    Store ("GPS fun 25", Debug)
                    Return (\_PR.CPU0._TSS)
                }
                Case (0x26)
                {
                    Store ("GPS fun 26", Debug)
                    CreateDWordField (Arg3, Zero, TCAP)
                    Store (TCAP, \_PR.CPU0._PTC)
                    Notify (\_PR.CPU0, 0x80)
                    Return (TCAP)
                }
                Case (0x2A)
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
                    Switch (PSH0)
                    {
                        Case (Zero)
                        {
                            If (CPUT)
                            {
                                Store (0x0200, RETN)
                                Or (RETN, PSH0, RETN)
                                Store (\_SB.PCI0.LPCB.EC.TMP, PDTS)
                            }

                            Return (GPSP)
                        }
                        Case (One)
                        {
                            Store (0x0300, RETN)
                            Or (RETN, PSH0, RETN)
                            Store (0x03E8, PDTS)
                            Return (GPSP)
                        }
                        Case (0x02)
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

                    }
                }

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
            Store ("------- GC6 DSM --------", Debug)
            If (LLess (Arg1, 0x0100))
            {
                Return (0x80000001)
            }

            Switch (ToInteger (Arg2))
            {
                Case (Zero)
                {
                    Return (Buffer (0x04)
                    {
                         0x1B, 0x00, 0x00, 0x00                         
                    })
                }
                Case (One)
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
                Case (0x02)
                {
                    Store ("GPS fun 19", Debug)
                    Return (Arg3)
                }
                Case (0x03)
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
                    ElseIf (LEqual (ToInteger (GUPC), 0x06)){}
                    Return (JTB3)
                }
                Case (0x04)
                {
                    Return (0x80000002)
                }

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
        Device (WMI1)
        {
            Name (_HID, "PNP0C14")  // _HID: Hardware ID
            Name (_UID, "OPT1")  // _UID: Unique ID
            Name (_WDG, Buffer (0x14)
            {
                /* 0000 */  0x3C, 0x5C, 0xCB, 0xF6, 0xAE, 0x9C, 0xBD, 0x4E,
                /* 0008 */  0xB5, 0x77, 0x93, 0x1E, 0xA3, 0x2A, 0x2C, 0xC0,
                /* 0010 */  0x4D, 0x58, 0x01, 0x02                         
            })
            Method (WMMX, 3, NotSerialized)
            {
                CreateDWordField (Arg2, Zero, FUNC)
                If (LEqual (FUNC, 0x534F525F))
                {
                    If (LGreaterEqual (SizeOf (Arg2), 0x08))
                    {
                        CreateDWordField (Arg2, 0x04, ARGS)
                        CreateDWordField (Arg2, 0x08, XARG)
                        Return (\_SB.PCI0.PEG0.PEGP._ROM (ARGS, XARG))
                    }
                }

                If (LEqual (FUNC, 0x4D53445F))
                {
                    If (LGreaterEqual (SizeOf (Arg2), 0x1C))
                    {
                        CreateField (Arg2, Zero, 0x80, MUID)
                        CreateDWordField (Arg2, 0x10, REVI)
                        CreateDWordField (Arg2, 0x14, SFNC)
                        CreateField (Arg2, 0xE0, 0x20, XRG0)
                        If (CondRefOf (\_SB.PCI0.GFX0._DSM))
                        {
                            Return (\_SB.PCI0.GFX0._DSM)
                            MUID
                            REVI
                            SFNC
                            XRG0
                        }
                    }
                }

                Return (Zero)
            }
        }
    }
}

