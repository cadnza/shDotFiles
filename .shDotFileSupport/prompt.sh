# Set PS1
PS1='%F{1}%n%f%F{8}@%f%F{7}%B%m%b%f %F{69}%1~%f %# '

# Set right prompt with version control information
setopt PROMPT_SUBST
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats \
	'%B%F{6}%r%f%%b%F{8}→%f%F{214}%b%f%F{green}%c%f%F{red}%u%f'
zstyle ':vcs_info:*' actionformats \
	'%B%a%%b %B%F{6}%r%f%%b%F{8}→%f%F{214}%b%f%F{green}%c%f%F{red}%u%f'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '*'
zstyle ':vcs_info:*' unstagedstr '*'
precmd () { vcs_info }
RPROMPT='${vcs_info_msg_0_}'
