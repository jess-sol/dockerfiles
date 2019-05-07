#!/usr/bin/env bash
if [[ -n "$DEBUG" ]]; then
    set -x
fi

if [[ -n "$SSH_USER" ]]; then
    useradd "$SSH_USER"

    if [[ -n "$SSH_PASS" ]]; then
        passwd --stdin "$SSH_USER" <<< "$SSH_PASS"
    fi
fi

exec "$@"
