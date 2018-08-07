{
    External (_PR_.CPU0._CST, MethodObj)    // 0 Arguments
    External (_PR_.CPU1, ProcessorObj)
    External (_PR_.CPU2, ProcessorObj)
    External (_PR_.CPU3, ProcessorObj)
    External (_PR_.CPU4, ProcessorObj)
    External (_PR_.CPU5, ProcessorObj)
    External (_PR_.CPU6, ProcessorObj)
    External (_PR_.CPU7, ProcessorObj)

    Scope (\_PR.CPU1)
    {

  0024: 10 22 5C 2E 5F 50 52 5F 43 50 55 31              // ."\._PR_CPU1

        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {

  0030: 14 16 5F 43 53 54 00                             // .._CST.

            Return (\_PR.CPU0._CST ())
        }
    }


  0037: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 53 54  // .\/._PR_CPU0_CST

    Scope (\_PR.CPU2)
    {

  0047: 10 22 5C 2E 5F 50 52 5F 43 50 55 32              // ."\._PR_CPU2

        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {

  0053: 14 16 5F 43 53 54 00                             // .._CST.

            Return (\_PR.CPU0._CST ())
        }
    }


  005A: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 53 54  // .\/._PR_CPU0_CST

    Scope (\_PR.CPU3)
    {

  006A: 10 22 5C 2E 5F 50 52 5F 43 50 55 33              // ."\._PR_CPU3

        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {

  0076: 14 16 5F 43 53 54 00                             // .._CST.

            Return (\_PR.CPU0._CST ())
        }
    }


  007D: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 53 54  // .\/._PR_CPU0_CST

    Scope (\_PR.CPU4)
    {

  008D: 10 22 5C 2E 5F 50 52 5F 43 50 55 34              // ."\._PR_CPU4

        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {

  0099: 14 16 5F 43 53 54 00                             // .._CST.

            Return (\_PR.CPU0._CST ())
        }
    }


  00A0: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 53 54  // .\/._PR_CPU0_CST

    Scope (\_PR.CPU5)
    {

  00B0: 10 22 5C 2E 5F 50 52 5F 43 50 55 35              // ."\._PR_CPU5

        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {

  00BC: 14 16 5F 43 53 54 00                             // .._CST.

            Return (\_PR.CPU0._CST ())
        }
    }


  00C3: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 53 54  // .\/._PR_CPU0_CST

    Scope (\_PR.CPU6)
    {

  00D3: 10 22 5C 2E 5F 50 52 5F 43 50 55 36              // ."\._PR_CPU6

        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {

  00DF: 14 16 5F 43 53 54 00                             // .._CST.

            Return (\_PR.CPU0._CST ())
        }
    }


  00E6: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 53 54  // .\/._PR_CPU0_CST

    Scope (\_PR.CPU7)
    {

  00F6: 10 22 5C 2E 5F 50 52 5F 43 50 55 37              // ."\._PR_CPU7

        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {

  0102: 14 16 5F 43 53 54 00                             // .._CST.

            Return (\_PR.CPU0._CST ())
        }
    }
}



Table Header:
Table Body (Length 0x119)
