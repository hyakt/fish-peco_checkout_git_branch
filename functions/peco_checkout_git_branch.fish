function peco_checkout_git_branch
    git branch | peco | sed -e 's/^..\(.*\)/\1/' | read branch_name
    if test -n "$branch_name"
        echo "Swith branch to $branch_name"
        git checkout $branch_name
    end
    commandline -f repaint
end
