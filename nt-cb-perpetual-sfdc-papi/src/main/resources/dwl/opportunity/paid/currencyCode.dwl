%dw 2.0
output application/json
var curCode = ["AUD","CAD","USD","GBP","EUR"]
---
if(curCode contains(payload.paymentInfo.currencyId)) payload.paymentInfo.currencyId else "USD"