// SSDT example of configuration override

DefinitionBlock ("", "SSDT", 2, "hack", "acpibatt", 0)
{
    // assumption that battery device is at _SB.BAT1 (check your DSDT)
    External(_SB.BAT0, DeviceObj)
    
    Name(_SB.BAT0.RMCF, Package()
    {
        "UseExtendedBatteryInformationMethod", ">y",
        "UseExtraBatteryInformationMethod", ">y",
        "EstimateCycleCountDivisor", 6,
        "UseDesignVoltageForDesignCapacity", ">y",
        "UseDesignVoltageForMaxCapacity", ">y",
        "UseDesignVoltageForCurrentCapacity", ">y",
        "CurrentDischargeRateMax", 20000,
        "CorrectCorruptCapacities", ">y",
        "Correct16bitSignedCurrentRate", ">y",
        "StartupDelay", 0,
        "FirstPollDelay", 5000,
    })
}
// EOF
