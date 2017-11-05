/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170929 (64-bit version)(RM)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-IsctTabl.aml, Mon Nov  6 01:31:33 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003DA (986)
 *     Revision         0x01
 *     Checksum         0xD3
 *     OEM ID           "Intel_"
 *     OEM Table ID     "IsctTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "Intel_", "IsctTabl", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- ../refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.IFFS.FFSS, FieldUnitObj)
    External (_SB_.PCI0.GFX0._DSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECOK, IntObj)
    External (_SB_.PCI0.LPCB.EC__.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.LPCB.EC__.INF2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.LIDS, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.WFNO, FieldUnitObj)
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (DTGP, MethodObj)    // Imported: 5 Arguments
    External (ICNF, FieldUnitObj)
    External (RMDT.P1__, MethodObj)    // Imported: 1 Arguments
    External (RMDT.P2__, MethodObj)    // Imported: 2 Arguments
    External (RMDT.P3__, MethodObj)    // Imported: 3 Arguments
    External (RMDT.P4__, MethodObj)    // Imported: 4 Arguments
    External (RMDT.P5__, MethodObj)    // Imported: 5 Arguments
    External (RMDT.P6__, MethodObj)    // Imported: 6 Arguments
    External (RMDT.P7__, MethodObj)    // Imported: 7 Arguments
    External (RMDT.PUSH, MethodObj)    // Imported: 1 Arguments

    Scope (\_SB)
    {
        // Intel Smart Connect Technology
        Device (IAOE)
        {
            OperationRegion (ISCT, SystemMemory, 0xFFFF0008, 0xAA58)
            Field (ISCT, AnyAcc, Lock, Preserve)
            {
                WKRS,   8, 
                AOCE,   8, 
                FFSE,   8, 
                ITMR,   8, 
                ECTM,   32, 
                RCTM,   32, 
                GNPT,   32, 
                ATOW,   8
            }

            Name (_HID, "INT33A0")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (IBT1, Zero)
            Name (IBT2, Zero)
            Name (INSB, Zero)
            Name (WTMS, Zero)
            Name (AWT0, Zero)
            Name (AWT1, Zero)
            Name (AWT2, Zero)
            Name (PTSL, Zero)
            Name (SLPD, Zero)
            Name (IMDS, Zero)
            Name (IWDT, Zero)
            Method (GABS, 0, NotSerialized)
            {
                Return (ICNF)
            }

            Method (GAOS, 0, NotSerialized)
            {
                And (IBT1, One, Local0)
                Or (Local0, And (IMDS, 0x02), Local0)
                Return (Local0)
            }

            Method (SAOS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x02), IMDS)
                And (IBT1, 0xFE, Local0)
                Or (Local0, And (Arg0, One), IBT1)
                If (And (IBT1, One)){}
                Else
                {
                    And (\_SB.PCI0.LPCB.EC.INF2, 0x7F, \_SB.PCI0.LPCB.EC.INF2)
                }
            }

            Method (GANS, 0, NotSerialized)
            {
                Return (INSB)
            }

            Method (SANS, 1, NotSerialized)
            {
                Store (And (Arg0, One), INSB)
            }

            Method (GWLS, 0, NotSerialized)
            {
                If (LEqual (And (ICNF, 0x04), Zero))
                {
                    Return (Zero)
                }

                Return (And (IBT1, 0x0E))
            }

            Method (SWLS, 1, NotSerialized)
            {
                If (LEqual (And (ICNF, 0x04), Zero))
                {
                    Return (Zero)
                }

                If (LEqual (ITMR, One))
                {
                    Store (And (And (Arg0, 0x0E), IBT1), IBT1)
                }
                Else
                {
                    Store (IBT1, Local0)
                    And (Local0, 0xF1, Local0)
                    Or (Local0, And (Arg0, 0x0E), Local0)
                    If (CondRefOf (\_SB.IFFS.FFSS))
                    {
                        If (LAnd (And (\_SB.IFFS.FFSS, 0x03), And (Arg0, 0x02)))
                        {
                            Or (Local0, 0x04, Local0)
                        }
                    }

                    Store (Local0, IBT1)
                }
            }

            Method (GWWS, 0, NotSerialized)
            {
                If (LEqual (And (ICNF, 0x08), Zero))
                {
                    Return (Zero)
                }

                ShiftRight (And (IBT1, 0x70), 0x03, Local0)
                Return (Local0)
            }

            Method (SWWS, 1, NotSerialized)
            {
                If (LEqual (And (ICNF, 0x08), Zero))
                {
                    Return (Zero)
                }

                If (LEqual (ITMR, One))
                {
                    ShiftLeft (And (And (Arg0, 0x0E), IBT1), 0x03, IBT1)
                }
                Else
                {
                    Store (IBT1, Local0)
                    And (Local0, 0x8F, Local0)
                    Or (Local0, ShiftLeft (And (Arg0, 0x0E), 0x03), Local0)
                    If (CondRefOf (\_SB.IFFS.FFSS))
                    {
                        If (LAnd (And (\_SB.IFFS.FFSS, 0x03), And (Arg0, 0x02)))
                        {
                            Or (Local0, 0x20, Local0)
                        }
                    }

                    Store (Local0, IBT1)
                }
            }

            Method (SASD, 1, NotSerialized)
            {
                If (LAnd (And (ICNF, 0x10), LGreater (Arg0, Zero)))
                {
                    If (LEqual (ITMR, One))
                    {
                        Store (Arg0, RCTM)
                    }
                    Else
                    {
                        Store (Arg0, ECTM)
                    }

                    Store (And (ECTM, 0xFF), AWT0)
                    Store (ShiftRight (And (ECTM, 0xFF00), 0x08), AWT1)
                    Store (ShiftRight (And (ECTM, 0x00FF0000), 0x10), AWT2)
                    Store (WTMS, Local0)
                    Store (Or (0x81, Local0), WTMS)
                }
                Else
                {
                    Store (Arg0, SLPD)
                }
            }

            Method (GPWR, 0, NotSerialized)
            {
                Store (WKRS, Local0)
                If (LEqual (ITMR, Zero))
                {
                    If (\_SB.PCI0.LPCB.EC.ECOK)
                    {
                        If (LEqual (\_SB.PCI0.LPCB.EC.WFNO, 0x05))
                        {
                            Or (Local0, 0x02, Local0)
                        }
                    }
                }

                If (And (Local0, 0x1F))
                {
                    Return (Local0)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (GPCS, 0, NotSerialized)
            {
                If (\_SB.PCI0.LPCB.EC.ECOK)
                {
                    Return (\_SB.PCI0.LPCB.EC.LIDS)
                }
                Else
                {
                    Return (One)
                }
            }

            Method (GAWD, 0, NotSerialized)
            {
                Return (IWDT)
            }

            Method (SAWD, 1, NotSerialized)
            {
                Store (Arg0, IWDT)
            }
        }
    }
}

