
#!/bin/bash

while true; do
    # Prompt user for Git command number
    echo "Select a Git command to execute (or enter 'exit' to quit):"
    echo "1. git status"
    echo "2. git add"
    echo "3. git commit"
    echo "4. git branch"
    echo "5. git remote add"
    echo "6. git push"
    read -p "Enter the command number: " cmd_num

    case $cmd_num in
        1)
            # Run git status
            git status
            ;;
        2)
            # Prompt for file name to add
            read -p "Enter the name of the file to add: " file_name

            # Run git add with user input
            git add $file_name
            ;;
        3)
            # Prompt for commit message
            read -p "Enter a commit message: " commit_msg

            # Run git commit with user input
            git commit -m "$commit_msg"
            ;;
        4)
            # Prompt for branch name
            read -p "Enter a new branch name: " branch_name

            # Run git branch with user input
            git branch -m $branch_name
            ;;
        5)
            # Prompt for GitHub repository URL
            read -p "Enter the GitHub repository URL (e.g. https://github.com/narendrs0409/): " github_url

            # Prompt for repository name
            read -p "Enter the name of the repository: " repo_name

            # Run git remote add with user input
            git remote add origin "$github_url$repo_name.git"
            ;;
        6)
            # Prompt for branch name
            read -p "Enter the branch name to push to: " push_branch_name

            # Run git push with user input
            git push -u origin $push_branch_name
            ;;
        exit)
            # Exit the script
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid command number"
            ;;
    esac
done

