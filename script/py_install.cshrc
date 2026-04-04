cd ~
wget https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tar.xz
tar -xf Python-3.8.1.tar.xz
cd Python-3.8.1
./configure --prefix=$HOME/usr

make 
make install

export PATH=$HOME/usr/python3/bin:$PATH

cd ~
rm -rf Python-3.8.1*
#
#setenv LOCAL_BIN   $HOME/usr
#
#set path = ($LOCAL_BIN/bin $path)
#
#
#cd ~
#wget https://bootstrap.pypa.io/get-pip.py
#python3 get-pip.py --find-links=$HOME/usr
#
#rm get-pip.py
#
#
#setenv LOCAL_BIN   $HOME/usr
#
#set path = ($LOCAL_BIN/bin $path)


