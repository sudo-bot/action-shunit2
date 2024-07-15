#!/bin/sh -l
##
# @license http://unlicense.org/UNLICENSE The UNLICENSE
# @author William Desportes <williamdes@wdes.fr>
##

set -eu

# Files are rw-rw-rw- by default and folders rwxrwxrwx
umask 000

$@
