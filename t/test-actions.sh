#!/bin/sh

srcdir=.
[ -r ./env.sh ] && . ./env.sh;
. $srcdir/testlib.sh

tstart $srcdir/gallery.py

testOne() {
        a=`lca-tool --print an.image`;
        b='com.nokia.galleryserviceinterface.showImage';
        test "x$a" = "x$b";
        return $?
}

testTwo() {
        a=`lca-tool --print an.image b.image`;
        b='com.nokia.galleryserviceinterface.showImage';
        test "x$a" = "x$b";
        return $?
}

set -e;

testOne;
testTwo;

exit 0;