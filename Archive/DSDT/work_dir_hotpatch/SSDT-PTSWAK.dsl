// Overriding _PTS and _WAK

DefinitionBlock("", "SSDT", 2, "hack", "PTSWAK", 0)
{
    External (RMDT, DeviceObj)
    External (RMDT.PUSH, MethodObj)
    External (RMDT.P2, MethodObj)
    
    External(ZPTS, MethodObj)
    External(ZWAK, MethodObj)


    External(RMD1, DeviceObj)
    External(RMD1._ON, MethodObj)
    External(RMD1._OFF, MethodObj)
    External(_SB.PCI0.PEG0.PEGP._ON, MethodObj)
    External(_SB.PCI0.PEG0.PEGP._OFF, MethodObj)
    External(_SB.PCI0.PEGP.DGFX._ON, MethodObj)
    External(_SB.PCI0.PEGP.DGFX._OFF, MethodObj)

    External(RMCF.DPTS, IntObj)
    External(RMCF.SHUT, IntObj)
    External(RMCF.XPEE, IntObj)
    External(RMCF.SSTF, IntObj)
    External(_SB.PCI0.XHC.PMEE, FieldUnitObj)
    External(_SI._SST, MethodObj)

    // In DSDT, native _PTS and _WAK are renamed ZPTS/ZWAK
    // As a result, calls to these methods land here.
    Method(_PTS, 1)
    {
        \rmdt.p2("_PTS has been called with Arg0:", Arg0)
        if (5 == Arg0)
        {
            // Shutdown fix, if enabled
            If (CondRefOf(\RMCF.SHUT))
            {
                If (\RMCF.SHUT & 1) { Return }
                If (\RMCF.SHUT & 2)
                {
                    OperationRegion(PMRS, SystemIO, 0x1830, 1)
                    Field(PMRS, ByteAcc, NoLock, Preserve)
                    {
                        ,4,
                        SLPE, 1,
                    }
                    // alternate shutdown fix using SLPE (mostly provided as an example)
                    // likely very specific to certain motherboards
                    Store(0, SLPE)
                    Sleep(16)
                }
            }
        }

        If (CondRefOf(\RMCF.DPTS))
        {
            If (\RMCF.DPTS)
            {
                // enable discrete graphics RMD1
                If (CondRefOf(\RMD1._ON)) 
                { \RMD1._ON() }
                Else 
                {
                    If (CondRefOf(\_SB.PCI0.PEG0.PEGP._ON)) { \_SB.PCI0.PEG0.PEGP._ON() }
                    If (CondRefOf(\_SB.PCI0.PEGP.DGFX._ON)) { \_SB.PCI0.PEGP.DGFX._ON() }
                }

            }
        }

        // call into original _PTS method
        ZPTS(Arg0)

        If (5 == Arg0)
        {
            // XHC.PMEE fix, if enabled
            External(\_SB.PCI0.XHC.PMEE, FieldUnitObj)
            If (CondRefOf(\RMCF.XPEE)) { If (\RMCF.XPEE && CondRefOf(\_SB.PCI0.XHC.PMEE)) { \_SB.PCI0.XHC.PMEE = 0 } }
        }
    }
    Method(_WAK, 1)
    {
        \rmdt.p2("_WAK has been called with Arg0:", Arg0)
        Store (Package() {0, 0}, Local0)
        
        // Take care of bug regarding Arg0 in certain versions of OS X...
        // (starting at 10.8.5, confirmed fixed 10.10.2)
        If (Arg0 < 1 || Arg0 > 5) { Arg0 = 3 }
        
        // call into original _WAK method
        If (CondRefOf(ZWAK)) { Local0 = ZWAK(Arg0) }
        
        Local0 = ZWAK(Arg0)

        If (CondRefOf(\RMCF.DPTS))
        {
            If (\RMCF.DPTS)
            {
                // disable discrete graphics
                If (CondRefOf(\RMD1._OFF)) 
                { \RMD1._OFF() }
                Else 
                {
                    If (CondRefOf(\_SB.PCI0.PEG0.PEGP._OFF)) { \_SB.PCI0.PEG0.PEGP._OFF() }
                    If (CondRefOf(\_SB.PCI0.PEGP.DGFX._OFF)) { \_SB.PCI0.PEGP.DGFX._OFF() }
                }

            }
        }

        If (CondRefOf(\RMCF.SSTF))
        {
            If (\RMCF.SSTF)
            {
                // call _SI._SST to indicate system "working"
                // for more info, read ACPI specification
                If (3 == Arg0 && CondRefOf(\_SI._SST)) { \_SI._SST(1) }
            }
        }
        
        // return value from original _WAK
        Return (Local0)
    }
}
//EOF
