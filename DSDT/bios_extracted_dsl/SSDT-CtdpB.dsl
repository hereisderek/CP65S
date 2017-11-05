/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170929 (64-bit version)(RM)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-CtdpB.aml, Mon Nov  6 01:31:33 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000436 (1078)
 *     Revision         0x01
 *     Checksum         0x44
 *     OEM ID           "CtdpB"
 *     OEM Table ID     "CtdpB"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "CtdpB", "CtdpB", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- ../refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.CPU0._PPC, IntObj)
    External (_PR_.CPU0._PSS, PkgObj)
    External (_PR_.CPU1, ProcessorObj)
    External (_PR_.CPU2, ProcessorObj)
    External (_PR_.CPU3, ProcessorObj)
    External (_PR_.CPU4, ProcessorObj)
    External (_PR_.CPU5, ProcessorObj)
    External (_PR_.CPU6, ProcessorObj)
    External (_PR_.CPU7, ProcessorObj)
    External (_SB_.PCCD, UnknownObj)
    External (_SB_.PCCD.PENB, IntObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GFX0._DSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.MHBR, FieldUnitObj)
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (DTGP, MethodObj)    // Imported: 5 Arguments
    External (PNHM, FieldUnitObj)
    External (RMDT.P1__, MethodObj)    // Imported: 1 Arguments
    External (RMDT.P2__, MethodObj)    // Imported: 2 Arguments
    External (RMDT.P3__, MethodObj)    // Imported: 3 Arguments
    External (RMDT.P4__, MethodObj)    // Imported: 4 Arguments
    External (RMDT.P5__, MethodObj)    // Imported: 5 Arguments
    External (RMDT.P6__, MethodObj)    // Imported: 6 Arguments
    External (RMDT.P7__, MethodObj)    // Imported: 7 Arguments
    External (RMDT.PUSH, MethodObj)    // Imported: 1 Arguments
    External (TCNT, FieldUnitObj)

    Scope (\_SB.PCI0)
    {
        OperationRegion (MBAR, SystemMemory, Add (ShiftLeft (MHBR, 0x0F), 0x5000), 0x1000)
        Field (MBAR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x930), 
            PTDP,   15, 
            Offset (0x932), 
            PMIN,   15, 
            Offset (0x934), 
            PMAX,   15, 
            Offset (0x936), 
            TMAX,   7, 
            Offset (0x938), 
            PWRU,   4, 
            Offset (0x939), 
            EGYU,   5, 
            Offset (0x93A), 
            TIMU,   4, 
            Offset (0x958), 
            Offset (0x95C), 
            LPMS,   1, 
            CTNL,   2, 
            Offset (0x9A0), 
            PPL1,   15, 
            PL1E,   1, 
                ,   1, 
            PL1T,   7, 
            Offset (0x9A4), 
            PPL2,   15, 
            PL2E,   1, 
                ,   1, 
            PL2T,   7, 
            Offset (0xF3C), 
            TARN,   8, 
            Offset (0xF40), 
            PTD1,   15, 
            Offset (0xF42), 
            TAR1,   8, 
            Offset (0xF44), 
            PMX1,   15, 
            Offset (0xF46), 
            PMN1,   15, 
            Offset (0xF48), 
            PTD2,   15, 
            Offset (0xF4A), 
            TAR2,   8, 
            Offset (0xF4C), 
            PMX2,   15, 
            Offset (0xF4E), 
            PMN2,   15, 
            Offset (0xF50), 
            CTCL,   2, 
                ,   29, 
            CLCK,   1, 
            TAR,    8
        }

        Method (CTCU, 0, NotSerialized)
        {
            Store (PTD2, PPL1)
            Store (One, PL1E)
            Store (CLC2 (PTD2), PPL2)
            Store (One, PL2E)
            SPPC (One)
            Subtract (TAR2, One, TAR)
            Store (0x02, CTCL)
        }

        Method (CTCN, 0, NotSerialized)
        {
            If (LEqual (CTCL, One))
            {
                Store (PTDP, PPL1)
                Store (One, PL1E)
                Store (CLC2 (PTDP), PPL2)
                Store (One, PL2E)
                NPPC (TARN)
                Subtract (TARN, One, TAR)
                Store (Zero, CTCL)
            }
            ElseIf (LEqual (CTCL, 0x02))
            {
                Store (Zero, CTCL)
                Subtract (TARN, One, TAR)
                NPPC (TARN)
                Store (CLC2 (PTDP), PPL2)
                Store (One, PL2E)
                Store (PTDP, PPL1)
                Store (One, PL1E)
            }
        }

        Method (CTCD, 0, NotSerialized)
        {
            Store (One, CTCL)
            Subtract (TAR1, One, TAR)
            NPPC (TAR1)
            Store (CLC2 (PTD1), PPL2)
            Store (One, PL2E)
            Store (PTD1, PPL1)
            Store (One, PL1E)
        }

        Method (NPPC, 1, NotSerialized)
        {
            Name (TRAT, Zero)
            Name (PRAT, Zero)
            Name (TMPI, Zero)
            Store (Arg0, TRAT)
            Store (SizeOf (\_PR.CPU0._PSS), TMPI)
            While (LNotEqual (TMPI, Zero))
            {
                Decrement (TMPI)
                Store (DerefOf (Index (DerefOf (Index (\_PR.CPU0._PSS, TMPI)), 0x04)), PRAT)
                ShiftRight (PRAT, 0x08, PRAT)
                If (LGreaterEqual (PRAT, TRAT))
                {
                    SPPC (TMPI)
                    Break
                }
            }
        }

        Method (SPPC, 1, Serialized)
        {
            Store (Arg0, \_PR.CPU0._PPC)
            If (CondRefOf (\_SB.PCCD.PENB))
            {
                Notify (\_SB.PCCD, 0x82)
            }
            Else
            {
                Switch (ToInteger (TCNT))
                {
                    Case (0x08)
                    {
                        Notify (\_PR.CPU0, 0x80)
                        Notify (\_PR.CPU1, 0x80)
                        Notify (\_PR.CPU2, 0x80)
                        Notify (\_PR.CPU3, 0x80)
                        Notify (\_PR.CPU4, 0x80)
                        Notify (\_PR.CPU5, 0x80)
                        Notify (\_PR.CPU6, 0x80)
                        Notify (\_PR.CPU7, 0x80)
                    }
                    Case (0x04)
                    {
                        Notify (\_PR.CPU0, 0x80)
                        Notify (\_PR.CPU1, 0x80)
                        Notify (\_PR.CPU2, 0x80)
                        Notify (\_PR.CPU3, 0x80)
                    }
                    Case (0x02)
                    {
                        Notify (\_PR.CPU0, 0x80)
                        Notify (\_PR.CPU1, 0x80)
                    }
                    Default
                    {
                        Notify (\_PR.CPU0, 0x80)
                    }

                }
            }
        }

        Method (CLC2, 1, Serialized)
        {
            And (PNHM, 0x0FFF0FF0, Local0)
            Switch (Local0)
            {
                Case (0x000306C0)
                {
                    Return (Divide (Multiply (Arg0, 0x05), 0x04, ))
                }
                Case (0x00040650)
                {
                    Return (0xC8)
                }
                Default
                {
                    Return (Divide (Multiply (Arg0, 0x05), 0x04, ))
                }

            }
        }
    }
}

