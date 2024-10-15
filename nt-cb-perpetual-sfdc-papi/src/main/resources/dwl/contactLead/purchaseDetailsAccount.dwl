%dw 2.0
output application/json
---
vars.purchaseDetails ++
 {
 	"contactSize": sizeOf(vars.contacts),
 	"leadSize": sizeOf(vars.leadsDetails),
 	"accountId": (if(!isEmpty(vars.purchaseDetails.contactDetails))vars.purchaseDetails.contactDetails.AccountId else if(!isEmpty(vars.latestLeadsAccountDetails)) vars.latestLeadsAccountDetails else  ""),
 	"contactId": (if(!isEmpty(vars.purchaseDetails.contactDetails))vars.purchaseDetails.contactDetails.Id else ""),
 	"accountName" : (if (!isEmpty(vars.purchaseDetails.company)) vars.purchaseDetails.company
					else if (isEmpty(vars.purchaseDetails.state)) vars.purchaseDetails.lastName ++ ", " ++ vars.purchaseDetails.firstName ++ ", " ++ vars.purchaseDetails.country
					else vars.purchaseDetails.lastName ++ ", " ++ vars.purchaseDetails.firstName ++ ", " ++ vars.purchaseDetails.state ++ ", " ++ vars.purchaseDetails.country)
 }