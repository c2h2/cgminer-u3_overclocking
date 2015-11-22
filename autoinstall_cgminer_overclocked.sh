apt-get install -y libusb-1.0-0-dev libusb-1.0-0 libcurl4-openssl-dev libncurses5-dev libudev-dev screen libtool automake pkg-config libjansson-dev screen git autoconf libtool libcurl4-openssl-dev libncurses5-dev pkg-config yasm make

cd /opt/
# git clone git://github.com/ckolivas/cgminer.git
git clone  https://github.com/c2h2/cgminer-u3_overclocking.git cgminer
cd cgminer/

./autogen.sh
CFLAGS="-O2 -Wall -march=native" ./configure --enable-icarus --enable-cpumining 
make -j8
make install
