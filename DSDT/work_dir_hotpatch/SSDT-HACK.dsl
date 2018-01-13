// configuration data for other SSDTs in this pack


DefinitionBlock("", "SSDT", 2, "hack", "RMCF", 0)
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
    
    External (_SB.PCI0.LPCB.PS2K, DeviceObj)
    External (_SB.PCI0.LPCB.EC, DeviceObj)
    External (_SB.PCI0.LPCB.EC.XQ11, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ12, MethodObj)
    
    External (_SB.PCI0.PR06.PXSX.XDSM, MethodObj)
    External (_SB.PCI0.PR05.PXSX.XDSM, MethodObj)
    External (_SB.PCI0.PR05.RLAN.XDSM, MethodObj)
    
    Device (RMKB)
    {
        Name(_HID, "RMKB0000")
    }    // keyboard brightness adjustment fix
    
    // Enabling brightness keys
    Method(_SB.PCI0.LPCB.EC._Q11, 0)
    {
        // call the original method
        // \rmdt.p1("enter custom Q11 for brightness up")
        If (CondRefOf(\_SB.PCI0.LPCB.EC.XQ11)) { \_SB.PCI0.LPCB.EC.XQ11() }
        
        If (CondRefOf(\_SB.PCI0.LPCB.PS2K)) 
        { 
            //Notify(\_SB.PCI0.LPCB.PS2K, 0x0405)     // method1
            Notify(\_SB.PCI0.LPCB.PS2K, 0x20)     // method2
        }
    }


    Method(_SB.PCI0.LPCB.EC._Q12, 0)
    {
        // call the original method
        // \rmdt.p1("enter custom Q12 for brightness down")
        If (CondRefOf(\_SB.PCI0.LPCB.EC.XQ12)) { \_SB.PCI0.LPCB.EC.XQ12() }
        
        If (CondRefOf(\_SB.PCI0.LPCB.PS2K)) 
        { 
            //Notify(\_SB.PCI0.LPCB.PS2K, 0x0406)    // method1
            Notify(\_SB.PCI0.LPCB.PS2K, 0x10)    // method2
        }
        
    }
    
    // Realtek RTL8723BE Wireless LAN 802.11n PCI-E Network Adapter
    Method(_SB.PCI0.PR06.PXSX._DSM, 4, NotSerialized)
    {
        \rmdt.p5("Enter _SB.PCI0.PR06.PXSX._DSM", Arg0, Arg1, Arg2, Arg3)
        Store (Package ()
        {
            "AAPL,slot-name", Buffer () { "Built in" }, 
            "model", Buffer () { "BCM4352 802.11ac Wireless Network Adapter" }, 
            "built-in", Buffer (One) { 0x00 },
            "compatible", "pci14e4,43a0"
        }, Local0)
        
        // call build in _DSM
        If (CondRefOf(\_SB.PCI0.PR06.PXSX.XDSM)) { \_SB.PCI0.PR06.PXSX.XDSM(Arg0, Arg1, Arg2, Arg3) }
        
        Return(Local0)
    }

    // Realtek RTS5287 PCI-E Card Reader
    Method(_SB.PCI0.PR05.PXSX._DSM, 4, NotSerialized)
    {
        \rmdt.p5("Enter _SB.PCI0.PR05.PXSX._DSM", Arg0, Arg1, Arg2, Arg3)
        Store (Package ()
        {
            "AAPL,slot-name", 
            Buffer ()
            {
                "Built in"
            }, 
            "model", 
            Buffer ()
            {
                "Realtek RTS5287 PCI-E Card Reader"
            }, 
            "built-in", 
            Buffer (One)
            {
                0x00
            }
        }, Local0)
        
        // call build in _DSM
        If (CondRefOf(\_SB.PCI0.PR05.PXSX.XDSM))
        {
            \_SB.PCI0.PR05.PXSX.XDSM(Arg0, Arg1, Arg2, Arg3)
        }
        Return(Local0)
    }
    

    // Realtek RTL8168/8111 PCI-E Gigabit Ethernet Adapter
    Method(_SB.PCI0.PR05.RLAN._DSM, 4, NotSerialized)
    {
        \rmdt.p5("Enter _SB.PCI0.PR05.RLAN._DSM", Arg0, Arg1, Arg2, Arg3)
        Store (Package ()
        {
            "AAPL,slot-name", 
            Buffer ()
            {
                "Built in"
            }, 
            "model", 
            Buffer ()
            {
                "Realtek RTL8168/8111 PCI-E Gigabit Ethernet Adapter"
            }, 
            "built-in", 
            Buffer (One)
            {
                0x00
            }
        }, Local0)
        
        // call build in _DSM
        If (CondRefOf(\_SB.PCI0.PR05.RLAN.XDSM))
        {
            \_SB.PCI0.PR05.RLAN.XDSM(Arg0, Arg1, Arg2, Arg3)
        }
        Return(Local0)
    }
    
    // sleep: https://pikeralpha.wordpress.com/2017/01/12/debugging-sleep-issues/
    
    Scope (\_SB)
    {
        Method (LPS0, 0, NotSerialized)
        {
            Store ("Method \\_SB._LPS0 Called", Debug)
            Return (One)
        }
    }
     
    Scope (\_GPE)
    {
        Method (LXEN, 0, NotSerialized)
        {
            Store ("Method \\_GPE.LXEN Called", Debug)
            Return (One)
        }
    }
    
    Scope (\)
    {
       Name (SLTP, Zero)
     
       Method (_TTS, 1, NotSerialized)
       {
           Store ("Method \\__TTS Called", Debug)
           Store (Arg0, SLTP)
       }
    }

}
//EOF
