include theos/makefiles/common.mk

BUNDLE_NAME = ElevatedGliders
ElevatedGliders_FILES = ElevatedGliders.mm
ElevatedGliders_INSTALL_PATH = /Library/PreferenceBundles
ElevatedGliders_FRAMEWORKS = UIKit
ElevatedGliders_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/ElevatedGliders.plist$(ECHO_END)
