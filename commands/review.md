---
description: Instinct's separate check before launch: your final ads checked without seeing how they were made
argument-hint: <ad copy, files or pipeline IDs, landing page URL, brand, markets>
---
Get an independent Growthmodo Instinct compliance review of these ads: $ARGUMENTS

1. Collect only what will actually run, for each ad: every copy field (primary text, headline, description, call to action), the image or video file path (or an exact description of it), the landing page URL, the brand and the markets. If I gave Creative Pipeline IDs, load the brand with `get_brand` and take the final copy for those IDs from the pipeline.
2. Leave out everything about why the ads were made that way: briefs, angles, hypotheses, notes and this conversation's reasoning. The point is a check that hasn't seen the maker's thinking.
3. Hand that material to the **compliance-reviewer** subagent in one job ("Pre-launch check for <brand>, markets <markets>: …").
4. Show me its verdicts as returned (pass, fix with replacement text, or block, per ad), then one `👉 Next:` line. If any ad is "fix", offer to apply the replacement text and run the review again on the fixed version.

If the Instinct tools are missing or return a license error, tell me to run `/plugin` → instinct → configure and enter the license key from my Dodo Payments email, and stop.
