openstack-sample Cookbook
=========================
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

    default['openstack-sample']['rest_host'] = "10.0.1.245"
    default['openstack-sample']['db_host'] = "10.0.1.246"

License and Authors
-------------------

Tomokazu HIRAI (@jedipunkz)
