output application/json
---
[{
	"FirstName" : (if (!isEmpty(vars.purchaseDetails.firstName)) vars.purchaseDetails.firstName
else "Unknown"),
	"LastName" : (if (!isEmpty(vars.purchaseDetails.lastName)) vars.purchaseDetails.lastName
else null),
	"AccountId": vars.purchaseDetails.accountId default null,
	"Most_Recent_Lead_Source__c" : "Nitro Online Store",
	"Email": vars.purchaseDetails.cbEmail,
	"OwnerId": p('sfdc.OwnerId')
}]