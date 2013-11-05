ifneq ($(filter msm8960,$(TARGET_BOARD_PLATFORM)),)

AUDIO_HW_ROOT := $(call my-dir)

ifeq ($(strip $(BOARD_USES_ALSA_AUDIO)),true)
    include $(AUDIO_HW_ROOT)/alsa_sound/Android.mk
    include $(AUDIO_HW_ROOT)/libalsa-intf/Android.mk
    include $(AUDIO_HW_ROOT)/mm-audio/Android.mk
endif
endif
