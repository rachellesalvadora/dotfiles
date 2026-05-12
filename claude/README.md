# Claude Code

This folder contains public-safe Claude Code defaults.

It intentionally does not include:

- Account state.
- Conversation history.
- Cache files.
- Project transcripts.
- Private hooks, agents, commands, or skills.
- MCP server configuration.
- Employer/client-specific instructions.

## Setup

`script/setup` symlinks `CLAUDE.md` to `~/.claude/CLAUDE.md`.

Copy `settings.example.json` to `~/.claude/settings.json` (or
`~/.claude/settings.local.json` for machine-specific overrides) and customise
it privately. The example shows the structure for permissions and hooks - fill
in the values that match your workflow.

## What to customise locally

- **Permissions**: add read/write paths for your project directories.
- **Hooks**: add session-start, pre/post tool-use hooks for your workflow tools.
- **Model**: change the default model if you have a preference.
- **CLAUDE.md**: add project-specific instructions in each repo's own
  `CLAUDE.md` rather than modifying the global one.
