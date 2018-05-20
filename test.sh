set -ex
. ./.buildenv-arm.sh

$CC -o xtest $CFLAGS test.c

