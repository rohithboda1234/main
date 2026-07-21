# Git cheat sheet

Clone
```
git clone git@github.com:rohithboda1234/main.git
```

Basic status and history
```
git status
git log --oneline --graph --decorate --all
```

Branches
```
git branch            # list local branches
git branch -a         # list all branches
git checkout -b name  # create and switch
git switch name       # switch to branch
```

Push/pull
```
git push              # push current branch
git push -u origin name  # push and set upstream
git fetch origin
git pull              # fetch + merge
```

Stashing
```
git stash
git stash pop
```

Undo
```
git restore <file>            # discard changes to a file (git 2.23+)
git checkout -- <file>        # older syntax
git revert <commit>           # create a new commit that undoes a commit
git reset --hard <commit>     # dangerous: move HEAD and discard work
```

Rebase and merge
```
git rebase origin/main
git merge origin/main
```

Help
```
git help <command>
```
