# Compiling and installing vendor libraries

```
heroku create thasauce-build-vendor -s cedar-14
heroku run bash --app thasauce-build-vendor

cd /app
curl -O http://www.cmake.org/files/v3.0/cmake-3.0.0.tar.gz
tar xzf cmake-3.0.0.tar.gz
cd cmake-3.0.0
./configure
make
DESTDIR=/app/cmake make install

cd /app
curl -O http://taglib.github.io/releases/taglib-1.9.1.tar.gz
tar xzf taglib-1.9.1.tar.gz
cd taglib-1.9.1
/app/cmake/usr/local/bin/cmake -DCMAKE_INSTALL_PREFIX:PATH=/app/vendor/taglib .
make
make install

mkdir /app/vendor/libgd
cd /app/vendor/libgd
curl -O https://s3.amazonaws.com/thasauce_heroku/source/libgd2-noxpm-dev_2.0.36~rc1~dfsg-6ubuntu2_i386-include.tar.gz
tar xzf libgd2-noxpm-dev_2.0.36~rc1~dfsg-6ubuntu2_i386-include.tar.gz
mkdir /app/vendor/libgd/lib
ln -fs /usr/lib/x86_64-linux-gnu/libgd.so.3.0.0 /app/vendor/libgd/lib/libgd.so

cd /app
curl -O http://www.mega-nerd.com/libsndfile/files/libsndfile-1.0.25.tar.gz
tar xzf libsndfile-1.0.25.tar.gz
cd libsndfile-1.0.25
./configure --prefix=/app/vendor/libsndfile
make
make install

cd /app
curl -O https://s3.amazonaws.com/thasauce_heroku/source/libmad-0.15.1b-fixes-1.tar.gz
tar xzf libmad-0.15.1b-fixes-1.tar.gz
cd libmad-0.15.1b-fixes-1
./configure --prefix=/app/vendor/libmad --disable-static
make
make install

cd /app
curl -O https://s3.amazonaws.com/thasauce_heroku/source/boost_1_55_0.tar.gz
tar xzf boost_1_55_0.tar.gz
cd boost_1_55_0
./bootstrap.sh --prefix=/app/vendor/libboost --with-libraries=filesystem,program_options,regex
./b2 install

cd /app
curl -L https://github.com/bbcrd/audiowaveform/archive/master.tar.gz -o audiowaveform-master.tar.gz
tar xzf audiowaveform-master.tar.gz
cd audiowaveform-master
mkdir build
cd build
export AWF_INCLUDE=/app/vendor/libgd/include:/app/vendor/libsndfile/include:/app/vendor/libmad/include:/app/vendor/libboost/include
export AWF_LIB=/app/vendor/libgd/lib:/app/vendor/libsndfile/lib:/app/vendor/libmad/lib:/app/vendor/libboost/lib
export CMAKE_INCLUDE_PATH=$CMAKE_INCLUDE_PATH:$AWF_INCLUDE
export CMAKE_LIBRARY_PATH=$CMAKE_LIBRARY_PATH:$AWF_LIB
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$AWF_LIB
export C_INCLUDE_PATH=$C_INCLUDE_PATH:$AWF_INCLUDE
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$AWF_INCLUDE
/app/cmake/usr/local/bin/cmake -DCMAKE_INSTALL_PREFIX:PATH=/app/vendor/audiowaveform -D ENABLE_TESTS=0 ..
make
make install

cd /app
tar czf taglib-vendor-1.9.1.tar.gz vendor/taglib/
tar czf audiowaveform-vendor-1.0.6.tar.gz vendor/audiowaveform/ vendor/libgd/ vendor/libmad/ vendor/libsndfile/ vendor/libboost/

curl https://raw.githubusercontent.com/scottmotte/srvdir-binary/master/srvdir.tar.gz -O -ssl3
tar -zxvf srvdir.tar.gz
./srvdir

# Download the files, host them on S3, and add them to .vendor_urls
```
