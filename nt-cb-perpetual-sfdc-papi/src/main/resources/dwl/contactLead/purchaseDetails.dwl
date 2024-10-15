%dw 2.0
output application/json
---
{
	"country": payload.billingContact.country default "",
	"state": payload.billingContact.state default "",
	"cbEmail": payload.billingContact.email default "",
	"lastName": payload.billingContact.lastname default "",
	"firstName": payload.billingContact.firstname default "",
	"company": payload.billingContact.company default "",
	"billingCity": payload.billingContact.city default "",
	"postalCode": payload.billingContact.postalcode default "",
	"street": (payload.billingContact.street1 default "") ++ "\n" ++ (payload.billingContact.street2 default "")
}