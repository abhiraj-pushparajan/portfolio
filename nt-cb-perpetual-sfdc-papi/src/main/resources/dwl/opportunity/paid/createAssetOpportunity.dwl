%dw 2.0
output application/java
---
if(vars.reprocessing) 
(vars.createAssetPayload.items map () ->
{
		Asset__c: $.id,
		Opportunity__c:vars.newOpportunityId,
		CurrencyIsoCode:vars.currencyCode
	})filter(!(vars.realPayload.processedPayload.assetOpportunity contains $))

else
vars.createAssetPayload.items map () ->
{
		Asset__c: $.id,
		Opportunity__c:vars.newOpportunityId,
		CurrencyIsoCode:vars.currencyCode
	}