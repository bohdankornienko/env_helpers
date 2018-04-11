#!/bin/bash

function server_put()
{
    cred=$1
    local_path=$2
    server_path=$3
    scp -r ${local_path} ${cred}:${server_path}
}

function server_get()
{
    cred=$1
    server_path=$2
    local_path=$3
    scp -r ${cred}:${server_path} ${local_path}
}

alias gl='git log --all --oneline --graph --decorate -4'
alias ecmake='cmake -G "Eclipse CDT4 - Unix Makefiles"'
