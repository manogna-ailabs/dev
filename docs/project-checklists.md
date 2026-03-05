# Web App Development Checklists

Practical checklists for starting, organizing, and growing multiple web/AI projects without chaos.

---

# 1. New Project Setup Checklist (5–10 Minutes)

Before writing any real code, quickly set up a clean project environment.

## Project Creation

- Create project inside the `dev/apps` directory
- Copy the base template
- Rename project folder

Example:

```
dev/
  apps/
    drift-control/
    research-twin/
```

## Initialize Project

```
pnpm install
pnpm dev
```

Confirm:

- App runs locally
- No dependency errors
- Git repository initialized

```
git init
git add .
git commit -m "initial project setup"
```

---

# 2. Recommended Development Folder Layout

Keep a single root directory for all development work.

```
dev/
  apps/
  templates/
  workspaces/
  shared/
  scripts/
```

## Folder Responsibilities

### apps

Actual projects live here.

```
apps/
  drift-control/
  research-twin/
  experiments/
```

Each app has its own:

- dependencies
- `.env`
- git repository

### templates

Reusable project starters.

```
templates/
  webapp-template/
```

Used to create new apps quickly.

### shared

Reusable utilities across projects.

Examples:

```
shared/
  ai-utils/
  ui-components/
  prompts/
```

### scripts

Helpful automation scripts.

Examples:

- environment setup
- dev startup scripts

---

# 3. Internal Project Structure

Inside each project follow a predictable architecture.

```
src/
  components/
  pages/
  logic/
  data/
  store/
```

## Components

UI elements.

Examples:

- buttons
- cards
- charts

## Pages

Screens or routes.

Examples:

- dashboard
- settings
- analytics

## Logic

Business rules and system behaviour.

Examples:

- scoring systems
- XP calculations
- workflow rules

## Data

Storage and persistence.

Examples:

- local storage helpers
- API requests
- database access

## Store

Global state management.

Examples:

- user state
- app state
- session state

---

# 4. Workspace Manager Setup

Workspace files make it easy to switch between multiple projects.

Create a workspace directory:

```
workspaces/
```

Example:

```
workspaces/
  drift.code-workspace
  research.code-workspace
```

## Example Workspace File

```
{
  "folders": [
    { "path": "../apps/drift-control" }
  ],
  "settings": {
    "terminal.integrated.cwd": "../apps/drift-control"
  }
}
```

Opening this workspace automatically:

- loads the correct project
- sets the terminal directory
- keeps your environment organized

---

# 5. Feature Addition Checklist

Before adding any feature, ask:

1. Does this improve the **core loop**?
2. Is this required for the current version?
3. Can this wait until the next version?

If the answer to #3 is yes → postpone.

Record future ideas instead of implementing immediately.

---

# 6. Version Planning Checklist

Before coding a release:

Define clearly:

```
v0.1
✔ core functionality

Not included yet
✘ advanced features
✘ analytics
✘ extra UI polish
```

Stick to the plan until the version ships.

---

# 7. Pre-Deployment Checklist

Before deploying an app:

- App runs locally
- No console errors
- Environment variables configured
- Git repository pushed

Then deploy.

---

# 8. Multi‑Project Management Rules

When working on many projects:

- Each project must stay independent
- Avoid shared dependencies between apps
- Keep experiments separate from stable projects

Example:

```
apps/
  drift-control/
  research-twin/
  experiments/
```

---

# 9. Personal Builder Rules

Follow these principles when building projects:

- Start small
- Ship early
- Iterate gradually
- Avoid over‑engineering
- Keep architecture simple

Momentum is more important than perfection.

---

# Quick Mental Model

When starting any project:

```
Idea → Core Loop → MVP → Ship → Iterate
```

Repeat the cycle for every new version.

