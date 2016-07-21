#!/bin/bash

curl -LO https://omnitruck.chef.io/install.sh && sudo bash ./install.sh  && rm install.sh
UNPRIV_USER=$(whoami)
sudo UNPRIV_USER=$UNPRIV_USER chef-client --local-mode -c config.rb -j solo.json

