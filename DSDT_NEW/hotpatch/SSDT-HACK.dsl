// configuration data for other SSDTs in this pack

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "HACK", 0)
{
#endif      
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
    
    External (_SB.PCI0.RP06.PXSX.XDSM, MethodObj)
    External (_SB.PCI0.RP01.PXSX.XDSM, MethodObj)
    External (_SB.PCI0.RP05.PXSX.XDSM, MethodObj)
    External (_SB.PCI0.RP05.RLAN.XDSM, MethodObj)
    External (_SB.PCI0.IGPU.XDSM, MethodObj)
    
    
    External (OSYS, IntObj)
    Method (OSDW, 0, NotSerialized)
    {
        Return (LEqual (OSYS, 0x2710))
    }
    
    
    Device (RMKB)
    {
        Name(_HID, "RMKB0000")
    }
    
    
    // keyboard brightness adjustment fix
    // if EC_QUERY not present
    If (!CondRefOf(\_SB.PCI0.LPCB.EC._Q11)) 
    {
    	// Enabling brightness keys
        Method(_SB.PCI0.LPCB.EC._Q11, 0)
        {
            // call the original method
            \rmdt.p1("enter custom Q11 for brightness down")
            If (CondRefOf(\_SB.PCI0.LPCB.EC.XQ11)) { \_SB.PCI0.LPCB.EC.XQ11() }
            
            If (CondRefOf(\_SB.PCI0.LPCB.PS2K)) 
            { 
                Notify(\_SB.PCI0.LPCB.PS2K, 0x0405)     // method1
                //Notify(\_SB.PCI0.LPCB.PS2K, 0x20)     // method2
            }
        }
    }
    If (!CondRefOf(\_SB.PCI0.LPCB.EC._Q12)) 
    {
    	// Enabling brightness keys
        Method(_SB.PCI0.LPCB.EC._Q12, 0)
        {
            // call the original method
            \rmdt.p1("enter custom Q12 for brightness up")
            If (CondRefOf(\_SB.PCI0.LPCB.EC.XQ12)) { \_SB.PCI0.LPCB.EC.XQ12() }
            
            If (CondRefOf(\_SB.PCI0.LPCB.PS2K)) 
            { 
                Notify(\_SB.PCI0.LPCB.PS2K, 0x0406)     // method1
                //Notify(\_SB.PCI0.LPCB.PS2K, 0x10)     // method2
            }
        }
    }
    
    // fix usb instant wake


    
    
    /*
    // original GPRW for reference here
    Method (GPRW, 2, NotSerialized)
    {
        Store (Arg0, Index (PRWP, Zero))
        Store (ShiftLeft (SS1, One), Local0)
        Or (Local0, ShiftLeft (SS2, 0x02), Local0)
        Or (Local0, ShiftLeft (SS3, 0x03), Local0)
        Or (Local0, ShiftLeft (SS4, 0x04), Local0)
        If (And (ShiftLeft (One, Arg1), Local0))
        {
            Store (Arg1, Index (PRWP, One))
        }
        Else
        {
            ShiftRight (Local0, One, Local0)
            FindSetLeftBit (Local0, Index (PRWP, One))
        }

        Return (PRWP)
    }
    */
    
    External (XPRW, MethodObj)

    Name(_SB.PCI0.GLAN._PRW, Package() { 0x0D, 0x00 })
    Name(_SB.PCI0.XHC._PRW, Package() { 0x0D, 0x00 })
    Name(_SB.PCI0.EHC1._PRW, Package() { 0x0D, 0x00 })
    Name(_SB.PCI0.EHC2._PRW, Package() { 0x0D, 0x00 }) 
    Name(_SB.PCI0.HDEF._PRW, Package() { 0x0D, 0x00 })
    Name(_SB.PCI0.LPCB.PS2K._PRW, Package() { 0x0D, 0x03 })    
    
    /*
    External (_SB.PCI0.GLAN.XPRW, MethodObj)
    Method (_SB.PCI0.GLAN._PRW)  // _PRW: Power Resources for Wake
    {
//        \rmdt.p1("_SB.PCI0.GLAN._PRW")
//        Local0 = GPRW (0x0D, 0x04)
//        \rmdt.p3("_SB.PCI0.GLAN._PRW, result:", Local0[0], Local0[1])
//        Local0[1] = 0
//        Return (Local0)
        Return (Package() { 0x0D, 0x00 })
    }
    Method (_SB.PCI0.LPCB.PS2K._PRW)  // _PRW: Power Resources for Wake
    {
        \rmdt.p1("_SB.PCI0.XHC._PRW")
        Local0 = GPRW (0x0D, 0x03)
//        \rmdt.p3("_SB.PCI0.XHC._PRW, result:", Local0[0], Local0[1])
//        Local0[1] = 0
        Return (Local0)
//        Return (Package() { 0x0D, 0x00 })
    }
    */
    
    
    
    // sleep related
    // https://pikeralpha.wordpress.com/2017/01/12/debugging-sleep-issues/
    Scope (\)
    {
       Name (SLTP, Zero)
       Method (_TTS, 1, NotSerialized)
       {
           Store ("Method \\__TTS Called", Debug)
           Store (Arg0, SLTP)
       }
    }

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
        
        // from mbp 11.3
        /*
        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LAnd (\_SB.PCI0.IGPU.GSSE, LNot (GSMI)))
            {
                \_SB.PCI0.IGPU.GSCI ()
            }
            Else
            {
                Store (0x00, \_SB.PCI0.IGPU.GEFC)
                Store (0x01, SCIS)
                Store (0x00, \_SB.PCI0.IGPU.GSSE)
                Store (0x00, \_SB.PCI0.IGPU.SCIE)
            }
        }
        */
    }
    
    
    
    /*
    Method (RUSB, 0, NotSerialized)
    {
        If (LEqual (VEID, 0x8086))
        {
            If (\_SB.PCI0.LPCB.RTC.ISLG)
            {
                \_SB.PCI0.XHC1.LEGM ()
            }
        }
    }

    Method (HUSB, 0, NotSerialized)
    {
        If (LEqual (VEID, 0x8086))
        {
            \_SB.PCI0.XHC1.LEGM ()
        }
    }
    */
    
    
    
    Method(_SB.PCI0.HDAU._DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Local0 = Package()
        {
            "layout-id", Buffer() { 31, 0, 0, 0 },
            "hda-gfx", Buffer() { "onboard-1" },
        }
        Return(Local0)
    }
    
    Method(_SB.PCI0.HDEF._DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Local0 = Package()
        {
            "layout-id", Buffer() { 31, 0, 0, 0 },
            "hda-gfx", Buffer() { "onboard-1" },
            "PinConfigurations", Buffer() { },
            
            "codec-id", Buffer (0x04) { 0x92, 0x08, 0xEC, 0x10 },
            "AAPL,slot-name", Buffer() { "Built in" },
            "device_type", Buffer() { "Audio Controller" },
        }
        Return(Local0)
    }
    
    /* Added DynamicEWMode option (default is true). This is specifically to improve two finger scroll 
    responsiveness with ClickPads. Instead of always forcing the trackpad into EW mode (EW mode enables 
    two finger data), EW mode is only entered upon clicking the pad. Since each finger gets half bandwidth 
    in EW mode and during a scroll we only need one finger (with indication of two), we can avoid entering 
    EW mode resulting in double the bandwidth during the two finger scroll. Of course, EW mode is needed 
    when the pad is clicked (for holding the button with one finger while dragging with the other), so EW 
    mode is now turned on/off dynamically depending on whether the button is clicked.
    External(_SB.PCI0.LPCB.PS2K, DeviceObj)
    Scope(_SB.PCI0.LPCB.PS2K)
    */
    
    External(_SB.PCI0.LPCB.PS2K, DeviceObj)
    Scope(_SB.PCI0.LPCB.PS2K)
    {
        // overrides for VoodooPS2 configuration...
        Name(RMCF, Package()
        {
            "Synaptics TouchPad", Package()
            {
                "DynamicEWMode", ">y",
//                "DynamicEWMode", ">n",
            },
            
            "Keyboard", Package()
            {
                // "Custom ADB Map"
                "Custom PS2 Map", Package()
                {
                    Package(){},
                    //"e037=64", // PrtSc=F13
//                    "e005=6b",
//                    "e006=71",
                },
            },
        })
        
        Method(_DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Return (Package()
            {
                "RM,oem-id", "Clevo",
                "RM,oem-table-id", "P650SA",
            })
        }
    }
    
    
    // Realtek RTL8723BE Wireless LAN 802.11n PCI-E Network Adapter
    Method(_SB.PCI0.RP06.PXSX._DSM, 4, NotSerialized)
    {
        \rmdt.p5("Enter _SB.PCI0.RP06.PXSX._DSM", Arg0, Arg1, Arg2, Arg3)
        Store (Package ()
        {
            "AAPL,slot-name", Buffer () { "Built in" }, 
            "model", Buffer () { "BCM4352 802.11ac Wireless Network Adapter" }, 
            "built-in", Buffer (One) { 0x00 },
            "compatible", "pci14e4,43a0"
        }, Local0)
        
        // call build in _DSM
        If (CondRefOf(\_SB.PCI0.RP06.PXSX.XDSM)) { \_SB.PCI0.RP06.PXSX.XDSM(Arg0, Arg1, Arg2, Arg3) }
        
        Return(Local0)
    }

    // Realtek RTS5287 PCI-E Card Reader
    Method(_SB.PCI0.RP05.PXSX._DSM, 4, NotSerialized)
    {
        \rmdt.p5("Enter _SB.PCI0.RP05.PXSX._DSM", Arg0, Arg1, Arg2, Arg3)
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
        If (CondRefOf(\_SB.PCI0.RP05.PXSX.XDSM))
        {
            \_SB.PCI0.RP05.PXSX.XDSM(Arg0, Arg1, Arg2, Arg3)
        }
        Return(Local0)
    }
    

    // Realtek RTL8168/8111 PCI-E Gigabit Ethernet Adapter
    Method(_SB.PCI0.RP05.RLAN._DSM, 4, NotSerialized)
    {
        \rmdt.p5("Enter _SB.PCI0.RP05.RLAN._DSM", Arg0, Arg1, Arg2, Arg3)
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
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
        If (CondRefOf(\_SB.PCI0.RP05.RLAN.XDSM))
        {
            \_SB.PCI0.RP05.RLAN.XDSM(Arg0, Arg1, Arg2, Arg3)
        }
        Return(Local0)
    }
    
    

    // M.2 SSD
    /*
    Method(_SB.PCI0.RP01.PXSX._DSM, 4, NotSerialized)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Store (Package ()
        {
            "AAPL,slot-name", 
            Buffer () { "Built in" }, 
            
            "model", Buffer () 
            {
                "Intel SSD 600p Series"
            }, 
            
            "built-in", Buffer (One) { 0x00 },
            "name", Buffer (0x22)
            {
                "Intel SSD 600p Series NVM Express"
            }, 

            "device_type", 
            Buffer (0x10){"NVMe Controller"},
            
        }, Local0)
        
        // call build in _DSM
        If (CondRefOf(\_SB.PCI0.RP01.PXSX.XDSM))
        {
            \_SB.PCI0.RP01.PXSX.XDSM(Arg0, Arg1, Arg2, Arg3)
        }
        Return(Local0)
    }
    */
           
    // sleep: https://pikeralpha.wordpress.com/2017/01/12/debugging-sleep-issues/
    /*
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
    */
        
    /*    
    External (_SB.PCI0.GPI0, DeviceObj)
    External (BVAL, IntObj)
    External (S0ID, IntObj)
    // GPI0._STA to _XTA 0x0F for VoodooI2C by Derek
    Scope (\_SB.PCI0.GPI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            \rmdt.p5("SB.PCI0.GPI0 init, _STA:", \_SB.PCI0.GPI0._STA, "BVAL and S0ID:", BVAL, S0ID)
        }
        Name (_STA, 0x0F)
    }
    

    Scope (\_SB.PCI0.LPCB.PS2K)
    {
        Name (SBFG, ResourceTemplate ()
        {
            GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
                "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0000
                }
        })
    }
    
    Device (I2C0)
    {
        Name (LINK, "\\_SB.PCI0.I2C0")
        Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
        {
            Return (GETD (SB10))
        }
        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            LPD0 (SB10)
        }
        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
                LPD3 (SB10)
        }
    }
    
    Device (I2C1)
    {
        Name (LINK, "\\_SB.PCI0.I2C1")
        Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
        {
            Return (GETD (SB11))
        }
        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            LPD0 (SB11)
        }
        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            LPD3 (SB11)
        }
    }
    */

#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
