%dw 2.0
output application/json
var countries = vars.LookupTables.Country filter ($."CB Country" == vars.purchaseDetails.country)
var states = vars.LookupTables.State filter ($."country" == vars.purchaseDetails.country and $."State" == vars.purchaseDetails.state)
---
if(countries != null and (countries[0]."Is US State" == "TRUE" or countries[0]."Has States Available" == "TRUE")) 
{
	"country": countries[0]."SFDC Country" ,
	"state": states[0].Abbrev 
}
else { "country": countries[0]."SFDC Country", "state": "" }