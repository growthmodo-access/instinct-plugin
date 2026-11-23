<p align="center">
  <img src="assets/banner.svg" alt="Growthmodo Instinct — your media-buying instincts, inside Claude" width="100%">
</p>

<p align="center">
  <img alt="Claude Code plugin" src="https://img.shields.io/badge/Claude%20Code-plugin-304BFF?style=for-the-badge">
  <img alt="Meta Ads" src="https://img.shields.io/badge/Meta%20Ads-playbooks-2E42E6?style=for-the-badge">
  <img alt="Read-only" src="https://img.shields.io/badge/your%20ad%20account-read--only-1F2DB8?style=for-the-badge">
  <img alt="Version" src="https://img.shields.io/badge/version-1.0.1-121820?style=for-the-badge">
</p>

<h3 align="center">Stop asking Claude for "some ideas".<br>Ask it the way a senior media buyer would — and get the answer a senior media buyer would give.</h3>

<br>

Growthmodo Instinct plugs **Growthmodo's media-buying playbooks** into Claude. Type `/instinct`, pick a job, and Claude works the way our buyers do: it checks the numbers before it believes them, finds *where* the money went, says how sure it is, and hands you **one** thing to do. Reports and audits come back as **branded, client-ready pages** — not a wall of chat.

<br>

## ⚡ Install in 60 seconds

In Claude Code (terminal, the desktop app's Code tab, or your IDE):

```text
/plugin marketplace add growthmodo-access/instinct-plugin
```

```text
/plugin install instinct@growthmodo
```

Paste the **license key** from your Growthmodo welcome email when asked (it starts with `gmi_`). It goes into your system's secure storage and is only ever sent to Growthmodo Instinct. Restart Claude Code, type `/instinct`, done.

> [!TIP]
> Connect a **Meta Ads** MCP server too, so audits, diagnoses and reports read your live numbers. Without it, Claude simply asks you for an export.

<br>

## 🧠 Ten commands. One instinct.

| | Command | What you get back |
|:-:|---|---|
| 📊 | `/instinct:report <client>` | A **branded client report** — scorecard vs target, day-by-day charts with anomalies flagged in red, a Scale / Hold / Fix / Cut verdict on every campaign |
| 🩺 | `/instinct:audit [account]` | A **graded audit deck** — A–F per area, money at stake, ranked fixes, 30/60/90-day roadmap. Prints one slide per page |
| 📉 | `/instinct:cpa [what changed]` | **Why CPA rose**, which campaigns did it, what's been ruled out — and the one change to make |
| 🎬 | `/instinct:brief <offer>` | **Five hooks** from five different angles, then a designer-ready brief for the strongest |
| ✍️ | `/instinct:copy <ad>` | Primary text, headlines and descriptions — each variant testing **one** lever, inside approved claims |
| 🛡️ | `/instinct:check-ad <market> <ad>` | A **pre-launch policy check** (Meta + local rules) with severity, sources and a rewrite for every issue |
| 🔭 | `/instinct:competitors [names]` | What rivals are running, clustered into **angles you can actually own** |
| 🚀 | `/instinct:start` | Setup check + the brand interview every other command builds on |
| 🎯 | `/instinct:report-profile <client>` | How each client wants to be reported to — asked once, followed every time |
| 🆕 | `/instinct:whats-new` | What changed in the playbooks since you last looked |

Prefer plain English? Just ask — *"why did CPA jump on Prospecting UK this week?"* — Instinct picks the right playbook on its own.

<br>

## 🖼️ What lands on your screen

<table>
  <tr>
    <td width="50%" valign="top">
      <img src="assets/report.png" alt="Growthmodo Instinct client report with scorecard, CPA trend, day-by-day charts and an anomaly flagged in red">
      <p align="center"><b>Client report</b><br><sub>Anomaly days in red, explained. A verdict on every campaign.</sub></p>
    </td>
    <td width="50%" valign="top">
      <img src="assets/audit-cover.png" alt="Audit deck cover with overall grade C and money at stake">
      <p align="center"><b>Audit deck — cover</b><br><sub>Overall grade and the money at stake, before anything else.</sub></p>
      <br>
      <img src="assets/audit-slide.png" alt="Audit deck slide grading structure and learning D, with a bar chart and key takeaways">
      <p align="center"><b>Audit deck — area slide</b><br><sub>Grade, the chart that shows the problem, and what to do about it.</sub></p>
    </td>
  </tr>
</table>

<p align="center"><sub>Sample data. Live previews: <a href="https://instinct.growthmodo.com/samples/report">client report</a> · <a href="https://instinct.growthmodo.com/samples/audit">audit deck</a></sub></p>

<br>

## 🔁 How it works

<p align="center">
  <img src="assets/how-it-works.svg" alt="How it works: you ask, Instinct loads the playbook, Claude reads your account read-only, you get the deliverable" width="100%">
</p>

The playbooks live on Growthmodo's servers and are sent to Claude only when you're licensed — so every improvement we make reaches you on your **next message**, with nothing to update.

<br>

## 💬 It sounds like this

> **You:** `/instinct:cpa CPA on Prospecting UK went from £22 to £29 this week`
>
> **Growthmodo Instinct** · CPA Diagnosis
>
> **Money at stake:** ~£2,480 a week at the new CPA.
> **What happened:** CPA £22.40 → £29.10 (+30%) on 412 → 371 purchases. Not noise.
> **Where:** "Prospecting – Broad UK" explains 78% of the extra cost; retargeting is flat.
> **Why (high confidence):** CTR fell 27% on the top two ads — both 31 days old, frequency 3.1 — while CPM (+4%) and conversion rate (−2%) held. Creative fatigue. Checkout and auction ruled out.
> **Do this:** launch two replacement ads into the same ad set this week; keep budget unchanged. Success = CPA under £24 within 7 days.
>
> *Growthmodo Instinct · built on Growthmodo's media-buying playbooks*

<br>

## 🧭 The rules every answer follows

<table>
  <tr>
    <td>🔢 <b>Numbers, not adjectives</b><br><sub>"CPA +18% (£22.10 → £26.08)", never "CPA rose significantly".</sub></td>
    <td>☝️ <b>One recommendation</b><br><sub>The action we'd take — not a menu of ten.</sub></td>
    <td>🎚️ <b>Says how sure it is</b><br><sub>High / medium / low confidence, and what would change its mind.</sub></td>
  </tr>
  <tr>
    <td>🚫 <b>No invented data</b><br><sub>Missing number? It asks. It never fills gaps with "typical" figures.</sub></td>
    <td>🔒 <b>Read-only by default</b><br><sub>It never touches budgets, bids or ads unless you ask and confirm.</sub></td>
    <td>⏳ <b>Respects conversion lag</b><br><sub>Recent days are provisional; small samples are called noise.</sub></td>
  </tr>
</table>

<br>

## ❓ Questions

<details>
<summary><b>Can it change my ads or budgets?</b></summary>
<br>
No. Every playbook is read-only. Claude will list a change and only make it if you explicitly ask and confirm that specific change — and only if your Meta connector allows writes at all.
</details>

<details>
<summary><b>Where does my license key go?</b></summary>
<br>
Into your operating system's secure storage via Claude Code's plugin settings. It's sent only to <code>instinct.growthmodo.com</code>. Change it any time: <code>/plugin</code> → <b>instinct</b> → <b>Configure</b>.
</details>

<details>
<summary><b>I use claude.ai, not Claude Code.</b></summary>
<br>
Same playbooks, no plugin needed: add Instinct as a custom connector with the URL from your welcome email, then use the <b>+</b> menu starters. Full guide: <a href="https://instinct.growthmodo.com/">instinct.growthmodo.com</a>.
</details>

<details>
<summary><b>How do I get updates?</b></summary>
<br>
Playbook updates are automatic — they're served live. For new commands, run <code>/plugin</code> → <b>instinct</b> → <b>Update</b>. Ask <code>/instinct:whats-new</code> to see what changed.
</details>

<details>
<summary><b>Commands say the Instinct tools are missing.</b></summary>
<br>
The license key isn't set or isn't active. Run <code>/plugin</code> → <b>instinct</b> → <b>Configure</b> and paste the key from your welcome email, then restart Claude Code. Still stuck? Contact Growthmodo.
</details>

<br>

## 📦 What's in this repo

Only the plugin wiring: the slash commands and the secure connection to Growthmodo Instinct. The playbooks, thresholds and templates are served by Instinct to licensed users and are not part of this repository.

## License

Proprietary — see [LICENSE](LICENSE). Licensed Growthmodo Instinct customers may install and use this plugin; copying, modifying or redistributing it is not permitted.

<p align="center"><br><sub>Made by <b>Growthmodo</b> · <a href="https://instinct.growthmodo.com/">instinct.growthmodo.com</a></sub></p>
