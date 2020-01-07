# yum install
sudo yum group install -y "Development Tools"
sudo yum install -y ncurses-devel
sudo yum install -y gtk+-devel gtk2-devel
sudo yum install -y libXpm-devel
sudo yum install -y libpng-devel
sudo yum install -y giflib-devel
sudo yum install -y libtiff-devel libjpeg-devel
sudo yum install -y ncurses-devel
sudo yum install -y gpm-devel dbus-devel dbus-glib-devel dbus-python
sudo yum install -y GConf2-devel pkgconfig
sudo yum install -y libXft-devel
sudo yum install -y gnutls-devel
sudo yum install -y texi2html texinfo

# git config
git config --global http.postBuffer  524288000
git config --global https.postBuffer 524288000
git config --global http.sslVerify false

## git clone
git clone https://github.com/emacs-mirror/emacs.git --verbose --progress


# build
cd emacs
./autogen.sh && ./configure && make && make install
