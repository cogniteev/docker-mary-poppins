#!/bin/sh

is_hook_installed() {
  mary-poppins hooks config.js \
    | grep '^[[:space:]]*url:' \
    | awk '{print $2}' \
    | grep -q "$HOOK_URL"
}
if ! is_hook_installed ; then
  echo "Installing webhook..."
  mary-poppins install config.js
fi
echo "Starting mary-poppins..."
mary-poppins start config.js
