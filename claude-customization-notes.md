# Claude Code Customization Notes

## Customization Options

### 1. CLAUDE.md — Persistent Instructions
Markdown (or plain text) files Claude reads at every session start.

- `~/.claude/CLAUDE.md` — personal preferences, all projects
- `./.claude/CLAUDE.md` — team/project standards (commit to git)
- `./CLAUDE.local.md` — personal project overrides (gitignore this)

Plain text works fine; markdown structure helps readability as files grow.
Use `/init` to auto-generate one from your codebase.

### 2. settings.json — Behavior Config
Controls permissions, environment variables, hooks, and more.

- `~/.claude/settings.json` — user-wide
- `.claude/settings.json` — project-wide
- `.claude/settings.local.json` — local overrides

Use `/config` to open the interactive settings UI.

### 3. Hooks — Automation
Shell commands triggered at lifecycle events (e.g. `PreToolUse`, `PostToolUse`, `Notification`).
Common uses: auto-format code, block dangerous commands, desktop notifications.
Configured in `settings.json` under `"hooks"`.

### 4. Skills — Custom Slash Commands
Reusable task instructions invoked with `/skill-name`.

- `~/.claude/skills/<name>/SKILL.md` — personal
- `.claude/skills/<name>/SKILL.md` — project-specific

### 5. Memory — Persistent Learning
Claude auto-saves learnings across sessions.

- Stored at `~/.claude/projects/<project>/memory/`
- Use `/memory` to browse or edit

### 6. MCP Servers — External Tool Integration
Connect Claude to GitHub, databases, Slack, etc.
Configured in `.claude/.mcp.json` (project) or `~/.claude/.mcp.json` (user).

### 7. Keybindings — Keyboard Shortcuts
Customized at `~/.claude/keybindings.json`. Use `/keybindings` for guided setup.

---

## MEMORY.md

`MEMORY.md` is the index file for Claude's auto-memory system.

```
~/.claude/projects/<project>/memory/
├── MEMORY.md          ← index, loaded every session (max 200 lines)
├── user_role.md
├── feedback_tests.md
└── project_auth.md
```

### Memory Types

| Type | Purpose |
|------|---------|
| `user` | Who you are, expertise, preferences |
| `feedback` | How Claude should/shouldn't behave |
| `project` | Goals, deadlines, decisions |
| `reference` | Where to find things (Linear, Grafana, etc.) |

Only the first 200 lines of `MEMORY.md` load per session — it's a pointer index, not content storage.

---

## Allowlisting Specific Commands (Granular Permissions)

To let Claude auto-approve certain commands without granting broad permissions, use `allowedTools` in `settings.json`:

```json
{
  "permissions": {
    "allow": [
      "Bash(npm run test)",
      "Bash(npm run build)",
      "Bash(git status)",
      "Bash(git diff*)"
    ],
    "deny": [
      "Bash(rm *)",
      "Bash(git push*)"
    ]
  }
}
```

### Syntax

- `Bash(exact command)` — allows only that exact command
- `Bash(git*)` — wildcard to cover a command family
- Omitting the `Bash(...)` specifier allows the entire tool (too broad)

### Where to put it

- `~/.claude/settings.json` — personal always-allowed commands, all projects
- `.claude/settings.json` — project-specific allowlist (shared with team)

Claude will auto-proceed for listed commands and still prompt for anything outside the list.
Use `/config` to manage permissions interactively instead of editing JSON manually.
