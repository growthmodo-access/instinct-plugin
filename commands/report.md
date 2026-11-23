---
description: Build a branded client report (weekly or monthly) to the client's report profile
argument-hint: <client> [period] [web|pdf|slides|email]
---
Use the Growthmodo Instinct tools for this request. Call `get_skill` with slug `weekly-report` (call `list_skills` first if a slug isn't found), and follow the skill exactly — including its output template and the house style it ends with. Do not answer from general knowledge instead of the skill.

Use the client's Report Profile if one exists in this project or conversation; if not, run the report-profile skill's questions first. For a web page or PDF, call get_report_template and fill only its REPORT object.
If the Instinct tools are missing or return a license error, tell me to run `/plugin` → instinct → configure and enter the license key from my Growthmodo welcome email, and stop.

Request: $ARGUMENTS
