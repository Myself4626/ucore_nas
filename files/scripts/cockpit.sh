#!/usr/bin/env bash
set -euo pipefail

# Hardcode versions or wire in your auto-update later
#AGE_VERSION="v1.2.1"
#SOPS_VERSION="v3.11.0"

git clone https://github.com/45drives/cockpit-zfs-manager.git 
cp -r cockpit-zfs-manager/zfs /usr/share/cockpit

#RUN sudo dnf5 install -y https://github.com/45Drives/cockpit-file-sharing/releases/download/v4.2.12/cockpit-file-sharing-4.2.12-1.el8.noarch.rpm \
#    && dnf5 clean all
#RUN sudo dnf5 install -y https://github.com/45Drives/cockpit-benchmark/releases/download/v2.1.1/cockpit-benchmark-2.1.1-1.el8.noarch.rpm \
#    && dnf5 clean all

#  - type: dnf
#    install:
#      packages:
##        - https://github.com/45Drives/cockpit-file-sharing/releases/download/v4.2.12/cockpit-file-sharing-4.2.12-1.el8.noarch.rpm
#         - cockpit-bridge
#         - coreutils
#         - attr
#         - findutils
#         - hostname
#         - iproute2
#         - libc-bin
#         - systemd
#         - nfs-kernel-server
#         - samba-common-bin

#        - https://github.com/45Drives/cockpit-benchmark/releases/download/v2.1.1/cockpit-benchmark-2.1.1-1.el8.noarch.rpm
#        - python3
#        - fio


