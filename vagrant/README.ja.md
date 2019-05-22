VirtualMachine-Template
====
Vagrantを用いて様々な開発環境構築をするリポジトリ

## 概要
yoshikawa/virtualmachine-template -　Vagrantを用いて様々な開発環境構築をするリポジトリ

## 必要条件
- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## 使い方
MacOSならばHomebrewを用いて必要なツール、プラグインをダウンロードします。
1. `brew cask install virtualbox vagrant`
2. `vagrant plugin install vagrant-omnibus vagrant-vbguest sahara vagrant-share vagrant-proxyconf`

## インストール
- 初期導入をしてください。
- ターミナルを開いて, `cd` ワーキングディレクトリに移動して、このプロジェクトをgit cloneしてください.
  - `git clone git://github.com/yoshikawa/virtualmachine-template.git`
- カレントディレクトリを`ror5`や`cakephp3`に移動してください。
- 仮想マシンを立ち上げるには、 `vagrant up` を実行。
- 仮想マシンをシャットダウンするには `vagrant halt` を実行。
- 仮想マシンを壊す際には `vagrant destroy` を実行。

### CakePHP3

CakePHPの開発環境が欲しい場合、cakephp3ディレクトリを用います。cakephp3/Vagrantfileを見てもらえば分かりますが、仮想マシンが2つ用意してあります。defaultとdevelopです.

仮想マシンを立ち上げる際には、`vagrant up default`, `vagrant up develop`両方立ち上げたい場合は`vagrant up`を実行してください。

### RoR5(Ruby on Rails)

RoR5の開発環境が欲しい場合、ror5ディレクトリを用います。ror5/Vagrantfileを見てもらえば分かりますが、仮想マシンは1つです。

CakePHPとは違い、仮想マシンを立ち上げる際には、`vagrant up`のみで大丈夫です。

## コントリビューション（貢献）
1. Forkします。 (https://github.com/yoshikawa/virtualmachine-template/fork)
2. feature branchを作ります。
3. あなたの変更をコミットします。
4. そのブランチにプッシュします。
5. プルリクエストを作成します。

## ライセンス

[MIT](https://github.com/yoshikawa/virtualmachine-template/blob/master/LICENSE)


## 著者

[YoshikawaTaiki](https://github.com/yoshikawa)
