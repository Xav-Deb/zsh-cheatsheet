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
- `git rebase -i HEAD~[n]` — Interactive rebase of last [n] commits
- `git rebase --abort` — Abort a rebase in progress

## Stash & Safety

- `git stash` — Stash uncommitted changes
- `git stash pop` — Apply and remove last stash
- `git stash list` — Show all stashes
- `git reflog` — Show history of HEAD (rescue lost commits)
- `git cherry-pick <hash>` — Apply a specific commit to current branch

## Remotes

- `git remote -v` — List all remotes
- `git remote add origin <url>` — Add a new remote
- `git fetch --all --prune` — Sync with remote and remove dead branches
