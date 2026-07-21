# Git basics and workflow

This repository includes helpful files and scripts to get you started with Git: cloning, creating branches, pushing, opening pull requests, merging, and pulling updates.

Quick clone

```
git clone git@github.com:rohithboda1234/main.git
cd main
```

Create a feature branch

```
# create and switch to a feature branch
git checkout -b feature/your-brief-description

# make changes, stage and commit
git add .
git commit -m "feat: short description"

# push and set upstream
git push -u origin feature/your-brief-description
```

Opening a Pull Request

- Push your branch to the remote (see above).
- Open a Pull Request on GitHub from your branch into `main`.
- Request reviews and address feedback.

Keeping your branch up-to-date

```
# fetch and merge main into your branch
git fetch origin
git checkout feature/your-brief-description
git merge origin/main

# or rebase if your team prefers a linear history
git rebase origin/main
```

Common helper script

There's a small helper script at `scripts/git-helpers.sh` to create a branch and push it. Make it executable:

```
chmod +x scripts/git-helpers.sh
./scripts/git-helpers.sh new feature/your-branch
```

Need more help?

See `CONTRIBUTING.md` and `GIT-CHEAT-SHEET.md` for a short guide and common commands.
# main