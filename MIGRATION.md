# Migration Runbook

A checklist for setting up a new Mac from this repository.

## 1. Before Migrating

- [ ] Push or stash important git work:
      ```sh
      for dir in ~/projects/* ~/github/*; do
        [ -d "$dir/.git" ] && (cd "$dir" && pwd && git status --short && git stash list)
      done
      ```
- [ ] Store `.env` files, API keys, SSH keys, and recovery codes in a password
      manager. Do not commit them here.
- [ ] Refresh package state:
      ```sh
      cd ~/dotfiles
      script/update-brewfile
      git diff
      ```
- [ ] Commit and push any safe dotfile changes.
- [ ] Note any apps installed manually or managed by an employer.

## 2. New Mac Prerequisites

- [ ] Sign in to Apple ID and the App Store if needed.
- [ ] Install Xcode Command Line Tools:
      ```sh
      xcode-select --install
      ```
- [ ] Install Homebrew:
      ```sh
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
      ```
- [ ] Restore credentials from your password manager.
- [ ] Authenticate GitHub CLI:
      ```sh
      gh auth login
      gh auth status
      ```

## 3. Clone And Setup

```sh
git clone https://github.com/rachellesalvadora/dotfiles.git ~/dotfiles
cd ~/dotfiles
script/setup
script/doctor
```

## 4. Verify

- [ ] Shell config loads:
      ```sh
      zsh -lic 'type ll && type reload'
      ```
- [ ] Git identity is configured through either `~/.gitconfig` or
      `~/.gitconfig.local`:
      ```sh
      git config --global user.name
      git config --global user.email
      ```
- [ ] Homebrew packages are satisfied:
      ```sh
      brew bundle check --file=~/dotfiles/Brewfile
      ```
- [ ] Claude Code is installed, if you use it:
      ```sh
      claude --version
      ```

## 5. Manual Follow-Up

- [ ] Restore local `.env` files from your password manager.
- [ ] Clone private work repositories separately.
- [ ] Sign in to apps that require GUI authentication.
- [ ] Keep employer/client-specific configuration outside this public repo.

## 6. Ongoing Maintenance

- [ ] Run `script/doctor` after major setup changes.
- [ ] Run `script/update-brewfile` after installing new Homebrew packages.
- [ ] Review diffs for private names, paths, hosts, or secrets before pushing.

