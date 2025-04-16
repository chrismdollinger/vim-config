#!/usr/bin/zsh

readonly \
    REPO_CONFIG_DIR="$(realpath $(dirname ${(%):-%N:-'.'})/../vim)" \
    LOCAL_CONFIG_DIR="${HOME}/.vim"

if [[ -d ${LOCAL_CONFIG_DIR} ]]; then
    mv --interactive --verbose ${LOCAL_CONFIG_DIR} "${LOCAL_CONFIG_DIR}.old"
fi

ln --symbolic --verbose --interactive ${REPO_CONFIG_DIR} ${LOCAL_CONFIG_DIR}
