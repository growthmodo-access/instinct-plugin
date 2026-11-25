---
description: Turn the account-change guard on or off — Claude Code asks you before any connector tool that would change an ad account or another app
argument-hint: on | off | status
---
Manage the Growthmodo Instinct account-change guard: $ARGUMENTS (default: status)

The guard is a Claude Code hook in **my own** settings. Once on, before any connector tool whose name says it creates, updates, pauses, deletes, publishes, sends or similar runs (in any app, called by any agent), Claude Code asks me first. Reads are never affected, and Growthmodo Instinct's own tools are excluded. It is off until I turn it on here.

**on**
1. Show me exactly what you'll change, and wait for my yes:
   - write the script below to `~/.claude/hooks/growthmodo-confirm-writes.sh`
   - add this to the `hooks.PreToolUse` list in `~/.claude/settings.json`, keeping everything already there:
     `{ "matcher": "mcp__.*", "hooks": [{ "type": "command", "command": "sh ~/.claude/hooks/growthmodo-confirm-writes.sh" }] }`
2. On my yes, make both changes (create the file and folder if needed; if the entry is already there, change nothing), then tell me it takes effect in new Claude Code sessions.

**off**: show me the entry and the file you'll remove, and on my yes remove only those two things.

**status**: say whether the entry is in `~/.claude/settings.json` and the script exists. Change nothing.

The script, exactly as it should be written:

```sh
#!/bin/sh
# Growthmodo Instinct: before a connector tool that would change something (an ad account,
# a calendar, an inbox), make Claude Code ask the person first, whichever agent is calling it.
# Reads the PreToolUse event on stdin; prints a decision only for tools that look like writes.
name=$(sed -n 's/.*"tool_name"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -n 1)
case "$name" in
  ""|mcp__plugin_instinct_instinct__*) exit 0 ;;   # Instinct's own tools (brand memory, settings)
esac
action=${name##*__}
for word in $(printf '%s' "$action" | tr '_-' '  ' | tr 'A-Z' 'a-z'); do
  case "$word" in
    create|update|delete|remove|activate|deactivate|pause|resume|archive|duplicate|publish|unpublish|upload|boost|send|post|set|edit|write|add|launch|enable|disable|start|stop|cancel|assign|share|move|rename|trash|reply|forward|book|buy|purchase|pay|transfer|submit|approve|apply|import|deploy|generate|finalize|connect|disconnect)
      printf '{"hookSpecificOutput":{"hookEventName":"PreToolUse","permissionDecision":"ask","permissionDecisionReason":"Growthmodo Instinct: %s changes something outside Claude. Approve only if you asked for this exact change."}}\n' "$name"
      exit 0 ;;
  esac
done
exit 0
```
