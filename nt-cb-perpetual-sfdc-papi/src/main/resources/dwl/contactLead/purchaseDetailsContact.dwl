%dw 2.0
import * from dw::core::Arrays
output application/json
---
vars.purchaseDetails ++ {"contactDetails": (
if(sizeOf(vars.contacts) >= 1) ((vars.contacts orderBy ((item, index) -> (item.LastModifiedDate as DateTime)))[-1])
else "")}