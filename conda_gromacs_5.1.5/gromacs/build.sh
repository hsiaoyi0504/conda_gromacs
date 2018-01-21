mkdir $SRC_DIR/gromacs_5.1.5/build
cd $SRC_DIR/gromacs_5.1.5/build

cmake -DGMX_X11=OFF \
      -DGMX_MPI=OFF \
      -DGMX_BUILD_OWN_FFTW=ON \
      -DGMX_EXTERNAL_BOOST=OFF \
      -DCMAKE_C_COMPILER=${PREFIX}/bin/x86_64-conda_cos6-linux-gnu-gcc \
      -DCMAKE_CXX_COMPILER=${PREFIX}/bin/x86_64-conda_cos6-linux-gnu-g++ \
      -DCMAKE_INSTALL_PREFIX=$PREFIX ..

make
make install