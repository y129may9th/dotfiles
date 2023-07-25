## zsh-completions
chmod -R go-w /opt/homebrew/share

## Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock tilesize -int 55
defaults write com.apple.dock magnification -bool true

## Finder
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

## Trackpad
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1
defaults write -g com.apple.trackpad.scaling -float 15

killall Dock
killall Finder

# Install
gem update --system
xcode-select --install

if [ ! -x "`which brew`" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
  brew upgrade --all --cleanup
fi

brew install android-studio
brew install asdf
brew install bat
brew install fd
brew install ffmpeg
brew install fzf
brew install ghq
brew install htop
brew install httpie
brew install hub
brew install jq
brew install rmtrash
brew install ruby
brew install ruby-build
brew install tmux
brew install vim
brew install wget
brew install zsh
brew install zsh-completions
brew install zsh-autosuggestions

brew install --cask alfred
brew install --cask android-studio
brew install --cask appcleaner
brew install --cask authy
brew install --cask charles
brew install --cask docker
brew install --cask fork
brew install --cask imageoptim
brew install --cask warp
brew install --cask google-chrome
brew install --cask karabiner-elements
brew install --cask kindle
brew install --cask microsoft-powerpoint
brew install --cask microsoft-teams
brew install --cask now
brew install --cask sequel-pro
brew install --cask slack
brew install --cask tableplus
brew install --cask visual-studio-code
brew install --cask zoomus
brew install --cask 1password

# brew tap brona/iproute2mac
# brew install iproute2mac

## git
echo .DS_Store >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
