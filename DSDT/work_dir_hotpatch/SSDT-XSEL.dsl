// Disabling XSEL

DefinitionBlock("", "SSDT", 2, "hack", "XSEL", 0)
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
    // Note about path of XUSB. In DSDT, it is declared as follows:
    //
    //Scope (\_SB)
    //{
    //    OperationRegion (PCI0.LPCB.LPC1, PCI_Config, Zero, 0x0100)
    //    Field (PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
    //    {
    //        //...
    //        XUSB,   1
    //    }
    //
    // Initially assumed the full path for XUSB was \_SB.PCI0.LPCB.XUSB, but it is
    // actually \_SB.XUSB.  The path in OperationRegion/Field only locates
    // the particular PCI_Config, but the symbols within Field are scoped to
    // \_SB.  It is a handy little feature that may be useful in other cases...
    
    External(_SB.XHCI, FieldUnitObj)
    
    // In DSDT, native XSEL is renamed ZSEL
    // As a result, calls to it land here.
    Method(_SB.PCI0.XHC.XSEL)
    {
        If (CondRefOf(\_SB.XHCI)) 
        {
            \rmdt.p2("method _SB.PCI0.XHC.XSEL called, the current value of XHCI:", \_SB.XHCI)
        }
        
//        If (CondRefOf(\_SB.XHCI)) { \rmdt.p2("the current value of \_SB.XHCI:", \_SB.XHCI) }
//        Else
//        { \rmdt.p1("unable to find object \_SB.XHCI") }

        // This code is based on original XSEL, but without all the conditionals
        // With this code, USB works correctly even in 10.10 after booting Windows
        // setup to route all USB2 on XHCI to XHCI (not EHCI, which is disabled)
        Store(1, XUSB)
        Store(1, XRST)
        Or(And (PR3, 0xFFFFFFC0), PR3M, PR3)
        Or(And (PR2, 0xFFFF8000), PR2M, PR2)
        

        // do nothing
    }
}
//EOF
