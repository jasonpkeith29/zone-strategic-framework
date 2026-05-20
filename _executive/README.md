# Executive Director View

This directory is your home base for tracking the exercise across all teams, identifying where to offer guidance, and evaluating the talent signals that emerge through the process.

---

## Your Tools

### Dashboard (all teams at a glance)
```bash
bash scripts/dashboard.sh
```
Shows a status table: which sections are complete, which dry run stages have feedback, deck status per team.

### Deep dive (one team)
```bash
bash scripts/dashboard.sh {team-name}
```
Shows section-by-section status, feedback fill rate, talent observations from managers.

### Validate (one team)
```bash
bash scripts/validate.sh teams/{team-name}
```
Runs the same quality checks the team member runs — surfaces what's blocking or weak.

### Read a team's plan in progress
```bash
# Browse any section directly
cat teams/{team-name}/sections/03-strategic-focus-areas.md

# See what's changed recently across all teams
git log --all --oneline --name-only | head -40
```

---

## What to Look For

### Diagnosing where teams are struggling

**Section 3 (Strategic Bets):** The most common failure mode. Look for feature lists disguised as bets. If Bet 1 could be called "Build the thing we already planned to build," it's not a bet — it's a backlog item.

**Section 4 (Investment):** Vague LOE is a planning maturity signal. If a team can't give you sprints-by-phase, they haven't broken down the work. That's a problem to surface before the executive review, not after.

**Section 7 (Asks):** Empty or generic asks signal a team that hasn't thought about what they actually need from leadership. This is the section most likely to be skipped. Check it first.

**Feedback files:** Look at the Talent Observation section in each stage feedback file. Manager notes here surface developmental signals you'd otherwise only see in the actual presentation.

---

## What Talent Looks Like in This Exercise

**Strategic thinking signals (strong):**
- Bets that are genuinely differentiated from adjacent zones
- Investment section that names real tradeoffs (not just "we're committing to X")
- Failure signals in Section 6 — intellectual honesty about what "not working" looks like
- Leadership asks that are specific enough to be acted on

**Communication signals (strong):**
- Story that creates urgency in the first 60 seconds
- Can defend a position under challenge without reopening slides
- Verbatim quotes that are specific enough to feel real
- Point of view that is actually a point of view (not "we believe balance is important")

**Red flags:**
- Section 2 personas that read like org chart entries
- Metrics without baselines
- Risks that are categories, not specific risks
- Leadership asks that say "keep us informed"
- Story that opens with an agenda slide

---

## Interrogation Prompts

Use these when reviewing a team's work or sitting in on a dry run:

**On bets:**
- "Why this over [specific alternative]? What did you explicitly choose not to do?"
- "If I removed Bet 2 from your plan, what would change for users?"
- "How do you know this is the right bet? What's the evidence?"

**On investment:**
- "Walk me through how you got to 12 sprints. What's the biggest uncertainty in that estimate?"
- "What's the return in the first 90 days? What do you see that tells you this is working?"

**On asks:**
- "What specifically do you need from me, and by when?"
- "What happens if I can't give you that? What's your fallback?"

**On metrics:**
- "What's your baseline? Where does that number come from?"
- "What does the signal look like at day 60 if this is going sideways?"

**On story:**
- "Tell me the plan in 3 minutes without slides. Go."
- "What's your point of view? If I asked three PMs in your zone, would they give the same answer?"

---

## Your Notes

Use this space to track patterns, themes, and observations across teams as the exercise progresses. This is a private working space — it's not visible to team members or managers unless you share it.

### Cross-team patterns observed


### Teams that need direct support


### Talent signals (notable observations from dry runs)


### Themes to address in a cohort debrief

