%dw 2.0
output application/json
---
vars.leadsDetails map ((item, index) -> {
	"leadId": item.Id,
	"OwnerId": p('sfdc.OwnerId'),
	"AccountId": vars.purchaseDetails.contactDetails.AccountId,
	"ContactId": vars.purchaseDetails.contactDetails.Id,
	"doNotCreateOpportunity": true,
	"convertedStatus": "Working"
	
})