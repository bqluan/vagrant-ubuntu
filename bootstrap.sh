#!/bin/bash
set -o errexit

# Set timezone to CST
timedatectl set-timezone Asia/Shanghai

# Use apt sources from China
cat > /etc/apt/sources.list <<-EOF
deb http://cn.archive.ubuntu.com/ubuntu xenial main restricted universe multiverse
deb http://cn.archive.ubuntu.com/ubuntu xenial-updates main restricted universe multiverse
deb http://cn.archive.ubuntu.com/ubuntu xenial-backports main restricted universe multiverse
deb http://security.ubuntu.com/ubuntu xenial-security main restricted universe multiverse
EOF
apt-get clean
