#!/usr/bin/env bash

if [[ $# == 0 ]]; then
  echo 'Error: specify command'
  echo 'available commands:'
  echo ' build - install and build'
  echo ' other (like bash)'
  exit
fi

case "$1" in
build)
  npm ci && npm run build
  ;;
*)
  exec "$@"
  ;;
esac