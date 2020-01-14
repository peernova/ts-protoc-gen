#!/bin/sh
echo
if [ -a .commit ]
    then
    pwd
    rm .commit
    pkg . --targets node10-linux-x64,node10-macos-x64 --out-path ./binaries/.
    git add ./binaries/ts-protoc-gen-macos
    git add ./binaries/ts-protoc-gen-linux
    git commit --amend -C HEAD --no-verify
fi
exit
