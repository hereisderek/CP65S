{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
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
    External (ADBG, MethodObj)    // 1 Arguments
    External (INSC, FieldUnitObj)
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (P8XH, MethodObj)    // 2 Arguments

    Scope (\_SB)
    {

  0024: 10 44 14 5C 5F 53 42 5F                          // .D.\_SB_

        Device (INSD)
        {

  002C: 5B 82 4B 13 49 4E 53 44                          // [.K.INSD

            Name (_HID, "INT3398")  // _HID: Hardware ID

  0034: 08 5F 48 49 44 0D 49 4E 54 33 33 39 38 00        // ._HID.INT3398.

            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID

  0042: 08 5F 43 49 44 0C 41 D0 0C 02                    // ._CID.A...

            Name (_UID, Zero)  // _UID: Unique ID

  004C: 08 5F 55 49 44 00                                // ._UID.

            Name (NBT1, Zero)

  0052: 08 4E 42 54 31 00                                // .NBT1.

            Method (GNSC, 0, NotSerialized)
            {
                Store (INSC, Local0)
                P8XH (Zero, 0xAA)
                ADBG ("GNSC: ")
                ADBG (
  0058: 14 2B 47 4E 53 43 00 70 49 4E 53 43 60 50 38 58  // .+GNSC.pINSC`P8X
  0068: 48 00 0A AA 41 44 42 47 0D 47 4E 53 43 3A 20 00  // H...ADBG.GNSC: .
  0078: 41 44 42 47                                      // ADBG

ToHexString (Local0))

  007C: 98 60 00                                         // .`.

                Return (INSC)
            }


  007F: A4 49 4E 53 43                                   // .INSC

            Method (GNSM, 0, Serialized)
            {
                Store (NBT1, Local0)
                P8XH (Zero, 0x71)
                ADBG ("GNSM: ")
                ADBG (
  0084: 14 28 47 4E 53 4D 08 70 4E 42 54 31 60 50 38 58  // .(GNSM.pNBT1`P8X
  0094: 48 00 0A 71 41 44 42 47 0D 47 4E 53 4D 3A 20 00  // H..qADBG.GNSM: .
  00A4: 41 44 42 47                                      // ADBG

ToHexString (Local0))

  00A8: 98 60 00                                         // .`.

                Return (Local0)
            }


  00AB: A4 60                                            // .`

            Method (SNSM, 1, Serialized)
            {

  00AD: 14 4B 0B 53 4E 53 4D 09                          // .K.SNSM.

                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store (Arg0, NBT1)
                Store (NBT1, Local0)

  00B5: 08 5F 54 5F 30 00 70 68 4E 42 54 31 70 4E 42 54  // ._T_0.phNBT1pNBT
  00C5: 31 60                                            // 1`

                While (One)
                {
                    Store (ToInteger (Local0), _T_0)

  00C7: A2 47 08 01 70 99 60 00 5F 54 5F 30              // .G..p.`._T_0

                    If (LEqual (_T_0, Zero))
                    {
                        ADBG ("case 0: ")
                    }

  00D3: A0 15 93 5F 54 5F 30 00 41 44 42 47 0D 63 61 73  // ..._T_0.ADBG.cas
  00E3: 65 20 30 3A 20 00                                // e 0: .

                    ElseIf
  00E9: A1 44 06                                         // .D.

 (LEqual (_T_0, One))
                    {
                        ADBG ("case 1: ")
                    }

  00EC: A0 15 93 5F 54 5F 30 01 41 44 42 47 0D 63 61 73  // ..._T_0.ADBG.cas
  00FC: 65 20 31 3A 20 00                                // e 1: .

                    ElseIf
  0102: A1 4B 04                                         // .K.

 (LEqual (_T_0, 0x02))
                    {
                        ADBG ("case 2: ")
                    }

  0105: A0 16 93 5F 54 5F 30 0A 02 41 44 42 47 0D 63 61  // ..._T_0..ADBG.ca
  0115: 73 65 20 32 3A 20 00                             // se 2: .

                    ElseIf
  011C: A1 31                                            // .1

 (LEqual (_T_0, 0x03))
                    {
                        ADBG ("case 3: ")
                    }

  011E: A0 16 93 5F 54 5F 30 0A 03 41 44 42 47 0D 63 61  // ..._T_0..ADBG.ca
  012E: 73 65 20 33 3A 20 00                             // se 3: .

                    ElseIf
  0135: A1 18                                            // ..

 (LEqual (_T_0, 0x04))
                    {
                        ADBG ("case 4: ")
                    }


  0137: A0 16 93 5F 54 5F 30 0A 04 41 44 42 47 0D 63 61  // ..._T_0..ADBG.ca
  0147: 73 65 20 34 3A 20 00                             // se 4: .

                    Break
                }

                P8XH (Zero, 0x72)
                ADBG ("SNSM: ")
                ADBG (
  014E: A5 50 38 58 48 00 0A 72 41 44 42 47 0D 53 4E 53  // .P8XH..rADBG.SNS
  015E: 4D 3A 20 00 41 44 42 47                          // M: .ADBG

ToHexString (Local0))
            }
        }
    }
}



Table Header:
Table Body (Length 0x169)
