// Automatic injection of EH01 properties

DefinitionBlock("", "SSDT", 2, "hack", "EH01", 0)
{
    External(_SB.PCI0.EH01, DeviceObj)
    External (RMDT, DeviceObj)
    External (RMDT.PUSH, MethodObj)
    External (RMDT.P1, MethodObj)
    External (RMDT.P2, MethodObj)
    External (RMDT.P3, MethodObj)
    External (RMDT.P4, MethodObj)
    External (RMDT.P5, MethodObj)
    External (RMDT.P6, MethodObj)
    External (RMDT.P7, MethodObj)

    // inject properties for ECHI#1
    Method(_SB.PCI0.EH01._DSM, 4)
    {
        \rmdt.p5("EH01 enter", Arg0, Arg1, Arg2, Arg3)
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return (Package()
        {
            "subsystem-id", Buffer() { 0x70, 0x72, 0x00, 0x00 },
            "subsystem-vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },
            "AAPL,current-available", Buffer() { 0x34, 0x08, 0, 0 },
            "AAPL,current-extra", Buffer() { 0x98, 0x08, 0, 0, },
            "AAPL,current-extra-in-sleep", Buffer() { 0x40, 0x06, 0, 0, },
            "AAPL,max-port-current-in-sleep", Buffer() { 0x34, 0x08, 0, 0 },
            
            "kUSBSleepPowerSupply", 0x13EC,
            "kUSBSleepPortCurrentLimit", 0x0834,
            "kUSBWakePowerSupply", 0x13EC,
            "kUSBWakePortCurrentLimit", 0x0834,
        })
    }
}
//EOF
