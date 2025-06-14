# Add user configurations here
# For HyDE to not touch your beloved configurations,
# we added 2 files to the project structure:
# 1. ~/.user.zsh - for customizing the shell related hyde configurations
# 2. ~/.zshenv - for updating the zsh environment variables handled by HyDE // this will be modified across updates

#  Plugins 
# oh-my-zsh plugins are loaded  in ~/.hyde.zshrc file, see the file for more information
plugins=( git sudo zsh-256color zsh-autosuggestions zsh-syntax-highlighting )

#  Aliases 
# Add aliases here
alias timefix='timedatectl set-ntp true'
alias ssh='kitten ssh'

#  This is your file 
# Add your configurations here

# bun completions
[ -s "/home/asel/.bun/_bun" ] && source "/home/asel/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# nvm
source /usr/share/nvm/init-nvm.sh

# Initialize Starship
eval "$(starship init zsh)"

# export EDITOR=nvim
export EDITOR=code

# unset -f command_not_found_handler # Uncomment to prevent searching for commands not found in package manager
