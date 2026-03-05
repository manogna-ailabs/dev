# Practical Thumb Rules for Designing and Managing Web Apps

A compact reference for starting, structuring, and maintaining multiple small web/AI projects without creating chaos.

---

# 1. Core Architecture: The 3‑Layer Rule

Always separate your app into three layers.

```
UI Layer
↓
Logic Layer
↓
Data Layer
```

## UI Layer
Responsible for **display only**.

Examples:

- Components
- Pages
- Layout
- Styling

Rule:

> UI should not contain business rules.

Folder example:

```
src/
  components/
  pages/
  styles/
```

---

## Logic Layer
This is the **brain of the app**.

Contains:

- business rules
- calculations
- system behavior

Examples:

- XP calculation
- streak logic
- recommendation logic

Folder example:

```
src/logic/
  xpEngine.ts
  streakSystem.ts
```

Rule:

> If it describes *how the system behaves*, it belongs here.

---

## Data Layer
Responsible for **saving and retrieving data**.

Examples:

- LocalStorage
- databases
- APIs

Folder example:

```
src/data/
  storage.ts
  userStore.ts
```

Rule:

> UI should never directly manipulate storage.

---

# 2. Recommended Project Structure

```
project/
  src/
    components/
    pages/
    logic/
    data/
    store/
  public/
  package.json
```

Optional state layer:

```
src/store/
```

Used for global state like:

- user state
- app status
- session data

---

# 3. The 10‑Minute App Skeleton

Create a reusable template once and copy it for every project.

Template stack:

- React
- TypeScript
- Tailwind
- Zustand (state)
- React Router

Template structure:

```
webapp-template/
  src/
    components/
    pages/
    logic/
    data/
    store/
  package.json
```

New project workflow:

```
copy template
install dependencies
start dev server
```

This reduces project setup time from hours to minutes.

---

# 4. The Feature Creep Rule

Most side projects fail due to **too many features too early**.

Instead build only the **core loop**.

Example core loops:

| App | Core Loop |
|----|----|
| Habit tracker | complete task → gain reward |
| Research chatbot | ask question → retrieve answer |
| Learning tracker | solve problem → log progress |

Rule:

> Identify the one repeated action users perform.

Build only that first.

---

# 5. Versioning Strategy

Release features incrementally.

Example roadmap:

```
v0.1 core loop
v0.2 UI polish
v0.3 additional feature
v0.4 analytics
v0.5 advanced features
```

Never attempt the full vision immediately.

---

# 6. Feature Freeze Rule

Before coding, define what **is NOT allowed** in the first version.

Example:

```
Version 0.1

Allowed
- core functionality
- minimal UI

Not allowed
- analytics
- gamification
- advanced automation
```

New ideas go into future versions.

---

# 7. The 60% Shipping Rule

Ship when the project is about **60% complete** relative to your ideal vision.

Reason:

The last 40% typically takes **3× more time**.

Shipping early creates momentum.

---

# 8. Managing Multiple Projects

Keep a clean folder structure.

```
dev/
  apps/
    projectA
    projectB
    experiments

  templates/
    webapp-template

  shared/
    reusable utilities
```

Rules:

- Each project has its own dependencies
- Each project is its own Git repo
- Shared code lives in a separate folder

---

# 9. Environment Isolation Rules

Each project should isolate:

| Layer | Tool |
|-----|-----|
| language version | nvm |
| dependencies | node_modules |
| environment variables | .env |
| infrastructure | docker (optional) |

This prevents projects from interfering with each other.

---

# 10. The Builder Mindset

Focus on:

```
small experiments
fast iteration
frequent shipping
```

Avoid:

```
perfect architecture
large upfront design
endless feature expansion
```

Goal:

> Build many small working systems instead of one unfinished perfect system.

---

# Summary

Key principles:

1. Separate UI, Logic, and Data
2. Use a reusable project template
3. Build only the core loop first
4. Freeze features for v0.1
5. Ship early (60% rule)
6. Iterate through versions
7. Keep projects isolated and organized

Following these rules keeps apps simple even as they grow.

