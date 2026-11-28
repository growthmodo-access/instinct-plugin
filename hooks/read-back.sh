#!/bin/sh
# Growthmodo Instinct read-back: after a connector tool changes an ad account (create, update, activate,
# pause, delete, budget...), tell Claude to read the changed objects back from the account and show the
# buyer what is live next to what they approved, before saying anything else. Deterministic: it runs on
# every such call, whatever the model remembers. Reads stdin (the PostToolUse event); prints nothing for
# other tools.
name=$(sed -n 's/.*"tool_name"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -n 1)
case "$name" in
  ""|mcp__plugin_instinct_instinct__*) exit 0 ;;
esac
action=$(printf '%s' "${name##*__}" | tr 'A-Z' 'a-z')
# Only ad-account tools: Meta / Facebook / Instagram ads connectors and their campaign objects.
case "$action" in
  *ads_*|*_ads|*campaign*|*adset*|*ad_set*|*creative*|*audience*|*budget*|*meta*|*facebook*|*instagram*) ;;
  *) case "$name" in *meta*|*facebook*|*ads*) ;; *) exit 0 ;; esac ;;
esac
for word in $(printf '%s' "$action" | tr '_-' '  '); do
  case "$word" in
    create|update|delete|remove|activate|deactivate|pause|resume|archive|duplicate|publish|boost|edit|set|launch|enable|disable|start|stop|apply|assign|upload|finalize|write)
      printf '{"hookSpecificOutput":{"hookEventName":"PostToolUse","additionalContext":"Growthmodo Instinct read-back: %s just changed the ad account. Before your next answer, read the changed objects back from the account with a read tool (status, budget, schedule, targeting, creative and IDs as relevant) and show the buyer what is live now next to what they approved. Report any difference first. Do this even if the tool said it succeeded."}}\n' "$name"
      exit 0 ;;
  esac
done
exit 0
