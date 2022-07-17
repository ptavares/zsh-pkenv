#!/usr/bin/env zsh

#####################
# COMMONS
#####################
autoload colors

#########################
# CONSTANT
#########################

GITHUB="https://github.com"
BOLD="bold"
NONE="none"

#########################
# PLUGIN MAIN
#########################

[[ -z "$PKENV_HOME" ]] && export PKENV_HOME="$HOME/.pkenv"

#########################
# Functions
#########################

_zsh_pkenv_log() {
  local font=$1
  local color=$2
  local msg=$3

  if [ $font = $BOLD ]
  then
    echo $fg_bold[$color] "[zsh-pkenv-plugin] $msg" $reset_color
  else
    echo $fg[$color] "[zsh-pkenv-plugin] $msg" $reset_color
  fi
}

_zsh_pkenv_install() {
  _zsh_pkenv_log $NONE "blue" "#################################"
  _zsh_pkenv_log $BOLD "blue" "Installing pkenv..."
  git clone "${GITHUB}/iamhsa/pkenv.git" "${PKENV_HOME}" >> /dev/null
  _zsh_pkenv_log $BOLD "green" "Install OK"
  _zsh_pkenv_log $NONE "blue" "#################################"
}

update_zsh_pkenv() {
  _zsh_pkenv_log $NONE "blue" "#################################"
  _zsh_pkenv_log $BOLD "blue" "Updating pkenv..."

  pushd "${PKENV_HOME}" > /dev/null
  if git pull --rebase --stat origin master
    then
      _zsh_pkenv_log $BOLD "green" "pkenv has been updated and/or is at the last version."
      popd > /dev/null
    else
      _zsh_pkenv_log $BOLD "red" "Error on updating. Please try again later."
  fi
  _zsh_pkenv_log $NONE "blue" "#################################"

  unset _zsh_pkenv_log
}

_zsh_pkenv_load() {
    # export PATH if needed
    local -r plugin_dir="$PKENV_HOME/bin:$PATH"
    # Add the plugin bin directory path if it doesn't exist in $PATH.
    if [[ -z ${path[(r)$plugin_dir]} ]]; then
        path+=($plugin_dir)
    fi
}


# install pkenv if it isnt already installed
[[ ! -f "$PKENV_HOME/bin/pkenv" ]] && _zsh_pkenv_install

# load pkenv if it is installed
if [[ -f "$PKENV_HOME/bin/pkenv" ]]; then
    _zsh_pkenv_load
fi

unset -f _zsh_pkenv_install _zsh_pkenv_load