// Disabling ESEL

DefinitionBlock("", "SSDT", 2, "hack", "ESEL", 0)
{
    External (RMDT, DeviceObj)
    External (RMDT.PUSH, MethodObj)
    External (RMDT.P1, MethodObj)
    External (RMDT.P2, MethodObj)

    External(_SB.PCI0.XHC, DeviceObj)
    External(_SB.PCI0.XHC.PR2, FieldUnitObj)
    External(_SB.PCI0.XHC.PR2M, FieldUnitObj)
    External(_SB.PCI0.XHC.PR3, FieldUnitObj)
    External(_SB.PCI0.XHC.PR3M, FieldUnitObj)
    External(_SB.XUSB, FieldUnitObj)
    External(_SB.PCI0.XHC.XRST, IntObj)
    
    External(_SB.XHCI, FieldUnitObj)

    // In DSDT, native ESEL is renamed ESEX
    // As a result, calls to it land here.
    Method(_SB.PCI0.XHC.ESEL)
    {
        If (CondRefOf(\_SB.XHCI)) 
        {
            \rmdt.p2("method _SB.PCI0.XHC.ESEL called, the current value of XHCI:", \_SB.XHCI)
        }

                
        And (PR3, 0xFFFFFFC0, PR3)
        And (PR2, 0xFFFF8000, PR2)
        Store (Zero, XUSB)
        Store (Zero, XRST)
        
        
        // do nothing
    }
}
//EOF
