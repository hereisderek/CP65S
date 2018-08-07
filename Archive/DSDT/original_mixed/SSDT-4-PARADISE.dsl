{
    External (_SB_.PCI0.SAT0, DeviceObj)
    External (DSSP, IntObj)
    External (FHPP, IntObj)

    Scope (\)
    {

  0024: 10 46 09 5C 00                                   // .F.\.

        Name (STFE, 
  0029: 08 53 54 46 45                                   // .STFE

Buffer (0x07)
        {
             0x10, 0x06, 0x00, 0x00, 0x00, 0x00, 0xEF       
        })

  002E: 11 0A 0A 07 10 06 00 00 00 00 EF                 // ...........

        Name (STFD, 
  0039: 08 53 54 46 44                                   // .STFD

Buffer (0x07)
        {
             0x90, 0x06, 0x00, 0x00, 0x00, 0x00, 0xEF       
        })

  003E: 11 0A 0A 07 90 06 00 00 00 00 EF                 // ...........

        Name (FZTF, 
  0049: 08 46 5A 54 46                                   // .FZTF

Buffer (0x07)
        {
             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5       
        })

  004E: 11 0A 0A 07 00 00 00 00 00 00 F5                 // ...........

        Name (DCFL, 
  0059: 08 44 43 46 4C                                   // .DCFL

Buffer (0x07)
        {
             0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB1       
        })

  005E: 11 0A 0A 07 C1 00 00 00 00 00 B1                 // ...........

        Name (SCBF, 
  0069: 08 53 43 42 46                                   // .SCBF

Buffer (0x15){})

  006E: 11 03 0A 15                                      // ....

        Name (CMDC, Zero)

  0072: 08 43 4D 44 43 00                                // .CMDC.

        Method (GTFB, 2, Serialized)
        {
            Multiply (CMDC, 0x38, Local0)

  0078: 14 42 04 47 54 46 42 0A 77 43 4D 44 43 0A 38 60  // .B.GTFB.wCMDC.8`

            CreateField (SCBF, Local0, 0x38, CMDX)
            Multiply (CMDC, 0x07, Local0)

  0088: 5B 13 53 43 42 46 60 0A 38 43 4D 44 58 77 43 4D  // [.SCBF`.8CMDXwCM
  0098: 44 43 0A 07 60                                   // DC..`

            CreateByteField (SCBF, Add (Local0, One), A001)
            Store (Arg0, CMDX)
            Store (Arg1, A001)

  009D: 8C 53 43 42 46 72 60 01 00 41 30 30 31 70 68 43  // .SCBFr`..A001phC
  00AD: 4D 44 58 70 69 41 30 30 31                       // MDXpiA001

            Increment (CMDC)
        }
    }


  00B6: 75 43 4D 44 43                                   // uCMDC

    Scope (\_SB.PCI0.SAT0)
    {

  00BB: 10 49 25 5C 2F 03 5F 53 42 5F 50 43 49 30 53 41  // .I%\/._SB_PCI0SA
  00CB: 54 30                                            // T0

        Name (REGF, One)

  00CD: 08 52 45 47 46 01                                // .REGF.

        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {

  00D3: 14 12 5F 52 45 47 02                             // .._REG.

            If (LEqual (Arg0, 0x02))
            {

  00DA: A0 0B 93 68 0A 02                                // ...h..

                Store (Arg1, REGF)
            }
        }


  00E0: 70 69 52 45 47 46                                // piREGF

        Name (TMD0, 
  00E6: 08 54 4D 44 30                                   // .TMD0

Buffer (0x14){})

  00EB: 11 03 0A 14                                      // ....

        CreateDWordField (TMD0, Zero, PIO0)

  00EF: 8A 54 4D 44 30 00 50 49 4F 30                    // .TMD0.PIO0

        CreateDWordField (TMD0, 0x04, DMA0)

  00F9: 8A 54 4D 44 30 0A 04 44 4D 41 30                 // .TMD0..DMA0

        CreateDWordField (TMD0, 0x08, PIO1)

  0104: 8A 54 4D 44 30 0A 08 50 49 4F 31                 // .TMD0..PIO1

        CreateDWordField (TMD0, 0x0C, DMA1)

  010F: 8A 54 4D 44 30 0A 0C 44 4D 41 31                 // .TMD0..DMA1

        CreateDWordField (TMD0, 0x10, CHNF)

  011A: 8A 54 4D 44 30 0A 10 43 48 4E 46                 // .TMD0..CHNF

        Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
        {
            Store (0x78, PIO0)
            Store (0x14, DMA0)
            Store (0x78, PIO1)
            Store (0x14, DMA1)
            Or (CHNF, 0x05, CHNF)

  0125: 14 32 5F 47 54 4D 00 70 0A 78 50 49 4F 30 70 0A  // .2_GTM.p.xPIO0p.
  0135: 14 44 4D 41 30 70 0A 78 50 49 4F 31 70 0A 14 44  // .DMA0p.xPIO1p..D
  0145: 4D 41 31 7D 43 48 4E 46 0A 05 43 48 4E 46        // MA1}CHNF..CHNF

            Return (TMD0)
        }


  0153: A4 54 4D 44 30                                   // .TMD0

        Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
        {
        }


  0158: 14 06 5F 53 54 4D 03                             // .._STM.

        Device (SPT0)
        {

  015F: 5B 82 44 05 53 50 54 30                          // [.D.SPT0

            Name (_ADR, 0xFFFF)  // _ADR: Address

  0167: 08 5F 41 44 52 0B FF FF                          // ._ADR...

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                Store (Zero, CMDC)

  016F: 14 45 04 5F 47 54 46 00 70 00 43 4D 44 43        // .E._GTF.p.CMDC

                If (LOr (DSSP, FHPP))
                {
                    GTFB (STFD, 0x06)
                }

  017D: A0 14 91 44 53 53 50 46 48 50 50 47 54 46 42 53  // ...DSSPFHPPGTFBS
  018D: 54 46 44 0A 06                                   // TFD..

                Else
                {
                    GTFB (STFE, 0x06)
                }

                GTFB (FZTF, Zero)
                GTFB (DCFL, Zero)

  0192: A1 0B 47 54 46 42 53 54 46 45 0A 06 47 54 46 42  // ..GTFBSTFE..GTFB
  01A2: 46 5A 54 46 00 47 54 46 42 44 43 46 4C 00        // FZTF.GTFBDCFL.

                Return (SCBF)
            }
        }


  01B0: A4 53 43 42 46                                   // .SCBF

        Device (SPT1)
        {

  01B5: 5B 82 46 05 53 50 54 31                          // [.F.SPT1

            Name (_ADR, 0x0001FFFF)  // _ADR: Address

  01BD: 08 5F 41 44 52 0C FF FF 01 00                    // ._ADR.....

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                Store (Zero, CMDC)

  01C7: 14 45 04 5F 47 54 46 00 70 00 43 4D 44 43        // .E._GTF.p.CMDC

                If (LOr (DSSP, FHPP))
                {
                    GTFB (STFD, 0x06)
                }

  01D5: A0 14 91 44 53 53 50 46 48 50 50 47 54 46 42 53  // ...DSSPFHPPGTFBS
  01E5: 54 46 44 0A 06                                   // TFD..

                Else
                {
                    GTFB (STFE, 0x06)
                }

                GTFB (FZTF, Zero)
                GTFB (DCFL, Zero)

  01EA: A1 0B 47 54 46 42 53 54 46 45 0A 06 47 54 46 42  // ..GTFBSTFE..GTFB
  01FA: 46 5A 54 46 00 47 54 46 42 44 43 46 4C 00        // FZTF.GTFBDCFL.

                Return (SCBF)
            }
        }


  0208: A4 53 43 42 46                                   // .SCBF

        Device (SPT3)
        {

  020D: 5B 82 46 05 53 50 54 33                          // [.F.SPT3

            Name (_ADR, 0x0003FFFF)  // _ADR: Address

  0215: 08 5F 41 44 52 0C FF FF 03 00                    // ._ADR.....

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                Store (Zero, CMDC)

  021F: 14 45 04 5F 47 54 46 00 70 00 43 4D 44 43        // .E._GTF.p.CMDC

                If (LOr (DSSP, FHPP))
                {
                    GTFB (STFD, 0x06)
                }

  022D: A0 14 91 44 53 53 50 46 48 50 50 47 54 46 42 53  // ...DSSPFHPPGTFBS
  023D: 54 46 44 0A 06                                   // TFD..

                Else
                {
                    GTFB (STFE, 0x06)
                }

                GTFB (FZTF, Zero)
                GTFB (DCFL, Zero)

  0242: A1 0B 47 54 46 42 53 54 46 45 0A 06 47 54 46 42  // ..GTFBSTFE..GTFB
  0252: 46 5A 54 46 00 47 54 46 42 44 43 46 4C 00        // FZTF.GTFBDCFL.

                Return (SCBF)
            }
        }


  0260: A4 53 43 42 46                                   // .SCBF

        Device (SPT4)
        {

  0265: 5B 82 46 05 53 50 54 34                          // [.F.SPT4

            Name (_ADR, 0x0004FFFF)  // _ADR: Address

  026D: 08 5F 41 44 52 0C FF FF 04 00                    // ._ADR.....

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                Store (Zero, CMDC)

  0277: 14 45 04 5F 47 54 46 00 70 00 43 4D 44 43        // .E._GTF.p.CMDC

                If (LOr (DSSP, FHPP))
                {
                    GTFB (STFD, 0x06)
                }

  0285: A0 14 91 44 53 53 50 46 48 50 50 47 54 46 42 53  // ...DSSPFHPPGTFBS
  0295: 54 46 44 0A 06                                   // TFD..

                Else
                {
                    GTFB (STFE, 0x06)
                }

                GTFB (FZTF, Zero)
                GTFB (DCFL, Zero)

  029A: A1 0B 47 54 46 42 53 54 46 45 0A 06 47 54 46 42  // ..GTFBSTFE..GTFB
  02AA: 46 5A 54 46 00 47 54 46 42 44 43 46 4C 00        // FZTF.GTFBDCFL.

                Return (SCBF)
            }
        }


  02B8: A4 53 43 42 46                                   // .SCBF

        Device (SPT5)
        {

  02BD: 5B 82 46 05 53 50 54 35                          // [.F.SPT5

            Name (_ADR, 0x0005FFFF)  // _ADR: Address

  02C5: 08 5F 41 44 52 0C FF FF 05 00                    // ._ADR.....

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                Store (Zero, CMDC)

  02CF: 14 45 04 5F 47 54 46 00 70 00 43 4D 44 43        // .E._GTF.p.CMDC

                If (LOr (DSSP, FHPP))
                {
                    GTFB (STFD, 0x06)
                }

  02DD: A0 14 91 44 53 53 50 46 48 50 50 47 54 46 42 53  // ...DSSPFHPPGTFBS
  02ED: 54 46 44 0A 06                                   // TFD..

                Else
                {
                    GTFB (STFE, 0x06)
                }

                GTFB (FZTF, Zero)
                GTFB (DCFL, Zero)

  02F2: A1 0B 47 54 46 42 53 54 46 45 0A 06 47 54 46 42  // ..GTFBSTFE..GTFB
  0302: 46 5A 54 46 00 47 54 46 42 44 43 46 4C 00        // FZTF.GTFBDCFL.

                Return (SCBF)
            }
        }
    }
}



Table Header:
Table Body (Length 0x315)
