sudo apt update
sudo apt-get install git build-essential cmake automake libtool autoconf screen 
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig
cd xmrig
mkdir build
cd build
cd ..
cd scripts
./build_deps
./randomx_boost.sh
./enable_1gb_pages.sh
./build_deps.sh 
cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)
