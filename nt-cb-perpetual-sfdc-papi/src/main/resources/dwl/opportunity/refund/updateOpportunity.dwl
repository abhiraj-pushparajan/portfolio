%dw 2.0
output application/java
---
[
	{
		Id:vars.newOpportunityId,
		StageName: "Closed Won",
		CloseDate: payload.meta.date as Date
	}
]