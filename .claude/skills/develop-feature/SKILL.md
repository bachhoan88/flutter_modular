---
name: develop-feature
description: >-
  Develop a new feature/screen in this Flutter modular codebase, end to end and
  architecture-safe. Use when the user wants to add a feature, build a screen,
  turn a spec/screenshot/idea into working code, or scaffold a new module.
  Walks discovery → spec → plan → function-only skeleton → layer-by-layer
  implementation → real routing → unit tests, reusing existing code and never
  breaking the modular architecture.
---

# Develop a feature (architecture-safe, review-gated)

This skill turns a feature request (free-form "vibe" description, a screenshot,
or a written spec) into reviewed, tested, architecture-conformant code in this
Flutter modular monorepo.

**Read these references before acting** (they are the source of truth and the
team maintains them):
- `references/architecture.md` — module layout, layers, the mandatory patterns
  (Riverpod AsyncNotifier, `AsyncValue`, `ref.listen` exception dispatch,
  freezed, Retrofit, GoRouter, pub workspace) and the hard invariants.
- `references/feature-spec-template.md` — the spec format to capture/confirm.
- `references/code-templates.md` — per-layer copy-paste templates that already
  match the conventions.
- `references/checklists.md` — Definition of Done, guardrails, and when to
  escalate to a multi-agent Workflow.

## Operating principles

- **Review-gated.** Stop for user confirmation at the marked GATES. Do not run
  the whole pipeline unattended.
- **Reuse first.** Always prefer existing models/components/repositories over
  new ones. Discovery output must list what to reuse before proposing new code.
- **Vertical slice, fake-first.** Get a runnable skeleton (real data/error flow,
  fake data) in front of the user early — before wiring real APIs.
- **Never break architecture, never leave junk.** Every guardrail in
  `references/checklists.md` is mandatory. If a step would violate one, stop and
  surface it.
- **Verify continuously.** After each phase run the relevant subset of
  `make generate_sources_all` / `flutter analyze` / `flutter test`.

## Workflow

### Phase 1 — Intake & spec  ⟶ GATE
1. Identify the input form: free-form text, screenshot/image, or an existing
   spec. If a screenshot, describe the UI you see and the inferred widgets.
2. Produce a filled feature spec using `references/feature-spec-template.md`
   (UI, API, data, navigation, states/errors, acceptance criteria). Save it to
   `docs/specs/<feature>.md`.
3. **GATE:** show the spec; ask the user to confirm/correct before any code.

### Phase 2 — Discovery (map reuse vs gaps)
4. Explore the codebase to decide what already exists vs what is missing. For a
   feature that touches several layers, fan out parallel read-only `Explore`
   agents (one each for: core_model, core_network/API, core_data/repositories,
   core_designsystem components, core_ui base + exception flow, an analogous
   existing feature, routing). Otherwise do it inline.
5. Produce a **Reuse Map**: existing models/DTOs, API endpoints, repository
   methods, design-system widgets, and base classes to reuse — and the **Gaps**
   that must be built.

### Phase 3 — Plan & task list  ⟶ GATE
6. From spec + reuse map, write an ordered task list grouped by layer
   (model → api → data → (usecase?) → viewmodel → ui → routing → tests).
7. Make the explicit decisions in `references/checklists.md` §Decisions:
   new core module vs feature-local? domain usecase needed? design-system
   extraction? Justify each in one line.
8. **GATE:** present the plan/task list; get approval. Track it with the task
   tools.

### Phase 4 — Function-only skeleton (fake data)  ⟶ GATE
9. Scaffold the feature module per `references/code-templates.md`: freezed UI
   state, an `AsyncNotifier` view model whose `build()` returns **fake** data,
   and a page that renders loading/data and dispatches errors via
   `ref.listenException` (see architecture.md). Repository calls are stubbed.
10. Add a **preview route** for fast iteration: a temporary direct entry to the
    new screen (see `references/checklists.md` §Preview route) so it runs from
    `main` without touching real navigation yet.
11. Build/run to the preview; confirm the **data & error flow** renders.
12. **GATE:** user reviews the skeleton + data/error flow.

### Phase 5 — Implement layer by layer
13. Replace stubs with real code in dependency order (model → api → repository
    → viewmodel → ui polish), using the templates. After each layer:
    regenerate code, `flutter analyze`, run the preview.
14. As you go, extract to `core_designsystem` any reusable widget, and to a
    domain `UseCase` any non-trivial business logic — **only if** the
    checklist criteria are met (avoid premature extraction).

### Phase 6 — Real routing
15. Once the screen is confirmed, remove the preview bypass and wire real
    navigation from the related features/routes into the root Route Tree
    (`lib/src/route/main_router.dart`, `goRouterProvider`).

### Phase 7 — Tests (functional coverage)  ⟶ GATE
16. Write unit tests covering the functional spec: view model success/error/edge
    states (via `ProviderContainer` + mocked repository), repository ↔ exception
    mapping, and any controller/usecase logic. Target the coverage bar in
    `references/checklists.md`.
17. Run `make analyze_all` and `make test_all`; build the app.
18. **GATE:** final review against the Definition of Done; then commit on a
    feature branch with a clear message.

## Escalating to Orchestration + Harness
Default to the linear flow above. Escalate to a deterministic multi-agent
**Workflow** only when the feature is large or parallelizable — see
`references/checklists.md` §When to orchestrate for the exact triggers and the
recommended fan-out/pipeline shape. Workflows require explicit user opt-in.

## Extending this skill (for the team)
Keep `SKILL.md` (the process) stable; evolve the **references** as the codebase
evolves. When a new convention is introduced, update `architecture.md` and
`code-templates.md` in the same PR so the skill stays the single source of
truth. Each reference file states what it owns at the top.
