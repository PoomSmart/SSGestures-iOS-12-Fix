ARCHS = arm64 arm64e
PACKAGE_VERSION = 0.0.1.1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SSGesturesiOS12Fix
SSGesturesiOS12Fix_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
