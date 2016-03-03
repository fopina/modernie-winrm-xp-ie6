#!/bin/bash

set -e

cd $(dirname $0)
vagrant package --output ../data/package.box --vagrantfile ./VagrantFile4Package $*
du -h ../data/package.box
