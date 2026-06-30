# Checklists, decisions & escalation

> This file owns: the per-phase decisions, the architecture guardrails, the
> Definition of Done, and when to escalate to a multi-agent Workflow.

## §Decisions (make explicit at the Plan gate, justify each in one line)

- **New core module vs feature-local?** New `core_*` module only if the code is
  (or will be) used by ≥2 features. Otherwise keep it inside the feature.
- **Domain UseCase?** Add a `core_domain` UseCase only when there is real
  business logic (orchestration across repositories, non-trivial rules). For a
  straight read/CRUD, the view model calls the repository directly.
- **Design-system extraction?** Move a widget to `core_designsystem` only when
  it is reused across features or is clearly a generic component. Do not extract
  one-off feature widgets (avoid premature abstraction / junk).
- **New model vs reuse?** Prefer reusing/extending `core_model` types. New model
  only for genuinely new shapes.
- **Persistence?** none → shared_preferences (flags/prefs) → secure_storage
  (tokens/secrets) → DB. Don't pull a DB for a single flag.

## §Preview route (Phase 4)
- Add a temporary `GoRoute` to the new screen + an `initialLocation` override
  gated by `--dart-define=PREVIEW=<feature>` (see code-templates §7).
- Purpose: review UI + data/error flow in isolation, fast, before real nav.
- MUST be removed in Phase 6 when real routing is wired. Grep for `PREVIEW`
  before committing the final feature.

## §Guardrails (every one is mandatory — see architecture.md invariants)
- [ ] Dependency direction respected; no feature→feature import; routing only in `app`.
- [ ] View model is `@riverpod` AsyncNotifier; UI uses `AsyncValue`; side effects via `ref.listen`.
- [ ] No `StateNotifier`/`UiState`/`SingleObserver`/`ExceptionStatelessWidget`.
- [ ] Errors flow as `ExceptionState` via `ExceptionMapper`; no raw `DioException` in UI.
- [ ] freezed stays `>=3.1.0 <3.2.0`; no `flutter_gen_runner`; assets via `make gen_assets`.
- [ ] New module has `resolution: workspace`, is in root `workspace:`, has one barrel + `.gitignore`.
- [ ] Reused existing code where the Reuse Map said so (no duplicate models/widgets/endpoints).
- [ ] Secrets via `--dart-define`; nothing hardcoded.
- [ ] Preview bypass removed.

## §Definition of Done
- [ ] Spec confirmed and saved under `docs/specs/`.
- [ ] All acceptance criteria from the spec are met and covered by a test.
- [ ] `make generate_sources_all` clean; `make analyze_all` → 0 issues (all modules).
- [ ] `make test_all` green; functional coverage = every acceptance criterion +
      view model success/error/edge + repository↔exception mapping.
- [ ] App builds (`flutter build apk --flavor dev --dart-define=FLAVOR=dev`);
      ideally smoke-run the screen.
- [ ] No guardrail violated; no dead code/preview left; barrels updated.
- [ ] Committed on a feature branch with a descriptive message.

## §When to orchestrate (escalate to a multi-agent Workflow)
Default = run this skill linearly with one agent. Escalate ONLY when the user
opts in ("use a workflow" / ultracode) AND one of:
- the feature spans **many modules/screens** (e.g. several screens, or new
  model+api+data+ui+routing all sizeable);
- **discovery must sweep the whole repo** (large unknown codebase area);
- there are **independent parallel slices** (multiple screens/endpoints that can
  be built and verified concurrently).

Recommended shape:
- **Discovery (parallel/barrier):** one `Explore` agent per area (model, api,
  data, designsystem, ui/exception, analogous feature, routing) → merge into one
  Reuse Map.
- **Implementation (pipeline):** one item per screen/endpoint; stages
  `scaffold → implement → verify(analyze+test)`; isolate file-mutating agents
  with `isolation: worktree` if they run concurrently.
- **Verify (adversarial):** a final agent re-checks every guardrail + runs
  `analyze_all`/`test_all` before reporting.
Keep human review GATES between Workflow phases — do not let orchestration skip
the spec/plan/skeleton confirmations.
