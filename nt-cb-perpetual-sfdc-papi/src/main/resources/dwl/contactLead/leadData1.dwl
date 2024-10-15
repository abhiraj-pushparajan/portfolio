%dw 2.0
output application/json
---
[
	{
	"leadId": vars.leadsDetails[0].Id,
	"OwnerId": p('sfdc.OwnerId'),
	"AccountId": vars.purchaseDetails.accountId,
	"doNotCreateOpportunity": true,
	"convertedStatus": "Working"
	}
]