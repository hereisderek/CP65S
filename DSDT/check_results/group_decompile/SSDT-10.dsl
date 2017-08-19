/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170728 (64-bit version)(RM)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-10.aml, Sat Aug 19 22:08:59 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000240 (576)
 *     Revision         0x02
 *     Checksum         0x5B
 *     OEM ID           "hack  "
 *     OEM Table ID     "Debug   "
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20170728 (538380072)
 */
DefinitionBlock ("", "SSDT", 2, "hack  ", "Debug   ", 0x00000000)
{
    /*
     * External declarations were imported from
     * a reference file -- ../refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (MDBG, MethodObj)    // Imported: 1 Arguments

    Device (RMDT)
    {
        Name (_HID, "RMD0000")  // _HID: Hardware ID
        Name (RING, Package (0x0100){})
        Mutex (RTMX, 0x00)
        Name (HEAD, Zero)
        Name (TAIL, Zero)
        Method (PUSH, 1, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Add (HEAD, One, Local0)
            If (LGreaterEqual (Local0, SizeOf (RING)))
            {
                Store (Zero, Local0)
            }

            If (LNotEqual (Local0, TAIL))
            {
                Store (Arg0, Index (RING, HEAD))
                Store (Local0, HEAD)
            }

            Release (RTMX)
            Notify (RMDT, 0x80)
        }

        Method (FTCH, 0, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Store (Zero, Local0)
            If (LNotEqual (HEAD, TAIL))
            {
                Store (DerefOf (Index (RING, TAIL)), Local0)
                Increment (TAIL)
                If (LGreaterEqual (TAIL, SizeOf (RING)))
                {
                    Store (Zero, TAIL)
                }
            }

            Release (RTMX)
            Return (Local0)
        }

        Method (COUN, 0, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Subtract (HEAD, TAIL, Local0)
            If (LLess (Local0, Zero))
            {
                Add (Local0, SizeOf (RING), Local0)
            }

            Release (RTMX)
            Return (Local0)
        }

        Method (P1, 1, NotSerialized)
        {
            PUSH (Arg0)
        }

        Method (P2, 2, NotSerialized)
        {
            Store (Package (0x02){}, Local0)
            Store (Arg0, Index (Local0, Zero))
            Store (Arg1, Index (Local0, One))
            PUSH (Local0)
        }

        Method (P3, 3, NotSerialized)
        {
            Store (Package (0x03){}, Local0)
            Store (Arg0, Index (Local0, Zero))
            Store (Arg1, Index (Local0, One))
            Store (Arg2, Index (Local0, 0x02))
            PUSH (Local0)
        }

        Method (P4, 4, NotSerialized)
        {
            Store (Package (0x04){}, Local0)
            Store (Arg0, Index (Local0, Zero))
            Store (Arg1, Index (Local0, One))
            Store (Arg2, Index (Local0, 0x02))
            Store (Arg3, Index (Local0, 0x03))
            PUSH (Local0)
        }

        Method (P5, 5, NotSerialized)
        {
            Store (Package (0x05){}, Local0)
            Store (Arg0, Index (Local0, Zero))
            Store (Arg1, Index (Local0, One))
            Store (Arg2, Index (Local0, 0x02))
            Store (Arg3, Index (Local0, 0x03))
            Store (Arg4, Index (Local0, 0x04))
            PUSH (Local0)
        }

        Method (P6, 6, NotSerialized)
        {
            Store (Package (0x06){}, Local0)
            Store (Arg0, Index (Local0, Zero))
            Store (Arg1, Index (Local0, One))
            Store (Arg2, Index (Local0, 0x02))
            Store (Arg3, Index (Local0, 0x03))
            Store (Arg4, Index (Local0, 0x04))
            Store (Arg5, Index (Local0, 0x05))
            PUSH (Local0)
        }

        Method (P7, 7, NotSerialized)
        {
            Store (Package (0x07){}, Local0)
            Store (Arg0, Index (Local0, Zero))
            Store (Arg1, Index (Local0, One))
            Store (Arg2, Index (Local0, 0x02))
            Store (Arg3, Index (Local0, 0x03))
            Store (Arg4, Index (Local0, 0x04))
            Store (Arg5, Index (Local0, 0x05))
            Store (Arg6, Index (Local0, 0x06))
            PUSH (Local0)
        }
    }
}

