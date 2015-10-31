#!/bin/bash

# Ensure that the following actions
# are made relative to this file's path
# http://mywiki.wooledge.org/BashFAQ/028
cd "$(dirname "$BASH_SOURCE")"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Load utils

if [ -x 'utils.sh' ]; then
    source 'utils.sh' || exit 1
else
    printf "Error! utils.sh was not found. Exiting\n"
    exit 1
fi

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# ask_for_sudo

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Begin script

ask_for_confirmation "Run command 'ls'?"

if answer_is_yes; then
    execute "ls" \
      "Ran 'ls' command"

else
    print_error "You said no!"
fi
