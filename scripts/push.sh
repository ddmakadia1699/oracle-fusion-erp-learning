#!/bin/zsh
# Usage: scripts/push.sh  -> logs today in TRACKER.md, commits "Day NN", pushes
cd "$(dirname "$0")/.." || exit 1
last=$(ls days | grep '^day-' | sort | tail -1)
[ -z "$last" ] && { echo "No day file yet. Run scripts/newday.sh"; exit 1; }
n=${last#day-}; n=${n%.md}
topic=$(grep -m1 '^\*\*Topic:\*\*' "days/$last" | sed 's/\*\*Topic:\*\* *//')
grep -q "| $n |" TRACKER.md || echo "| $n | $(date +%Y-%m-%d) | ${topic:-—} | ✅ |" >> TRACKER.md
git add -A && git commit -qm "Day $n: ${topic:-learning notes}" && git push -u origin main
