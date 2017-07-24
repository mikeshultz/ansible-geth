# ansible-geth

Playbooks for setting up geth nodes for main net and Ropsten

## Install

Clone the role into your geth configuration.

    git clone https://github.com/mikeshultz/ansible-geth.git /etc/ansible/roles/geth

Create a role for your machine that inherits from this one to change the default
options.

    ---
    - hosts: ropsten
      become: yes
      become_method: sudo
      vars:
        geth_networkid: 3
        geth_cache: 512
        geth_port: 30304
        geth_datadir: /data/ropsten
        geth_rpc: true
        geth_rpcpublic: true
        geth_rpcaddr: 0.0.0.0
        geth_rpcport: 8080
        geth_rpcapi: "eth,net,web3"
        geth_rpccorsdomain: "*"
      roles:
        - geth

## Configure

Add machines to the role `geth` for main net, or `geth_ropsten` for ropsten.  You can have nodes in both roles.

### Etherbase Account

`mainnet_etherbase_password` and/or `ropsten_etherbase_password` should be specified in your vars.  This is the default password for your etherbase account.  This seems to be required for RPC calls. So if you plan on using RPC, even if it's a read-only node, you should do this.  You can leave this var undefined and manually setup accounts yourself after deploy as well.