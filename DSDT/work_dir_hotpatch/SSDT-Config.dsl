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
    
    
    Device(RMCF)
    {
        Name(_ADR, 0)   // do not remove

        Method(HELP)
        {
            Store("TYPE indicates type of the computer. 0: desktop, 1: laptop", Debug)
            Store("HIGH selects display type. 1: high resolution, 2: low resolution", Debug)
            Store("IGPI overrides ig-platform-id or snb-platform-id", Debug)
            Store("DPTS for laptops only. 1: enables/disables DGPU in _WAK/_PTS", Debug)
            Store("SHUT enables shutdown fix. 1: disables _PTS code when Arg0==5", Debug)
            Store("XPEE enables XHC.PMEE fix. 1: set XHC.PMEE to zero in _PTS when Arg0==5", Debug)
            Store("AUDL indicates audio layout-id for patched AppleHDA. Ones: no injection", Debug)
            Store("BKLT indicates the type of backlight control. 0: IntelBacklight, 1: AppleBacklight", Debug)
            Store("LMAX indicates max for IGPU PWM backlight. Ones: Use default, other values must match framebuffer", Debug)
            
            
            Store("IWPP indicates instant wake power patch. 0: not patch. 1: patch", Debug)
        }

        // TYPE: Indicates the type of computer... desktop or laptop
        //
        //  0: desktop
        //  1: laptop
        Name(TYPE, 1)

        // HIGH: High resolution/low resolution selection.  Affects IGPU injection.
        //
        // For 1600x900+ on Sandy/Ivy, use 1
        // For UHD/QHD+ on Haswell/Broadwell, use 1
        // Others (low resolution), use 0
        Name(HIGH, 0)

        // IGPI: Override for ig-platform-id (or snb-platform-id).
        // Will be used if non-zero, and not Ones
        // Can be set to Ones to disable IGPU injection.
        // For example, if you wanted to inject a bogus id, 0x12345678
        //    Name(IGPI, 0x12345678)
        // Or to disable, IGPU injection from SSDT-IGPU:
        //    Name(IGPI, Ones)
        // Or to set a custom ig-platform-id, example:
        //    Name(IGPI, 0x01660008)
        Name(IGPI, 0)

        // DPTS: For laptops only: set to 1 if you want to enable and
        //  disable the DGPU _PTS and _WAK.
        //
        //  0: does not manipulate the DGPU in _WAK and _PTS
        //  1: disables the DGPU in _WAK and enables it in _PTS
        Name(DPTS, 1)

        // SHUT: Shutdown fix, disable _PTS code when Arg0==5 (shutdown)
        //
        //  0: does not affect _PTS behavior during shutdown
        //  1: disables _PTS code during shutdown
        Name(SHUT, 0)

        // XPEE: XHC.PMEE fix, set XHC.PMEE=0 in _PTS when Arg0==5 (shutdown)
        // This fixes "auto restart" after shutdown when USB devices are plugged into XHC on
        // certain computers.
        //
        // 0: does not affect _PTS behavior during shutdown
        // 1: sets XHC.PMEE in _PTS code during shutdown
        Name(XPEE, 0)

        // AUDL: Audio Layout
        //
        // The value here will be used to inject layout-id for HDEF and HDAU
        // If set to Zero, no audio injection will be done.
        Name(AUDL, 30)
        //Name(AUDL, 28)
        //Name(AUDL, Ones)


        // BKLT: Backlight control type
        //
        // 0: Using IntelBacklight.kext
        // 1: Using AppleBacklight.kext + AppleBacklightInjector.kext
        Name(BKLT, 1)

        // LMAX: Backlight PWM MAX.  Must match framebuffer in use.
        //
        // Ones: Default will be used (0x710 for Ivy/Sandy, 0xad9 for Haswell/Broadwell)
        // Other values: must match framebuffer
        Name(LMAX, Ones)
        //Name(LMAX, 0xad9)

        // FBTP: Framebuffer type. Determines IGPU PWM register layout.
        //  (advanced use: for overriding default for unsupported IGPU device-id)
        //
        // 0: Default based on device-id
        // 1: Ivy/Sandy
        // 2: Haswell/Broadwell/Skylake/KabyLake
        Name(FBTP, 0)
        
        // IWPP indicates instant wake power patch
        // 0: no patch applied
        // 2^0 = 1: USB
        // 2^1 = 2: GLAN
        // 2^2 = 4: [Reserved]
        // 
        // Other value: you can apply multiple patches in the form of "|", such as "1|2" 
        
        Name(IWPP, 2)
        
//        RMCF
        \rmdt.p2("RMCF configuration TYPE:", TYPE)
        \rmdt.p2("RMCF configuration HIGH:", HIGH)
        \rmdt.p2("RMCF configuration IGPI:", IGPI)
        \rmdt.p2("RMCF configuration DPTS:", DPTS)
        \rmdt.p2("RMCF configuration SHUT:", SHUT)
        \rmdt.p2("RMCF configuration XPEE:", XPEE)
        \rmdt.p2("RMCF configuration AUDL:", AUDL)
        \rmdt.p2("RMCF configuration BKLT:", BKLT)
        \rmdt.p2("RMCF configuration LMAX:", LMAX)
        \rmdt.p2("RMCF configuration FBTP:", FBTP)
    }
    
    // a common method extracted from mac
    Method (DTGP, 5, NotSerialized)
    {
        If (LEqual (Arg0, Buffer (0x10)
        {
            /* 0000 */    0xC6, 0xB7, 0xB5, 0xA0, 0x18, 0x13, 0x1C, 0x44,
            /* 0008 */    0xB0, 0xC9, 0xFE, 0x69, 0x5E, 0xAF, 0x94, 0x9B
        }))
        {
            If (LEqual (Arg1, One))
            {
                If (LEqual (Arg2, Zero))
                {
                    Store (Buffer (One)
                    {
                        0x03
                    }, Arg4)
                    Return (One)
                }
                If (LEqual (Arg2, One))
                {
                    Return (One)
                }
            }
        }
        Store (Buffer (One)
        {
            0x00
        }, Arg4)
        Return (Zero)
    }
    
    // keyboard brightness adjustment fix
    Method(_SB.PCI0.LPCB.EC._Q11, 0)
    {
        // call the original method
        // \rmdt.p1("enter custom Q11 for brightness up")
        If (CondRefOf(\_SB.PCI0.LPCB.EC.XQ11)) { \_SB.PCI0.LPCB.EC.XQ11() }
        If (CondRefOf(\_SB.PCI0.LPCB.PS2K)) { Notify(\_SB.PCI0.LPCB.PS2K, 0x0405) }
        // Notify(\_SB.PCI0.LPCB.PS2K, 0x0405)
    }

    Method(_SB.PCI0.LPCB.EC._Q12, 0)
    {
        // call the original method
        // \rmdt.p1("enter custom Q12 for brightness down")
        If (CondRefOf(\_SB.PCI0.LPCB.EC.XQ12)) { \_SB.PCI0.LPCB.EC.XQ12() }
        If (CondRefOf(\_SB.PCI0.LPCB.PS2K)) { Notify(\_SB.PCI0.LPCB.PS2K, 0x0406) }
        // Notify(\_SB.PCI0.LPCB.PS2K, 0x0406)
    }
    
    // Realtek RTL8723BE Wireless LAN 802.11n PCI-E Network Adapter
    Method(_SB.PCI0.PR06.PXSX._DSM, 4, NotSerialized)
    {
        \rmdt.p5("Enter _SB.PCI0.PR06.PXSX._DSM", Arg0, Arg1, Arg2, Arg3)
        Store (Package ()
        {
            "AAPL,slot-name", Buffer () { "Built in" }, 
            "model", Buffer () { "Realtek RTL8723BE Wireless LAN 802.11n PCI-E Network Adapter" }, 
            "built-in", Buffer (One) { 0x00 }
        }, Local0)
        
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        
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
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        
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
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        
        // call build in _DSM
        If (CondRefOf(\_SB.PCI0.PR05.RLAN.XDSM))
        {
            \_SB.PCI0.PR05.RLAN.XDSM(Arg0, Arg1, Arg2, Arg3)
        }
        Return(Local0)
    }
    
    /*
    Method (_DSM, 4, NotSerialized)
    {
        Store (Package ()
        {
            "AAPL,slot-name", 
            Buffer ()
            {
                "Built in"
            }, 
            "name", 
            Buffer ()
            {
                "Dell Wlan 1397 Half MiniCard"
            }, 
            "device_type", 
            Buffer ()
            {
                "Airport"
            }, 
            "model", 
            Buffer ()
            {
                "BCM4312 802.11b/g Wireless Adapter"
            }, 
            "built-in", 
            Buffer (One)
            {
                0x00
            }
        }, Local0)
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }
    */


}
//EOF
