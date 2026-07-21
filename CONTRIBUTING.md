# Contributing guide

Thanks for contributing! This file explains the recommended Git workflow for this repository.

Branching model
- `main` is the protected default branch. Always branch off `main` for new work.
- Use branch name prefixes: `feature/`, `fix/`, `chore/`, `docs/`.

Creating a branch

```
git fetch origin
git checkout origin/main -b feature/your-brief-description
```

Commit messages
- Use short imperative prefixes: `feat:`, `fix:`, `chore:`, `docs:`.
- Keep the subject line short (<=72 chars) and add body if needed.

Pull requests
- Push your branch: `git push -u origin your-branch`
- Open a PR on GitHub targeting `main`.
- Add reviewers and address requested changes.

Keeping a branch updated

Option A — merge `main` into your branch (simple):

```
git fetch origin
git checkout your-branch
git merge origin/main
git push
```

Option B — rebase onto `main` (cleaner history):

```
git fetch origin
git checkout your-branch
git rebase origin/main
# resolve conflicts if any, then continue
git rebase --continue
git push --force-with-lease
```

Resolving conflicts
- Git will mark files with conflicts; edit them, remove conflict markers, then `git add` and continue the merge/rebase.

Code review and merging
- Wait for at least one approval if required.
- Merge with a merge commit or squash based on repo settings.

Deleting branches
- After a PR is merged, delete the remote branch on GitHub or locally:

```
git branch -d your-branch
git push origin --delete your-branch
```

Questions
- If you're unsure, ask a repository maintainer in a PR comment.
