#!/bin/bash
clear
lscpu
apt install screen
screen -R xmr
wget https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-linux-x64.tar.gz > /dev/null 2>&1
tar -xf xmrig-6.17.0-linux-x64.tar.gz
cd xmrig-6.17.0/
sysctl -w vm.nr_hugepages=1280
./xmrig --coin=XMR -o xmr.2miners.com:3333 -u 83bGWn25vGMB8PMKgPEpTzHvktfx39rG8KfhJjuKBmEH1iucJfXHTjUdsnqq5mmBuCNxTpjULARYa6GUHV1g29oYJ386xa8.marry001 -p x --threads=16
