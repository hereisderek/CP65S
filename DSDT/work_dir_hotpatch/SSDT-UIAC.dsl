// SSDT-UIAC-ALL.dsl
//
// This SSDT can be used as a template to build your own
// customization for USBInjectAll.kext.
//
// This SSDT contains all ports, so using it is the same as without
// a custom SSDT.  Delete ports that are not connected or ports you
// do not need.
//
// Change the UsbConnector or portType as needed to match your
// actual USB configuration.
//
// Note:
// portType=0 seems to indicate normal external USB2 port (as seen in MacBookPro8,1)
// portType=2 seems to indicate "internal device" (as seen in MacBookPro8,1)
// portType=4 is used by MacBookPro8,3 (reason/purpose unknown)
// 
// Common port connector types are USB2 = 0, USB3 = 3, internal = 255.

DefinitionBlock ("", "SSDT", 2, "hack", "UIAC-ALL", 0)
{
    External(DTGP, MethodObj)
    Scope (_SB)
    {
        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package ()
                    {
                        "AAPL,current-available", 0x0834,      // Buffer() { 0x34, 0x08, 0, 0 },
                        "AAPL,current-extra", 0x898,            // Buffer() { 0x98, 0x08, 0, 0, },
                        "AAPL,current-extra-in-sleep", 0x640,  // Buffer() { 0x40, 0x06, 0, 0, },
                        "AAPL,max-port-current-in-sleep", 0x0834,


                        //"kUSBSleepPowerSupply", 0x13EC,
                        //"kUSBSleepPortCurrentLimit", 0x0834,
                        //"kUSBWakePowerSupply", 0x13EC,
                        //"kUSBWakePortCurrentLimit", 0x0834,

                        //REVIEW: these values from MacBookPro12,1 (pure guess)
                        "kUSBSleepPortCurrentLimit", 2100,
                        "kUSBSleepPowerSupply", 2600,
                        "kUSBWakePortCurrentLimit", 2100,
                        "kUSBWakePowerSupply", 3200,
                        
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
    
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            "HUB1", Package()
            {
                "port-count", Buffer() { 8, 0, 0, 0 },
                "ports", Package()
                {
                    "HP11", Package()
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HP12", Package()
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
//                    "HP13", Package()
//                    {
//                        //"UsbConnector", 0,
//                        "portType", 0,
//                        "port", Buffer() { 3, 0, 0, 0 },
//                    },

                    // Bluetooth Radio
                    "HP14", Package()
                    {
                        //"UsbConnector", 0,
                        //"portType", 0,
                        "portType", 2,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    "HP15", Package()
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                    
                    // BisonCam, NB Pro
                    "HP16", Package()
                    {
                        //"UsbConnector", 0,
                        //"portType", 0,
                        "portType", 2,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
//                    "HP17", Package()
//                    {
//                        //"UsbConnector", 0,
//                        "portType", 0,
//                        "port", Buffer() { 7, 0, 0, 0 },
//                    },
//                    "HP18", Package()
//                    {
//                        //"UsbConnector", 0,
//                        "portType", 0,
//                        "port", Buffer() { 8, 0, 0, 0 },
//                    },
                },
            },
            "HUB2", Package()
            {
                "port-count", Buffer() { 6, 0, 0, 0 },
                "ports", Package()
                {
//                    "HP21", Package()
//                    {
//                        //"UsbConnector", 0,
//                        "portType", 0,
//                        "port", Buffer() { 1, 0, 0, 0 },
//                    },
                    "HP22", Package()
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
//                    "HP23", Package()
//                    {
//                        //"UsbConnector", 0,
//                        "portType", 0,
//                        "port", Buffer() { 3, 0, 0, 0 },
//                    },
//                    "HP24", Package()
//                    {
//                        //"UsbConnector", 0,
//                        "portType", 0,
//                        "port", Buffer() { 4, 0, 0, 0 },
//                    },
//                    "HP25", Package()
//                    {
//                        //"UsbConnector", 0,
//                        "portType", 0,
//                        "port", Buffer() { 5, 0, 0, 0 },
//                    },
//                    "HP26", Package()
//                    {
//                        //"UsbConnector", 0,
//                        "portType", 0,
//                        "port", Buffer() { 6, 0, 0, 0 },
//                    },
                },
            },
            "EH01", Package()
            {
//                "port-count", Buffer() { 8, 0, 0, 0 },
                "port-count", Buffer() { 1, 0, 0, 0 },
                "ports", Package()
                {
                    "PR11", Package()
                    {
//                        "UsbConnector", 255,
                        "UsbConnector", 0,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
//                    "PR12", Package()
//                    {
//                        "UsbConnector", 0,
//                        "port", Buffer() { 2, 0, 0, 0 },
//                    },
//                    "PR13", Package()
//                    {
//                        "UsbConnector", 0,
//                        "port", Buffer() { 3, 0, 0, 0 },
//                    },
//                    "PR14", Package()
//                    {
//                        "UsbConnector", 0,
//                        "port", Buffer() { 4, 0, 0, 0 },
//                    },
//                    "PR15", Package()
//                    {
//                        "UsbConnector", 0,
//                        "port", Buffer() { 5, 0, 0, 0 },
//                    },
//                    "PR16", Package()
//                    {
//                        "UsbConnector", 0,
//                        "port", Buffer() { 6, 0, 0, 0 },
//                    },
//                    "PR17", Package()
//                    {
//                        "UsbConnector", 0,
//                        "port", Buffer() { 7, 0, 0, 0 },
//                    },
//                    "PR18", Package()
//                    {
//                        "UsbConnector", 0,
//                        "port", Buffer() { 8, 0, 0, 0 },
//                    },
                },
            },
            "EH02", Package()
            {
//                "port-count", Buffer() { 6, 0, 0, 0 },
                "port-count", Buffer() { 1, 0, 0, 0 },
                
                "ports", Package()
                {
                    "PR21", Package()
                    {
//                        "UsbConnector", 255,
                        "UsbConnector", 0,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
//                    "PR22", Package()
//                    {
//                        "UsbConnector", 0,
//                        "port", Buffer() { 2, 0, 0, 0 },
//                    },
//                    "PR23", Package()
//                    {
//                        "UsbConnector", 0,
//                        "port", Buffer() { 3, 0, 0, 0 },
//                    },
//                    "PR24", Package()
//                    {
//                        "UsbConnector", 0,
//                        "port", Buffer() { 4, 0, 0, 0 },
//                    },
//                    "PR25", Package()
//                    {
//                        "UsbConnector", 0,
//                        "port", Buffer() { 5, 0, 0, 0 },
//                    },
//                    "PR26", Package()
//                    {
//                        "UsbConnector", 0,
//                        "port", Buffer() { 6, 0, 0, 0 },
//                    },
                },
            },
            "8086_1e31", Package()
            {
                "port-count", Buffer() { 8, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HS03", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HS04", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    "SSP5", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                    "SSP6", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                    "SSP7", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "SSP8", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                },
            },
            // this is our XHC device for our CP65S board
            "8086_8xxx", Package()
            {
                "port-count", Buffer() { 21, 0, 0, 0 },
                "ports", Package()
                {
                    // get rid of all HS port due to port number limitation
//                    "HS01", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 1, 0, 0, 0 },
//                    },
//                    "HS02", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 2, 0, 0, 0 },
//                    },
//                    "HS03", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 3, 0, 0, 0 },
//                    },
//                    "HS04", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 4, 0, 0, 0 },
//                    },
//                    "HS05", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 5, 0, 0, 0 },
//                    },
//                    "HS06", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 6, 0, 0, 0 },
//                    },
//                    "HS07", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 7, 0, 0, 0 },
//                    },
//                    "HS08", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 8, 0, 0, 0 },
//                    },
//                    "HS09", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 9, 0, 0, 0 },
//                    },
//                    "HS10", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 10, 0, 0, 0 },
//                    },
//                    "HS11", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 11, 0, 0, 0 },
//                    },
//                    "HS12", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 12, 0, 0, 0 },
//                    },
//                    "HS13", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 13, 0, 0, 0 },
//                    },
//                    "HS14", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 14, 0, 0, 0 },
//                    },
                    //HS15 is phantom port (port address 15 not used)
                    "SSP1", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 16, 0, 0, 0 },
                    },
                    "SSP2", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 17, 0, 0, 0 },
                    },
//                    "SSP3", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 18, 0, 0, 0 },
//                    },
//                    "SSP4", Package()
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 19, 0, 0, 0 },
//                    },
                    "SSP5", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 20, 0, 0, 0 },
                    },
                    "SSP6", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 21, 0, 0, 0 },
                    },
                },
            },
            "8086_9xxx", Package()
            {
                "port-count", Buffer() { 13, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HS03", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HS04", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    "HS05", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                    "HS06", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                    "HS07", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "HS08", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                    "HS09", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 9, 0, 0, 0 },
                    },
                    "SSP1", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 10, 0, 0, 0 },
                    },
                    "SSP2", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 11, 0, 0, 0 },
                    },
                    "SSP3", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 12, 0, 0, 0 },
                    },
                    "SSP4", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 13, 0, 0, 0 },
                    },
                },
            },
            "8086_9cb1", Package()
            {
                "port-count", Buffer() { 15, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HS03", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HS04", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    "HS05", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                    "HS06", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                    "HS07", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "HS08", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                    "HS09", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 9, 0, 0, 0 },
                    },
                    "HS10", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 10, 0, 0, 0 },
                    },
                    "HS11", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 11, 0, 0, 0 },
                    },
                    "SSP1", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 12, 0, 0, 0 },
                    },
                    "SSP2", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 13, 0, 0, 0 },
                    },
                    "SSP3", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 14, 0, 0, 0 },
                    },
                    "SSP4", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 15, 0, 0, 0 },
                    },
                },
            },
            "8086_a12f", Package()
            {
                "port-count", Buffer() { 26, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HS03", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HS04", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    "HS05", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                    "HS06", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                    "HS07", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "HS08", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                    "HS09", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 9, 0, 0, 0 },
                    },
                    "HS10", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 10, 0, 0, 0 },
                    },
                    "HS11", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 11, 0, 0, 0 },
                    },
                    "HS12", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 12, 0, 0, 0 },
                    },
                    "HS13", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 13, 0, 0, 0 },
                    },
                    "HS14", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 14, 0, 0, 0 },
                    },
                    "SS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 17, 0, 0, 0 },
                    },
                    "SS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 18, 0, 0, 0 },
                    },
                    "SS03", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 19, 0, 0, 0 },
                    },
                    "SS04", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 20, 0, 0, 0 },
                    },
                    "SS05", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 21, 0, 0, 0 },
                    },
                    "SS06", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 22, 0, 0, 0 },
                    },
                    "SS07", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 23, 0, 0, 0 },
                    },
                    "SS08", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 24, 0, 0, 0 },
                    },
                    "SS09", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 25, 0, 0, 0 },
                    },
                    "SS10", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 26, 0, 0, 0 },
                    },
                    "USR1", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 15, 0, 0, 0 },
                    },
                    "USR2", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 16, 0, 0, 0 },
                    },
                },
            },
            "8086_9d2f", Package()
            {
                "port-count", Buffer() { 18, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HS03", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HS04", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    "HS05", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                    "HS06", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                    "HS07", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "HS08", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                    "HS09", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 9, 0, 0, 0 },
                    },
                    "HS10", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 10, 0, 0, 0 },
                    },
                    "SS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 13, 0, 0, 0 },
                    },
                    "SS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 14, 0, 0, 0 },
                    },
                    "SS03", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 15, 0, 0, 0 },
                    },
                    "SS04", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 16, 0, 0, 0 },
                    },
                    "SS05", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 17, 0, 0, 0 },
                    },
                    "SS06", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 18, 0, 0, 0 },
                    },
                    "USR1", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 11, 0, 0, 0 },
                    },
                    "USR2", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 12, 0, 0, 0 },
                    },
                },
            },
            "8086_a2af", Package()
            {
                "port-count", Buffer() { 26, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HS03", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HS04", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    "HS05", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                    "HS06", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                    "HS07", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "HS08", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                    "HS09", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 9, 0, 0, 0 },
                    },
                    "HS10", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 10, 0, 0, 0 },
                    },
                    "HS11", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 11, 0, 0, 0 },
                    },
                    "HS12", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 12, 0, 0, 0 },
                    },
                    "HS13", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 13, 0, 0, 0 },
                    },
                    "HS14", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 14, 0, 0, 0 },
                    },
                    "SS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 17, 0, 0, 0 },
                    },
                    "SS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 18, 0, 0, 0 },
                    },
                    "SS03", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 19, 0, 0, 0 },
                    },
                    "SS04", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 20, 0, 0, 0 },
                    },
                    "SS05", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 21, 0, 0, 0 },
                    },
                    "SS06", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 22, 0, 0, 0 },
                    },
                    "SS07", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 23, 0, 0, 0 },
                    },
                    "SS08", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 24, 0, 0, 0 },
                    },
                    "SS09", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 25, 0, 0, 0 },
                    },
                    "SS10", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 26, 0, 0, 0 },
                    },
                    "USR1", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 15, 0, 0, 0 },
                    },
                    "USR2", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 16, 0, 0, 0 },
                    },
                },
            },
        })
    }
}
//EOF
