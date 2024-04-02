#! /bin/bash

set -eu

function main() {
  docker run \
      --interactive \
      --tty \
      --rm \
      --volume "$(pwd)":/tex-dock \
      tex-dock:auto \
      "$@"
}

main "$@"
