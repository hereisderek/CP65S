/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170929 (64-bit version)(RM)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-Cpu0Ist.aml, Mon Nov  6 01:31:33 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000539 (1337)
 *     Revision         0x01
 *     Checksum         0xDE
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "Cpu0Ist", 0x00003000)
{
    /*
     * External declarations were imported from
     * a reference file -- ../refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_PR_.CFGD, FieldUnitObj)
    External (_PR_.CPPC, FieldUnitObj)
    External (_PR_.CPU0, ProcessorObj)
    External (_SB_.PCI0.GFX0._DSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (DTGP, MethodObj)    // Imported: 5 Arguments
    External (PDC0, IntObj)
    External (RMDT.P1__, MethodObj)    // Imported: 1 Arguments
    External (RMDT.P2__, MethodObj)    // Imported: 2 Arguments
    External (RMDT.P3__, MethodObj)    // Imported: 3 Arguments
    External (RMDT.P4__, MethodObj)    // Imported: 4 Arguments
    External (RMDT.P5__, MethodObj)    // Imported: 5 Arguments
    External (RMDT.P6__, MethodObj)    // Imported: 6 Arguments
    External (RMDT.P7__, MethodObj)    // Imported: 7 Arguments
    External (RMDT.PUSH, MethodObj)    // Imported: 1 Arguments
    External (TCNT, FieldUnitObj)

    Scope (\_PR.CPU0)
    {
        Name (_PPC, Zero)  // _PPC: Performance Present Capabilities
        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Store (\_PR.CPPC, \_PR.CPU0._PPC)
            If (LAnd (And (CFGD, One), And (PDC0, One)))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }
        }

        Name (_PSS, Package (0x20)  // _PSS: Performance Supported States
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (PSDF, Zero)
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (LNot (PSDF))
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
                Store (Ones, PSDF)
            }

            If (And (PDC0, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }

        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }
}

