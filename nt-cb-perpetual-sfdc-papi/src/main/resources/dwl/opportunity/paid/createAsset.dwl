%dw 2.0
output application/java
---
if(vars.reprocessing) 
(flatten(payload.deliveries) map()->
	{
		Name : vars.productRes.Public_Display_Name__c,
		AccountId : vars.accountId,
		ContactId : vars.contactId,
		CurrencyIsoCode : vars.currencyCode,
		Product2Id : vars.productRes.Id,
		Quantity : 1,
		Status : "Purchased",
		License_Type__c : "By Users License",
		Serial_Type_Distributed__c : "Desktop"
	})filter(!(vars.realPayload.processedPayload.asset contains $))
 
else
flatten(payload.deliveries) map()->
	{
		Name : vars.productRes.Public_Display_Name__c,
		AccountId : vars.accountId,
		ContactId : vars.contactId,
		CurrencyIsoCode : vars.currencyCode,
		Product2Id : vars.productRes.Id,
		Quantity : 1,
		Status : "Purchased",
		License_Type__c : "By Users License",
		Serial_Type_Distributed__c : "Desktop"
	}