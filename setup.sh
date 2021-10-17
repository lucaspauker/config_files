DIR=~

echo "vimrc"
rm $DIR/.vimrc
cp ./.vimrc $DIR

echo "vim directory"
rm -rf $DIR/.vim
cp -r ./.vim $DIR

echo "ssh"
rm -rf $DIR/.ssh
cp -r ./.ssh $DIR

echo "bash_profile"
rm  $DIR/.bash_profile
cp ./.bash_profile $DIR

echo "iterm2_shell_integration"
rm $DIR/.iterm2_shell_integration.bash
cp ./.iterm2_shell_integration.bash $DIR

echo "gitconfig"
rm $DIR/.gitconfig
cp ./.gitconfig $DIR

echo "source"
source $DIR/.iterm2_shell_integration.bash
source $DIR/.bash_profile

echo "setup complete"
