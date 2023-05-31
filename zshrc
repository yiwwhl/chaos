# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Network Proxy
export https_proxy=http://127.0.0.1:6152
export http_proxy=http://127.0.0.1:6152
export all_proxy=socks5://127.0.0.1:6153

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
git
zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# Fnm
eval "$(fnm env --use-on-cd)"

# Alias
alias tree="exa -T"
alias ls="lsd"
alias ll="lsd -l"
alias vi="nvim"
alias vim="nvim"
alias c="code ."
alias ct="tmux new -s yiwwhl"
alias t="tmux attach -t yiwwhl"
alias d="tmux detach"
alias rp="ssh -f -NR 6152:localhost:6152 yiwwhl && ssh -f -NR 6153:localhost:6153 yiwwhl"
alias wx="nohup /Applications/WeChat.app/Contents/MacOS/WeChat > /dev/null 2>&1 &"
alias adf="rcup -v -x LICENSE -x README.md"
alias ddf="rcdn -v"
alias f="fuck"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The Fuck
eval $(thefuck --alias)
