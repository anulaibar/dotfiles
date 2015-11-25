## Jira

    https://jira.blocket.bin/secure/RapidBoard.jspa?rapidView=125

## Git clone

     git clone ssh://git@stash.blocket.bin:7999/bl/blocket.git
     git clone ssh://git@stash.blocket.bin:7999/bl/pysite.git

## Setup

    . ./blocket/util/blocket_functions
    blocket install
    . pysite/scripts/setup-path.sh

## Make

    make rc ri rd
    make rinfo
    make spiduser-olle
    make update-aindex

## Functions

    fixads

## Git clean

    git clean -fdx

## Jenkins

    copy existing job stable_c6

## Add hosts

    host jira.blocket.bin | cut -d' ' -f4 -f1 >> /etc/hosts

## Shell

    https://github.com/jimeh/git-aware-prompt

## httpie

    pip install httpie

## Ports

### Pysite

    http://dev35.blocket.bin:23296/konto/meddelanden  # Mobile
    https://dev35.blocket.bin:23258/konto/meddelanden # Desktop SSL
    http://dev35.blocket.bin:23259/konto/meddelanden  # Desktop
    http://dev35.blocket.bin:23293/konto/meddelanden  # Debug, start debug server by running `blocket debug`

### Blocketblocket

    http://dev35.blocket.bin:23260/ # Mobile
    http://dev35.blocket.bin:23216/ # Desktop

## Blocketblocket tests

    vi regress/final/Makefile   # Check names of testsuites
    make rs-1000ads             # Run testsuite 1000ads

## SSH to a QA

    ssh ollhel1@dev35       # Connect to dev host
    ssh ladmin@n.blcoket.se # Connect to QA gateway
    ssh ladmin@https-2      # Connect to specific QA

## Proxy in regress

Configure npm to use the dev proxy to install NPM packages

    npm config set proxy devproxy:3128
    npm config set https-proxy devproxy:3128

Configure git to use the dev proxy

    git config --global http.proxy devproxy:3128
    git config --global https.proxy devproxy:3128

