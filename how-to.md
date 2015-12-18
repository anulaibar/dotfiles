# Blocket-blocket
## Make

    make rc ri rd
    make rinfo
    make spiduser-olle
    make update-aindex

## Functions

    fixads

## Ports

    http://dev35.blocket.bin:23260/ # Mobile
    http://dev35.blocket.bin:23216/ # Desktop

## Tests

    vi regress/final/Makefile   # Check names of testsuites
    make rs-1000ads             # Run testsuite 1000ads


# Tools

## httpie

    pip install httpie          # A command line HTTP client

# Pysite

## Ports

    http://dev35.blocket.bin:23296/konto/meddelanden  # Mobile
    https://dev35.blocket.bin:23258/konto/meddelanden # Desktop SSL
    http://dev35.blocket.bin:23259/konto/meddelanden  # Desktop
    http://dev35.blocket.bin:23293/konto/meddelanden  # Debug, start debug server by running `blocket debug`

# QA

    ssh ollhel1@dev35       # Connect to dev host
    ssh ladmin@n.blcoket.se # Connect to QA gateway
    ssh ladmin@https-2      # Connect to specific QA
