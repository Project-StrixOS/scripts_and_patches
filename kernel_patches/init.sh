#!/bin/bash

git reset --hard HEAD
git clean -df
rm KernelSU -rf

cd /data/extra/susfs4ksu
git reset --hard
git clean -df
git pull

cd /data/extra/SukiSU_patch
git reset --hard
git clean -df
git pull

