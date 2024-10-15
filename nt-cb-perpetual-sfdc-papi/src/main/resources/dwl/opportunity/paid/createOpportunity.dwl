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
    "CurrencyIsoCode" : vars.currencyCode,
    "OwnerId" : p('sfdc.OwnerId'),
    "Pricebook2Id" : p('sfdc.Pricebook2Id'),
    "RecordTypeId" : p('sfdc.RecordTypeId'),
    "Cleverbridge_Reference_Number__c" : payload.purchaseId as String default "",
    "Cleverbridge_Test_Purchase__c" : if(payload.status ~= "Test Order") true else false,
    "Online_Coupon_Code__c" : payload.items.couponcode as String default null
}]