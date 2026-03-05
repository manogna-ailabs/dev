#!/usr/bin/env zsh
# Usage: ./new-project.sh <project-name>
# Creates a new project from the webapp-template and installs dependencies.

set -e

SCRIPT_DIR="${0:A:h}"
DEV_ROOT="${SCRIPT_DIR:h}"
TEMPLATE_DIR="${DEV_ROOT}/templates/webapp-template"
APPS_DIR="${DEV_ROOT}/apps"

# ── Validate argument ────────────────────────────────────────────────────────
if [[ -z "$1" ]]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

PROJECT_NAME="$1"
TARGET_DIR="${APPS_DIR}/${PROJECT_NAME}"

# ── Guard against overwrite ──────────────────────────────────────────────────
if [[ -d "$TARGET_DIR" ]]; then
  echo "Error: '${TARGET_DIR}' already exists."
  exit 1
fi

if [[ ! -d "$TEMPLATE_DIR" ]]; then
  echo "Error: template not found at '${TEMPLATE_DIR}'."
  exit 1
fi

# ── Copy template ────────────────────────────────────────────────────────────
echo "Creating project '${PROJECT_NAME}'..."
cp -r "$TEMPLATE_DIR" "$TARGET_DIR"

# Update package.json name field
sed -i '' "s/\"name\": \"webapp-template\"/\"name\": \"${PROJECT_NAME}\"/" \
  "${TARGET_DIR}/package.json"

# ── Install dependencies ─────────────────────────────────────────────────────
echo "Installing dependencies..."
cd "$TARGET_DIR"
pnpm install

# ── Initialise git repository ────────────────────────────────────────────────
echo "Initialising git repository..."
git init
git add .
git commit -m "initial project setup"

# ── Create VS Code workspace file ────────────────────────────────────────────
WORKSPACE_FILE="${DEV_ROOT}/workspaces/${PROJECT_NAME}.code-workspace"
echo "Creating workspace file at workspaces/${PROJECT_NAME}.code-workspace..."
cat > "$WORKSPACE_FILE" << EOF
{
  "folders": [
    { "path": "../apps/${PROJECT_NAME}" }
  ],
  "settings": {
    "terminal.integrated.cwd": "\${workspaceFolder}"
  }
}
EOF

# ── Done ─────────────────────────────────────────────────────────────────────
echo ""
echo "Project ready at: apps/${PROJECT_NAME}"
echo ""
echo "  cd apps/${PROJECT_NAME}"
echo "  pnpm dev"
echo ""
