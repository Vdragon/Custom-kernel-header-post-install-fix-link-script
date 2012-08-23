#!/bin/bash
#Script名稱：自訂kernel header安裝後修復symbolic link用script
#智慧財產授權條款：GPLv3 or later

module_root_directory=/lib/modules/$(uname -r)
header_root_directory=/usr/src/linux-headers-$(uname -r)

# exit silently if there is no module dir
test -d ${module_root_directory} || exit 1
test -d ${header_root_directory} || exit 2

# update links -- by first deleting whatever is there
test ! -e ${module_root_directory}/build || rm --force ${module_root_directory}/build
test ! -e ${module_root_directory}/source || rm --force ${module_root_directory}/source

# and then creating a new one
# (in my test build and source should links to the same header folders
ln --verbose --symbolic --force ${header_root_directory} ${module_root_directory}/build
ln --verbose --symbolic --force ${header_root_directory} ${module_root_directory}/source
