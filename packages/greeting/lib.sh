#!/usr/bin/env bash

function greet() {
  # Greet with a typo
  echo "Hasdasdo, $1"
}
export -f greet
