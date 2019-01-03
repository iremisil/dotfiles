sudo -v 
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

yes '' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

brew tap caskroom/cask
brew tap caskroom/versions

brew cask install java
brew cask install java8

brew install zsh 
brew install zsh-completions
chsh -s `which zsh`
dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/themes/half-life.zsh-theme > ~/.oh-my-zsh/custom/themes/half-life.zsh-theme

brew install coreutils	
brew install git
brew install fasd
brew install autojump
brew install the_silver_searcher
brew install bat
brew install httpie
brew install jenv
brew install jq
brew install magic-wormhole
brew install tig
brew install stow
brew install tree
brew install diff-so-fancy

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
brew cask install flycut
brew cask install typora
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

#ssh key generation
mkdir ~/.ssh
ssh-keygen -t rsa -b 4096  -N "" -f ~/.ssh/id_rsa
eval "$(ssh-agent -s)"
echo "Host *
 AddKeysToAgent yes
 UseKeychain yes
 IdentityFile ~/.ssh/id_rsa" > ~/.ssh/config
ssh-add -K ~/.ssh/id_rsa

mkdir ~/Workspace

set -x

stow -t ~ git
stow -t ~ zsh

jenv rehash

sudo shutdown -r now
