# Feature spec template

> This file owns the spec format. Copy the block below to
> `docs/specs/<feature>.md`, fill it in (from text / screenshot / API docs),
> and confirm with the user before coding. Leave a field `TBD` if unknown — TBD
> fields become open questions at the planning gate.

```markdown
# Feature: <name>

## 1. Summary
- **Goal / user value:** <one or two sentences>
- **Module:** feature_<name>  (new? yes/no)
- **Entry points:** <where the user reaches this screen from>
- **Input source:** free-form | screenshot | spec  (attach/describe)

## 2. UI
- **Screens:** <list; one main screen unless stated>
- **Layout / sections:** <top→bottom; e.g. app bar, carousel, list, CTA>
- **Components:** <reuse from core_designsystem? new? which>
- **States to render:** loading | empty | data | error(OnPage)
- **Interactions:** <taps, navigation, toggles, pull-to-refresh, pagination>
- **Design ref:** <screenshot/Figma link or "n/a">

## 3. Data & API
- **Models needed:** <new models / reuse core_model.X>
- **Endpoints:**
  | Method | Path | Query/Body | Response model | Notes |
  |--------|------|------------|----------------|-------|
  | GET    | /... |            | <Model>        |       |
- **Repository methods:** <signatures; reuse MovieRepository-style>
- **Persistence:** none | shared_preferences | secure_storage | db (which)
- **Business logic / UseCase:** <rules; or "none — direct repository">

## 4. Errors & behaviour
For each failure, map to an ExceptionState behaviour:
| Case | Behaviour | Message |
|------|-----------|---------|
| network/timeout | Toast | ... |
| validation | Inline | per-field |
| server (fatal) | OnPage + retry | ... |
| auth expired | Redirect | login |

## 5. Navigation
- **Route path(s):** <e.g. /foo, /foo/:id>
- **Args:** <passed via extra / path params>
- **Redirect/guards:** <auth/onboarding conditions, or none>

## 6. Acceptance criteria (functional — drives the tests)
- [ ] <observable behaviour 1>
- [ ] <state X renders when ...>
- [ ] <error case Y shows behaviour Z>
- [ ] <navigation A → B works>

## 7. Out of scope / open questions
- <explicitly excluded items>
- <TBD items needing a decision>
```

## Reading a screenshot into this spec
When the input is an image: enumerate the visible regions top→bottom, name the
likely existing design-system component for each (app bar, list tile, card,
rating, carousel), infer the data each region needs, and record anything
ambiguous as an open question rather than guessing.
