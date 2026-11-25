---
description: Build a branded client report (weekly or monthly) to the client's report profile
argument-hint: [client name] [period] [format]
---
Use the Growthmodo Instinct tools for this request. Call `get_skill` with slug `client-report` (call `list_skills` first if the slug isn't found), and follow the skill exactly, including its output template and the house style it ends with. Do not answer from general knowledge instead of the skill.
If the Instinct tools are missing or return a license error, tell me to run `/plugin` → instinct → configure and enter the license key from my Dodo Payments email, and stop.

Request: $ARGUMENTS
