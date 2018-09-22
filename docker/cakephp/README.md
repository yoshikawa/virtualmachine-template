# CakePHP

CakePHP3をdockerで環境構築

## Description(概要)

CakePHP3をdockerで環境構築します。

## Requirement(必要条件)

- [Docker](https://www.docker.com/)

1. `brew cask install docker`
2. dockerを起動します
3. `docker ps`でdockerのプロセスを確認することができます。

if you use Linux
 
- mysql-client
 
ex. `sudo apt install mysql-client`


## Usage(使い方)

1. `make docker/start`
2. `make composer/install`
3. `make migrate/init` *password* と入力
4. [http://localhost/](http://localhost/)　にアクセスする

### Makefile

このリポジトリはMakefileを用いて開発しています。

Makefileを読めば、やっていることは理解できると思いますが、メモ程度に書いておきます。

`make docker/start`　Dockerコンテナを起動します

`make docker/stop` Dockerコンテナを停止します

`make docker/clean`　Dockerコンテナを削除します

`make web/bash` Nginxコンテナにbashで入ることが出来ます。

`make db/bash` MySQLコンテナにbashで入ることが出来ます。データベースの中身を知りたい際にご利用ください。

`make php/bash` PHPコンテナにbashで入ることが出来ます。bin/cakeコマンドを叩く際にご利用ください。 

`make migrate/init` マイグレーションするために初期化をします。

`make migrate/up` マイグレーションを行います。

`make migrate/down` マイグレーションを取り下げます。

`make migrate/status` マイグレーションの状態を確認することができます。

`make composer/install` composerでパッケージのインストールをします。

## Author(著者)

[YoshikawaTaiki](https://github.com/YoshikawaTaiki)

