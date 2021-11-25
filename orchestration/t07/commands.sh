#!/bin/bash

which -s terraform
if [[ $? != 0 ]]; then
    echo "installing terraform"
    brew install terraform
    echo "terraform successfully installed"
else
    echo "terraform already installed"
fi
