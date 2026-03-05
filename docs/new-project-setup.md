# Setting Up a New Project

How to create and start a new web app project in this workspace.

---

## Quick Start

Run from anywhere:

```
lab new <project-name>
```

Example:

```
lab new drift-control
```

This will:

1. Copy `templates/webapp-template` → `apps/<project-name>`
2. Update `package.json` with the new project name
3. Run `pnpm install`
4. Initialise a git repository with an initial commit
5. Create `workspaces/<project-name>.code-workspace`

---

## Start Working

Open the dev environment in tmux:

```
lab start <project-name>
```

Or open in VS Code:

```
lab open <project-name>
```

Or run the dev server directly:

```
lab dev <project-name>
```

The app runs at:

```
http://localhost:5173
```

---

## Project Structure

Each new project starts with this structure:

```
apps/<project-name>/
  src/
    components/   → reusable UI elements
    pages/        → application screens and routes
    logic/        → business rules and calculations
    data/         → storage and API helpers
    store/        → global state (Zustand)

    App.tsx       → routing and layout
    main.tsx      → app entry point
    index.css     → global styles

  index.html
  package.json
  vite.config.ts
  tsconfig.json
  .gitignore
```

---

## Manual Setup (without lab CLI)

If the `lab` command is unavailable:

```
cp -r templates/webapp-template apps/<project-name>
cd apps/<project-name>
pnpm install
git init
git add .
git commit -m "initial project setup"
pnpm dev
```

---

## First Steps After Setup

1. Open `src/pages/Home.tsx` and replace placeholder content with your core loop UI
2. Add business logic in `src/logic/`
3. Set up state in `src/store/appStore.ts`
4. Add new pages in `src/pages/` and register routes in `src/App.tsx`

---

## Rules

- Each project is its own git repository
- Each project has its own `node_modules` and `.env`
- Do not share dependencies between apps
- Keep experiments in `apps/experiments/`
