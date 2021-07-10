Building KDE Client Kubuntu 21.04:
```sh
sudo apt-get install ca-certificates git build-essential cmake gcc g++ libkf5config-dev libkf5auth-dev \
  libkf5package-dev libkf5declarative-dev libkf5coreaddons-dev libkf5dbusaddons-dev libkf5kcmutils-dev \
  libkf5i18n-dev libkf5plasma-dev libqt5core5a libqt5widgets5 libqt5gui5 libqt5qml5 extra-cmake-modules \
  qtbase5-dev libkf5notifications-dev qml-module-org-kde-kirigami2 qml-module-qtquick-dialogs \
  qml-module-qtquick-controls2 qml-module-qtquick-layouts qml-module-qt-labs-settings \
  qml-module-qt-labs-folderlistmodel cmake build-essential gettext libboost-dev libqca-qt5-2-dev \
  libkf5notifyconfig-dev libkf5sonnet-dev libkf5textwidgets-dev libdbusmenu-qt5-dev

mkdir build && cd build

cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DWANT_CORE=OFF -DWANT_MONO=OFF -DWITH_KDE=ON -DWITH_WEBENGINE=OFF -DWITH_WEBKIT=OFF

make

make install
```
