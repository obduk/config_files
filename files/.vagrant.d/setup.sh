#!/bin/bash
set -e

if which yum > /dev/null 2>&1; then
  install='yum install'
elif which apt-get > /dev/null 2>&1; then
  install='apt-get install --yes '
else
  echo "can't find package manager"
  exit 1
fi

$install \
  git \
  htop \
  tree

/home/vagrant/.config_files/bin/setup
