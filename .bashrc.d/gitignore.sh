# mkdir -p $HOME/.bashrc.d/
# ln -s .../gitignore $HOME/.bashrc.d/gitignore
# echo 'for f in "$HOME"/.bashrc.d/* ; do . "$f" ; done' >> $HOME/.bashrc

# gitignore
# See https://www.gitignore.io/
function gitignore {
  curl -L -s "https://www.gitignore.io/api/$1"
}
