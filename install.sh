#!/bin/bash

DIR=$PWD

cd $HBP/Models/CDP4_models/

for p in *_poster; do
  already_present=`grep "CDP4_models/$p" ../_rpmbuild/models.txt`
  if [ -z "$already_present" ]; then
    echo "CDP4_models/$p" >> ../_rpmbuild/models.txt
  fi
done

../create-symlinks.sh

cd $DIR
