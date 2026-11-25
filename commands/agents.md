---
description: How Instinct works in Claude Code, and example requests to try
argument-hint: [brand]
---
Explain Growthmodo Instinct to me in Claude Code, briefly: it's one AI media buyer, and I just ask. Call the Growthmodo Instinct tool `get_agent` with no role (and the brand, if I named one: $ARGUMENTS) and use only its Claude Code part. Say in one line that, behind the scenes, Instinct hands long jobs to helper agents that work in their own context and can run side by side, and that every finished ad gets a separate check; don't present the helpers as a team I manage.
Then give me three example requests, for example "Why did CPA jump on Prospecting UK this week?", "Give me 10 video ideas for <brand> and check the finished ads", and `/instinct:morning`. End with one `👉 Next:` line.

If the Instinct tools are missing or return a license error, tell me to run `/plugin` → instinct → configure and enter the license key from my Dodo Payments email, and stop.
