
DefinitionBlock("", "SSDT", 2, "hack", "RMCF", 0) {
    External (RMDT.P1, MethodObj)
    External (_SB.PCI0.LPCB.PS2K, DeviceObj)
    External (_SB.PCI0.LPCB.EC, DeviceObj)
    External (_SB.PCI0.LPCB.EC.XQ0A, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ0B, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ0C, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ0D, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ0E, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ0F, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ10, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ11, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ12, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ13, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ14, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ15, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ16, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ17, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ19, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ1B, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ1C, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ1D, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ1E, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ24, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ35, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ36, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ37, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ39, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ40, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ41, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ42, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ53, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ54, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ55, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ46, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ4A, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ4C, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ61, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ51, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ52, MethodObj)
    External (_SB.PCI0.LPCB.EC.XQ50, MethodObj)


    Scope(_SB.PCI0.LPCB.EC) 
    {
        Method (_Q0A, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q0A")
            If (CondRefOf(XQ0A)) {
                XQ0A()
            }
        }
        Method (_Q0B, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q0B")
            If (CondRefOf(XQ0B)) {
                XQ0B()
            }
        }
        Method (_Q0C, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q0C")
            If (CondRefOf(XQ0C)) {
                XQ0C()
            }
        }
        Method (_Q0D, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q0D")
            If (CondRefOf(XQ0D)) {
                XQ0D()
            }
        }
        Method (_Q0E, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q0E")
            If (CondRefOf(XQ0E)) {
                XQ0E()
            }
        }
        Method (_Q0F, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q0F")
            If (CondRefOf(XQ0F)) {
                XQ0F()
            }
        }
        Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q10")
            If (CondRefOf(XQ10)) {
                XQ10()
            }
        }
        
        Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q11")
            If (CondRefOf(XQ11)) {
                XQ11()
            }
            If (CondRefOf(\_SB.PCI0.LPCB.PS2K)) 
            { 
                Notify(\_SB.PCI0.LPCB.PS2K, 0x0405)     // method1
                //Notify(\_SB.PCI0.LPCB.PS2K, 0x20)     // method2
            }
        }
        Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q12")
            If (CondRefOf(XQ12)) {
                XQ12()
            }
            If (CondRefOf(\_SB.PCI0.LPCB.PS2K)) 
            { 
                Notify(\_SB.PCI0.LPCB.PS2K, 0x0406)    // method1
                //Notify(\_SB.PCI0.LPCB.PS2K, 0x10)    // method2
            }
        }
        Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q13")
            If (CondRefOf(XQ13)) {
                XQ13()
            }
        }
        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q14")
            If (CondRefOf(XQ14)) {
                XQ14()
            }
        }
        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q15")
            If (CondRefOf(XQ15)) {
                XQ15()
            }
        }
        Method (_Q16, 0, Serialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q16")
            If (CondRefOf(XQ16)) {
                XQ16()
            }
        }
        Method (_Q17, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q17")
            If (CondRefOf(XQ17)) {
                XQ17()
            }
        }
        Method (_Q19, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q19")
            If (CondRefOf(XQ19)) {
                XQ19()
            }
        }
        Method (_Q1B, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q1B")
            If (CondRefOf(XQ1B)) {
                XQ1B()
            }
        }
        Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q1C")
            If (CondRefOf(XQ1C)) {
                XQ1C()
            }
        }
        Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q1D")
            If (CondRefOf(XQ1D)) {
                XQ1D()
            }
        }
        Method (_Q1E, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q1E")
            If (CondRefOf(XQ1E)) {
                XQ1E()
            }
        }
        Method (_Q24, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q24")
            If (CondRefOf(XQ24)) {
                XQ24()
            }
        }
        Method (_Q35, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q35")
            If (CondRefOf(XQ35)) {
                XQ35()
            }
        }
        Method (_Q36, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q36")
            If (CondRefOf(XQ36)) {
                XQ36()
            }
        }
        Method (_Q37, 0, Serialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q37")
            If (CondRefOf(XQ37)) {
                XQ37()
            }
        }
        Method (_Q39, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q39")
            If (CondRefOf(XQ39)) {
                XQ39()
            }
        }
        Method (_Q40, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q40")
            If (CondRefOf(XQ40)) {
                XQ40()
            }
        }
        Method (_Q41, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q41")
            If (CondRefOf(XQ41)) {
                XQ41()
            }
        }
        Method (_Q42, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q42")
            If (CondRefOf(XQ42)) {
                XQ42()
            }
        }
        Method (_Q53, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q53")
            If (CondRefOf(XQ53)) {
                XQ53()
            }
        }
        Method (_Q54, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q54")
            If (CondRefOf(XQ54)) {
                XQ54()
            }
        }
        Method (_Q55, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q55")
            If (CondRefOf(XQ55)) {
                XQ55()
            }
        }
        Method (_Q46, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q46")
            If (CondRefOf(XQ46)) {
                XQ46()
            }
        }
        Method (_Q4A, 0, Serialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q4A")
            If (CondRefOf(XQ4A)) {
                XQ4A()
            }
        }
        Method (_Q4C, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q4C")
            If (CondRefOf(XQ4C)) {
                XQ4C()
            }
        }
        Method (_Q61, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q61")
            If (CondRefOf(XQ61)) {
                XQ61()
            }
        }
        Method (_Q51, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q51")
            If (CondRefOf(XQ51)) {
                XQ51()
            }
        }
        Method (_Q52, 0, NotSerialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q52")
            If (CondRefOf(XQ52)) {
                XQ52()
            }
        }
        Method (_Q50, 0, Serialized)  // _Qxx: EC Query 
        {
            \rmdt.p1("enter custom _Q50")
            If (CondRefOf(XQ50)) {
                XQ50()
            }
        }
    }
}