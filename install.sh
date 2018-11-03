/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask

brew cask install java

brew install stow git zsh zsh-completions fasd fzf the_silver_searcher bat httpie jenv jq magic-wormhole sbt tig youtube-dl vagrant

sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/themes/half-life.zsh-theme > ~/.oh-my-zsh/themes/half-life.zsh-theme

brew cask install iterm2 sublime-text google-chrome intellij-idea calibre karabiner
brew cask install bitbar postman spotify telegram flycut typora tunnelblick spectacle

cp iterm/* ~/Library/Preferences
cp spectacle/Shortcuts ~/Library/Application Support/Spectacle
cp bitbarplugins ~/Documents/
cp karabiner ~/.config/

set -x

stow -t ~ git
stow -t ~ fzf
stow -t ~ zsh
