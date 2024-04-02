#! /bin/bash

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
