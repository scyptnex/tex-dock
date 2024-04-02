#! /bin/bash

function main() {
    project_dir="$(readlink -f "$(dirname "$(dirname "$0")")")"
    docker build ${project_dir} -t tex-dock:auto
}

main "$@"
