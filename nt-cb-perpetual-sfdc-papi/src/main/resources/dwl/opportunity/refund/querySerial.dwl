%dw 2.0
output application/json
fun removehyf(val)= (val splitBy("-")) joinBy ""
fun ids(val)= val joinBy "','" default ""
---
"Select Id, Asset__c from Serial__c where Serial_Number__c in ('" ++ (ids(payload.deliveries.key.keyRaw) )++ "')"
