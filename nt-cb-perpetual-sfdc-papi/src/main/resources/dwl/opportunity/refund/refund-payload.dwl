%dw 2.0
output application/java
---
if(!isEmpty(payload.processedPayload.opportunity))
[]
else
[{
    "CloseDate" : payload.paymentArriveTime as Date default null,
    "Name" : "Cleverbridge Order [" ++ payload.purchaseId ++ "]: " ++ vars.accountName,
    "StageName" : "Internal Processing",
    "AccountId" : vars.accountId,
    "LeadSource" : "Nitro Online Store",
    "CurrencyISOCode" : vars.currencyCode,
 	"OwnerId" : p('sfdc.OwnerId'),
    "Pricebook2Id" : p('sfdc.Pricebook2Id'),
    "RecordTypeId" : p('sfdc.RecordTypeId'),
    "Cleverbridge_Reference_Number__c" : payload.purchaseId as String default "",
    "Cleverbridge_Test_Purchase__c" : if(payload.status ~= "Test Order") true else false,
    "Cleverbridge_Reimbursement_ID__c" : payload.reimbursementId as String default null,
    "Type" : "Refund"
}]