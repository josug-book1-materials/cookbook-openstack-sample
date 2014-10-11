openstack-sample Cookbook
=========================
<<<<<<< HEAD
OpenStack サンプルクックブックです。Flask アプリケーションを3階層の VM にデプ
ロイするためのクックブックです。

Attributes
----------
Tomokazu HIRAI (@jedipunkz)

Usage
-----

#### db サーバデプロイ

    $ knife bootstrap -N dbs01 192.168.0.4 -r 'role[db]' -x root  -i key-for-internal.pem

#### Web サーバデプロイ

    $ knife bootstrap -N web01 192.168.0.1 -r 'role[web]' -x root  -i key-for-internal.pem

#### App サーバデプロイ

    $ knife bootstrap -N web01 192.168.0.3 -r 'role[rest]' -x root  -i key-for-internal.pem

=======
OpenStack 書籍のサンプル Cookbook です。書籍の中で扱われている構成を Chef を用いてデプロイします。

Requirements
------------

* CentOS6.5 x86_64
* ミニマム構成の CentOS に openssh サーバのみインストール

Attributes
----------
デプロイするサーバの前提は下記の3つのノードになります。

* Web サーバ
* App サーバ
* DB サーバ

App サーバ (REST) と DB サーバの IP アドレスを Attributes に記してください。

    default['openstack-sample']['rest_host'] = "172.16.10.3"
    default['openstack-sample']['db_host'] = "172.16.20.1"

License and Authors
-------------------

Apache License
=======

Apache License
