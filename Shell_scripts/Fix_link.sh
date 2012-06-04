#!/bin/sh
#Script名稱：自訂kernel header安裝後修復symbolic link用script
#Script作者：林博仁
#智慧財產授權條款：GPLv3 or later

MODULEDIR=/lib/modules/`uname -r`
HEADERDIR=/usr/src/linux-headers-`uname -r`

# exit silently if there is no module dir
test -d $MODULEDIR || exit 1
test -d $HEADERDIR || exit 2

# update build link -- by first deleting whatever is there
test ! -e $MODULEDIR/build || rm --force $MODULEDIR/build

# and then creating a new one
ln --symbolic --force $HEADERDIR $MODULEDIR/build
