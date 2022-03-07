#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

version="$(cat "$SCRIPT_DIR/version")"
tag="packages/greeting/v$version"

git tag -a -m "Release $tag" "$tag"
git push origin "$tag"
