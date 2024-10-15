%dw 2.0
output application/java
---
vars.querySerial map()->
	{
		Id: $.Asset__c,
		Name : vars.productRes.Public_Display_Name__c,
		Product2Id : vars.productRes.Id
	}
