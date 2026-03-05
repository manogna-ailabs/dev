# lab CLI

A personal workspace CLI for managing dev projects.

The script lives at `~/dev/scripts/lab` and is available globally via PATH.

---

## Setup

Add to `~/.zshrc`:

```zsh
# lab CLI
export PATH="${HOME}/dev/scripts:${PATH}"

# zsh completions
fpath=(~/.zsh/completions $fpath)
autoload -Uz compinit
compinit
```

Then reload:

```
source ~/.zshrc
```

---

## Commands

### Create a new project

```
lab new <project>
```

Copies the `webapp-template`, installs dependencies, initialises a git repo, and creates a workspace file.

---

### Start dev environment (tmux)

```
lab start <project>
```

Creates a tmux session named `<project>` with two windows:

| Window | Name | Action |
|--------|------|--------|
| 1 | `dev` | runs `pnpm dev` |
| 2 | `shell` | terminal in project directory |

If the session already exists, attaches to it.

---

### Run dev server (no tmux)

```
lab dev <project>
```

Runs `pnpm dev` directly in the current terminal.

---

### Open VS Code workspace

```
lab open <project>
```

Opens `workspaces/<project>.code-workspace` in VS Code.

---

### List projects

```
lab list
```

Lists all directories in `apps/`.

---

### Remove a project

```
lab remove <project>
```

Asks for confirmation then deletes:

- `apps/<project>/`
- `workspaces/<project>.code-workspace`

---

## Tab Completion

With the completion script installed:

```
lab <TAB>             # shows all subcommands
lab start <TAB>       # shows project names from apps/
lab dev <TAB>         # shows project names from apps/
lab open <TAB>        # shows project names from apps/
lab remove <TAB>      # shows project names from apps/
```

Completion script is at `~/.zsh/completions/_lab`.
