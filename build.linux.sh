#!/bin/bash

# Includes for San Andreas Multiplayer+
# 2018 - 2023, Ivan Kmeťo
#
# CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
# https://creativecommons.org/publicdomain/zero/1.0/


COMPILER_PATH=pawncc
INCLUDE_PATH=include


./$COMPILER_PATH -i$INCLUDE_PATH testmpp.pwn
