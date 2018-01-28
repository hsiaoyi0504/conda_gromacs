mkdir $SRC_DIR/gromacs_5.1.5/build
cd $SRC_DIR/gromacs_5.1.5/build

cmake -DGMX_X11=OFF \
      -DGMX_CXX11=OFF \
      -DGMX_MPI=OFF \
      -DGMX_BUILD_OWN_FFTW=ON \
      -DGMX_EXTERNAL_BOOST=OFF \
      -DCMAKE_C_COMPILER=${PREFIX}/bin/x86_64-conda_cos6-linux-gnu-gcc \
      -DCMAKE_CXX_COMPILER=${PREFIX}/bin/x86_64-conda_cos6-linux-gnu-g++ \
      -DGMX_PREFER_STATIC_LIBS=ON \
      -DGMX_GPU=OFF \
      -DGMX_BUILD_SHARED_EXE=ON \
      -DCMAKE_INSTALL_PREFIX=$PREFIX ..

make
make install