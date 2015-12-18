# Blocket-blocket

    make rc ri rd
    make rinfo
    make spiduser-olle
    make update-aindex
    fixads

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

# Tools

[httpie](https://github.com/jkbrzt/httpie) - a command line HTTP client:

    pip install httpie
