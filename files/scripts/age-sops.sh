#!/usr/bin/env bash
set -euo pipefail

# Hardcode versions or wire in your auto-update later
AGE_VERSION="v1.2.1"
SOPS_VERSION="v3.11.0"

ARCH="$(uname -m)"
case "$ARCH" in
  x86_64)
    AGE_ARCH="amd64"
    SOPS_ARCH="amd64"
    ;;
  aarch64 | arm64)
    AGE_ARCH="arm64"
    SOPS_ARCH="arm64"
    ;;
  *)
    echo "Unsupported arch: ${ARCH}" >&2
    exit 1
    ;;
esac

echo "Installing age ${AGE_VERSION} for ${AGE_ARCH}..."

AGE_URL="https://github.com/FiloSottile/age/releases/download/${AGE_VERSION}/age-${AGE_VERSION}-linux-${AGE_ARCH}.tar.gz"
curl -L --fail "$AGE_URL" -o /tmp/age.tar.gz

tar -C /tmp -xzf /tmp/age.tar.gz
install -m 0755 /tmp/age/age /usr/bin/age
install -m 0755 /tmp/age/age-keygen /usr/bin/age-keygen
rm -rf /tmp/age /tmp/age.tar.gz

echo "Installing sops ${SOPS_VERSION} for ${SOPS_ARCH}..."

SOPS_URL="https://github.com/getsops/sops/releases/download/${SOPS_VERSION}/sops-${SOPS_VERSION}.linux.${SOPS_ARCH}"
curl -L --fail "$SOPS_URL" -o /usr/bin/sops
chmod 0755 /usr/bin/sops

echo "age and sops install complete."
