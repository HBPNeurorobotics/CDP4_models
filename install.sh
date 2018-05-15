#!/bin/bash

DIR=$PWD

cd $HBP/Models/CDP4_models/

for p in *_poster; do
  echo "CDP4_models/$p" >> ../_rpmbuild/models.txt
done

../create-symlinks.sh

cd $DIR
