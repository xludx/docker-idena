#!/bin/bash

set -e

if [[ "$1" = "idena" ]]; then
      set -- "$@" --datadir "/root/.idena" --verbosity 3 --rpcaddr idena
      exec "$@"
fi

# --config Use custom configuration file
# --datadir Node data directory (default datadir)
# --port Node tcp port (default 40404)
# --rpcaddr RPC listening address (default localhost)
# --rpcport RPC listening port (default 9009)
# --ipfsport IPFS port (default 40403)
# --bootnode Set custom bootstrap node
# --fast Use fast sync (default true)
# --verbosity Log verbosity (default 3 - Info)
# --nodiscovery Do not discover another nodes (default false)
