%dw 2.0
output application/json
---
"Select Id from PricebookEntry where IsActive = true and Pricebook2Id = '" ++ p('sfdc.Pricebook2Id') ++ "' and CurrencyIsoCode = '" ++ vars.currencyCode ++ "' and Product2Id = '" ++ vars.lookupProductId ++ "'"