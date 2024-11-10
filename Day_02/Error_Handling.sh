#!/bin/bash

# The calling function will not run becaue of error and if condition will throw an error
function Calling() {
    sudo apt-get docker
}

if ! Calling; then
    echo "Failed to restart docker - Please write 'sudo apt-get install docker.io'"
    exit 1
fi