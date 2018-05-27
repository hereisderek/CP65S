// Adding PNLF device for IntelBacklight.kext or AppleBacklight.kext+AppleBacklightInjector.kext

#define SANDYIVY_PWMMAX 0x710
#define HASWELL_PWMMAX 0xad9
#define SKYLAKE_PWMMAX 0x56c
#define CUSTOM_PWMMAX_07a1 0x07a1
#define CUSTOM_PWMMAX_1499 0x1499

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "_PNLF", 0)
{
#endif
    External(RMCF.BKLT, IntObj)
    External(RMCF.LMAX, IntObj)
    External(RMCF.LEVW, IntObj)
    External(RMCF.GRAN, IntObj)
    External(RMCF.FBTP, IntObj)

    External(_SB.PCI0.IGPU, DeviceObj)
    Scope(_SB.PCI0.IGPU)
    {
        OperationRegion(RMP3, PCI_Config, 0, 0x14)
    }

    // For backlight control
    Device(_SB.PCI0.IGPU.PNLF)
    {
        Name(_ADR, Zero)
        Name(_HID, EisaId ("APP0002"))
        Name(_CID, "backlight")
        // _UID is set depending on PWMMax
        // 14: Sandy/Ivy 0x710
        // 15: Haswell/Broadwell 0xad9
        // 16: Skylake/KabyLake 0x56c (and some Haswell, example 0xa2e0008)
        // 17: custom LMAX=0x7a1
        // 18: custom LMAX=0x1499
        // 99: Other (requires custom AppleBacklightInjector.kext)
        Name(_UID, 0)
        Name(_STA, 0x0B)

        Method (RMCF)
        {
            Return(Package()
            {
                "PWMMax", CUSTOM_PWMMAX_07a1, // PWMMax of Zero uses BIOS PWM Max instead of OS X values
                "Options", 0x01, // setting bit0 turns off smooth transitions
            })
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF

