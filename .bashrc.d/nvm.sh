# mkdir -p $HOME/.bashrc.d/
# ln -s .../nvm $HOME/.bashrc.d/nvm
# echo 'for f in "$HOME"/.bashrc.d/* ; do . "$f" ; done' >> $HOME/.bashrc

# NVM
[ -e "$HOME/.nvm/nvm.sh" ] && . "$HOME/.nvm/nvm.sh" && nvm use v0.10 > /dev/null
