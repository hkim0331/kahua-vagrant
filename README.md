# kahua-vagrant

vagrant で kahua examples を試す。ポートは 8888。
/vagrant 以下にソケットを作れないそうなので、/tmp/kahua にシンボリックリンク。

さばけない卒論生のために。

## require

* vagrant
* virtualbox

## usage

このディレクトリに cd して、

macos$ vagrant up
macos$ vagrant ssh

vagrant> cd /vagrant
vagrant> sh install.sh
vagrant> sh start.sh

---
hiroshi . kimura . 0331 @ gmail . com




