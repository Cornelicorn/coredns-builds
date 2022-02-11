#!/bin/bash -e

git clone https://github.com/coredns/coredns.git coredns-src
echo "autoipv6ptr:github.com/cornelicorn/coredns-auto-aaaa-and-ptr/autoipv6ptr" >> coredns-src/plugin.cfg
cd coredns-src
make
cp coredns ..
cd ..
rm -rf coredns-src
