%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  "UsageReportsProcessed/dell-prod_detailed_usage_3.6.17_2021-6-13.csv", 
  "UsageReportsProcessed/dell-prod_detailed_usage_3.6.17_2021-6-14.csv", 
  "UsageReportsProcessed/dell-prod_detailed_usage_3.6.17_2021-6-15.csv"
])