/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170929 (64-bit version)(RM)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-1-PARADISE.aml, Mon Nov  6 02:49:20 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000F92 (3986)
 *     Revision         0x01
 *     Checksum         0x95
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

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.PCI0.GFX0._DSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.AMBT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.CVRT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.DIM0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.DIM1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECOK, IntObj)
    External (_SB_.PCI0.LPCB.EC__.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.LPCB.EC__.FANT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FCMD, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.GTVR, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.MCRT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PCAD, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PDT0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PDT1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PDT2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PDT3, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PEC0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PEC1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PEC2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PEC3, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PECC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PECD, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PECH, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PECI, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PEHI, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PEPL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PEPM, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PEWL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PMAX, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PMDT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PPDT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRC0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRC1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRCL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRCM, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRCS, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRFC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRIN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRS0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRS1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRS2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRS3, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PRS4, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PSTE, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PWFC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PWRL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.SKNT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TSD0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TSD1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TSD2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TSD3, FieldUnitObj)
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (_TZ_.TZ0_._TMP, MethodObj)    // 0 Arguments
    External (DTGP, MethodObj)    // Imported: 5 Arguments
    External (DTS1, FieldUnitObj)
    External (DTS2, FieldUnitObj)
    External (DTS3, FieldUnitObj)
    External (DTS4, FieldUnitObj)
    External (GPRW, MethodObj)    // Imported: 2 Arguments
    External (PDTS, FieldUnitObj)
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
        Device (PTID)
        {
            Name (_HID, EisaId ("INT340E"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Name (IVER, 0x00030000)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (TSDL, Package (0x2E)
            {
                Zero, 
                "CPU Core 0 DTS", 
                Zero, 
                "CPU Core 1 DTS", 
                Zero, 
                "CPU Core 2 DTS", 
                Zero, 
                "CPU Core 3 DTS", 
                Zero, 
                "CPU Core Package DTS", 
                0x03, 
                "CPU Core VR (IMVP) Temperature", 
                0x03, 
                "CPU GT VR (IMVP) Temperature", 
                0x03, 
                "Heat Exchanger Fan Temperature", 
                0x03, 
                "Skin Temperature", 
                0x03, 
                "Ambient Temperature", 
                0x03, 
                "Minicard Region Temperature", 
                0x02, 
                "Channel 0 DIMM Temperature", 
                0x02, 
                "Channel 1 DIMM Temperature", 
                Zero, 
                "CPU Package Temperature", 
                0x05, 
                "PCH DTS Temperature from PCH", 
                Zero, 
                "CPU PECI reading", 
                0x05, 
                "SA DTS Temperature from PCH", 
                0x02, 
                "TS-on-DIMM0 Temperature", 
                0x02, 
                "TS-on-DIMM1 Temperature", 
                0x02, 
                "TS-on-DIMM2 Temperature", 
                0x02, 
                "TS-on-DIMM3 Temperature", 
                0x02, 
                "TZ00 _TMP", 
                0x02, 
                "TZ01 _TMP"
            })
            Name (PSDL, Package (0x0C)
            {
                Zero, 
                "CPU Power", 
                One, 
                "Gfx Core Power", 
                0x0A, 
                "System Power", 
                Zero, 
                "CPU Average Power", 
                One, 
                "Gfx Core Average Power", 
                0x0A, 
                "System Average Power"
            })
            Name (OSDL, Package (0x06)
            {
                Zero, 
                "CPU Fan Speed", 
                "RPM", 
                Zero, 
                "CPU energy", 
                "RAW"
            })
            Method (TSDD, 0, NotSerialized)
            {
                Name (TMPV, Package (0x17)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                Store (Add (Multiply (DTS1, 0x0A), 0x0AAC), Index (TMPV, Zero))
                Store (Add (Multiply (DTS2, 0x0A), 0x0AAC), Index (TMPV, One))
                Store (Add (Multiply (DTS3, 0x0A), 0x0AAC), Index (TMPV, 0x02))
                Store (Add (Multiply (DTS4, 0x0A), 0x0AAC), Index (TMPV, 0x03))
                Store (Add (Multiply (PDTS, 0x0A), 0x0AAC), Index (TMPV, 0x04))
                If (\_SB.PCI0.LPCB.EC.ECOK)
                {
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.CVRT, 0x0A), 0x0AAC), Index (TMPV, 0x02))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.GTVR, 0x0A), 0x0AAC), Index (TMPV, 0x03))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.FANT, 0x0A), 0x0AAC), Index (TMPV, 0x04))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.SKNT, 0x0A), 0x0AAC), Index (TMPV, 0x05))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.AMBT, 0x0A), 0x0AAC), Index (TMPV, 0x06))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.MCRT, 0x0A), 0x0AAC), Index (TMPV, 0x07))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.DIM0, 0x0A), 0x0AAC), Index (TMPV, 0x08))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.DIM1, 0x0A), 0x0AAC), Index (TMPV, 0x09))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.PMAX, 0x0A), 0x0AAC), Index (TMPV, 0x0A))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.PPDT, 0x0A), 0x0AAC), Index (TMPV, 0x0B))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.PECH, 0x0A), 0x0AAC), Index (TMPV, 0x0C))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.PMDT, 0x0A), 0x0AAC), Index (TMPV, 0x0E))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.TSD0, 0x0A), 0x0AAC), Index (TMPV, 0x0F))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.TSD1, 0x0A), 0x0AAC), Index (TMPV, 0x10))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.TSD2, 0x0A), 0x0AAC), Index (TMPV, 0x11))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.EC.TSD3, 0x0A), 0x0AAC), Index (TMPV, 0x12))
                }

                Store (\_TZ.TZ0._TMP (), Index (TMPV, 0x15))
                Store (\_TZ.TZ0._TMP (), Index (TMPV, 0x16))
                Return (TMPV)
            }

            Method (PSDD, 0, NotSerialized)
            {
                Name (PWRV, Package (0x06)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                Return (PWRV)
            }

            Method (OSDD, 0, NotSerialized)
            {
                Name (OSDV, Package (0x02)
                {
                    0x80000000, 
                    0x80000000
                })
                Return (OSDV)
            }

            Method (SDSP, 0, NotSerialized)
            {
                Return (0x0A)
            }

            Name (PADA, Package (0x0A)
            {
                One, 
                Ones, 
                Ones, 
                0x1A, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones
            })
            Name (PADD, Package (0x0A)
            {
                0x02, 
                0x06A4, 
                0x06A0, 
                0x1A, 
                0x62, 
                0x63, 
                0x60, 
                0x61, 
                0x65, 
                0x64
            })
            Method (PADT, 0, NotSerialized)
            {
                Return (PADA)
            }

            Method (RPMD, 0, NotSerialized)
            {
                Name (MTMP, Buffer (0x1A){})
                If (\_SB.PCI0.LPCB.EC.ECOK)
                {
                    Store (\_SB.PCI0.LPCB.EC.PRCL, Index (MTMP, Zero))
                    Store (\_SB.PCI0.LPCB.EC.PRC0, Index (MTMP, One))
                    Store (\_SB.PCI0.LPCB.EC.PRC1, Index (MTMP, 0x02))
                    Store (\_SB.PCI0.LPCB.EC.PRCM, Index (MTMP, 0x03))
                    Store (\_SB.PCI0.LPCB.EC.PRIN, Index (MTMP, 0x04))
                    Store (\_SB.PCI0.LPCB.EC.PSTE, Index (MTMP, 0x05))
                    Store (\_SB.PCI0.LPCB.EC.PCAD, Index (MTMP, 0x06))
                    Store (\_SB.PCI0.LPCB.EC.PEWL, Index (MTMP, 0x07))
                    Store (\_SB.PCI0.LPCB.EC.PWRL, Index (MTMP, 0x08))
                    Store (\_SB.PCI0.LPCB.EC.PECD, Index (MTMP, 0x09))
                    Store (\_SB.PCI0.LPCB.EC.PEHI, Index (MTMP, 0x0A))
                    Store (\_SB.PCI0.LPCB.EC.PECI, Index (MTMP, 0x0B))
                    Store (\_SB.PCI0.LPCB.EC.PEPL, Index (MTMP, 0x0C))
                    Store (\_SB.PCI0.LPCB.EC.PEPM, Index (MTMP, 0x0D))
                    Store (\_SB.PCI0.LPCB.EC.PWFC, Index (MTMP, 0x0E))
                    Store (\_SB.PCI0.LPCB.EC.PECC, Index (MTMP, 0x0F))
                    Store (\_SB.PCI0.LPCB.EC.PDT0, Index (MTMP, 0x10))
                    Store (\_SB.PCI0.LPCB.EC.PDT1, Index (MTMP, 0x11))
                    Store (\_SB.PCI0.LPCB.EC.PDT2, Index (MTMP, 0x12))
                    Store (\_SB.PCI0.LPCB.EC.PDT3, Index (MTMP, 0x13))
                    Store (\_SB.PCI0.LPCB.EC.PRFC, Index (MTMP, 0x14))
                    Store (\_SB.PCI0.LPCB.EC.PRS0, Index (MTMP, 0x15))
                    Store (\_SB.PCI0.LPCB.EC.PRS1, Index (MTMP, 0x16))
                    Store (\_SB.PCI0.LPCB.EC.PRS2, Index (MTMP, 0x17))
                    Store (\_SB.PCI0.LPCB.EC.PRS3, Index (MTMP, 0x18))
                    Store (\_SB.PCI0.LPCB.EC.PRS4, Index (MTMP, 0x19))
                }

                Return (MTMP)
            }

            Method (WPMD, 1, NotSerialized)
            {
                If (LNotEqual (SizeOf (Arg0), 0x1A))
                {
                    Return (Ones)
                }

                If (\_SB.PCI0.LPCB.EC.ECOK)
                {
                    Store (DerefOf (Index (Arg0, Zero)), \_SB.PCI0.LPCB.EC.PRCL)
                    Store (DerefOf (Index (Arg0, One)), \_SB.PCI0.LPCB.EC.PRC0)
                    Store (DerefOf (Index (Arg0, 0x02)), \_SB.PCI0.LPCB.EC.PRC1)
                    Store (DerefOf (Index (Arg0, 0x03)), \_SB.PCI0.LPCB.EC.PRCM)
                    Store (DerefOf (Index (Arg0, 0x04)), \_SB.PCI0.LPCB.EC.PRIN)
                    Store (DerefOf (Index (Arg0, 0x05)), \_SB.PCI0.LPCB.EC.PSTE)
                    Store (DerefOf (Index (Arg0, 0x06)), \_SB.PCI0.LPCB.EC.PCAD)
                    Store (DerefOf (Index (Arg0, 0x07)), \_SB.PCI0.LPCB.EC.PEWL)
                    Store (DerefOf (Index (Arg0, 0x08)), \_SB.PCI0.LPCB.EC.PWRL)
                    Store (DerefOf (Index (Arg0, 0x09)), \_SB.PCI0.LPCB.EC.PECD)
                    Store (DerefOf (Index (Arg0, 0x0A)), \_SB.PCI0.LPCB.EC.PEHI)
                    Store (DerefOf (Index (Arg0, 0x0B)), \_SB.PCI0.LPCB.EC.PECI)
                    Store (DerefOf (Index (Arg0, 0x0C)), \_SB.PCI0.LPCB.EC.PEPL)
                    Store (DerefOf (Index (Arg0, 0x0D)), \_SB.PCI0.LPCB.EC.PEPM)
                    Store (DerefOf (Index (Arg0, 0x0E)), \_SB.PCI0.LPCB.EC.PWFC)
                    Store (DerefOf (Index (Arg0, 0x0F)), \_SB.PCI0.LPCB.EC.PECC)
                    Store (DerefOf (Index (Arg0, 0x10)), \_SB.PCI0.LPCB.EC.PDT0)
                    Store (DerefOf (Index (Arg0, 0x11)), \_SB.PCI0.LPCB.EC.PDT1)
                    Store (DerefOf (Index (Arg0, 0x12)), \_SB.PCI0.LPCB.EC.PDT2)
                    Store (DerefOf (Index (Arg0, 0x13)), \_SB.PCI0.LPCB.EC.PDT3)
                    Store (DerefOf (Index (Arg0, 0x14)), \_SB.PCI0.LPCB.EC.PRFC)
                    Store (DerefOf (Index (Arg0, 0x15)), \_SB.PCI0.LPCB.EC.PRS0)
                    Store (DerefOf (Index (Arg0, 0x16)), \_SB.PCI0.LPCB.EC.PRS1)
                    Store (DerefOf (Index (Arg0, 0x17)), \_SB.PCI0.LPCB.EC.PRS2)
                    Store (DerefOf (Index (Arg0, 0x18)), \_SB.PCI0.LPCB.EC.PRS3)
                    Store (DerefOf (Index (Arg0, 0x19)), \_SB.PCI0.LPCB.EC.PRS4)
                    Store (0xB4, \_SB.PCI0.LPCB.EC.FCMD)
                }

                Return (Zero)
            }

            Method (ISPC, 0, NotSerialized)
            {
                If (\_SB.PCI0.LPCB.EC.ECOK){}
                Return (Zero)
            }

            Method (ENPC, 0, NotSerialized)
            {
                If (\_SB.PCI0.LPCB.EC.ECOK){}
                Return (Zero)
            }

            Method (RPCS, 0, NotSerialized)
            {
                If (\_SB.PCI0.LPCB.EC.ECOK)
                {
                    Store (\_SB.PCI0.LPCB.EC.PRCS, Local0)
                }

                Return (Zero)
            }

            Method (RPEC, 0, NotSerialized)
            {
                Store (Zero, Local0)
                If (\_SB.PCI0.LPCB.EC.ECOK)
                {
                    Store (\_SB.PCI0.LPCB.EC.PEC0, Local1)
                    Or (Local0, Local1, Local0)
                    Store (\_SB.PCI0.LPCB.EC.PEC1, Local1)
                    Or (Local0, ShiftLeft (Local1, 0x08), Local0)
                    Store (\_SB.PCI0.LPCB.EC.PEC2, Local1)
                    Or (Local0, ShiftLeft (Local1, 0x10), Local0)
                    Store (\_SB.PCI0.LPCB.EC.PEC3, Local1)
                    Or (Local0, ShiftLeft (Local1, 0x18), Local0)
                }

                Return (Zero)
            }
        }
    }
}

