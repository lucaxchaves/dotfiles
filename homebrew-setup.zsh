# Check for Homebrew to be present, install if it's missing
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

PACKAGES=(
    alacritty
    antigen
    awscli
    bat
    bottom
    exa
    fd
    fzf
    gh
    git-delta
    gitui
    jq
    pyenv
    procs
    ripgrep
    sd
    starship
    tldr
    virtualenv
    zoxide
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

# link readline
brew link --force readline


echo "Cleaning up..."
brew cleanup
