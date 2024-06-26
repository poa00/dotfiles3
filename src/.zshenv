#!/bin/zsh

# shellcheck source=/dev/null
[ -r "$HOME/.profile" ] &&
    . "$HOME/.profile"

[ -z "$(find "$HOME/.zshenv.d/enabled" -prune -empty 2>/dev/null || echo 'missing')" ] &&
    for f in "$HOME/.zshenv.d/enabled"/*; do
        # shellcheck source=/dev/null
        . "$f"
    done

command -v direnv >/dev/null 2>&1 &&
    eval "$(direnv hook zsh)" &&
    export DIRENV_LOG_FORMAT= &&
    [ "$(pwd)" != '/mnt/c/Windows/System32' ] &&
    direnv reload

export SHELL_SESSIONS_DISABLE=1
