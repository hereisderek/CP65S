// Override for host defined _OSI to handle "Darwin"...

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "_XOSI", 0)
{
#endif
    // All _OSI calls in DSDT are routed to XOSI...
    // As written, this XOSI simulates "Windows 2012" (which is Windows 10)
    // Note: According to ACPI spec, _OSI("Windows") must also return true
    //  Also, it should return true for all previous versions of Windows.
    Method(XOSI, 1)
    {   
        // simulation targets
        // source: (google 'Microsoft Windows _OSI')
        //  http://download.microsoft.com/download/7/E/7/7E7662CF-CBEA-470B-A97E-CE7CE0D98DC2/WinACPI_OSI.docx
        //  https://docs.microsoft.com/en-us/windows-hardware/drivers/acpi/winacpi-osi
        Local0 = Package()
        {   "Darwin",                //                                      0x2710
            "Linux",                //                                       0x03E8
            "Windows",              // generic Windows query                 0x07D1
            "Windows 2001",         // Windows XP                            0x07D1
            "Windows 2001 SP2",     // Windows XP SP2                        0x07D1
            //"Windows 2001.1",     // Windows Server 2003                   0x07D3
            //"Windows 2001.1 SP1", // Windows Server 2003 SP1               
            "Windows 2006",         // Windows Vista                         0x07D6
            "Windows 2006 SP1",     // Windows Vista SP1
            "Windows 2006.1",       // Windows Server 2008
            "Windows 2009",         // Windows 7/Windows Server 2008 R2      0x07D9
            "Windows 2012",         // Windows 8/Windows Server 2012         0x07DC
            "Windows 2013",       // Windows 8.1/Windows Server 2012 R2      0x07DD
            "Windows 2015",         // Windows 10/Windows Server TP          0x07DF
            //"Windows 2016",       // Windows 10, version 1607
            //"Windows 2017",       // Windows 10, version 1703
            //"Windows 2017.2",     // Windows 10, version 1709
            //"Windows 2018",       // Windows 10, version 1803

        }
        Return (Ones != Match(Local0, MEQ, Arg0, MTR, 0, 0))
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
