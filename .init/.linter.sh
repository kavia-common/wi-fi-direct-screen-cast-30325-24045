#!/bin/bash
cd /home/kavia/workspace/code-generation/wi-fi-direct-screen-cast-30325-24045/android_frontend
./gradlew lint
LINT_EXIT_CODE=$?
if [ $LINT_EXIT_CODE -ne 0 ]; then
   exit 1
fi

