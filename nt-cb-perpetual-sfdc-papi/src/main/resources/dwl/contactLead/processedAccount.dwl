%dw 2.0
output application/json
---
(vars.processed - "account") ++ {account: flatten(vars.processed.account ++ vars.createdAccount.items.id)}