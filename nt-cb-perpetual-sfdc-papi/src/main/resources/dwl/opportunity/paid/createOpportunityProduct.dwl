%dw 2.0
output application/java
---
if(isEmpty(vars.realPayload.processed.opportunityProduct) )
[{
	"OpportunityId" : vars.newOpportunityId,
	"Quantity" : if(vars.realPayload.status== "Paid")payload.quantity else if(payload.quantity <1)payload.quantity else (-1* payload.quantity),
	"Description" : vars.productRes.Name[0],
	"PricebookEntryId" : vars.priceBookEntryId.Id[0],
	"UnitPrice" : if(payload.yourPrice.totalSinglePrice.netPrice <0)(-1*payload.yourPrice.totalSinglePrice.netPrice) else (payload.yourPrice.totalSinglePrice.netPrice),
	"Cleverbridge_Product_ID__c" : payload.productId as String
}] 

else
null