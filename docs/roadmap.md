# Roadmap (next milestones)

This is a small, concrete set of next steps that touches the three big areas: **content**, **overworld/story**, and **engine/rules**.

## Milestone A — Content: cards + decks (small, safe)

- Change **two existing cards**:
  - One numerical tweak (HP / damage / cost).
  - One text tweak (attack or effect description wording).
- Change **one existing deck list** to include at least one of the changed cards.
- Acceptance:
  - ROM builds.
  - You can view the card(s) in the album and start a duel without crashes/softlocks.

## Milestone B — Overworld/story: one NPC script tweak

- Pick a single NPC with a short interaction.
- Change:
  - Their dialogue.
  - One small script-side effect (e.g., set a flag, gate a second line, or give a small reward).
- Acceptance:
  - ROM builds.
  - Interaction works both on a fresh save and after re-entering the map.

## Milestone C — Engine/rules: one contained rules change

Pick one of the tutorials as a baseline pattern and port the idea into this codebase:

- Adjust weakness/resistance modifiers
- Don’t allow first turn attacks
- Update confusion mechanic

Acceptance:
- ROM builds.
- The rule change is observable in a duel and does not break AI turns.

