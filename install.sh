#!/bin/sh

git clone https://github.com/kahua/Kahua.git

cd Kahua
DEST=/vagrant
autoconf -I `gauche-config --ac`
(cd examples && autoconf -I `gauche-config --ac`)
./configure --prefix=${DEST}/kahua
make
make check
make install
(cd /usr/local/lib && ln -sf ${DEST}/kahua/lib/kahua/)
echo '(make <kahua-config>)' > ${DEST}/kahua/etc/kahua/kahua.conf

export KAHUA_DEFAULT_SITE=${DEST}/site
mkdir -p ${KAHUA_DEFAULT_SITE}
for i in etc database run logs; do
    mkdir -p ${KAHUA_DEFAULT_SITE}/$i
done
mkdir /tmp/kahua && ln -s /tmp/kahua ${KAHUA_DEFAULT_SITE}/socket
echo '(make <kahua-config>)' > ${KAHUA_DEFAULT_SITE}/etc/kahua.conf
touch ${KAHUA_DEFAULT_SITE}/database/db.lock

make install-examples
