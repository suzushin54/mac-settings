#!/bin/bash

REP_PATH=~/rep/mac-settings

xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ansible

git clone https://github.com/suzushin54/mac-settings.git ${REP_PATH}
cd ${REP_PATH}
ansible-playbook -i inventory/localhost localhost.yml
