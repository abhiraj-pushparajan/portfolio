%dw 2.0
output application/json
---
{
	"Id": vars.convertedLead.contactId,
	"MailingCountry": vars.lookupOutput.country,
	"Most_Recent_Lead_Source__c": "Nitro Online Store"
	
}