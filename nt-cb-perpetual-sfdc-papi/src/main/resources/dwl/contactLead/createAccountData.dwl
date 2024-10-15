output application/json
---
[{
	"Name": vars.accountName,
	"BillingCountry" :vars.lookupOutput.country,
	"BillingState" : vars.lookupOutput.state,
	"BillingStreet" : vars.purchaseDetails.street,
	"BillingCity" : vars.purchaseDetails.billingCity,
	"BillingPostalCode": vars.purchaseDetails.postalCode,
	"Account_Type__c" : "Nitro Online Store",
	"OwnerId": p('sfdc.OwnerId')
}]