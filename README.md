MacOS
./configure --without-ns --without-dbus --without-pop 
CC=clang OBJC=clang --without-xft --without-xaw3d 
--without-jpeg --without-xpm --without-gif --without-tiff 
--without-gconf --without-gsettings --without-libsystemd 
--without-xdbe --without-selinux --without-xinput2 --without-gpm 
linux
./configure --with-x-toolkit=no --without-pop 
--without-xft --without-xaw3d --without-gsettings 
--without-xdbe --without-xinput2 --with-json 
--without-native-compilation --without-jpeg 
--without-xpm --without-gif --without-tiff
