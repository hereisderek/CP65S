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
    External (MDBG, MethodObj)    // Imported: 1 Arguments

    Scope (\_SB)
    {

  0024: 10 4B 0A 5C 5F 53 42 5F                          // .K.\_SB_

        Device (IFFS)
        {

  002C: 5B 82 42 0A 49 46 46 53                          // [.B.IFFS

            OperationRegion (FFSN, SystemMemory, 0xB17A9E98, 0x0008)

  0034: 5B 80 46 46 53 4E 00 0C 98 9E 7A B1 0B 08 00     // [.FFSN....z....

            Field (FFSN, AnyAcc, Lock, Preserve)
            {
                FFSA,   8, 
                FFSS,   8, 
                FFST,   16, 
                FFSP,   32
            }


  0043: 5B 81 1A 46 46 53 4E 10 46 46 53 41 08 46 46 53  // [..FFSN.FFSA.FFS
  0053: 53 08 46 46 53 54 10 46 46 53 50 20              // S.FFST.FFSP 

            Name (_HID, EisaId ("INT3392"))  // _HID: Hardware ID

  005F: 08 5F 48 49 44 0C 25 D4 33 92                    // ._HID.%.3.

            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID

  0069: 08 5F 43 49 44 0C 41 D0 0C 02                    // ._CID.A...

            Method (GFFS, 0, Serialized)
            {

  0073: 14 0B 47 46 46 53 08                             // ..GFFS.

                Return (FFSS)
            }


  007A: A4 46 46 53 53                                   // .FFSS

            Method (SFFS, 1, Serialized)
            {
                And (Arg0, FFSA, FFSS)

  007F: 14 15 53 46 46 53 09 7B 68 46 46 53 41 46 46 53  // ..SFFS.{hFFSAFFS
  008F: 53                                               // S

                Return (FFSS)
            }


  0090: A4 46 46 53 53                                   // .FFSS

            Method (GFTV, 0, Serialized)
            {

  0095: 14 0B 47 46 54 56 08                             // ..GFTV.

                Return (FFST)
            }


  009C: A4 46 46 53 54                                   // .FFST

            Method (SFTV, 1, Serialized)
            {

  00A1: 14 2E 53 46 54 56 09                             // ..SFTV.

                If (
  00A8: A0 0D 92                                         // ...

LLessEqual (Arg0, 0x05A0))
                {

  00AB: 94 68 0B A0 05                                   // .h...

                    Store (Arg0, FFST)
                }

  00B0: 70 68 46 46 53 54                                // phFFST

                Else
                {
                    And (FFSS, 0xFFFE, FFSS)

  00B6: A1 14 7B 46 46 53 53 0B FE FF 46 46 53 53        // ..{FFSS...FFSS

                    Store (0x0A, FFST)
                }


  00C4: 70 0A 0A 46 46 53 54                             // p..FFST

                Return (FFST)
            }
        }
    }
}



Table Header:
Table Body (Length 0xD0)
