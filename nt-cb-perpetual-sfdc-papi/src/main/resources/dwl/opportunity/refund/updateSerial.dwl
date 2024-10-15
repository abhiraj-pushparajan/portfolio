%dw 2.0
output application/java
---
vars.querySerial map()->
	{
		Id: $.Id,
		Is_Active__c: false
	}
