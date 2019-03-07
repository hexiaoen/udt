#########################################################################
# File Name: install.sh
# Author: hxe
# mail: no mail
# Created Time: 2019年01月05日 星期六 15时41分13秒
#########################################################################
#!/bin/bash



cd ./src
cp udt.h /usr/include
g++ -g -O0  -rdynamic *.cpp -fPIC -shared -o libudt4.so

#cp libudt4.so /usr/lib/
#cp libudt4.so ../../ebc_node/lib/linux
