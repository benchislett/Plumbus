# Plumbus

Configuration files I use. 

## Usage

These configurations span many applications for different purposes, and are not always needed at the same time.
To facilitate deployment and management of these config files, I use [*GNU Stow*](https://www.gnu.org/software/stow/)

### Step 1: Initialize filters

You probably won't need all the configs in here. Luckily, *Stow* can be configured to ignore certain collections of files when deploying the configs. There are a number of presets in the `stow/` directory. 

Default on Ubuntu will look like:

```bash
cp stow/dot-base-stow-local-ignore .stow-local-ignore
cat stow/dot-ubuntu-stow-local-ignore >> .stow-local-ignore
```

### Step 2: Deploy

```bash
stow -v --dotfiles --target=$HOME .
```

*Stow* is very careful not to destroy any existing files you might have on your computer outside of the `Plumbus` repository. To perform a dry-run and see which files will be mapped where, append `--no`.

#### Troubleshooting

If *Stow* complains of a conflict, this means that one of the configs it wants to link already exists on the file system. There are a few ways to resolve this:
- Delete the target file it wants to link. Only do this if you want to overwrite the existing file on your machine.
- Append `--adopt` to the `stow` options. This will overwrite the `Plumbus` config with whatever exists on your machine, and will proceed with the deployment. This does not attempt to resolve conflicts.
- Manually resolve conflicts between the two files, then delete the existing file as before.

