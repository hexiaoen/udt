Copyright (c) 2001 - 2011, The Board of Trustees of the University of Illinois.
All Rights Reserved.
Copyright (c) 2011 - 2012, Google, Inc. All Rights Reserved.

UDP-based Data Transfer (UDT) Library - version 4
Author: Yunhong Gu [yunhong.gu @ gmail.com]

UDT version 4 is free software under BSD License. See ./LICENSE.txt.

============================================================================

在UDT4.11的基础 上做如下修改：
     解决epoll无法检测到对端断开的消息,通过在epoll_wait中增加errfd
     解决在SOCK_DGRAM模式下，没有数据可读epoll_wait也会不断返回的问题
     修改在交会模式下，connect连接超时时间为3S
     修改心跳间隔在正常情况下为5s钟一次，当出现上次心跳包丢包时，心跳间隔为1s。

UDT Website:
http://udt.sf.net
http://sf.net/projects/udt/ 


CONTENT: 
./src:     UDT source code 
./app:     Example programs 
./doc:     UDT documentation (HTML)
./win:     Visual C++ project files for the Windows version of UDT 


To make: 
     make -e os=XXX arch=YYY 

XXX: [LINUX(default), BSD, OSX] 
YYY: [IA32(default), POWERPC, IA64, AMD64] 

For example, on OS X, you may need to do "make -e os=OSX arch=POWERPC"; 
on 32-bit i386 Linux system, simply use "make".

On Windows systems, use the Visual C++ project files in ./win directory.

Note for BSD users, please use GNU Make.

To use UDT in your application:
Read index.htm in ./doc. The documentation is in HTML format and requires your
browser to support JavaScript.


Questions? please post to the UDT project forum:
https://sourceforge.net/projects/udt/forums
