# Growthmodo Instinct for Claude Code

Growthmodo's media-buying playbooks for Meta ads as slash commands in Claude Code (terminal, desktop app Code tab and IDE extensions).

## Install

In Claude Code:

```text
/plugin marketplace add growthmodo-access/instinct-plugin
/plugin install instinct@growthmodo
```

When asked, enter the **license key** from your Growthmodo welcome email (it starts with `gmi_`). It's kept in your system's secure storage and sent only to Growthmodo Instinct. Restart Claude Code, then type `/instinct` to see the commands.

To change the key later: `/plugin` → **instinct** → **Configure**.

## Commands

| Command | What it does |
|---|---|
| `/instinct:start` | Checks what's connected, then builds the brand profile every workflow uses |
| `/instinct:report <client>` | Branded client report (web page, PDF, slides or email) to the client's report profile |
| `/instinct:report-profile <client>` | Captures how a client wants to be reported to |
| `/instinct:cpa [what changed]` | Why CPA rose or ROAS fell, where, and the one change to make |
| `/instinct:audit [account]` | Read-only account audit with ranked fixes and money at stake |
| `/instinct:brief <offer>` | Five hooks and a designer-ready brief for the best one |
| `/instinct:copy <ad or angle>` | Ad copy variants within approved claims |
| `/instinct:check-ad <market> <ad>` | Policy and local-rules check before launch, with fixes |
| `/instinct:competitors [names]` | Competitor ads turned into angles to test |
| `/instinct:whats-new` | What changed in the playbooks |

You can also just ask in plain words — Claude uses Instinct for any Meta ads request once the plugin is on.

## Tips

- Connect a **Meta Ads** MCP server so audits, CPA diagnosis and reports can read live numbers (read-only). Without it, Claude asks for an export.
- Keep each brand's Brand Profile and Report Profile in that brand's project folder (for example `brand-profile.md`) so every session starts with the context.
- Full guide: https://instinct-staging.growthmodo.workers.dev/

## What's in this repo

Only the plugin wiring: the slash commands and the connection to Growthmodo Instinct. The playbooks themselves are served by Instinct to licensed users.

## License

Proprietary — see [LICENSE](LICENSE). Licensed Growthmodo Instinct customers may install and use this plugin; copying, modifying or redistributing it is not permitted.
