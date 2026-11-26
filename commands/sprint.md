---
description: Creative sprint: Instinct takes new ideas all the way to checked ads, built paused, with your yes at each step
argument-hint: <brand> [how many ideas and formats, markets]
---
Run a Growthmodo Instinct creative sprint: $ARGUMENTS
Defaults: 8 ideas in mixed formats, the brand's saved markets. Work through the gates in order and never skip one. Keep my replies short: each gate ends with one `👉 Next:` line giving the exact reply.

**0. Load.** Call `get_brand` for the brand (if it isn't saved, tell me to run `/instinct:start` first, and stop) and `get_workspace_defaults`.

**1. Ideas → my picks.** Start the **instinct** subagent: "creative-strategist: Concept Board for <brand>, <markets>: <n> ideas, <formats>. Read the Creative Pipeline and Decision Log first, build on what won and avoid what was rejected, and give each idea its next pipeline ID. Return the board and the new pipeline rows." Show me the board. **Gate 1:** wait for my picks (approve, or reject with why). Then add the rows with their statuses to the pipeline and save it (`save_brand`, document `pipeline`), and log my picks with `log_decision`.

**2. Production.** Start one **instinct** subagent per approved idea, all at the same time (at most 8 at once): "creative-strategist: Ad Creative for <brand>, idea <ID>: <the idea's row and brief>. Produce the final copy (every field), the image prompt or video script, and say what the visual is. Return the finished ad." Mark each idea `ready` in the pipeline as it comes back.

**3. Independent check.** Start the **instinct-check** subagent with only the finished ads (every copy field, the visual or its description, the landing page, the markets). Don't pass the board, briefs or reasons. Show me the verdicts. **Gate 2:** for each Fix, I accept or change the replacement text; then run the reviewer once more on the fixed ads only. Mark Pass → `checked`, Block → `rejected` (claim_risk or policy, with the rule). Save the pipeline.

**4. Paused build.** Start the **instinct** subagent: "media-buyer: Plan & Launch for <brand>: prepare a paused build for these checked ads <IDs and ad names>, within the Mandate, with ad names starting with the pipeline ID. Return the build plan; don't build anything." Show me the plan. **Gate 3:** only on my yes, build it **paused** yourself by following the Plan & Launch playbook (`get_skill` with `plan-and-launch`). **Gate 4:** go live only on a second, separate yes. Mark the ideas `live`, save the pipeline and log the launch with `log_decision` (with a check date).

If the Instinct tools are missing or return a license error, tell me to run `/plugin` → instinct → configure and enter the license key from my Dodo Payments email, and stop.
