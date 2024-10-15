%dw 2.0
output application/java
---
if(vars.reprocessing)
(vars.querySerial map()->
	{
		Asset__c:$.Asset__c,
		Opportunity__c:vars.newOpportunityId,
		CurrencyIsoCode:vars.currencyCode
	}) filter(!(vars.realPayload.processedPayload.assetOpportunity contains $))

else
vars.querySerial map()->
	{
		Asset__c:$.Asset__c,
		Opportunity__c:vars.newOpportunityId,
		CurrencyIsoCode:vars.currencyCode
	}
