
export ARCHS = armv7 arm64
THEOS_BUILD_DIR = Packages
SDK = iPhoneOS7.1

include theos/makefiles/common.mk

TWEAK_NAME = ElevatedGliders
ElevatedGliders_FILES = Tweak.xm
ElevatedGliders_FRAMEWORKS = UIKit
ElevatedGliders_LIBRARIES = activator

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
