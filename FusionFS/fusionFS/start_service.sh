LD_LIBRARY_PATH=/mnt/common/cshou/usr/include:/mnt/common/cshou/usr/lib:/mnt/common/cshou/FusionFS/fusionFS/src/ffsnet:/mnt/common/cshou/FusionFS/fusionFS/src/udt/src:/mnt/common/cshou/FusionFS/fusionFS/src/provenance
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH

echo $LD_LIBRARY_PATH

#start the service for file transfer
./src/ffsnet/ffsnetd 2>&1 1>/dev/null &  

#start the service for ZHT server
./src/zht/bin/server_zht 50000 ./src/zht/neighbor ./src/zht/zht.cfg TCP 2>&1 1>/dev/null &

# start zht service for spade
./src/zht/bin/server_zht 55000 ./src/zht/spade_neighbor ./src/zht/zht.cfg TCP 2>&1 1>/dev/null &

#start the service for SPADE server
#/home/cshou/FusionFS/fusionFS/src/SPADE/bin/server start
