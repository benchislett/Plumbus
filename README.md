# Plumbus

Configuration files I use. 

## Usage

These configurations span many applications for different purposes, and are not always needed at the same time.
To facilitate deployment and management of these config files, I use [*GNU Stow*](https://www.gnu.org/software/stow/)

Note that *Stow* can replace files with the `dot-` prefix with a `.` character, which makes it easier to edit fully-visible files inside `Plumbus` and have them be deployed to hidden dot-files on your machine.
Using this feature for directories (e.g. `.config`) was broken until release `2.4` of *Stow*, which this repository depends on. The Ubuntu install APT can be found here: https://launchpad.net/ubuntu/+source/stow

### Step 1: Initialize filters

You probably won't need all the configs in here. Luckily, *Stow* can be configured to ignore certain collections of files when deploying the configs. There are a number of presets in the `stow/` directory. 

Default on Ubuntu will look like:

```bash
cp stow/dot-base-stow-local-ignore .stow-local-ignore
cat stow/dot-ubuntu-stow-local-ignore >> .stow-local-ignore
```

### Step 2: Deploy

```bash
stow -v --dotfiles --target=$HOME --no-folding .
```

*Stow* is very careful not to destroy any existing files you might have on your computer outside of the `Plumbus` repository. To perform a dry-run and see which files will be mapped where, append `--no`.

If you wish for *Stow* to link the entire directories (`.oh-my-zsh`, `.config/i3`, etc.) instead of just the files listed herein, remove the `--no-folding` option.

#### Troubleshooting

If *Stow* complains of a conflict, this means that one of the configs it wants to link already exists on the file system. There are a few ways to resolve this:
- Delete the target file it wants to link. Only do this if you want to overwrite the existing file on your machine.
- Append `--adopt` to the `stow` options. This will overwrite the `Plumbus` config with whatever exists on your machine, and will proceed with the deployment. This does not attempt to resolve conflicts.
- Manually resolve conflicts between the two files, then delete the existing file as before.

## Additional Installs

### ZSH

My shell of choice. Installable on most package managers.

### oh-my-zsh

Enhanced completions and terminal experience for ZSH. Install instructions: https://ohmyz.sh/#install

This will also prompt you to change your default shell to ZSH, which can otherwise be a hassle (`chsh` is finnicky)

### P10k

While officially deprecated and no longer receiving support, I have yet to replace this piece of the puzzle. Install instructions: https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#installation
