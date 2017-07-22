# ansible-geth

Playbooks for setting up geth nodes for main net and Ropsten

## Install

Clone the role into your geth configuration.

    git clone https://github.com/mikeshultz/ansible-geth.git /etc/ansible/roles/geth

## Configure

Add machines to the role `geth` for main net, or `geth_ropsten` for ropsten.  You can have nodes in both roles.

### Etherbase Account

`mainnet_etherbase_password` and/or `ropsten_etherbase_password` should be specified in your vars.  This is the default password for your etherbase account.  This seems to be required for RPC calls. So if you plan on using RPC, even if it's a read-only node, you should do this.  You can leave this var undefined and manually setup accounts yourself after deploy as well.