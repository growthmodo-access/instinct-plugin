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
