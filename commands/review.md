---
description: (old name) Now /instinct:check — the separate check of your final ads
argument-hint: <ads, files or pipeline IDs, landing page URL, brand, markets>
---
This command is now `/instinct:check`. Say so in one short line, then do exactly this:

Check before launch with Growthmodo Instinct: $ARGUMENTS

**Finished ads** (copy, image or video files, or Creative Pipeline IDs) get Instinct's **separate check**, done without seeing how they were made:
1. Collect only what will actually run, for each ad: every copy field (primary text, headline, description, call to action), the image or video file path (or an exact description of it), the landing page URL, the brand and the markets. If I gave Creative Pipeline IDs, load the brand with `get_brand` and take the final copy for those IDs from the pipeline.
2. Leave out everything about why the ads were made that way: briefs, angles, hypotheses, notes and this conversation's reasoning. The point is a check that hasn't seen the maker's thinking.
3. Hand that material to the **instinct-check** subagent in one job ("Pre-launch check for <brand>, markets <markets>: …").
4. Show me its verdicts as returned (pass, fix with replacement text, or block, per ad), then one `👉 Next:` line. If any ad is "fix", offer to apply the replacement text and check the fixed version again.

**Anything else** (one claim, a landing page, tracking, or whether something is allowed in a market): call `get_skill` with slug `pre-launch-check` (call `list_skills` first if the slug isn't found), and follow the skill exactly, including its output template and the house style it ends with. Do not answer from general knowledge instead of the skill.

If the Instinct tools are missing or return a license error, tell me to run `/plugin` → instinct → configure and enter the license key from my Dodo Payments email, and stop.
