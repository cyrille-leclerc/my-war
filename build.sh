#!/usr/bin/env bash

if [ -r "setenv.sh" ]; then
  . "setenv.sh"
fi

mvnd -X verify
