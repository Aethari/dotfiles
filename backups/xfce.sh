# save current directory and navigate to home
SCRIPT_DIR=$(pwd)
cd ~

tar czf xfce4-backup.tar.gz .config/xfce4 .config/Thunar .themes

cd $SCRIPT_DIR
cd ../xfce

cp ~/xfce4-backup.tar.gz xfce4-backup.tar.gz

rm -fr ~/xfce4-backup.tar.gz
