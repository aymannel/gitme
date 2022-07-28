# GitMe Zsh Script (beta)
### DESCRIPTION
Obsidian is pretty. It also makes editing README.md files very easy by providing a way of toggling (**⌘+E**) between a view of the raw, and rendered, README.md file. With the `gitme` command, maintaining source copies of all your github READMEs in a single Obsidian vault becomes very easy.

At the heart of **gitme** is the `gitme.zsh` script, a zsh script which overwrites the README.md file in a local repository with the most recent version in your READMEs Obsidian Vault.

**gitme** also acts as a git wrapper, and will `git add`, `git commit` and `git push` your README file after updating it.

### USAGE
To update one, or all, of your README files, type
```bash
gitme push [project name]
gitme push --all
```

Whilst you can revert back to the most recent version of a given README file, by typing;
```bash
gitme pull [project name]
```

### FEATURES
* Easily edit README files, with preview functionality, in Obsidian.
* Update local README copy, then git add, commit, and push in one command.
* Revert back to most recent version of README.
* Update either one or all READMe files.

### INSTALLATION
1. Copy gitme.zsh script to '/choose/dir/' 
3. Change permission of zsh script `sudo chmod +x scriptname.sh`