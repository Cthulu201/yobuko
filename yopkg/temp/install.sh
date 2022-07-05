#!/usr/bin/env bash

# Test for directories and install files
if [[ -d "${HOME}/dev" ]]; then
    if [[ -d "${HOME}/dev/cmgr" ]]; then
        echo "cmgr already installed"
        exit 0
    else
        echo "${HOME}/dev already exists; creating cmgr directory"
        mkdir "${HOME}/dev/cmgr"
        cp -a "$(pwd)"/{cmgr,cpkg} "${HOME}/dev/cmgr/"
        chmod +x "${HOME}/dev/cmgr/cmgr"
        echo "cmgr installed"
        exit 0
    fi
else
    mkdir "${HOME}/dev" "${HOME}/dev/cmgr"
    cp -a "$(pwd)"/{cmgr,cpkg} "${HOME}/dev/cmgr/"
    chmod +x "${HOME}/dev/cmgr/cmgr"
    echo "cmgr installed"
    exit 0
fi
