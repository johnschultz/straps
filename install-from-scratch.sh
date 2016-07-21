#!/bin/bash

curl -LO https://omnitruck.chef.io/install.sh && sudo bash ./install.sh  && rm install.sh
sudo chef-client --local-mode -c config.rb -j solo.json

