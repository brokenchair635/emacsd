이 저장소는 나의 emacs설정파일과 패키지 설정 그리고 emacs 빌드 관련 내용으로
주로 linux/unix 운영체제애서 이루어 집니다.

emacs 빌드 전 최소설치 설정 
주의 : 그래픽 설정을 제외한 빌드임으로 그래픽 설치를 원하면 공식 홈페이지를 방문하는 것을 추천함

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