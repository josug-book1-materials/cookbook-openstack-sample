openstack-sample Cookbook
=========================
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


License and Authors
-------------------

Apache License
