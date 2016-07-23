#!/bin/bash

curl -LO https://omnitruck.chef.io/install.sh && sudo bash ./install.sh  && rm install.sh
UNPRIV_USER=$(whoami)
if [ ! -d "$DIRECTORY" ]; then
    tar -xvzf cookbooks-vendor.tar.gz berks-cookbooks/
fi
sudo UNPRIV_USER=$UNPRIV_USER chef-client --local-mode -c config.rb -j solo.json

