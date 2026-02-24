#!/bin/sh
alias g='git'  # chris at machine uses lazygit
# alias lvim="env TERM=wezterm lvim"
# alias nvim="env TERM=wezterm nvim"

# Remarkable (DON't know what it is picked from someone elses config)
# alias remarkable_ssh='ssh root@10.11.99.1'
# alias restream='restream -p'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias nvimrc='nvim ~/.config/nvim/'
alias zshrc='code ~/.config/zsh'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# get top process eating memory
# alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
# alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# # systemd
# alias mach_list_systemctl="systemctl list-unit-files --state=enabled"

# alias mach_java_mode="export SDKMAN_DIR="$HOME/.sdkman" && [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh""


case "$(uname -s)" in

Darwin)
	# echo 'Mac OS X'
	alias ls='ls -G --group-directories-first'
	;;

Linux)
	alias ls='ls --color=auto --group-directories-first'
	;;

CYGWIN* | MINGW32* | MSYS* | MINGW*)
	# echo 'MS Windows'
	;;
*)
	# echo 'Other OS'
	;;
esac