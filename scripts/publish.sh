#!/usr/bin/env bash
#
# Environment variables:
#
# * `NODE_INSTALLER`: Which Node.js package manager to use (`yarn` or `npm`). Defaults to detecting
#   which package manager was used on the app via `yarn-or-npm` (which is used by Electron Forge).
#

set -e

args=()

if [[ "$NODE_INSTALLER" = "npm" ]]; then
  npm run publish
elif [[ "$NODE_INSTALLER" = "yarn" ]]; then
  yarn publish
else
  "$(npm bin)"/yarn-or-npm run publish"
fi
