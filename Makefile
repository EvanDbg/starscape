export THEOS_DEVICE_IP = 192.168.0.19

export ARCHS = arm64 arm64e
export TARGET = iphone:clang::13.1.3
export GO_EASY_ON_ME = 1


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Starscape

Starscape_FILES = Tweak.x
Starscape_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
