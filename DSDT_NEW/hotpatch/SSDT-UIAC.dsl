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

// https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra-and-later.222266/
// https://www.tonymacx86.com/threads/guide-10-11-usb-changes-and-solutions.173616/

// port-count: Poorly named, as it is not a 'count' at all. Instead it is the maximum port address (as specified by 'port')
// UsbConnector: describes the connector type of the USB port. Common values are 0, 3, and 255, (0: USB2 type-A, 3: USB3 type-A, 255: proprietary). More information in the ACPI spec (_UPC).
// port: must match the port _ADR in DSDT. You can see this value in IOACPIPlane


#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "hack", "UIAC", 0)
{
#endif
// to disable bluetooth port
//    #define DISABLE_BLUETOOTH_PORT
    
//    External (UPWC, MethodObj)
     /*
    Name(UPWC, Package (){
        "kUSBSleepPortCurrentLimit", 2100,
        "kUSBSleepPowerSupply", 2600,
        "kUSBWakePortCurrentLimit", 2100,
        "kUSBWakePowerSupply", 3200,
    }) // MacBookPro12,1 -> this one works perfectly fine
            
    Name(UPWC, Package (){
        "kUSBSleepPortCurrentLimit", 2100,
        "kUSBSleepPowerSupply", 4700,
        "kUSBWakePortCurrentLimit", 2100,
        "kUSBWakePowerSupply", 4700,
    }) // iMac17,1
            
    Name(UPWC, Package (){
        "kUSBSleepPortCurrentLimit", 2100,
        "kUSBSleepPowerSupply", 4700,
        "kUSBWakePortCurrentLimit", 2100,
        "kUSBWakePowerSupply", 4700,
    }) // iMac14,2
    */
    
    Name(UPWC, Package (){
        "kUSBSleepPortCurrentLimit", 2100,
        "kUSBSleepPowerSupply", 4700,
        "kUSBWakePortCurrentLimit", 2100,
        "kUSBWakePowerSupply", 4700,
    }) // custom
    
    
    // use this to support newer smbios model such as Such as MacBookPro9,1, iMac17,1, and MacBookPro13,x that are
    // missing from IOUSBHostFamily.kext/Contents/Info.plist
    Device(_SB.USBX)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Return(UPWC)
        }
    }
    
    Name(USBI, Package (){
            "RM,pr2-force", Buffer() { 0, 0, 0, 0 },
//            "subsystem-id", Buffer() { 0x70, 0x72, 0x00, 0x00 },
//            "subsystem-vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },
            "AAPL,current-available", Buffer() { 0x34, 0x08, 0, 0 },
            "AAPL,current-extra", Buffer() { 0x98, 0x08, 0, 0, },
            "AAPL,current-extra-in-sleep", Buffer() { 0x40, 0x06, 0, 0, },
            "AAPL,max-port-current-in-sleep", Buffer() { 0x34, 0x08, 0, 0 },
    }) // custom
    
    // inject properties for XHCI
    Method(_SB.PCI0.XHC._DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return(USBI)
    }
    
    Method(_SB.PCI0.EH01._DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return(USBI)
    }
    
    Method(_SB.PCI0.EH02._DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return(USBI)
    }
    
    External(RMCF.DBTU, IntObj)

    Device(UIAC)
    {
        Name(_HID, "UIA00000")
        
//        Method(BTUP) 
//        {
//            If (CondRefOf(\RMCF.DBTU) && \RMCF.DBTU) { Return(0) } 
//            
//            Return(
//                Package() {
//                    "UsbConnector", 255,
//                    "portType", 2,
//                    "port", Buffer() { 4, 0, 0, 0 }
//                })
//        }

        Name(RMCF, Package()
        {
            // USB Power Properties for Sierra (using USBInjectAll injection)
            "AppleBusPowerControllerUSB", UPWC,
            
            "HUB1", Package()
            {
                "port-count", Buffer() { 8, 0, 0, 0 },
                "ports", Package()
                {
                    "HP11", Package()
                    {
                        "UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HP12", Package()
                    {
                        "UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    
                    #ifndef DISABLE_BLUETOOTH_PORT
                    // Bluetooth Radio
                    "HP14", Package()
                    {
                        "UsbConnector", 255,
                        "portType", 2,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    #endif
                    
                    "HP15", Package()
                    {
                        "UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                    
                    // BisonCam, NB Pro
                    "HP16", Package()
                    {
                        "UsbConnector", 255,
                        "portType", 2,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                },
            },
            "HUB2", Package()
            {
                "port-count", Buffer() { 2, 0, 0, 0 },
                "ports", Package()
                {
                    "HP22", Package()
                    {
                        "UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                },
            },

            // this is for when 2 EHCI ports are enabled, and 2.0 is not routered through XHC port
            // (with FakePCIID_XHCIMux.kext)
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
                },
            },
            
            // this is our XHC device for our CP65S board
            // this is for when 2 EHCI ports are enabled, and 2.0 is not routered through XHC port
            // (with FakePCIID_XHCIMux.kext)
            /*
            "8086_8xxx_", Package()
            {
                "port-count", Buffer() { 21, 0, 0, 0 }, // not 4 since the mac port is 21
                "ports", Package()
                {
                    // get rid of all HS port due to port number limitation
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
            */
            
            // this is for when 2 EHCI ports are disabled, and 2.0 is routered through XHC port
            /*
            "EH01_", Package()
            {
                "port-count", Buffer() { 0, 0, 0, 0 },
                "ports", Package(){},
            },
            "EH02_", Package()
            {
                "port-count", Buffer() { 0, 0, 0, 0 },
                "ports", Package(){},
            },
            */
            "8086_8xxx", Package()
            {
                "port-count", Buffer() { 21, 0, 0, 0 },
                "ports", Package()
                {
                    // Left USB Port (USB 2.0)
                    "HS01", Package()
                    {
                        "portType", 0,
                        "UsbConnector", 0,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    
                    // Right Rear USB Port (USB 2.0)
                    "HS02", Package()
                    {
                        "portType", 0,
                        "UsbConnector", 0,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    
                    #ifndef DISABLE_BLUETOOTH_PORT
                    // Bluetooth Radio
                    "HS04", Package()
                    {
                        "portType", 2,
                        "UsbConnector", 0,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    #endif
    
                    
                    // Right Front USB Port (USB 2.0)
                    "HS06", Package()
                    {
                        "portType", 0,
                        "UsbConnector", 0,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                    
                    // Rear USB Port (USB 2.0)
                    "HS09", Package()
                    {
                        "portType", 0,
                        "UsbConnector", 0,
                        "port", Buffer() { 9, 0, 0, 0 },
                    },
                    
                    // BisonCam, NB Pro
                    "HS10", Package()
                    {
                        "portType", 2,
                        "UsbConnector", 0,
                        "port", Buffer() { 10, 0, 0, 0 },
                    },

                    //HS15 is phantom port (port address 15 not used)
                    
                    // Left USB Port (USB 3.0)
                    "SSP1", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 16, 0, 0, 0 },
                    },
                    
                    // Right Rear USB Port (USB 3.0)
                    "SSP2", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 17, 0, 0, 0 },
                    },
                    
                    // Rear USB Port (USB 3.0)
                    "SSP5", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 20, 0, 0, 0 },
                    },
                    
                    // Right Front USB Port (USB 3.0)
                    "SSP6", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 21, 0, 0, 0 },
                    },
                },
            },

        })
    }
    #undef DISABLE_BLUETOOTH_PORT
    
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
