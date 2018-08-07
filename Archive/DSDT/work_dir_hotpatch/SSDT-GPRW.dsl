// For solving instant wake by hooking GPRW or UPRW

DefinitionBlock("", "SSDT", 2, "hack", "GPRW", 0)
{
    External (RMDT.P1, MethodObj)
    External (RMDT.P2, MethodObj)
    External (RMDT.P4, MethodObj)
    
    External(XPRW, MethodObj)
    External(RMCF.IWPP, IntObj)

    // In DSDT, native GPRW is renamed to XPRW with Clover binpatch.
    // As a result, calls to GPRW land here.
    // The purpose of this implementation is to avoid "instant wake"
    // by returning 0 in the second position (sleep state supported)
    // of the return package.
    Method(GPRW, 2)
    {
        \rmdt.p4("Enter GPRW with Arg0:", Arg0, " Arg1:", Arg1)
        
        Store (XPRW(Arg0, Arg1), Local0)
        
        If (CondRefOf(\RMCF.IWPP)) 
        {
            Store (\RMCF.IWPP, Local1)
            \rmdt.p2(" RMCF.IWPP:", \RMCF.IWPP, " Local1 & 1:", (Local1 & 1))
            
            
            If (Local1 & 1 == 1) 
            {
                \rmdt.p1("Applying USB instant wake GPRW fix")
//                If (0x6d == Arg0) { Return (Package() { 0x6d, 0, }) }
//                If (0x0d == Arg0) { Return (Package() { 0x0d, 0, }) }
//                CreateDWordField(DerefOf(Local0[1]), 0, AUDL)
                
            }
            Else
            {
                \rmdt.p1("Skipping USB instant wake GPRW fix")
            }
        }
        
        \rmdt.p4("XPRW returns [0]:", Local0[0], " [1]:", Local0[1])
        
//        If (0x6d == Arg0) { Return (Package() { 0x6d, 0, }) }
//        If (0x0d == Arg0) { Return (Package() { 0x0d, 0, }) }
        //Return (XPRW(Arg0, Arg1))
        Local0[2] = 0
        Return (Local0)
    }
}
//EOF