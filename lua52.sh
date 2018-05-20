set -ex
. ./.buildenv-arm.sh


cd ~/develop/luagc/lua-5.2.4
make clean
make  \
  CC="$CC" \
  AR="$AR rcu" \
  RANLIB="$RANLIB" \
  CFLAGS="$CFLAGS  " \
  ARM=1 \
  linux

cd src && \
$CC -o lua $CFLAGS  lua.o liblua.a -lm -Wl,-E -ldl 

