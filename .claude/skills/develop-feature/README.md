# How to use the `develop-feature` skill

A team guide for building features with Claude Code in this repo, consistently
and without breaking the architecture. (This README is for humans; `SKILL.md`
is the instruction set Claude follows.)

## TL;DR
Open Claude Code in the repo and either type the slash command or just describe
the feature:
```
/develop-feature add a movie Search screen
```
or
```
Build a "Favorites" screen from this screenshot  [attach image]
```
Claude runs a review-gated workflow and **pauses for your confirmation** at each
GATE. You stay in control.

## What it does (and why)
Turns a feature request into reviewed, tested, architecture-conformant code:
discovery → spec → plan → function-only skeleton → layer-by-layer
implementation → real routing → unit tests. It reuses existing
models/components/repositories and enforces the project's hard invariants
(see `references/architecture.md`).

## What to give it (any one of)
1. **Free-form ("vibe") description** — a sentence or paragraph of what you want.
2. **Screenshot / image** — attach it; Claude reads the UI and infers widgets.
3. **A written spec** — use `references/feature-spec-template.md`. You can fill
   it yourself, or let Claude generate it from (1)/(2) for you to confirm.

The more you provide (endpoints, models, acceptance criteria), the less Claude
has to assume. Unknowns become explicit questions at the planning gate.

## What happens — the GATES you'll review
| Phase | You review / decide |
|-------|---------------------|
| 1. Intake & spec | The generated spec (`docs/specs/<feature>.md`) — correct it before any code. |
| 3. Plan & task list | The ordered tasks + key decisions (new module? usecase? design-system extraction?). |
| 4. Skeleton (fake data) | The screen running via a temporary **preview route**, so you validate the data/error flow early. |
| 7. Tests & done | Final result against the Definition of Done, then commit. |

Between gates Claude implements layer by layer (model → api → data → view model
→ UI), regenerating code and running `analyze`/`test` as it goes.

## Worked example
```
You:   /develop-feature  add a Search screen: a text field, results list of
       movies, tap → detail. Uses GET /search/movie?query=.
Claude: (Phase 1) writes docs/specs/search.md and asks you to confirm.
You:   confirm (or tweak).
Claude: (Phase 2-3) maps reuse (Movie model, MovieRepository, list widgets) and
        shows a task list. You approve.
Claude: (Phase 4) scaffolds feature_search with an AsyncNotifier returning fake
        results + a preview route; you run it and review loading/empty/error.
You:   looks good.
Claude: (Phase 5-7) wires the real API + repository, polishes UI, adds the route
        from Home, writes tests, runs the full gate, and commits.
```

## Fast iteration: the preview route
During Phase 4 the skill adds a temporary direct route to the new screen, gated
by a dart-define, so you can run it in isolation:
```
flutter run --flavor dev --dart-define=FLAVOR=dev --dart-define=PREVIEW=search
```
It is removed when real navigation is wired (Phase 6).

## Extending the skill (for the team)
- Keep **`SKILL.md`** (the process) stable.
- Evolve the **`references/`** files as the codebase evolves — each file states
  what it owns at the top:
  - `architecture.md` — conventions & invariants (update when a convention changes)
  - `feature-spec-template.md` — the spec format
  - `code-templates.md` — per-layer code/test templates
  - `checklists.md` — decisions, guardrails, Definition of Done, orchestration
- When you introduce a new pattern, update `architecture.md` **and**
  `code-templates.md` in the same PR so the skill stays the single source of truth.
- Changes are shared with everyone via git (the skill lives in `.claude/`).

## When it scales up (Orchestration + Harness)
For a single feature the linear flow is enough. For large/parallel work (many
screens, whole-repo discovery), ask Claude to "use a workflow" — see
`references/checklists.md` §When to orchestrate for the triggers and the
fan-out/pipeline shape. Review gates still apply.

## Requirements
Claude Code with this repo open. The skill is auto-discovered from
`.claude/skills/`. `CLAUDE.md` (repo root) loads the key invariants every
session, so even quick edits stay consistent.
