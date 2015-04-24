#!/bin/bash

# This script must be executed by a root account

# Install node.js
# Taken from https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager
curl -sL https://deb.nodesource.com/setup | bash -
apt-get install -y nodejs

# Grab gateblu
apt-get install -y git
git clone https://github.com/octoblu/gateblu
cd gateblu

# Install deps
npm install

# Start the service
npm start

# Check it now exists
npm ls | grep blu
