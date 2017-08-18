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

  0024: 10 4D 0C 5C 2F 03 5F 53 42 5F 50 43 49 30 53 41  // .M.\/._SB_PCI0SA
  0034: 54 30                                            // T0

        Method (SLT1, 0, Serialized)
        {

  0036: 14 32 53 4C 54 31 08                             // .2SLT1.

            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (Zero, \_PR.CPU0.GEAR)
                \PNOT ()
            }


  003D: A0 29 5B 12 5C 2F 03 5F 50 52 5F 43 50 55 30 47  // .)[.\/._PR_CPU0G
  004D: 45 41 52 00 70 00 5C 2F 03 5F 50 52 5F 43 50 55  // EAR.p.\/._PR_CPU
  005D: 30 47 45 41 52 5C 50 4E 4F 54                    // 0GEAR\PNOT

            Return (Zero)
        }


  0067: A4 00                                            // ..

        Method (SLT2, 0, Serialized)
        {

  0069: 14 32 53 4C 54 32 08                             // .2SLT2.

            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (One, \_PR.CPU0.GEAR)
                \PNOT ()
            }


  0070: A0 29 5B 12 5C 2F 03 5F 50 52 5F 43 50 55 30 47  // .)[.\/._PR_CPU0G
  0080: 45 41 52 00 70 01 5C 2F 03 5F 50 52 5F 43 50 55  // EAR.p.\/._PR_CPU
  0090: 30 47 45 41 52 5C 50 4E 4F 54                    // 0GEAR\PNOT

            Return (Zero)
        }


  009A: A4 00                                            // ..

        Method (SLT3, 0, Serialized)
        {

  009C: 14 33 53 4C 54 33 08                             // .3SLT3.

            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (0x02, \_PR.CPU0.GEAR)
                \PNOT ()
            }


  00A3: A0 2A 5B 12 5C 2F 03 5F 50 52 5F 43 50 55 30 47  // .*[.\/._PR_CPU0G
  00B3: 45 41 52 00 70 0A 02 5C 2F 03 5F 50 52 5F 43 50  // EAR.p..\/._PR_CP
  00C3: 55 30 47 45 41 52 5C 50 4E 4F 54                 // U0GEAR\PNOT

            Return (Zero)
        }


  00CE: A4 00                                            // ..

        Method (GLTS, 0, Serialized)
        {
            Store (\_PR.CPU0.GEAR, Local0)
            ShiftLeft (Local0, One, Local0)
            Or (Local0, One, Local0)

  00D0: 14 21 47 4C 54 53 08 70 5C 2F 03 5F 50 52 5F 43  // .!GLTS.p\/._PR_C
  00E0: 50 55 30 47 45 41 52 60 79 60 01 60 7D 60 01 60  // PU0GEAR`y`.`}`.`

            Return (Local0)
        }
    }


  00F0: A4 60                                            // .`

    Scope (\_SB.PCI0.SAT1)
    {

  00F2: 10 44 0D 5C 2F 03 5F 53 42 5F 50 43 49 30 53 41  // .D.\/._SB_PCI0SA
  0102: 54 31                                            // T1

        Method (SLT1, 0, Serialized)
        {

  0104: 14 32 53 4C 54 31 08                             // .2SLT1.

            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (Zero, \_PR.CPU0.GEAR)
                \PNOT ()
            }


  010B: A0 29 5B 12 5C 2F 03 5F 50 52 5F 43 50 55 30 47  // .)[.\/._PR_CPU0G
  011B: 45 41 52 00 70 00 5C 2F 03 5F 50 52 5F 43 50 55  // EAR.p.\/._PR_CPU
  012B: 30 47 45 41 52 5C 50 4E 4F 54                    // 0GEAR\PNOT

            Return (Zero)
        }


  0135: A4 00                                            // ..

        Method (SLT2, 0, Serialized)
        {

  0137: 14 32 53 4C 54 32 08                             // .2SLT2.

            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (One, \_PR.CPU0.GEAR)
                \PNOT ()
            }


  013E: A0 29 5B 12 5C 2F 03 5F 50 52 5F 43 50 55 30 47  // .)[.\/._PR_CPU0G
  014E: 45 41 52 00 70 01 5C 2F 03 5F 50 52 5F 43 50 55  // EAR.p.\/._PR_CPU
  015E: 30 47 45 41 52 5C 50 4E 4F 54                    // 0GEAR\PNOT

            Return (Zero)
        }


  0168: A4 00                                            // ..

        Method (SLT3, 0, Serialized)
        {

  016A: 14 33 53 4C 54 33 08                             // .3SLT3.

            If (CondRefOf (\_PR.CPU0.GEAR))
            {
                Store (0x02, \_PR.CPU0.GEAR)
                \PNOT ()
            }


  0171: A0 2A 5B 12 5C 2F 03 5F 50 52 5F 43 50 55 30 47  // .*[.\/._PR_CPU0G
  0181: 45 41 52 00 70 0A 02 5C 2F 03 5F 50 52 5F 43 50  // EAR.p..\/._PR_CP
  0191: 55 30 47 45 41 52 5C 50 4E 4F 54                 // U0GEAR\PNOT

            Return (Zero)
        }


  019C: A4 00                                            // ..

        Method (GLTS, 0, Serialized)
        {
            Store (\_PR.CPU0.GEAR, Local0)
            ShiftLeft (Local0, One, Local0)
            And (MPMF, One, Local1)
            Or (Local0, Local1, Local0)

  019E: 14 28 47 4C 54 53 08 70 5C 2F 03 5F 50 52 5F 43  // .(GLTS.p\/._PR_C
  01AE: 50 55 30 47 45 41 52 60 79 60 01 60 7B 4D 50 4D  // PU0GEAR`y`.`{MPM
  01BE: 46 01 61 7D 60 61 60                             // F.a}`a`

            Return (Local0)
        }
    }
}



Table Header:
Table Body (Length 0x1C7)
