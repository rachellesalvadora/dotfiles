# Dotfiles

Personal macOS dotfiles and laptop migration checklist for Homebrew, zsh, git,
and Claude Code.

This repository is intentionally generic. It contains reusable setup scripts and
public-safe defaults, not work-specific configuration, secrets, private project
paths, or copied proprietary tool config.

## Install

```sh
git clone https://github.com/rachellesalvadora/dotfiles.git ~/dotfiles
cd ~/dotfiles
script/setup
script/doctor
```

Re-running `script/setup` is safe. Existing files are backed up with a timestamp
before symlinks are created.

## What This Manages

- Homebrew packages from `Brewfile`.
- Zsh startup config and aliases.
- Generic git defaults.
- Generic Claude Code instructions.
- A migration checklist for setting up a new Mac.

## Local Overrides

Use local files for private machine-specific settings:

- `~/.zsh.local`
- `~/.gitconfig.local`

Those files are intentionally not tracked.

## What This Does Not Manage

- Secrets or API tokens.
- SSH keys.
- `.env` files.
- Employer/client configuration.
- Private project paths.
- Claude account state, history, cache, transcripts, hooks, agents, or skills.

## Refresh Packages

After installing useful tools:

```sh
script/update-brewfile
```

Check the generated changes before pushing.
