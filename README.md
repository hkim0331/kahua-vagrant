# kahua-vagrant

さばけない卒論生のために。

vagrant で kahua examples を試す。ポートは 8888。
/vagrant 以下にソケットを作れないそうなので、/tmp/kahua にシンボリックリンク。

## require

* vagrant
* virtualbox
* ubuntu

vagrant 上で gauche が動けば virtualbox や ubuntu 出なくても大丈夫。

vagrant 内で apt get gauche gauche-dev autoconf make してまさ。

## usage

このディレクトリに cd して、

```sh
macos$ vagrant up
macos$ vagrant ssh

vagrant> cd /vagrant
vagrant> sh install.sh
vagrant> sh start.sh
```

---
hiroshi . kimura . 0331 @ gmail . com




