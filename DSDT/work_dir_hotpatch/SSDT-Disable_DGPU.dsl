// For disabling the discrete GPU

//https://github.com/mkottman/acpi_call/blob/master/examples/turn_off_gpu.sh
//\_SB.PCI0.P0P1.VGA._OFF
//\_SB.PCI0.P0P2.VGA._OFF
//\_SB_.PCI0.OVGA.ATPX
//\_SB_.PCI0.OVGA.XTPX
//\_SB.PCI0.P0P3.PEGP._OFF
//\_SB.PCI0.P0P2.PEGP._OFF
//\_SB.PCI0.P0P1.PEGP._OFF
//\_SB.PCI0.MXR0.MXM0._OFF
//\_SB.PCI0.PEG1.GFX0._OFF
//\_SB.PCI0.PEG0.GFX0.DOFF
//\_SB.PCI0.PEG1.GFX0.DOFF
//\_SB.PCI0.PEG0.PEGP._OFF
//\_SB.PCI0.XVR0.Z01I.DGOF
//\_SB.PCI0.PEGR.GFX0._OFF
//\_SB.PCI0.PEG.VID._OFF
//\_SB.PCI0.PEG0.VID._OFF
//\_SB.PCI0.P0P2.DGPU._OFF
//\_SB.PCI0.P0P4.DGPU.DOFF
//\_SB.PCI0.IXVE.IGPU.DGOF
//\_SB.PCI0.RP00.VGA._PS3
//\_SB.PCI0.RP00.VGA.P3MO
//\_SB.PCI0.GFX0.DSM._T_0
//\_SB.PCI0.LPC.EC.PUBS._OFF
//\_SB.PCI0.P0P2.NVID._OFF
//\_SB.PCI0.P0P2.VGA.PX02
//\_SB_.PCI0.PEGP.DGFX._OFF
//\_SB_.PCI0.VGA.PX02
//\_SB.PCI0.PEG0.PEGP.SGOF
//\_SB.PCI0.AGP.VGA.PX02


DefinitionBlock("", "SSDT", 2, "hack", "D-DGPU", 0)
{
    External(_SB.PCI0.PEG0.PEGP._OFF, MethodObj)
    External(_SB.PCI0.PEGP.DGFX._OFF, MethodObj)
    
    External (_SB_.PCI0.PEG0.PEGP.OPON, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP.OPOF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP._PS0, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP._PS3, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP._ON, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG2.PEGP._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG2.PEGP._ON, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG_.VID_._PS0, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG_.VID_._PS3, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG_.VID_.XDSM, MethodObj)    // 4 Arguments (from opcode)
    External (_SB_.PCI0.PEGP.DGFX._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEGP.DGFX._ON, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP01.PEGP._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP01.PEGP._ON, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP01.PXSX._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP01.PXSX._ON, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP05.PXSX._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP05.PXSX._ON, MethodObj)    // 0 Arguments (from opcode)
    // samsung 500R4K series
    External (_SB_.PCI0.RP05.PEGP._PS0, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP05.PEGP._PS3, MethodObj)    // 0 Arguments (from opcode)
    // HP 15-d101tx
    External (_SB_.PCI0.PEG1.PEGP._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG1.PEGP._ON, MethodObj)    // 0 Arguments (from opcode)
    // IOACPIPlane:/_SB/PCI0@0/PEG0@10000/PEGP@0
    External (_SB_.PCI0.PEG0.PEGP.EPON, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP.EPOF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP05.PEGP.EPON, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP05.PEGP.EPOF, MethodObj)    // 0 Arguments (from opcode)
    
    
    Device(RMD1)
    {
        Name(_HID, "RMD10000")
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            // disable discrete graphics (Nvidia/Radeon) if it is present
            //If (CondRefOf(\_SB.PCI0.PEG0.PEGP._OFF)) { \_SB.PCI0.PEG0.PEGP._OFF() }
            //If (CondRefOf(\_SB.PCI0.PEGP.DGFX._OFF)) { \_SB.PCI0.PEGP.DGFX._OFF() }
            
            _OFF ()
        }

        Method (_ON, 0, NotSerialized)  // _ON: Power On
        {
            If (CondRefOf (\_SB.PCI0.PEG2.PEGP._ON))
            {
                \_SB.PCI0.PEG2.PEGP._ON ()
            }

            If (CondRefOf (\_SB.PCI0.PEG0.PEGP._ON))
            {
                \_SB.PCI0.PEG0.PEGP._ON ()
            }
            
            If (CondRefOf (\_SB.PCI0.PEG0.PEGP._PS0))
            {
                \_SB.PCI0.PEG0.PEGP._PS0 ()
            }

            If (CondRefOf (\_SB.PCI0.PEGP.DGFX._ON))
            {
                \_SB.PCI0.PEGP.DGFX._ON ()
            }

            If (CondRefOf (\_SB.PCI0.RP05.PXSX._ON))
            {
                \_SB.PCI0.RP05.PXSX._ON ()
            }

            If (CondRefOf (\_SB.PCI0.PEG.VID._PS0))
            {
                \_SB.PCI0.PEG.VID._PS0 ()
            }

            If (CondRefOf (\_SB.PCI0.RP01.PXSX._ON))
            {
                \_SB.PCI0.RP01.PXSX._ON ()
            }

            If (CondRefOf (\_SB.PCI0.RP01.PEGP._ON))
            {
                \_SB.PCI0.RP01.PEGP._ON ()
            }
            
                        
            If (CondRefOf (\_SB.PCI0.RP05.PEGP._PS0))
            {
                \_SB.PCI0.RP05.PEGP._PS0 ()
            }
                        
            If (CondRefOf (\SB_.PCI0.PEG1.PEGP._ON))
            {
                \_SB_.PCI0.PEG1.PEGP._ON ()
            }
                        
            If (CondRefOf (\_SB_.PCI0.PEG0.PEGP.OPON))
            {
                \_SB_.PCI0.PEG0.PEGP.OPON ()
            }
                        
            If (CondRefOf (\_SB_.PCI0.PEG0.PEGP.EPON))
            {
                \_SB_.PCI0.PEG0.PEGP.EPON ()
            }
                        
            If (CondRefOf (\_SB_.PCI0.RP05.PEGP.EPON))
            {
                \_SB_.PCI0.RP05.PEGP.EPON ()
            }
        }

        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
        {
            If (CondRefOf (\_SB.PCI0.PEG2.PEGP._OFF))
            {
                \_SB.PCI0.PEG2.PEGP._OFF ()
            }

            If (CondRefOf (\_SB.PCI0.PEG0.PEGP._OFF))
            {
                \_SB.PCI0.PEG0.PEGP._OFF ()
            }
            
            If (CondRefOf (\_SB.PCI0.PEG0.PEGP._PS3))
            {
                \_SB.PCI0.PEG0.PEGP._PS3 ()
            }

            If (CondRefOf (\_SB.PCI0.PEGP.DGFX._OFF))
            {
                \_SB.PCI0.PEGP.DGFX._OFF ()
            }

            If (CondRefOf (\_SB.PCI0.RP05.PXSX._OFF))
            {
                \_SB.PCI0.RP05.PXSX._OFF ()
            }

            If (CondRefOf (\_SB.PCI0.PEG.VID._PS3))
            {
                \_SB.PCI0.PEG.VID.XDSM (ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0"), 0x0100, 0x1A, Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x03                         
                    })
                \_SB.PCI0.PEG.VID._PS3 ()
            }

            If (CondRefOf (\_SB.PCI0.RP01.PXSX._OFF))
            {
                \_SB.PCI0.RP01.PXSX._OFF ()
            }
            
            External (\_SB.PCI0.RP01.PEGP, DeviceObj)
            External (\_SB_.PCI0.RP01.PXSX._STA, IntObj)

            If (CondRefOf (\_SB.PCI0.RP01.PEGP._OFF))
            {
                \_SB.PCI0.RP01.PEGP._OFF ()
            }
            
            If (CondRefOf (\_SB_.PCI0.RP01.PXSX._STA))
            {
                Store(Zero, \_SB_.PCI0.RP01.PXSX._STA)
            } Else {
                Scope (\_SB.PCI0.RP01.PEGP)
                    {
                        Name (_STA, Zero)
                    }
            }
            
            
            If (CondRefOf (\_SB.PCI0.RP05.PEGP._PS3))
            {
                \_SB.PCI0.RP05.PEGP._PS3 ()
            }
            
            If (CondRefOf (\SB_.PCI0.PEG1.PEGP._OFF))
            {
                \_SB_.PCI0.PEG1.PEGP._OFF ()
            }
            
            If (CondRefOf (\_SB_.PCI0.PEG0.PEGP.OPOF))
            {
                \_SB_.PCI0.PEG0.PEGP.OPOF ()
            }
            
            If (CondRefOf (\_SB_.PCI0.PEG0.PEGP.EPOF))
            {
                \_SB_.PCI0.PEG0.PEGP.EPOF ()
            }
                        
            If (CondRefOf (\_SB_.PCI0.RP05.PEGP.EPOF))
            {
                \_SB_.PCI0.RP05.PEGP.EPOF ()
            }
        }
    }
}
//EOF
