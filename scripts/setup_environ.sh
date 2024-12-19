#!/bin/bash
if [[ "$PWD" == *scripts ]]; then
   cd ..
fi
if [ -e ./imgui-java]; then
   cd imgui-java
   git reset --hard
   git pull
else
   git clone https://github.com/ocornut/imgui.git
   cd imgui-java
fi
git apply --reject --whitespace=fix ../scripts/enableexecuteable
