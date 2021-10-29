#!/usr/bin/env bash

set -e

# prebuild the repo, so it is ready for development
./build.sh libs+clr -rc Release

# generate runsettings file to be able to debug tests
./dotnet.sh msbuild src/libraries/src.proj /t:GenerateRunSettingsFile /p:GenerateVsCodeRunSettings=true /p:EnableRunSettingsSupport=true /bl:artifacts/obj/vscode/runsettings.binlog