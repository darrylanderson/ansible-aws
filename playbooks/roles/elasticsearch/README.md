# jpnewman.elasticsearch

[![Ansible Role](https://img.shields.io/ansible/role/9587.svg?maxAge=2592000)](https://galaxy.ansible.com/jpnewman/elasticsearch/)
[![Build Status](https://travis-ci.org/jpnewman/ansible-role-elasticsearch.svg?branch=master)](https://travis-ci.org/jpnewman/ansible-role-elasticsearch)

This is a Ansible role to installs [elasticsearch](https://www.elastic.co/products/elasticsearch)

This role was based on role ```elastic``` <https://github.com/rueian/ansible-elk-example> by Rueian

## Requirements

Ansible 2.x

## Role Variables

|Variable|Description|Default|
|---|---|---|
|```elasticsearch_version```||5.3.0|
|```elasticsearch_version_check```||5.3.0||
|```elasticsearch_apt_package_name```||```"elasticsearch-{{ elasticsearch_version }}.deb"```|
|```elasticsearch_download_url```||```"https://artifacts.elastic.co/downloads/elasticsearch/{{ elasticsearch_apt_package_name }}"```|
|```elasticsearch_with_plugin```||false|
|```elasticsearch_discovery_zen_minimum_master_nodes```||1|
|```elasticsearch_heap_size_percentage```||0.5|
|```apt_cache_valid_time```||600|

## Dependencies

none

## Example Playbook

    - hosts: servers
      roles:
         - { role: jpnewman.elasticsearch, tags: ["elasticsearch"] }

## License

MIT / BSD

## Author Information

John Paul Newman
