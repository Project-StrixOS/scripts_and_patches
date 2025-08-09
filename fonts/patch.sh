#!/bin/bash

FONT_DIR=/data/extra/fonts

LOS_DIR=/data/lineage
EXT_DIR=$LOS_DIR/external

cp $FONT_DIR/LXGWWenKai-Regular.ttf $EXT_DIR/roboto-fonts/Roboto-Regular.ttf
cp $FONT_DIR/LXGWWenKai-Regular.ttf $EXT_DIR/roboto-fonts/RobotoStatic-Regular.ttf
cp $FONT_DIR/LXGWWenKai-Regular.ttf $EXT_DIR/roboto-flex-fonts/RobotoFlex-Regular.ttf
cp $FONT_DIR/LXGWWenKai-Regular.ttf $EXT_DIR/robolectric/nativeruntime/src/main/resources/fonts/RobotoStatic-Regular.ttf
cp $FONT_DIR/LXGWWenKai-Regular.ttf $EXT_DIR/robolectric/nativeruntime/src/main/resources/fonts/Roboto-Regular.ttf
cp $FONT_DIR/LXGWWenKai-Regular.ttf $EXT_DIR/noto-fonts/notoserif/NotoSerif-Regular.ttf
cp $FONT_DIR/LXGWWenKai-Regular.ttf $EXT_DIR/robolectric/nativeruntime/src/main/resources/fonts/NotoSerif-Regular.ttf

cp $FONT_DIR/LXGWWenKai-Medium.ttf $EXT_DIR/noto-fonts/notoserif/NotoSerif-Bold.ttf
cp $FONT_DIR/LXGWWenKai-Medium.ttf $EXT_DIR/robolectric/nativeruntime/src/main/resources/fonts/NotoSerif-Bold.ttf

cp $FONT_DIR/LXGWWenKai-Regular.ttf $EXT_DIR/robolectric/nativeruntime/src/main/resources/fonts/DroidSansMono.ttf
cp $FONT_DIR/LXGWWenKai-Regular.ttf $LOS_DIR/frameworks/base/data/fonts/DroidSansMono.ttf

# cp $FONT_DIR/LXGWWenKai-Light.ttf 
