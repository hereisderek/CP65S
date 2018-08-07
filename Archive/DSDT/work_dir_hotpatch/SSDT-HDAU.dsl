// Automatic injection of HDAU properties

// Note: Only for Haswell and Broadwell

DefinitionBlock("", "SSDT", 2, "hack", "HDAU", 0)
{
    External(_SB.PCI0.HDAU, DeviceObj)
    External(_SB.PCI0.HDAU.XDSM, MethodObj)
    External(RMCF.AUDL, IntObj)
    
    External(RMDT.P5, MethodObj)
    
//    Name(_STA, Zero)
//    Name(_SB.PCI0.HDAU._STA, Zero)

    // inject properties for audio
    Method(_SB.PCI0.HDAU._DSM, 4)
    {
        \RMDT.P5("_SB.PCI0.HDAU._DSM, Args:", Arg0, Arg1, Arg2, Arg3)
        
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        
        // call build in _DSM
        If (CondRefOf(\_SB.PCI0.HDAU.XDSM)) 
        { 
            \_SB.PCI0.HDAU.XDSM(Arg0, Arg1, Arg2, Arg3) 
        }
        
        If (CondRefOf(\RMCF.AUDL)) 
        { 
            If (Ones == \RMCF.AUDL) 
            { 
                If (CondRefOf(\_SB.PCI0.HDAU.XDSM)) 
                { return (\_SB.PCI0.HDAU.XDSM(Arg0, Arg1, Arg2, Arg3)) } 
                else { Return(0) }
            }
        }
        
        Local0 = Package()
        {
            "layout-id", Buffer(4) { 3, 0, 0, 0 },
            "hda-gfx", Buffer() { "onboard-1" },
        }
        
        If (CondRefOf(\RMCF.AUDL))
        {
            CreateDWordField(DerefOf(Local0[1]), 0, AUDL)
            AUDL = \RMCF.AUDL
        }
        Return(Local0)
    }
}
//EOF
