// Override for host defined _OSI to handle "Darwin"...

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "_XHC", 0)
{
    External (RMDT, DeviceObj)
    External (RMDT.PUSH, MethodObj)
    External (RMDT.P1, MethodObj)
    External (RMDT.P2, MethodObj)
    External (RMDT.P3, MethodObj)
    External (RMDT.P4, MethodObj)
    External (RMDT.P5, MethodObj)
    External (RMDT.P6, MethodObj)
    External (RMDT.P7, MethodObj)
    
    
    External (_SB.PCI0.XHC.ZWAK, MethodObj)
    External (_SB.PCI0.XHC.XSEZ, MethodObj)
    External (_SB.PCI0.XHC.ESEZ, MethodObj)
    
#endif
    
    // In DSDT, native ESEL is renamed ESEX/ESEZ
    // As a result, calls to it land here.
    Method(_SB.PCI0.XHC.ESEL)
    {
        // do nothing
        \rmdt.p1("_SB.PCI0.XHC.ESEL")
    }
    
    // In DSDT, native XSEL is renamed ZSEL/XSEZ
    // As a result, calls to it land here.
    Method(_SB.PCI0.XHC.XSEL)
    {
        // do nothing
        \rmdt.p1("_SB.PCI0.XHC.XSEL")
    }
    
    // In DSDT, native XWAK is renamed ZWAK
    // As a result, calls to it land here.
    Method(_SB.PCI0.XHC.XWAK)
    {
        // do nothing
        \rmdt.p1("_SB.PCI0.XHC.XWAK")
    }
    
    
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
