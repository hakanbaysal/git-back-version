#!/bin/sh

ARG=$1
if [ -z "$ARG" ];
then
      SHOW_REVISION=$(git rev-parse HEAD)
else
      SHOW=$(git show "$1" --pretty=format:"%H")
      SHOW_REVISION=$( echo $SHOW | awk -F" " '{print $9}')
fi
echo $SHOW_REVISION