/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170929 (64-bit version)(RM)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-ADebTabl.aml, Mon Nov  6 01:31:33 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000B1 (177)
 *     Revision         0x01
 *     Checksum         0x22
 *     OEM ID           "Intel_"
 *     OEM Table ID     "ADebTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "Intel_", "ADebTabl", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- ../refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.PCI0.GFX0._DSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (DTGP, MethodObj)    // Imported: 5 Arguments
    External (RMDT.P1__, MethodObj)    // Imported: 1 Arguments
    External (RMDT.P2__, MethodObj)    // Imported: 2 Arguments
    External (RMDT.P3__, MethodObj)    // Imported: 3 Arguments
    External (RMDT.P4__, MethodObj)    // Imported: 4 Arguments
    External (RMDT.P5__, MethodObj)    // Imported: 5 Arguments
    External (RMDT.P6__, MethodObj)    // Imported: 6 Arguments
    External (RMDT.P7__, MethodObj)    // Imported: 7 Arguments
    External (RMDT.PUSH, MethodObj)    // Imported: 1 Arguments

    Scope (\)
    {
        Name (DPTR, 0x80000000)
        Name (EPTR, 0x80000000)
        Name (CPTR, 0x80000000)
        Mutex (MMUT, 0x00)
        Method (MDBG, 1, Serialized)
        {
            Store (Acquire (MMUT, 0x03E8), Local0)
            If (LEqual (Local0, Zero))
            {
                OperationRegion (ABLK, SystemMemory, CPTR, 0x10)
                Field (ABLK, ByteAcc, NoLock, Preserve)
                {
                    AAAA,   128
                }

                Store (Arg0, AAAA)
                Add (CPTR, 0x10, CPTR)
                If (LGreaterEqual (CPTR, EPTR))
                {
                    Add (DPTR, 0x10, CPTR)
                }

                Release (MMUT)
            }

            Return (Local0)
        }
    }
}

