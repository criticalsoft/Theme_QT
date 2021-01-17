######## Transparent Application Theme (eg: Kate Glass, Falkon Glass) ########
#DEP: Compile & Install
#sudo apt install -y libkf5kdelibs4support-dev qtbase5-private-dev
#sudo rm -r ~/Documents/qtcurve/
#cp -r ./QTCurve/qtcurve/ ~/Documents/
#cd ~/Documents/qtcurve/build/
#sudo make install
#cd -

#sudo apt install -y qtcurve

#No Need, Use qt5ct Or kcmshell5 style (Change Between: Breeze / QTCurve / Kvantum)
#tee --append ~/.profile << EOF
#export QT_STYLE_OVERRIDE=qtcurve
#EOF
#export QT_STYLE_OVERRIDE=qtcurve
#ReLogIn




#notify-send --icon=preferences-desktop-theme --expire-time=0 --app-name="Theme" "
#Application Style: QtCurve -> Configure Application Style
#Import: ./QTCurve/Theme/
#"




# Old Version Of Kvantum Not Work With Falkon (First Launched Window)
# Old Version Of Kvantum Not Work With Konsole ToolBar
# BuiltIn: kvantummanager
# sudo apt install -y qt5-style-kvantum




#DEP: Compile & Install
sudo apt install -y libqt5svg5-dev libqt5x11extras5-dev

cd ./Kvantum/Kvantum/Kvantum/build/
#FIX: Source Path Change
rm -f ./CMakeCache.txt
cmake ../
sudo make install
cd -

#Use qt5ct Or kcmshell5 style (Change Between: Breeze / QTCurve / Kvantum)
#FIX: Glass Theme Effect In Other Desktop Environment (eg: WayFire)
#tee --append ~/.profile << EOF
#export QT_STYLE_OVERRIDE=kvantum
#EOF
#export QT_STYLE_OVERRIDE=kvantum
#ReLogIn




#sudo apt install -y qt5-style-kvantum-themes
#sudo rm -r /usr/share/Kvantum/KvArc*/

mkdir -p ~/.config/Kvantum/
cp -r ./Kvantum/Theme/*/ ~/.config/Kvantum/

kvantummanager




######## Glass Blur Desktop Effect (eg Falkon) ########
#notify-send --icon=preferences-desktop-theme --expire-time=0 --app-name="Theme" "
#Search: Blur
#CheckBox -> Apply
#"

#sudo apt install -y plasma-desktop
#sudo apt install -y plasma-widgets-addons
#kcmshell5 kcm_kwin_effects




######## Colors (Window Decoration & Plasma Component) ########
#For QT Applications
#mkdir -p ~/.local/share/color-schemes/
#cp -r ./Colors/*.colors ~/.local/share/color-schemes/
#FOR:KDE Apps Color In Other Desktop
kcmshell5 colors




