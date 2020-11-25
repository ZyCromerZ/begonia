#! /bin/bash

 # Script For Building Android Kernel
 #
 # Copyright (c) 2020 ZyCromerZ <neetroid97@gmail.com>
 #
 # Licensed under the Apache License, Version 2.0 (the "License");
 # you may not use this file except in compliance with the License.
 # You may obtain a copy of the License at
 #
 #      http://www.apache.org/licenses/LICENSE-2.0
 #
 # Unless required by applicable law or agreed to in writing, software
 # distributed under the License is distributed on an "AS IS" BASIS,
 # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 # See the License for the specific language governing permissions and
 # limitations under the License.
 #

# Function to show an informational message
# need to defined
# - branch
# - spectrumFile
# Then call CompileKernel and done

MakeZip(){
    AnykernelPath=Anykernel3
    if [ ! -d $AnykernelPath ];then
        mkdir $AnykernelPath
        cd $AnykernelPath
        git clone https://github.com/ZyCromerZ/AnyKernel3 -b master-begonia .
        git fetch origin master master-begonia original
        git checkout origin/master && git checkout -b master
        git checkout origin/original && git checkout -b original
        AnykernelPath=$(pwd)
    else
        cd $AnykernelPath
        git reset --hard
        git fetch origin master-begonia
        git checkout master-begonia
        git reset --hard origin/master-begonia
        AnykernelPath=$(pwd)
    fi
    cp -af $MainPath/out/arch/arm64/boot/Image.gz-dtb $AnykernelPath && rm -f $MainPath/out/arch/arm64/boot/Image.gz-dtb 
    cp -af anykernel-real.sh anykernel.sh
    sed -i "s/kernel.string=.*/kernel.string=$KERNEL_NAME-$HeadCommit TEST by ZyCromerZ/g" anykernel.sh
    zip -r $MainPath/"[$TANGGAL]$KERNEL_NAME-$ZIP_KERNEL_VERSION.zip" ./ -x .git/**\* ./.git ./anykernel-real.sh ./.gitignore ./LICENSE ./README.md ./*.zip 
    cd $MainPath
}
if [ ! -d clang/google-clang ];then
    [ ! -d clang ] && mkdir clang
    git clone https://github.com/ZyCromerZ/google-clang -b 9.0.3-r353983c1 clang/google-clang
fi
if [ ! -d gcc/aarch64-linux-android-4.9 ];then
    [ ! -d gcc ] && mkdir gcc
    git clone https://github.com/ZyCromerZ/aarch64-linux-android-4.9 -b android-10.0.0_r47 gcc/aarch64-linux-android-4.9
fi
if [ ! -d gcc/arm-linux-androideabi-4.9 ];then
    [ ! -d gcc ] && mkdir gcc
    git clone https://github.com/ZyCromerZ/arm-linux-androideabi-4.9 -b android-10.0.0_r47 gcc/arm-linux-androideabi-4.9
fi
HeadCommit="$(git log --pretty=format:'%h' -1)"
export ARCH="arm64"
export SUBARCH="arm64"
export KBUILD_BUILD_USER="ZyCromerZ"
export KBUILD_BUILD_HOST="Lnix-$HeadCommit"
export CCACHE_DIR="begonia/ccache"
MainPath=$(pwd)
Defconfig="begonia_user_defconfig"
KERNEL_NAME=$(cat "$MainPath/arch/arm64/configs/$Defconfig" | grep "CONFIG_LOCALVERSION=" | sed 's/CONFIG_LOCALVERSION="-*//g' | sed 's/"*//g' )
ZIP_KERNEL_VERSION="4.14.$(cat "$MainPath/Makefile" | grep "SUBLEVEL =" | sed 's/SUBLEVEL = *//g')$(cat "$(pwd)/Makefile" | grep "EXTRAVERSION =" | sed 's/EXTRAVERSION = *//g')"
GetCore=$(nproc --all)
TANGGAL=$(date +"%m%d")

MAKE="./makeparallel"
rm -rf/out
make -j$(($GetCore))  O=out ARCH="arm64" SUBARCH="arm64" "$Defconfig"

make -j$(($GetCore))  O=out \
                            PATH="clang/google-clang/bin:gcc/aarch64-linux-android-4.9/bin:gcc/arm-linux-androideabi-4.9/bin:${PATH}" \
                            LD_LIBRARY_PATH="clang/google-clang/lib64:${LD_LIBRARY_PATH}" \
                            CC="ccache clang" \
                            CROSS_COMPILE=aarch64-linux-android- \
                            CROSS_COMPILE_ARM32=arm-linux-androideabi- \
                            CLANG_TRIPLE=aarch64-linux-gnu-
if [ -e/out/arch/arm64/boot/Image.gz-dtb ];then
    MakeZip
else
    echo "build failed . . ."
fi