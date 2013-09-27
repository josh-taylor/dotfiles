# Load extra files
for file in ~/.{aliases,bash_prompt,exports,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

export PATH="$PATH:/Users/Josh/Server/vhosts/qresearch.dev/httpdocs/app/Console"
export PYENV_ROOT=/usr/local/opt/pyenv

eval "$(rbenv init -)"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

# Git completion
if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

