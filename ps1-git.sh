#to be pasted in .bashrc or bash_profile

parse_git_branch() {
     local GIT_CURRENT_BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')
     if [ -n "$GIT_CURRENT_BRANCH" ]; then
        echo -n "$GIT_CURRENT_BRANCH:"
     fi
}


PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;35m\]$(parse_git_branch)\[\033[00m\]\[\033[01;34m\]\w\[\033[00m\]\$ '

