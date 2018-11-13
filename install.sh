sudo -v 
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

yes '' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

brew tap caskroom/cask

brew cask install java

brew install coreutils	
brew install git
brew install zsh 
brew install zsh-completions
brew install fasd
brew install autojump

brew install fzf
brew install the_silver_searcher
brew install bat
brew install httpie
brew install jenv
brew install jq
brew install magic-wormhole
brew install sbt
brew install tig
brew install youtube-dl
brew install vagrant
brew install vagrant-completion
brew install stow
brew install tree
brew install node
brew install awscli

dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/themes/half-life.zsh-theme > ~/.oh-my-zsh/custom/themes/half-life.zsh-theme

brew cask install iterm2
brew cask install sublime-text
brew cask install google-chrome
brew cask install intellij-idea
brew cask install calibre
brew cask install karabiner
brew cask install karabiner-Elements
brew cask install bitbar
brew cask install postman
brew cask install spotify
brew cask install telegram
brew cask install flycut
brew cask install typora
brew cask install tunnelblick
brew cask install spectacle
brew cask install docker

brew update
brew upgrade 

cp -rf spectacle/Shortcuts ~/Library/Application Support/Spectacle
cp -rf bitbarplugins ~/Documents/
cp -rf karabiner ~/.config/

#iterm preferences
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dotfiles/iterm"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

set -x

stow -t ~ git
stow -t ~ zsh

jenv rehash
