%dw 2.0
output application/json
---
(vars.processed - "contact") ++ {contact: flatten(vars.processed.contact ++ vars.CreateContactData.items.id)}