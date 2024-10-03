# navigation
alias ..='cd ..'
alias l='ls -l --color'
alias ll='ls -la --color'
alias cl='clear && printf "\e[3J"'

# git command
alias st='git status'
alias pl='git pull'
alias br='git branch -r'
alias ci='git branch -a | fzf | xargs git checkout'
alias ciD='git branch -a | fzf | xargs git branch -D'

# python
alias py='python3'
alias pip='pip3'
alias venv='source ./.venv/bin/activate'
alias de='deactivate'
alias test='py -m pytest ./tests'
alias cov='coverage run -m pytest tests'

# tmux shorthand
alias t='tmux'

# lf
export LF_CONFIG_HOME=~/.config/

lfcd() {
	LF_SHELLCD_TEMPDIR="$(mktemp -d -t lf-shellcd-XXXXXX)"
	export LF_SHELLCD_TEMPDIR
	lf -last-dir-path "$LF_SHELLCD_TEMPDIR/lastdir"

	if [ -e "$LF_SHELLCD_TEMPDIR/changecwd" ] && \
		dir="$(cat "$LF_SHELLCD_TEMPDIR/lastdir")" 2>/dev/null; then
		cd "$dir"
	fi
	rm -rf "$LF_SHELLCD_TEMPDIR"
	unset LF_SHELLCD_TEMPDIR
}

alias f=lfcd
