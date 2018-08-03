// for testing including all SSDTs with NO_DEFINITIONBLOCK

DefinitionBlock("", "SSDT", 2, "hack", "_HACK", 0)
{
    #define NO_DEFINITIONBLOCK
    
	#include "SSDT-RMDT.dsl"
	#include "SSDT-RMCF.dsl"
	#include "SSDT-ACPIBATT.dsl"
	#include "SSDT-ACPISensor.dsl"
	#include "SSDT-ALS0.dsl"
	#include "SSDT-HACK.dsl"
	#include "SSDT-IMEI.dsl"
	#include "SSDT-PNLF.dsl"
	#include "SSDT-PTSWAK.dsl"
	#include "SSDT-SATA.dsl"
	#include "SSDT-SMBUS.dsl"
//	#include "SSDT-UIAC.dsl"
	#include "SSDT-XHC.dsl"
	#include "SSDT-XOSI.dsl"
}
//EOF
