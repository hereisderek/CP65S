
## CP65S Sager NP8650 / Clevo P650SA

current issues:

1. ~~brightness value not persist among restarts~~ fixed by removed clover brightness setting
2. ~~audio card not working ( won't boot once AppleALC enabled, if hotpatch enabled gives resources not ready, if without hotpatch, repeating message:  codec property missing, skipping )~~ fixed by applying HPET patch and using my own layout id (31), it has been merged into main stream AppleALC
3. ~~usb states messed up after sleep~~ fixed with SSDT hotpatch
4. ~~instant wake: Wake reason: GLAN. fixed USB cut off after wake.~~
sleep is now working, however we won't be able to wake up on mouse/keyboard press, it's no big deal but I'll try to fix it when i have the time.
5. ~~https://www.tonymacx86.com/threads/guide-laptop-backlight-control-using-applebacklightinjector-kext.218222/page-89#post-1575595~~
6. 


-------

Notes: 
1. Change to EFI boot in bios setting and GPT disk partition format. (It's long over-due if you haven't used them already)
2. Everything should work out-of-box, however, if you are greeted by garbled screen (especially on install/recovery/10.13) you can try close your lcd and reopen it (thus put to sleep briefly) or Fn+F12, or try a different ig-platform
3. As for imessage/face time, you are on your own. There're plenty of guides online.
4. Stock wifi card(RTL87223BE) is not supported by Mac OS, there's no solution for it yet. Find a supported one or grab a usb wifi

-------

Device list:

* 0:100  0:000  PCI (00|00:00.00) : 8086 0C04 class=060000
* 0:100  0:000  PCI (00|00:01.00) : 8086 0C01 class=060400
* 0:100  0:000  PCI (00|01:00.00) : 10DE 13D9 class=030200
* 0:100  0:000  PCI (00|00:02.00) : 8086 0416 class=030000
* 0:100  0:000   - GFX: Model=Intel HD Graphics 4600 (Intel)
* 0:100  0:000  PCI (00|00:03.00) : 8086 0C0C class=040300
* 0:100  0:000  PCI (00|00:04.00) : 8086 0C03 class=118000
* 0:100  0:000  PCI (00|00:07.00) : 8086 0C07 class=110100
* 0:100  0:000  PCI (00|00:14.00) : 8086 8C31 class=0C0330
* 0:100  0:000  PCI (00|00:16.00) : 8086 8C3A class=078000
* 0:100  0:000  PCI (00|00:16.01) : FFFF FFFF class=FFFFFF
* 0:100  0:000  PCI (00|00:1A.00) : 8086 8C2D class=0C0320
* 0:100  0:000  PCI (00|00:1B.00) : 8086 8C20 class=040300
* 0:100  0:000  PCI (00|00:1C.00) : 8086 8C10 class=060400
* 0:100  0:000  PCI (00|00:1C.04) : 8086 8C18 class=060400
* 0:100  0:000  PCI (00|03:00.00) : 10EC 5287 class=FF0000
* 0:100  0:000  PCI (00|03:00.01) : 10EC 8168 class=020000
* 0:100  0:000   - LAN: 0 Vendor=Realtek
* 0:100  0:000  PCI (00|00:1C.05) : 8086 8C1A class=060400
* 0:100  0:000  PCI (00|04:00.00) : 10EC B723 class=028000
* 0:100  0:000   - WIFI: Vendor=Realtek
* 0:100  0:000  PCI (00|00:1D.00) : 8086 8C26 class=0C0320
* 0:100  0:000  PCI (00|00:1F.00) : 8086 8C4B class=060100
* 0:100  0:000  PCI (00|00:1F.02) : 8086 8C03 class=010601
* 0:100  0:000  PCI (00|00:1F.03) : 8086 8C22 class=0C0500


-------
the hardest part is probably getting audio card working, including my pinconfig/pathmap etc.

apparently, Mac only uses pinconfig sort of as a reference, and not really stick to it. pathmap has its influence over what "system information" -> "audio" says as well.


