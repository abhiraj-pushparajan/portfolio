%dw 2.0
output application/json
---
"Select Id, Asset__c from Serial__c where Serial_Number__c in ('" ++ vars.realPayload.extraParameters."x-serial" ++ "')"
