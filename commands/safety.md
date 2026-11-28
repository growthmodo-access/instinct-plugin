---
description: Turn the account-change guard on or off (it's on by default) — Claude Code asks you before any connector tool that would change an ad account or another app
argument-hint: on | off | status
---
Manage the Growthmodo Instinct account-change guard: $ARGUMENTS (default: status)

The guard comes with the plugin and is **on by default**. Before any connector tool whose name says it creates, updates, pauses, deletes, publishes, sends, generates or similar runs (in any app, called by any agent), Claude Code asks me first. Reads are never affected, and Growthmodo Instinct's own tools are excluded. Turning it off creates one file, `~/.claude/growthmodo-guard-off`; turning it on removes it.

**status**: say whether the guard is on (the file `~/.claude/growthmodo-guard-off` does **not** exist) or off (it exists). Also check `~/.claude/settings.json` for an older copy of the guard: a `hooks.PreToolUse` entry whose command runs `growthmodo-confirm-writes.sh`. If it's there, say I'd be asked twice and offer to remove that entry and `~/.claude/hooks/growthmodo-confirm-writes.sh` (on my yes, remove only those two things). Change nothing else.

**off**: say plainly what turning it off means (connector tools that change ad accounts or other apps will run with only Claude Code's usual permission rules), and on my yes create the empty file `~/.claude/growthmodo-guard-off`. It takes effect straight away.

**on**: remove `~/.claude/growthmodo-guard-off` if it exists. It takes effect straight away. Then run the status check for an older copy, as above.
