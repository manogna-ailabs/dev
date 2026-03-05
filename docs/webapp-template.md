# Web App Template

A minimal **React + TypeScript + Vite** starter template designed for quickly creating new web applications with a clean architecture.

The goal of this template is to:

* remove setup friction
* keep project structure consistent
* enforce separation between UI, logic, and data
* make it easy to spin up many small apps quickly

This template intentionally stays **minimal**. Only the essentials are included.

---

# Creating a New Project

To start a new project from this template:

```
cp -r templates/webapp-template apps/my-new-app
cd my-new-app
pnpm install
pnpm dev
```

The app will run at:

```
http://localhost:5173
```

----

# Stack

This template uses:

* **React** – UI framework
* **TypeScript** – type safety
* **Vite** – fast development server and build tool
* **React Router** – page routing
* **Zustand** – global state management

---

# Project Structure

```
src/
  components/   → reusable UI components
  pages/        → application screens/routes
  logic/        → business rules and algorithms
  data/         → persistence and API helpers
  store/        → global state (Zustand)

  App.tsx       → app layout and routing
  main.tsx      → application entry point
  index.css     → global styles
```

### Folder Responsibilities

**components/**
Reusable UI elements.

Examples:

* buttons
* cards
* navigation
* charts

---

**pages/**
Application screens.

Examples:

* Home
* Dashboard
* Settings
* About

Each page composes components to form a screen.

---

**logic/**
Contains application behavior and rules.

Examples:

* scoring systems
* XP calculations
* recommendation logic
* workflow rules

Important rule:

> Business logic should not live inside React components.

---

**data/**
Handles data access and persistence.

Examples:

* localStorage helpers
* API requests
* database access

---

**store/**
Global state management using Zustand.

Examples:

* user state
* session state
* application state

---

# Core Files

### `main.tsx`

Application entry point.

Responsibilities:

* boot React
* mount the app
* enable routing

You usually do not modify this file.

---

### `App.tsx`

Main application layout.

Responsibilities:

* routing
* layout
* global UI structure

Example responsibilities:

* navigation
* route definitions
* shared layout

---

### `index.css`

Global styling.

This is the only CSS file included in the template.

---

# Typical Development Workflow

When building a feature:

1. Create or update a **page** in `pages/`
2. Build UI components in `components/`
3. Add application logic in `logic/`
4. Store shared state in `store/`
5. Use `data/` for persistence or API access

Example flow:

```
User action
  ↓
Component
  ↓
Logic function
  ↓
Store update
  ↓
UI re-renders
```

---

# Template Rules

Keep the template minimal.

Do **not** add project-specific systems to the template.

Add those later inside individual projects.

The template should only contain:

* basic architecture
* routing
* state setup
* development tooling

---

# Files That Should Not Be Included

The following folders should never be committed or included in the template:

```
node_modules/
dist/
```

They are automatically generated.

---

# Philosophy

This template follows a simple principle:

> Build many small working apps instead of one perfect system.

The template exists to remove setup friction so you can focus on building features quickly.