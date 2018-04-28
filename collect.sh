set -x

BUILD_TYPE=$2
BASE=$1
INCLUDE=./include
LIB=./lib/${BUILD_TYPE}

mkdir -p ${INCLUDE}
cp -R ${BASE}/tensorflow ${INCLUDE}/
cp -R ${BASE}/external/eigen_archive/* ${INCLUDE}/
cp -R ${BASE}/protobuf/src/protobuf/src/* ${INCLUDE}/
cp -R ${BASE}/nsync/install/include/* ${INCLUDE}/

mkdir -p ${LIB}
	
cp ${BASE}/tf_cc.dir/${BUILD_TYPE}/tf_cc.lib ${LIB}/
cp ${BASE}/tf_core_lib.dir/${BUILD_TYPE}/tf_core_lib.lib ${LIB}/
cp ${BASE}/tf_core_cpu.dir/${BUILD_TYPE}/tf_core_cpu.lib ${LIB}/
cp ${BASE}/tf_core_framework.dir/${BUILD_TYPE}/tf_core_framework.lib ${LIB}/
cp ${BASE}/tf_core_kernels.dir/${BUILD_TYPE}/tf_core_kernels.lib ${LIB}/
cp ${BASE}/tf_cc_framework.dir/${BUILD_TYPE}/tf_cc_framework.lib ${LIB}/
cp ${BASE}/tf_cc_while_loop.dir/${BUILD_TYPE}/tf_cc_while_loop.lib ${LIB}/
cp ${BASE}/tf_cc_ops.dir/${BUILD_TYPE}/tf_cc_ops.lib ${LIB}/
cp ${BASE}/tf_core_ops.dir/${BUILD_TYPE}/tf_core_ops.lib ${LIB}/
cp ${BASE}/tf_core_direct_session.dir/${BUILD_TYPE}/tf_core_direct_session.lib ${LIB}/

cp ${BASE}/${BUILD_TYPE}/tf_protos_cc.lib ${LIB}/
cp ${BASE}/gif/install/lib/giflib.lib ${LIB}/
cp ${BASE}/jpeg/install/lib/libjpeg.lib ${LIB}/
cp ${BASE}/lmdb/install/lib/lmdb.lib ${LIB}/
cp ${BASE}/jsoncpp/src/jsoncpp/src/lib_json/${BUILD_TYPE}/jsoncpp.lib ${LIB}/
cp ${BASE}/farmhash/install/lib/farmhash.lib ${LIB}/
cp ${BASE}/fft2d//src/lib/fft2d.lib ${LIB}/
cp ${BASE}/highwayhash/install/lib/highwayhash.lib ${LIB}/
cp ${BASE}/nsync/install/lib/nsync.lib ${LIB}/
if [ "${BUILD_TYPE}" = "Release" ];
then
    cp ${BASE}/protobuf/src/protobuf/${BUILD_TYPE}/libprotobuf.lib ${LIB}/
    cp ${BASE}/zlib/install/lib/zlibstatic.lib ${LIB}/
    cp ${BASE}/png/install/lib/libpng12_static.lib ${LIB}/
else
    cp ${BASE}/protobuf/src/protobuf/${BUILD_TYPE}/libprotobufd.lib ${LIB}/libprotobuf.lib
    cp ${BASE}/zlib/install/lib/zlibstaticd.lib ${LIB}/zlibstatic.lib
    cp ${BASE}/png/install/lib/libpng12_staticd.lib ${LIB}/libpng12_static.lib
fi
cp ${BASE}/re2/install/lib/re2.lib ${LIB}/
cp ${BASE}/sqlite/install/lib/sqlite.lib ${LIB}/
cp ${BASE}/grpc/src/grpc/${BUILD_TYPE}/grpc++_unsecure.lib ${LIB}/
cp ${BASE}/grpc/src/grpc/${BUILD_TYPE}/grpc_unsecure.lib ${LIB}/
cp ${BASE}/grpc/src/grpc/${BUILD_TYPE}/gpr.lib ${LIB}/
cp ${BASE}/snappy/src/snappy/${BUILD_TYPE}/snappy.lib ${LIB}/
