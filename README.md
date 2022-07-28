# GitMe - Maintaining README files in Obsidian Vault

![obsidian](img/obsidian.png)

## DESCRIPTION
Manage your github repos' README files with Obsidian and GitMe. By having all READMEs in one place, and with Obsidian's live markup previewer, writing and updating READMEs has never been easier! 

At the heart of GitMe is a z-shell script that updates the `README.md` file in the current directory with the corresponding file in your Obsidian Vault. GitMe then acts as a git wrapper, and executes `git add`, `git commit` and `git push` your README file.

It is also possible to revert to previous versions of your README file using the `gitme revert` command, where both copies of README on your github and Obsidian are updated accordingly.

## USAGE
##### Update README edited in Obsidian
```bash
gitme update [name of obsidian file]
```

##### Revert back to most recent version of README
```bash
gitme revert [name of obsidian file]
```

##### Revert n commits back
```bash
gitme revert [name of obsidian file] n
```

###### NOTE -- MUST BE IN PROJECT DIRECTORY.

## FEATURES
* Easily edit README files, with preview functionality, in Obsidian.
* Update local README copy, then git add, commit, and push in one command.
* Revert back to specific version of README.
* Update either one or all README files.

## INSTALLATION
1. Copy `gitme.zsh` script to `/usr/local/bin` or some other location in `$PATH`.
2. Change permissions to make executable: `sudo chmod +x gitme`.
3. Edit the script and change `path_obsidian='path/to/obsidian'` to the Obsidian Vault or folder containing your README files.
4. Create an alias in your shell configuration file to the `gitme.zsh` script.