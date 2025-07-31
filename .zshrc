# Enable prompt substitution
setopt PROMPT_SUBST

# Git branch function
git_branch() {
    local branch=$(git branch 2>/dev/null | grep '^*' | sed 's/* //')
    if [ -n "$branch" ]; then
        echo "<$branch>"
    fi
}

export PS1='%F{40}yutti@mac%f %F{15}:%f %F{39}%~%f 
%F{43}$(git_branch)%f
%F{15}$%f '