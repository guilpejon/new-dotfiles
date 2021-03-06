# Install Rosetta 2
/usr/sbin/softwareupdate --install-rosetta --agree-to-license

# Intall xcode
xcode-select --install

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/guilpejon/.zprofile

# Install iterm2
brew install iterm2

# Install lunarvim dependencies
brew install neovim
brew install yarn
brew install npm
curl https://sh.rustup.rs -sSf | sh
# Install lunarvim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
echo "export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH" >> ~/.zshrc

# Install zsh and plugins
brew install zsh
mkdir ~/.zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

# Install powerlevel10k
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc

# Install common apps
brew install slack
brew install spotify
brew install notion
brew install telegram
brew install whatsapp
brew install 1password

# Install dev tools
cargo install bat exa tokei ytop tealdeer grex zoxide git-delta
brew install watch
brew install wget
brew install wireguard-tools
brew install gh
brew install cask
brew install --cask ngrok
brew install redis
brew install postgresql
brew install ansible
brew install gpg
brew install keybase
brew install tmate

# Heroku and heroku-accounts to manage multiple heroku accounts
brew tap heroku/brew
brew install heroku
heroku plugins:install heroku-accounts

# Ctags
brew install ctags
alias ctags="`brew --prefix`/bin/ctags"
alias ctags >> ~/.bashrc
