# git

## Branches

- `git branch` — List branches
- `git switch <branch>` — Switch branch
- `git switch -c <branch>` — Create and switch branch

## Commit

- `git commit -m "<msg>"` — Commit with message
- `git commit --amend` — Amend last commit

## Rebase

- `git rebase <branch>` — Rebase onto branch

```sh
git rebase -i HEAD~3
```

> ⚠️ Avoid rebasing public branches
