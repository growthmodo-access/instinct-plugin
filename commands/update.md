---
description: See what changed in Instinct and load the newest playbooks into this conversation, without starting over
---
Update Growthmodo Instinct in this conversation:

1. Call the Growthmodo Instinct tool `get_skill` again for each playbook this conversation is using, with the house style included (don't pass house_style "skip"). If no playbook has been loaded yet, call `whats_new` (with no `since`, or the date I give: $ARGUMENTS) and list the newest changes in a short list, newest first, then stop.
2. Call `whats_new` with `since` set to the oldest playbook version you had loaded before this update.
3. Tell me in up to three lines what changed that matters for the work in hand, then carry on where we were, following the new versions.

If the Instinct tools are missing or return a license error, tell me to run `/plugin` → instinct → configure and enter the license key from my Dodo Payments email, and stop.
