%dw 2.0
output application/java
---
if(vars.reprocessing) 
(flatten(payload.deliveries) map(item,index)->
	{
		Serial_Number__c : item.key.keyRaw,
		CurrencyIsoCode : vars.currencyCode,
		Asset__c : vars.createAssetPayload.items.id[index],
		Is_Active__c: true,
		Serial_Type__c: "Nalpeiron",
		Product_Version__c: vars.productRes.Product_Version_Distributed_Name__c[0]
	})filter(!(vars.realPayload.processedPayload.createSerial contains $))

else
flatten(payload.deliveries) map(item,index)->
	{
		Serial_Number__c : item.key.keyRaw,
		CurrencyIsoCode : vars.currencyCode,
		Asset__c : vars.createAssetPayload.items.id[index],
		Is_Active__c: true,
		Serial_Type__c: "Nalpeiron",
		Product_Version__c: vars.productRes.Product_Version_Distributed_Name__c[0]
	}