# Blocket-blocket

    make rc ri rd
    make rinfo
    make spiduser-olle
    make update-aindex
    make approve-ads
    fixads

## Inspect variables

    document.cookie = "debug_activated=1; domain=.blocket.bin; path=/"

## Troubleshoot message center

Find configs with a message center url

    find . -type f -name "*bconf*" | xargs grep "common.messagecenter.api.url=http" --color

Check which message center url is loaded

    printf "cmd:bconf\ncommit:1\nend\n" | nc localhost 22605 | grep messagecenter

Use pre env for message center (deprecated)

    make messagecenter-pre

Change mc env

    vi build/regress/conf/messagecenter_dev_keys.bconf

Check if mc user id is set in db

    make psql
    select * from mc_users;
    select * from account_emails;

Check if mc user id is stored in redis

    redis-cli -p 22087
    monitor

## Links

* [Mobile](http://dev35.blocket.bin:23260/)
* [Desktop](http://dev35.blocket.bin:23216/)

## Tests

    vi regress/final/Makefile   # Check names of testsuites
    make rs-1000ads             # Run testsuite 1000ads

# Pysite

## Links

* [Mobile](http://dev35.blocket.bin:23296/konto/meddelanden)
* [Desktop SSL](https://dev35.blocket.bin:23258/konto/meddelanden)
* [Desktop](http://dev35.blocket.bin:23259/konto/meddelanden)

## Debug

Run `blocket debug`, then go to [http://dev35.blocket.bin:23293/konto/meddelanden](http://dev35.blocket.bin:23293/konto/meddelanden)

# QA

    ssh ollhel1@dev35       # Connect to dev host
    ssh ladmin@n.blcoket.se # Connect to QA gateway
    ssh ladmin@https-2      # Connect to specific QA

## Build

    git clean -fdx
    make rc ri rd && make rpm-qa
    qactl
    qactl create ikeafix

## Approve ad in control panel

Login https://nomc-www3.blcoket.se/controlpanel

    Oscar
    11111

'Sök annons', 'Cleara', 'Godkänn'

## Re-index ads

    ssh ladmin@s.blocket.se
    ssh ikeafix-2
    sudo su - bsearch
    crontab -l # Annons-indexering körs random varje minut
    /opt/blocket/bin/aindex_update.sh push_export=1

# Tools

[httpie](https://github.com/jkbrzt/httpie) - a command line HTTP client:

    pip install httpie
