// Automatic injection of EH02 properties

DefinitionBlock("", "SSDT", 2, "hack", "EH02", 0)
{
    External(_SB.PCI0.EH02, DeviceObj)
    External (RMDT, DeviceObj)
    External (RMDT.PUSH, MethodObj)
    External (RMDT.P1, MethodObj)
    External (RMDT.P2, MethodObj)
    External (RMDT.P3, MethodObj)
    External (RMDT.P4, MethodObj)
    External (RMDT.P5, MethodObj)
    External (RMDT.P6, MethodObj)
    External (RMDT.P7, MethodObj)
    
    // inject properties for EHCI#2
    Method(_SB.PCI0.EH02._DSM, 4)
    {
        \rmdt.p5("EH02 enter", Arg0, Arg1, Arg2, Arg3)
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return (Package()
        {
//            "AAPL,clock-id", Buffer() { 0x01 },
            "subsystem-id", Buffer() { 0x70, 0x72, 0x00, 0x00 },
            "subsystem-vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },

            //REVIEW: these values from MacBookPro12,1 (pure guess)
            "kUSBSleepPortCurrentLimit", 2100,
            "kUSBSleepPowerSupply", 2600,
            "kUSBWakePortCurrentLimit", 2100,
            "kUSBWakePowerSupply", 3200,

            "AAPL,current-available", 2100,
            "AAPL,current-extra", 2200,
            "AAPL,current-extra-in-sleep", 1600,
            "AAPL,device-internal", 0x02,
            "AAPL,max-port-current-in-sleep", 2100,
        })
    }
}
//EOF
