#!/bin/sh

is_hook_installed() {
  url=`grep '^[[:space:]]*url:' config.js | sed "s/.*'\(.*\)'.*/\1/"`
  mary-poppins hooks config.js \
    | grep '^[[:space:]]*url:' \
    | awk '{print $2}' \
    | grep -q "$url"
}
if ! is_hook_installed ; then
  echo "Installing webhook..."
  mary-poppins install config.js
fi
echo "Starting mary-poppins..."
mary-poppins start config.js
