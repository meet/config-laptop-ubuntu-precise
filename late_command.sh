#!/bin/bash

# Make an account for the students.
useradd -m -p '$1$j5yXLcGq$ovbtMtTUaQgjqnCr6wf0//' meet-student
#usermod -p $1$j5yXLcGq$ovbtMtTUaQgjqnCr6wf0// meet-student

# Configuration files
REPO=config-laptop-ubuntu-precise
( cd / \
  && git clone --no-checkout https://github.com/meet/$REPO.git \
  && mv $REPO/.git / \
  && git checkout --force \
  && rm -rf $REPO \
  && git config status.showUntrackedFiles no )

# sudo
chmod 440 /etc/sudoers.d/*
