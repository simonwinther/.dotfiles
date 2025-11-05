echo "Update package list"
sudo apt update -y

echo "Install base packages"
sudo apt install -y \
  git \
  curl \
  wget \
  unzip \
  ripgrep \
  fd-find \
  build-essential \
  python3 \
  python3-pip \
  tree-sitter-cli \
  tmux \
  zsh \
  fzf \
  stow
