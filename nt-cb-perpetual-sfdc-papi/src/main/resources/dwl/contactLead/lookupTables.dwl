%dw 2.0
output application/json
---
{
	"Country": readUrl("classpath://tables/country.json", "json"),
	"State": readUrl("classpath://tables/state.json", "json")
}