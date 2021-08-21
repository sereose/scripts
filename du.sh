# Get available disk space
df -h

# Get the top 10 biggest folders in the current directory
du -h --max-depth=1 | sort -rh | head -10

# Get the top 10 biggest folders in the current directory and their first child directories
du -h --max-depth=2 | sort -rh | head -10

# Get sizes of all folders in the current directory
du -h --max-depth=2 | sort -rh

# On Mac OSX max depth 1
du -hd1 | sort -rh | head -10

# On Mac OSX max depth 2
du -hd2 | sort -rh | head -10
