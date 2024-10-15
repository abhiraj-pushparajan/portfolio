%dw 2.0
output application/java
---
if(vars.reprocessing)
[{
	"ContactId" : vars.contactId,
	"OpportunityId" : vars.newOpportunityId,
	"IsPrimary" : true
}] filter(!(payload.processedPayload.contactRole contains $))

else
[{
	"ContactId" : vars.contactId,
	"OpportunityId" : vars.newOpportunityId,
	"IsPrimary" : true
}]