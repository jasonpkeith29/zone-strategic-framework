# Getting Started — DEP Zone Strategic Planning Exercise

## Why you're doing this

In August 2026, the DEP zone will present its 2027 strategic plans to ELT. This is a real opportunity — leadership will be evaluating our plans, our investment cases, and the value we're committing to drive for internal and external users and the business.

This exercise exists so that when that moment comes, everyone on the team is ready. Not polished-presentation ready — *actually ready*. Able to defend a bet, articulate a tradeoff, connect every initiative to a real human problem, and tell a story that creates urgency without slides.

**This is not a performance review.** It is not an evaluation of you. It is a workflow tool to help you produce the best plan you can — and to ensure that across the zone, our plans are consistent in quality, grounded in user reality, and positioned to drive our work in 2027 with clarity, focus, and the right resource investment.

---

## What you'll produce

At the end of this exercise, you will have:

1. **A complete strategic plan** — 8 sections covering your zone's context, users, bets, investment, roadmap, metrics, risks, and OKR status
2. **A presentation-ready HTML site** — a clean, shareable web page that is your actual deliverable for the ELT readout
3. **Three dry run reps** — progressively harder audiences before you get to the real thing

---

## How the process works

```
Getting Started → 8 Sections (coached by Claude) → Validate → Generate Site → 3 Dry Runs → ELT Readout
```

**Section by section:** Work through the 8 section files in `sections/` in order. Each one has guiding questions, a checklist, and a rubric. Claude will coach you as you go — asking hard questions, flagging vagueness, and pushing you toward specificity.

**Manager checkpoints:** After each section you commit `[READY] section-XX`. Your manager reviews, adds notes, and commits `[APPROVED] section-XX`. You move to the next section when approved.

**Session logs:** After each working session, Claude will write a summary to `sessions/`. These are for your manager — not to evaluate you, but to understand where you're investing effort and where you might need support.

**Site generation:** When all 8 sections are complete and validated, run `bash scripts/generate-site.sh teams/{your-team}`. This produces your `site/index.html` — the ELT-ready deliverable.

**Three dry runs:**
- Stage 1 — Own team (safe space, stress-test the foundation)
- Stage 2 — Peer zone (constructive challenge, unfamiliar audience)
- Stage 3 — Leadership preview with Jason (final calibration before August)

---

## The three tests your plan must pass

Every plan must pass all three before advancing to Stage 3:

1. **Story Test** — Can you tell it in 3 minutes without slides? Does it open with tension, not an agenda? Does it have a clear point of view?

2. **User Test** — Is every initiative traceable to real user pain? Are your personas specific people with specific workflows, not org chart entries?

3. **Investment Test** — Can you defend your LOE against expected return? "Significant effort" fails. "12 sprints: 3 discovery, 6 build, 2 test, 1 hardening" passes.

---

## Before you write your first section

Do these three things:

1. **Read the framework reference** — `_framework/README.md`. It takes 10 minutes and will change how you approach the sections.

2. **Set your commitment dates** — Open `commitments.md` and fill in your target completion date for each section *before you start*. These are yours — set dates that are realistic for your actual workload.

3. **Answer the dialogue.md kickoff questions** — Open `dialogue.md` and answer the Getting Started questions at the bottom. Your manager will do the same. This opens the conversation before the work begins.

---

## How to start your first Claude Code session

Once you've done the three things above, open Terminal and run:

```bash
cd ~/strategic-framework-exercise
claude
```

Then paste this as your first message (fill in the blanks):

```
I'm starting the strategic planning exercise. My name is [your name], my team/zone area is [your area], and my manager is [manager name]. I've read the Getting Started guide. Walk me through Section 1.
```

Claude will orient to your context, read your section files, and start coaching you through the work.

---

## A note on the coaching style

Claude will not write your plan for you. It will ask you questions that make you write a better plan. When your content is vague, it will say so plainly. When your content is strong, it will tell you what makes it strong so you can repeat it.

The questions it asks are the same questions leadership will ask in August. Getting comfortable answering them now — in a low-stakes environment — is the whole point.
