%dw 2.0
output application/json
---
(vars.purchaseDetails - "contactId") ++ 
{"contactId": vars.CreateContactData.items[0].id}