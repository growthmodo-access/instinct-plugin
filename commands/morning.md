---
description: Morning check for every brand at once: the Media Buyer checks each brand side by side and you get one list of what needs you today
argument-hint: [brands to include, or blank for all saved brands]
---
Run the Growthmodo Instinct morning check.

1. Call the Growthmodo Instinct tool `list_brands`. Use the brands I name here, or every saved brand if I name none: $ARGUMENTS
   If there are no saved brands, tell me to run `/instinct:start` for my first brand, and stop.
2. Start one **media-buyer** subagent per brand, all at the same time (several subagent calls in one message; at most 8 at once, then the next 8). Give each this job, with its brand filled in:
   "Morning check for <brand>, all its saved markets. Use the Pacing & Monitoring playbook: today's and month-to-date spend against plan, delivery problems, rejected or limited ads, tracking outages, and Creative Pipeline ideas stuck past their limits. Read only. Return the brand's status (🟢 On track, 🟡 Watch or 🔴 Act), the one thing that matters most with its number, and the exact reply that approves the fix if there is one."
3. When they're all back, answer with:
   - The header `**Growthmodo Instinct** · Morning check · <date>`.
   - One table, 🔴 brands first, then 🟡, then 🟢: Brand · Status · The one thing · Reply to approve.
   - Under it, only for 🔴 and 🟡 brands, at most two lines each of detail.
   - A last line on any brand that couldn't be checked and why (no Meta connector, no Mandate, no data).
   - `👉 Next:` the single most urgent reply.
4. Change nothing in any ad account. When I reply to approve something, do that one change for that brand only, after confirming it back to me in one line.

If the Instinct tools are missing or return a license error, tell me to run `/plugin` → instinct → configure and enter the license key from my Growthmodo welcome email, and stop.
