#!/bin/bash
ZARF_VERSION=v0.32.6
ZARF_ARCH=$([ $(uname -m) == "x86_64" ] && echo "amd64" || echo "arm64";)

curl -sL https://github.com/defenseunicorns/zarf/releases/download/${ZARF_VERSION}/zarf_${ZARF_VERSION}_Linux_${ZARF_ARCH} -o zarf
chmod +x zarf
mv zarf /usr/local/bin/zarf