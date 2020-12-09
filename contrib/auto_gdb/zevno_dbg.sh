#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.zevnocore/zevnod.pid file instead
zevno_pid=$(<~/.zevnocore/testnet3/zevnod.pid)
sudo gdb -batch -ex "source debug.gdb" zevnod ${zevno_pid}
