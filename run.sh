cat package.json | sed -n '/^.*\'scripts\":'.*$/,/^.*},.*$/p' | sed '$d' | awk '{$1=$1};1' | tail -n +2 | sed 's/\(.*\),/\1 /' | sort -r | fzf | cut -f1 -d' ' | sed 's/.$//' | xargs yarn
