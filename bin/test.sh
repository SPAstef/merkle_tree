#!/bin/sh
SCRIPTPATH=$(dirname "$(readlink -f "$0")")
$SCRIPTPATH/abr_gadget;
 $SCRIPTPATH/fixed_abr;
 $SCRIPTPATH/fixed_mtree;
 $SCRIPTPATH/mimc256;
 $SCRIPTPATH/mimc512f;
 $SCRIPTPATH/mimc512f_2k;
 $SCRIPTPATH/mtree_gadget;
 $SCRIPTPATH/sha256;
 $SCRIPTPATH/sha512;

