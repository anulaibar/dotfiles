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

