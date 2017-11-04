/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-8.aml, Wed Aug 16 21:41:46 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001C7 (455)
 *     Revision         0x01
 *     Checksum         0x6A
 *     OEM ID           "HASEE "
 *     OEM Table ID     "PARADISE"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "HASEE ", "PARADISE", 0x00003000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_PR_.CPU0.GEAR, IntObj)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0, DeviceObj)
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.SAT1, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (MPMF, UnknownObj)    // Warning: Unknown object
    External (PNOT, MethodObj)    // 0 Arguments

    Scope (\_SB.PCI0.SAT0)
    {
        Method (SLT1, 0, Serialized)
        {
            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (Zero, \_PR.CPU0.GEAR)
                \PNOT ()
            }

            Return (Zero)
        }

        Method (SLT2, 0, Serialized)
        {
            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (One, \_PR.CPU0.GEAR)
                \PNOT ()
            }

            Return (Zero)
        }

        Method (SLT3, 0, Serialized)
        {
            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (0x02, \_PR.CPU0.GEAR)
                \PNOT ()
            }

            Return (Zero)
        }

        Method (GLTS, 0, Serialized)
        {
            Store (\_PR.CPU0.GEAR, Local0)
            ShiftLeft (Local0, One, Local0)
            Or (Local0, One, Local0)
            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.SAT1)
    {
        Method (SLT1, 0, Serialized)
        {
            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (Zero, \_PR.CPU0.GEAR)
                \PNOT ()
            }

            Return (Zero)
        }

        Method (SLT2, 0, Serialized)
        {
            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (One, \_PR.CPU0.GEAR)
                \PNOT ()
            }

            Return (Zero)
        }

        Method (SLT3, 0, Serialized)
        {
            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (0x02, \_PR.CPU0.GEAR)
                \PNOT ()
            }

            Return (Zero)
        }

        Method (GLTS, 0, Serialized)
        {
            Store (\_PR.CPU0.GEAR, Local0)
            ShiftLeft (Local0, One, Local0)
            And (MPMF, One, Local1)
            Or (Local0, Local1, Local0)
            Return (Local0)
        }
    }
}

