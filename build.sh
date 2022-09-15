export CC=/usr/bin/clang-14
export CXX=/usr/bin/clang++-14
cd product-mini/platforms/linux/;rm -rf build
cmake  -DWAMR_BUILD_INTERP=1 -DWAMR_BUILD_AOT=0 -DCMAKE_BUILD_TYPE=Debug -DWAMR_BUILD_FAST_INTERP=0 -Bbuild
#  -DWAMR_BUILD_REF_TYPES=1 暂时关闭 reference
cd build
make -j40
cd ..