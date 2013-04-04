
function lsdirectory(){

	if [ $# -eq 0] ; then 
		DIR=./
	else
		DIR=$1
	fi
	find $DIR -type d  -maxdepth 1
}

function alt-up(){
	sudo update-alternatives --config $1
}
function gobindir(){
	cd $(dirname `which $1`)
}
function gh-clone(){
	git clone git@github.com:trevd/$1.git $2
}
function quick-find(){	
	find ./ -iname "*$1*" 
}
function movefromlast(){
	mv $OLDPWD/$1 $PWD
}
function movetolast(){
	mv $PWD/$1 $OLDPWD
}
function copyfromlast(){
	cp $OLDPWD/$1 $PWD
}
function copytolast(){
	cp $PWD/$1 $OLDPWD
}
function copytolastrv(){
	cp -rv $PWD/$1 $OLDPWD
}
function envsetup(){
	if [ -f "build2/envsetup.sh" ] ; then
		. build2/envsetup.sh
	else
		. build/envsetup.sh	
	fi
}
function elfless(){
	readelf -a $1 | less
}
function binless(){
	strings $1 | less
}
function bingrep(){
	strings -f $1 | grep "$2"
}
function fgreplow(){
	if [ -z "$2" ]; then
		SEARCH=./*
	else
		SEARCH=$2
	fi
	echo "fgrep -in "$1" $SEARCH 2>/dev/null"
	 	fgrep -in "$1" $SEARCH 2>/dev/null
}
function fgreplowr(){
	if [ -z "$2" ]; then
		SEARCH=./*
	else
		SEARCH=$2
	fi
	echo "fgrep -inR \"$1\" $SEARCH 2>/dev/null"
	 	fgrep -inR "$1" $SEARCH 2>/dev/null
}

DARWIN_PREFIX=i686-apple-darwin11
PATH=/media/android/lib:/media/android/bin:$PATH:/media/android/osx/i686-apple-darwin11/usr/bin
ANDROID_DIR=/media/android/
VENDOR_DIR=/media/vendor/
BUILD_DIR=/media/android/build/
WORKSPACE_DIR=/media/android/workspace
TOOLCHAINS_DIR=$BUILD_DIR/toolchains/
KERNELS_DIR=$BUILD_DIR/kernels
ANDROID_KERNELS_DIR=$KERNELS_DIR/android
EDITOR=geany
NDK_TOOLCHAIN_VERSION=clang3.1
APT=apt-fast
alias 777='sudo chmod 777'
alias 644='sudo chmod 644'
alias 755='sudo chmod 755'
alias chm='sudo chmod'
alias own='sudo -E chown $USER.$USER -Rv'
alias ownrv='sudo -E chown $USER.$USER -Rv'
alias goosxsdk108='cd /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk'
alias goosx='cd $ANDROID_DIR/osx'
alias exut=exit
alias fr=fgreplowr
alias f=fgreplow
alias binl=binless
alias binf=bingrep
ENVSETUP=envsetup
SDK=$ANDROID_DIR/sdk
NDK=$ANDROID_DIR/ndk
alias gh-commit='git commit -a && git push'
alias gh-push='git push'
alias c='cat'
alias gd='godir'
#alias cd='pushd'
#alias cd..='popd'
alias du0='du -h --max-depth=0 -c'
alias start-eclipse='$ANDROID_DIR/eclipse/eclipse &'
alias gpout='cd $ANDROID_PRODUCT_OUT'
alias gpoutsys='cd $ANDROID_PRODUCT_OUT/system'
alias gpoutsysbin='cd $ANDROID_PRODUCT_OUT/system/bin'
alias gpoutsyslib='cd $ANDROID_PRODUCT_OUT/system/lib'
alias godown='cd $HOME/Downloads'
alias gokernel='cd $KERNELS_DIR'
alias gho='cd $ANDROID_HOST_OUT'
alias ghwin='cd $ANDROID_BUILD_TOP/out/host/windows-x86'
alias ghdar='cd $ANDROID_BUILD_TOP/out/host/darwin-x86'

alias gbt='cd $ANDROID_BUILD_TOP'
alias gadb='cd $ANDROID_BUILD_TOP/system/core/adb'
alias gfb='cd $ANDROID_BUILD_TOP/system/core/fastboot'
alias gzlib='cd $ANDROID_BUILD_TOP/external/zlib'
alias gssl='cd $ANDROID_BUILD_TOP/external/openssl'
alias gbit='cd $ANDROID_BUILD_TOP/external/bootimage_tools'
alias gext='cd $ANDROID_BUILD_TOP/external'
alias gsys='cd $ANDROID_BUILD_TOP/system'
alias grecovery='cd $ANDROID_BUILD_TOP/bootable/recovery'
alias gsyscore='cd $ANDROID_BUILD_TOP/system/core'
alias gkernel='cd $ANDROID_BUILD_TOP/kernel'
alias gdevice='cd $ANDROID_BUILD_TOP/device'
alias gbuild='cd $ANDROID_BUILD_TOP/build'
alias gbuild2='cd $ANDROID_BUILD_TOP/build2'
alias gbuildcombo='cd $ANDROID_BUILD_TOP/build/core/combo'
alias gbuildtools='cd $ANDROID_BUILD_TOP/build/tools'
alias gbuildcore='cd $ANDROID_BUILD_TOP/build/core'
alias grootdir='cd $ANDROID_BUILD_TOP/system/core/rootdir'
alias ghw='cd $ANDROID_BUILD_TOP/hardware'
alias ghwti='cd $ANDROID_BUILD_TOP/hardware/ti'
alias ghwril='cd $ANDROID_BUILD_TOP/hardware/ril'
alias gti='cd $ANDROID_BUILD_TOP/device/ti'
alias gtiblaze='cd $ANDROID_BUILD_TOP/device/ti/blaze_tablet'
alias gsam='cd $ANDROID_BUILD_TOP/device/samsung'
alias gven='cd $ANDROID_BUILD_TOP/vendor'
alias ggog='cd $ANDROID_BUILD_TOP/device/google'
alias gcom='cd $ANDROID_BUILD_TOP/device/common'
alias ggen='cd $ANDROID_BUILD_TOP/device/generic'
alias gasus='cd $ANDROID_BUILD_TOP/device/asus'
alias gdgrouper='cd $ANDROID_BUILD_TOP/device/asus/grouper'
alias grepo='cd $ANDROID_BUILD_TOP/.repo'
alias glmanifests='cd $ANDROID_BUILD_TOP/.repo/local_manifests'

alias gpl='cd $BUILD_DIR/android-paranoid && $ENVSETUP && lunch'	
alias gal='cd $BUILD_DIR/aosp && $ENVSETUP && lunch'	
alias g1l='cd $BUILD_DIR/android-cm-10 && $ENVSETUP && lunch'	
alias gol='cd $BUILD_DIR/android-omapzoom && $ENVSETUP && lunch'	
alias rpsytrace='repo --trace sync -j16'
alias rpsy='repo sync -j16'
alias rpinit-pa='repo init -u git://github.com/ParanoidAndroid/manifest.git -b'
alias rpinit-cm='repo init  -u git://github.com/CyanogenMod/android.git -b'
alias rpinit-linaro='repo init -u git://android.git.linaro.org/platform/manifest.git -b'
alias rpinit-aosp='repo init  -u https://android.googlesource.com/platform/manifest -b'
alias rpinit-omap='repo init  -u git://git.omapzoom.org/platform/omapmanifest.git -b'
alias tm16='time make -j16'
alias tm12='time make -j12'
alias tmk='time make'
alias mmsc='mm showcommands'

alias tz='tar -zxvf'
alias tj='tar -jxvf'

########## Quick Switch Common Directories ##################
alias gobuild='cd $BUILD_DIR'
alias gotc='cd $TOOLCHAINS_DIR'
alias gows='cd $WORKSPACE_DIR'
alias godroid='cd $ANDROID_DIR'
alias govendor='cd $VENDOR_DIR'
alias gosdk='cd $SDK'
alias gondk='cd $NDK'
################# ANDROID BUILD HELPERS #######################
##### root required ########
alias reboot='sudo reboot'
alias shdn='sudo shutdown now'
alias mount='sudo mount'
alias umount='sudo umount'
alias chown='sudo chown'
alias chmod='sudo chmod'
alias +x='sudo chmod +x'
alias +w='sudo chmod +w'
alias +r='sudo chmod +r'
alias rmrf='sudo rm -rf'
alias cprv='cp -rv'
alias cd-='cd -'
alias wgetf='wget -F'
alias androidsdk='$SDK/tools/android &'
 
alias 7d='7z d'
alias 7a='7z a'
alias 7x='7z x'
alias 7l='7z l'
alias 7u='7z u'
alias 7e='7z e'
alias g='$EDITOR'
alias sug='sudo $EDITOR'


alias settings='$EDITOR /media/android/setup/bash_aliases &'
alias lar='ls -lAhR'

alias lsdir='lsdirectory'
alias la='ls -lAh'
alias l1='ls -1'
alias l1r='find . -iname '
alias lr='ls -R'
alias apt-in='sudo $APT install'
alias apt-rm='sudo $APT remove'
alias apt-up='sudo $APT update'
alias apt-ug='sudo $APT upgrade'
alias apt-find='aptitude search'
alias apt-info='aptitude show'
alias apt-code='sudo $APT source'
alias qf='quick-find'
alias ps='ps aux'

alias ..='cd ..'
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias fh='free -h'
alias dfh='df -h'
alias rmrf='rm -rf'
alias objdump-arm='$TOOLCHAINS_DIR/arm-eabi-4.7/bin/arm-eabi-objdump' 
alias make-and='PATH=$ARM_EABI_TOOLCHAIN/arm-eabi-4.7/bin:$PATH  ARCH=arm SUBARCH=arm CROSS_COMPILE=arm-eabi- LOCALVERSION_AUTO=n make -j16'
alias make-arm47='PATH=$TOOLCHAINS_DIR/arm-eabi-4.7/bin:$PATH  ARCH=arm SUBARCH=arm CROSS_COMPILE=arm-eabi- LOCALVERSION_AUTO=n make -j16'
alias make-archos='PATH=$TOOLCHAINS_DIR/archos_arm_toolchain/usr/bin:$PATH CC=arm-linux-uclibcgnueabi-cc ARCH=arm SUBARCH=arm CROSS_COMPILE=arm-linux-uclibcgnueabi- LOCALVERSION_AUTO=n make -j16'
alias make-arm43='PATH=$TOOLCHAINS_DIR/arm-eabi-4.3.3/bin:$PATH  ARCH=arm SUBARCH=arm CROSS_COMPILE=arm-eabi- LOCALVERSION_AUTO=n make'
alias make-arm46='PATH=$TOOLCHAINS_DIR/arm-eabi-4.6/bin:$PATH  ARCH=arm SUBARCH=arm CROSS_COMPILE=arm-eabi- LOCALVERSION_AUTO=n make'
alias make-arm44='PATH=$TOOLCHAINS_DIR/arm-eabi-4.4.3/bin:$PATH  ARCH=arm SUBARCH=arm CROSS_COMPILE=arm-eabi- LOCALVERSION_AUTO=n make'

alias udev-android='sug /etc/udev/rules.d/51-android.rules'
alias udev-reload='sudo udevadm control --reload-rules'
alias adbg='ADB_TRACE=all a'
alias lns='ln -s'
alias doset='source $HOME/.bash_aliases'