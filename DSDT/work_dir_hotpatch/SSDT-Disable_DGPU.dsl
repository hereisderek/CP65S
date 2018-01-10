// For disabling the discrete GPU

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
        }
    }
}
//EOF
