current_time=$(date '+%Y-%m-%d %H:%M:%S %p')
file="/Users/signalfish/signal/Writing-Workspace/blog/blogApp/content/posts/3-humanities/personal-growth/practice/logs/logs.md"
subject="$1"
desc="$2"
weak="${3:-None}"  # Default value for weakness if not provided

echo -e "\n# $current_time\n" >> "$file"
echo -e "- \`subject\`: $subject" >> "$file"
echo -e "- \`desc\`: $desc" >> "$file"
echo -e "- \`weakness\`: $weak" >> "$file"


# 1. vim ~/.bash_profile
# 2. alias practiced = bash /Users/signalfish/signal/Writing-Workspace/blog/blogApp/static/scripts/record_logs.sh
# 3. Use:
    # practiced "Subject" "Desc"
    # practiced "Subject" "Desc" "Weakness"