#!/bin/bash

curl -LSs "https://raw.githubusercontent.com/SukiSU-Ultra/SukiSU-Ultra/main/kernel/setup.sh" | bash -s susfs-main

PK_DIR=/data/build/kernel_patches

cp /data/extra/susfs4ksu/kernel_patches/fs/* fs/
cp /data/extra/susfs4ksu/kernel_patches/include/linux/* include/linux/

patch -p1 </data/extra/susfs4ksu/kernel_patches/50_add_susfs_in_gki-android13-5.15.patch

patch -p1 </data/extra/SukiSU_patch/69_hide_stuff.patch

patch -p1 </data/extra/SukiSU_patch/hooks/syscall_hooks.patch

#patch -p1 <$PK_DIR/Makefile.diff
sed -i 's/^EXTRAVERSION =.*/EXTRAVERSION = -android13-8/' Makefile
#patch -p1 <$PK_DIR/arch_arm64_Makefile.diff
patch -p1 <$PK_DIR/scripts_setlocalversion.diff

cp $PK_DIR/patch_kpm.sh .
cp /data/extra/SukiSU_patch/kpm/patch_linux .
chmod 755 patch_linux

git status|grep -F '.orig'|awk '{print $1}'|xargs rm -f

cat $PK_DIR/config_fuxi.conf >> arch/arm64/configs/vendor/fuxi_GKI.config

patch -p1 <$PK_DIR/mi_thermal_interface.diff
