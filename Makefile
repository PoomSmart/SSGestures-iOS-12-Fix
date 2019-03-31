ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SSGesturesiOS12Fix
SSGesturesiOS12Fix_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk


