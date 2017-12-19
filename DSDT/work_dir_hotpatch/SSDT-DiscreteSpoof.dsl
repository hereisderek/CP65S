// Spoof discrete graphic card

DefinitionBlock ("", "SSDT", 2, "hack", "spoofdgpu", 0)
{
    Store(Package()
    {
        "name", Buffer() { "#display" },
        "IOName", "#display",
        "class-code", Buffer() { 0xFF, 0xFF, 0xFF, 0xFF },
    }, Local1)
        
    Method(SPOF, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return (Local1)
    }
    Method(_SB.PCI0.RP05.PEGP._DSM, 4)
    {
        Return (SPOF(Arg0, Arg1, Arg2, Arg3))
    }
    Method(_SB.PCI0.PEG0.PEGP._DSM, 4)
    {
        Return (SPOF(Arg0, Arg1, Arg2, Arg3))
    }
    Method(_SB.PCI0.PEGP.DGFX._DSM, 4)
    {
        Return (SPOF(Arg0, Arg1, Arg2, Arg3))
    }
    Method(_SB_.PCI0.PEG_.VID_._DSM, 4)
    {
        Return (SPOF(Arg0, Arg1, Arg2, Arg3))
    }
    Method(_SB_.PCI0.RP01.PEGP._DSM, 4)
    {
        Return (SPOF(Arg0, Arg1, Arg2, Arg3))
    }
    Method(_SB_.PCI0.RP01.PXSX._DSM, 4)
    {
        Return (SPOF(Arg0, Arg1, Arg2, Arg3))
    }
    Method(_SB_.PCI0.RP05.PXSX._DSM, 4)
    {
        Return (SPOF(Arg0, Arg1, Arg2, Arg3))
    }
}