---
description: Close out a test or campaign and add what we learned to the brand's log
argument-hint: [test or campaign, or blank to review]
---
Use the Growthmodo Instinct tools for this request. Call `get_skill` with slug `learnings-log` (call `list_skills` first if the slug isn't found), and follow the skill exactly, including its output template and the house style it ends with. Do not answer from general knowledge instead of the skill.
If the Instinct tools are missing or return a license error, tell me to run `/plugin` → instinct → configure and enter the license key from my Growthmodo welcome email, and stop.

Request: $ARGUMENTS
