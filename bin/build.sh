#! /bin/bash

function main() {
    local project_dir="$(readlink -f "$(dirname "$(dirname "$0")")")"
    docker build "${project_dir}" -t tex-dock:auto
}

main "$@"
