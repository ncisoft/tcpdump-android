set -ex
. ./.buildenv-arm.sh

cd ./contrib/netcat-0.7.1
./configure --host=arm-linux 
make clean
make

