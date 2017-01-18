LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dlua_shared

LOCAL_MODULE_FILENAME := libcocos2dlua

LOCAL_SRC_FILES := \
../../../Classes/AppDelegate.cpp \
../../../Classes/lua_reg_auto.cpp \
hellolua/main.cpp 
#pbc_by_yj
LOCAL_SRC_FILES += ../../../Classes/custom/protocol/pbc/src/alloc.c \
../../../Classes/custom/protocol/pbc/src/array.c \
../../../Classes/custom/protocol/pbc/src/bootstrap.c \
../../../Classes/custom/protocol/pbc/src/context.c \
../../../Classes/custom/protocol/pbc/src/decode.c \
../../../Classes/custom/protocol/pbc/src/map.c \
../../../Classes/custom/protocol/pbc/src/pattern.c \
../../../Classes/custom/protocol/pbc/src/proto.c \
../../../Classes/custom/protocol/pbc/src/register.c \
../../../Classes/custom/protocol/pbc/src/rmessage.c \
../../../Classes/custom/protocol/pbc/src/stringpool.c \
../../../Classes/custom/protocol/pbc/src/varint.c \
../../../Classes/custom/protocol/pbc/src/wmessage.c \
../../../Classes/custom/protocol/pbc/pbc-lua.c \

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../Classes 
#pbc_by_yj
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../../Classes/custom/protocol/pbc \


# _COCOS_HEADER_ANDROID_BEGIN
# _COCOS_HEADER_ANDROID_END

LOCAL_STATIC_LIBRARIES := cocos2d_lua_static

# _COCOS_LIB_ANDROID_BEGIN
# _COCOS_LIB_ANDROID_END

include $(BUILD_SHARED_LIBRARY)

$(call import-module,scripting/lua-bindings/proj.android)


# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END


APP_PLATFORM := android-23
