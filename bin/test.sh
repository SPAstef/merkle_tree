#!/bin/sh
SCRIPTPATH=$(dirname "$(readlink -f "$0")")
$SCRIPTPATH/abr;
 $SCRIPTPATH/mtree;
 $SCRIPTPATH/mtree_gadget;
 $SCRIPTPATH/sha256;
 $SCRIPTPATH/sha512;

