#!/bin/zsh
# Usage: scripts/newday.sh  -> creates days/day-NN.md from the template
cd "$(dirname "$0")/.." || exit 1
n=$(( $(ls days | grep -c '^day-') + 1 ))
f=$(printf "days/day-%02d.md" $n)
sed -e "s/{{N}}/$n/" -e "s/{{DATE}}/$(date +%Y-%m-%d)/" templates/day.md > "$f"
echo "Created $f"
