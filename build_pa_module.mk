LOCAL_MODULE_FILENAME := $(LOCAL_MODULE)
LOCAL_CFLAGS := $(PULSE_CFLAGS) -DPA_MODULE_NAME=$(subst -,_,$(LOCAL_MODULE)) $(LOCAL_CFLAGS)
LOCAL_C_INCLUDES += $(PULSEAUDIO_PATH) $(LOCAL_PATH) $(LIBTOOL_DIR)
LOCAL_STATIC_LIBRARIES := libltdl_pulse $(LOCAL_STATIC_LIBRARIES)
LOCAL_SHARED_LIBRARIES := libpulsecore libpulsecommon libpulse $(LOCAL_SHARED_LIBRARIES)
LOCAL_MULTILIB := 32
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/pulse/lib/modules

include $(BUILD_SHARED_LIBRARY)
