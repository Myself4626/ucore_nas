#!/usr/bin/env bash
set -euo pipefail

# Hardcode versions or wire in your auto-update later
repo="https://raw.githubusercontent.com/automorphism88/snapraid-btrfs/master/snapraid-btrfs"

curl -sSL ${repo} -o /usr/bin/snapraid-btrfs
chmod +x /usr/bin/snapraid-btrfs