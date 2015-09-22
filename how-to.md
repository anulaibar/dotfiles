## Jira

    https://jira.blocket.bin/secure/RapidBoard.jspa?rapidView=125

## Git clone

     git clone ssh://git@stash.blocket.bin:7999/bl/blocket.git
     git clone ssh://git@stash.blocket.bin:7999/bl/pysite.git

## Source functions

    . ./blocket/util/blocket_functions
    . pysite/scripts/setup-path.sh

## Functions

    blocket install
    fixads

## Make

    make rinfo
    make spiduser-olle
    make update-aindex

## Git clean

    git clean -fdx

## Jenkins

    copy existing job stable_c6

## Add hosts

    host jira.blocket.bin | cut -d' ' -f4 -f1 >> /etc/hosts
