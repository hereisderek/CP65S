/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170929 (64-bit version)(RM)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-IntelRMT.aml, Mon Nov  6 01:31:33 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000169 (361)
 *     Revision         0x01
 *     Checksum         0x75
 *     OEM ID           "Intel"
 *     OEM Table ID     "IntelRMT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */

// Intel(R) Ready Mode Technology Device
// 
DefinitionBlock ("", "SSDT", 1, "Intel", "IntelRMT", 0x00001000)
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
    External (ADBG, MethodObj)    // 1 Arguments
    External (DTGP, MethodObj)    // Imported: 5 Arguments
    External (INSC, FieldUnitObj)
    External (P8XH, MethodObj)    // 2 Arguments
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
        Device (INSD)
        {
            Name (_HID, "INT3398")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (NBT1, Zero)
            Method (GNSC, 0, NotSerialized)
            {
                Store (INSC, Local0)
                P8XH (Zero, 0xAA)
                ADBG ("GNSC: ")
                ADBG (ToHexString (Local0))
                Return (INSC)
            }

            Method (GNSM, 0, Serialized)
            {
                Store (NBT1, Local0)
                P8XH (Zero, 0x71)
                ADBG ("GNSM: ")
                ADBG (ToHexString (Local0))
                Return (Local0)
            }

            Method (SNSM, 1, Serialized)
            {
                Store (Arg0, NBT1)
                Store (NBT1, Local0)
                Switch (ToInteger (Local0))
                {
                    Case (Zero)
                    {
                        ADBG ("case 0: ")
                    }
                    Case (One)
                    {
                        ADBG ("case 1: ")
                    }
                    Case (0x02)
                    {
                        ADBG ("case 2: ")
                    }
                    Case (0x03)
                    {
                        ADBG ("case 3: ")
                    }
                    Case (0x04)
                    {
                        ADBG ("case 4: ")
                    }

                }

                P8XH (Zero, 0x72)
                ADBG ("SNSM: ")
                ADBG (ToHexString (Local0))
            }
        }
    }
}

