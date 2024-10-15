%dw 2.0
output application/json
---
vars.leadsDetails[1 to -1] map ((item, index) -> {
	"leadId": item.Id,
	"OwnerId": p('sfdc.OwnerId'),
	"AccountId": vars.purchaseDetails.accountId,
	"ContactId": vars.convertedLead.contactId,
	"doNotCreateOpportunity": true,
	"convertedStatus": "Working"
})