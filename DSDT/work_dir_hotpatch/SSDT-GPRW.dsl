// For solving instant wake by hooking GPRW or UPRW

DefinitionBlock("", "SSDT", 2, "hack", "GPRW", 0)
{
    External (RMDT.P4, MethodObj)
    
    External(XPRW, MethodObj)

    // In DSDT, native GPRW is renamed to XPRW with Clover binpatch.
    // As a result, calls to GPRW land here.
    // The purpose of this implementation is to avoid "instant wake"
    // by returning 0 in the second position (sleep state supported)
    // of the return package.
    Method(GPRW, 2)
    {
        \rmdt.p4("Enter GPRW with Arg0:", Arg0, " Arg1:", Arg1)
        
        Store (XPRW(Arg0, Arg1), Local0)
        \rmdt.p4("XPRW returns [0]:", Local0[0], " [1]:", Local0[1])
        
        If (0x6d == Arg0) { Return (Package() { 0x6d, 0, }) }
        If (0x0d == Arg0) { Return (Package() { 0x0d, 0, }) }
        //Return (XPRW(Arg0, Arg1))
        Return (Local0)
    }
}
//EOF
