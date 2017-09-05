// For solving instant wake by hooking GPRW

DefinitionBlock("", "SSDT", 2, "hack", "GLAN_PRW", 0)
{
    External (RMDT.P5, MethodObj)
    
    External(GPRW, MethodObj)
    External(XPRW, MethodObj)

    // In DSDT, native GLAN._PRW is renamed XPRW with Clover binpatch.
    // As a result, calls to GLAN._PRW land here.
    // The purpose of this implementation is to avoid "instant wake"
    // by returning 0 in the second position (sleep state supported)
    // of the return package.
    // GLAN._PRW is renamed to XPRW so we can replace it here
    External(_SB.PCI0.GLAN, DeviceObj)
    External(_SB.PCI0.GLAN.XPRW, MethodObj)
    Method(_SB.PCI0.GLAN._PRW)
    {
        //Local0 = \_SB.PCI0.GLAN.XPRW()
        Local0 = GPRW (0x0D, 0x04)

        \rmdt.p5("Entered _SB.PCI0.GLAN._PRW, returned results are [0]:", Local0[0], " [1]:", Local0[1], " -> 0")
        
        Local0[1] = 0
        Return(Local0)
    }

//    Scope (_SB.PCI0)
//    {
//        Device (GLAN)
//        {
//            Name (_ADR, 0x00190000)  // _ADR: Address
//            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
//            {
//                Return (GPRW (0x0D, 0))
//            }
//        }
//    }
}
//EOF
