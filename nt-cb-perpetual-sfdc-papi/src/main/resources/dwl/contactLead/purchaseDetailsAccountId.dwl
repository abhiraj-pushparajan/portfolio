%dw 2.0
output application/json
---
(vars.purchaseDetails - "accountId") ++ 
{"accountId": ( if (vars.createdAccount == null) vars.accountDetails.Id[0] else vars.createdAccount.items[0].id)}