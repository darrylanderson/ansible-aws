ansible-vault
=============

Install a Vault server.

This will only install `vault`, if you want to manipulate/configure or generally do anything else
with vault you will need something like [ansible-modules-hashivault](https://pypi.python.org/pypi/ansible-modules-hashivault).

Requirements
------------

systemd-ready operating system.

Example Playbook
----------------

It is recommended to provide a `vault_config` since the default one is very bare
and will most likely not fit your needs

```yaml
- hosts: vault
  roles:
    - role: AerisCloud.vault
      vault_config: "{{ playbook_dir }}/files/vault.hcl.j2"
```

Variables
---------

* `vault_config`: The template to use as a config for Vault.
* `vault_version`: The version of Vault to install.
* `vault_checksum`: The checksum of the tarball provided by Hashicorp.
* `vault_platform`: The platform of the vault binary (default to linux amd64).
* `vault_groups`: The groups you want the user to be part of.

License
-------

MIT

Author Information
------------------

Christophe Robin <crobin@nekoo.com>