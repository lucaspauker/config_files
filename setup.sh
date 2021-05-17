echo "vimrc"
rm ~/.vimrc
cp ./.vimrc ~/

echo "vim directory"
rm -rf ~/.vim
cp -r ./.vim ~/

echo "ssh"
rm -rf ~/.ssh
cp -r ./.ssh ~/

echo "bash_profile"
rm  ~/.bash_profile
cp ./.bash_profile ~/

echo "iterm2_shell_integration"
rm ~/.iterm2_shell_integration.bash
cp ./.iterm2_shell_integration.bash ~/

echo "gitconfig"
rm ~/.gitconfig
cp ./.gitconfig ~/

echo "source"
source ~/.iterm2_shell_integration.bash
source ~/.bash_profile

echo "setup complete"
