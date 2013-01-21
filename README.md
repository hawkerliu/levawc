Project "levawc"
====
 
<h5>Purpose:</h5> Some fundamental, pure, generic container ADT:s - written in ANSI C. Primarily for educational purposes. 

Original source code was written by <a href="http://www.kyleloudon.com/">Kyle Loudon</a> - in his book <a href="http://shop.oreilly.com/product/9781565924536.do">Mastering Algorithms with C</a> - published at <a href="http://www.oreilly.com">O'Reilly Company</a>. I have rewritten and extended some minor parts of the original source code. Finally, I want to thank Kyle and O'Reilly for giving me permisson to publish this code here at GitHub.

<h5>Authors:</h5> <a href="http://www.kyleloudon.com/">Kyle Loudon</a> - and me.

<h5>License:</h5> see file "UNLICENSE" below.

<h5>Disclaimer:</h5> see file "UNLICENSE" below.

<h5>Documentation:</h5> Clone this project, install <a href="http://www.stack.nl/~dimitri/doxygen/">Doxygen</a> on your box - and finally run command <b>doxygen</b> - from the command prompt - when standing in the top-most directory of your clone. Then point your browser to the file <b>index.html</b> in the the new subdirectory  <b>html</b> - recently created by this command.

<h5>Demos:</h5> In the <b>demos</b> subdirectory you will find some simple demos (<b>demo1.c, demo2.c</b>) - using the ADT containers. You can build these yourself - by simply using the enclosed makefiles in this directory, accordingly:

<b>linux.mak</b> - uses the native gcc compiler in Linux. Command: <b>make -f linux.mak</b><br />
<b>mingw32.mak</b> - uses mingw32 gcc compiler in Win32. Command: <b>mingw32-make -f mingw32.mak</b><br />
<b>vcwin32.mak</b> - uses Visual C compiler in Win32. Command: <b>nmake -f vcwin32.mak</b><br />
