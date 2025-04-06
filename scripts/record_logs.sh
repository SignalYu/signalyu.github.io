current_time=$(date '+%Y-%m-%d %H:%M:%S %p')
file="/Users/signalfish/signal/Writing-Workspace/blog/blogApp/content/posts/3-humanities/personal-growth/practice/logs/$1.md"
desc="$2"
error="${3:-No Error}"  # Default value for error if not provided

echo "- \`$current_time\`:" >> "$file"
echo "   - \`desc\`: $desc" >> "$file"
echo "   - \`error\`: $error" >> "$file"


# 1. vim ~/.bash_profile
# 2. alias practiced = bash /Users/signalfish/signal/Writing-Workspace/blog/blogApp/static/scripts/record_logs.sh
# 3. Use:
    # practiced "logfile name" "Desc"
    # practiced "logfile name" "Desc" "Error"
