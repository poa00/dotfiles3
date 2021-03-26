#!/bin/sh
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"

# Fix Ansible
export ANSIBLE_PYTHON_INTERPRETER="$(which python)"
