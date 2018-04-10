# php7

php7 & nginx & mysql をDockerベースで作成

## 概要

Dockerを用いて、PHPを開発する環境を作成する

## 必要条件

- [Docker](https://www.docker.com/)

## 使い方

MacOSならばHomebrewを用いて必要なツールをダウンロードします。

1. `brew cask install docker`
2. dockerのセットアップをしてください。

## インストール

- Dockerを導入をしてください。
- ターミナルを開いて, `cd` ワーキングディレクトリに移動して、このプロジェクトをgit cloneしてください。 `git clone git://github.com/YoshikawaTaiki/vagrant-template.git`
- ターミナルで `cd` をコマンドで `vagrant-template/docker/php7/docker` に移動します。
- 仮想マシンを立ち上げるには、 `docker-compose up`
- 仮想マシンを再度立ち上げるには、 `docker-compose start`
- 仮想マシンを破壊するには、 `docker-compose rm`
- publicディレクトリにソースコードを配置してください。

## コントリビューション（貢献）

1. Forkします。 ( https://github.com/Yoshikawataiki/vagrant-template/fork)
2. feature branchを作ります。
3. あなたの変更をコミットします。
4. そのブランチにプッシュします。
5. プルリクエストを作成します。

## 著者

[YoshikawaTaiki](https://github.com/YoshikawaTaiki)
