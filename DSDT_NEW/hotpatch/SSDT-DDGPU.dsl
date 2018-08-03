// For disabling the discrete GPU

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "_DDGPU", 0)
{
#endif
    // Note: The _OFF path should be customized to correspond to your native ACPI
    // the two paths provided here should be considered examples only
    // it is best to edit the code such that only the single _OFF path that your ACPI
    // uses is included.
    External(_SB.PCI0.PEG0.PEGP._ON, MethodObj)
    External(_SB.PCI0.PEG0.PEGP._OFF, MethodObj)

    External(_SB.PCI0.PEG0.GFX0._ON, MethodObj)    
    External(_SB.PCI0.PEG0.GFX0._OFF, MethodObj)
    External(RMCF.DDGU, IntObj)
//    External(_SB.PCI0.PEGP.DGFX._OFF, MethodObj)

    Device(RMD1)
    {
        Name(_HID, "RMD10000")
        Method(_INI)
        {
            If (CondRefOf(\RMCF.DDGU) && \RMCF.DDGU) {_OFF()}
        }
        
        Method (_ON, 0, NotSerialized)  // _ON: Power On
        {
            If (CondRefOf(\RMCF.DDGU) && \RMCF.DDGU) {
                If (CondRefOf(\_SB.PCI0.PEG0.PEGP._ON)) { \_SB.PCI0.PEG0.PEGP._ON() }
                If (CondRefOf(\_SB.PCI0.PEG0.GFX0._ON)) { \_SB.PCI0.PEG0.GFX0._ON() }
            }

        }
        
        // disable discrete graphics (Nvidia/Radeon) if it is present
        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
        {
            If (CondRefOf(\RMCF.DDGU) && \RMCF.DDGU) {
                If (CondRefOf(\_SB.PCI0.PEG0.PEGP._OFF)) { \_SB.PCI0.PEG0.PEGP._OFF() }
                If (CondRefOf(\_SB.PCI0.PEG0.GFX0._OFF)) { \_SB.PCI0.PEG0.GFX0._OFF() }
            }
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
