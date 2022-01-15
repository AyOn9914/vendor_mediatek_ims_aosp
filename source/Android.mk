LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
MY_IMS_PATH :=  vendor/mediatek/ims

LOCAL_SRC_FILES:= \
        Source.cpp \
        EncoderSource.cpp \
        VTCameraSource.cpp

LOCAL_C_INCLUDES:= \
        frameworks/native/include/media/openmax \
        frameworks/native/include/media/hardware \
        frameworks/av/media/libstagefright \
        frameworks/av/media \
        frameworks/av/include \
        frameworks/av/drm/libmediadrm/interface \
        frameworks/av/media/libmediametrics/include \
        system/core/include/utils \
        $(MY_IMS_PATH)/comutils \
        $(MY_IMS_PATH)/signal

LOCAL_SHARED_LIBRARIES:= \
        libbinder \
        libcutils \
        libgui \
        libmedia \
        libstagefright \
        libstagefright_foundation \
        libmedia_omx \
        libui \
        libutils \
        libcamera_client \
        libcomutils \
        libvcodec_cap \
        liblog \
        libsignal \
        libhardware

LOCAL_CFLAGS += -Werror -Wno-error=deprecated-declarations -Wall

# Cross crypto handeling
LOCAL_CFLAGS += -DPLATFORM_VERSION=$(PLATFORM_VERSION)

LOCAL_MODULE:= libsource

LOCAL_MODULE_TAGS:= optional

include $(BUILD_SHARED_LIBRARY)
