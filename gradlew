#!/usr/bin/env bash
# Delegates Gradle wrapper calls from the workspace root to the android_frontend module.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APP_DIR="${SCRIPT_DIR}/android_frontend"

if [ ! -f "${APP_DIR}/gradlew" ]; then
  echo "Error: android_frontend/gradlew not found. Ensure the android_frontend project exists." >&2
  exit 127
fi

cd "${APP_DIR}"
exec ./gradlew "$@"
