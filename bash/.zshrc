# reference docs: https://support.apple.com/zh-cn/HT208050

# Command Line Tools
# xcode-select --install

export PS1="%11F%1~%f \$ "
# export PS1="%10F%m%f:%11F%1~%f \$ "

# export ZSH_THEME='robbyrussell'
export ZSH_THEME='bira'

# https://unix.stackexchange.com/questions/167582/why-zsh-ends-a-line-with-a-highlighted-percent-symbol
export PROMPT_EOL_MARK=''

# Title
export PROMPT_COMMAND='echo -ne "\033]0;`basename $PWD`\007"'
export DISABLE_AUTO_TITLE=true
precmd() {
	# print -Pn - '\e]0;%2~\a' # Exp. %1, %2, ...
	print -Pn - "\e]1;$PWD\a"
}

# Use brew install plugins
export plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

[ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && . /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
