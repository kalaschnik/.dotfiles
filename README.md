<img align="right" width="170" src="assets/dotfiles-logo-stacked.png">

# My .dotfiles (macOS)

> Using [dotbot](https://github.com/anishathalye/dotbot) & [Homebrew](https://github.com/Homebrew/brew)

---

## Old machine prep

1. Backup files (OneDrive, Nextcloud et al.)
2. Check if all git repos are pushed
3. If a git repo lives outside of a cloud service **check the git ignored files**
4. Create a fresh brew bundle dump using `bbd`
5. Check the `~/.dotfiles/Brewfile` and delte entries that should not be installed on the new machine
6. Optional: copy SSH key pair if yout don’t want to create new one

## New machine setup

1. Create fresh SSH key pair (steps from GitHub docs)
   ```bash
   ssh-keygen -t ed25519 -C "your_email@example.com"
   ```
   _Optional:_ Paste the contens of old ssh keys into the new ssh keys
2. Copy public key contens
   ```bash
   pbcopy < ~/.ssh/id_ed25519.pub
   ```
3. Paste this here: https://github.com/settings/ssh/new

4. Clone this repo in `~/.dotfiles`:
   ```bash
   git clone git@github.com:kalaschnik/.dotfiles.git ~/.dotfiles
   ```
5. Run the install process
   ```bash
   ~/.dotfiles/install
   ```

## Post Installation

1. Symlink SSH Config if Nextcloud is complete
   ```bash
   ln -s ~/Nextcloud/.dotfiles/ssh/config ~/.ssh/config
   ```

## CLI

Auto-create bundle dump using `brew bundle dump --force --describe` (force will overwrite the existing one)

How to deal with ssh config file?

# YOU DONT NEED OH MY ZSH

Based on ...
Revist laterf for

- zprofile (moveing zshrc to .config?)
- update zsh plugins (not need because they are updated from homebrew)
  https://www.youtube.com/watch?v=bTLYiNvRIVI

- autocomplete

brew less because of scrolling

Powerlevel10k also boots the startup performance of zsh, set it to verbose to detect if this causes an issue

r is a cask because of https://rstats.wtf/set-up-an-r-dev-environment.html#what-about-homebrew
TODO cask r requires password entry when running it `./install`

rectangle (no backup, defaults are fine, and painful)

Steps todo in post
`compaudit | xargs chmod g-w` to fix https://github.com/zsh-users/zsh-completions/issues/433

readme automate font installations
MesloLGS NF

setup terminal configs (usinng meslolgs nf)

### Appendix

#### Correct CHMOD Permission for .ssh folder and its contents

| **SSH CHMOD for RSA**         | **SSH CHMOD for ED25519**         |
| ----------------------------- | --------------------------------- |
| `chmod 700 ~/.ssh/`           | `chmod 700 ~/.ssh/`               |
| `chmod 600 ~/.ssh/id_rsa`     | `chmod 600 ~/.ssh/id_ed25519`     |
| `chmod 644 ~/.ssh/id_rsa.pub` | `chmod 644 ~/.ssh/id_ed25519.pub` |
| `chmod 600 ~/.ssh/config`     | `chmod 600 ~/.ssh/config`         |

#### Credits

- https://dotfiles.github.io/
- Dotfiles Logo by: https://github.com/jglovier/dotfiles-logo
- Initial Inspiration: Patrick McDonald (https://github.com/eieioxyz/dotfiles_macos)
