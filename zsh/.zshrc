## my zshrc

bindkey -v

####################################
# PATH
#####################################
path=(
  $HOME/gems/bin
  $HOME/.gem/ruby/2.7.0/bin
  $path 
  ~/bin
  ~/go/bin
  ~/.local/bin/
  /usr/local/texlive/2020/bin/x86_64-linux
)

fpath+=$HOME/.zinit/plugins/sindresorhus---pure
fpath+=$HOME/code/spaceship-prompt

####################################
# ENV
#####################################
export GEM_HOME="$HOME/gems"


####################################
# prompt
#####################################
autoload -U promptinit; promptinit
#prompt spaceship
prompt pure

####################################
# misc
#####################################
kitty + complete setup zsh | source /dev/stdin

# alias jnethack='cocot -t UTF-8 -p EUC-JP -- jnethack'
#ncmatrix -s


####################################
# zinit setting
#####################################

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

zinit ice wait"0" atinit"zpcompinit; zpcdreplay"
zinit light zdharma/fast-syntax-highlighting

zinit ice wait"0"
zinit light zsh-users/zsh-autosuggestions

zinit light zsh-users/zsh-completions


