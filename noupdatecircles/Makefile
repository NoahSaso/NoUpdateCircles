include theos/makefiles/common.mk

BUNDLE_NAME = NoUpdateCircles
NoUpdateCircles_FILES = NoUpdateCircles.mm
NoUpdateCircles_INSTALL_PATH = /Library/PreferenceBundles
NoUpdateCircles_FRAMEWORKS = UIKit
NoUpdateCircles_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/NoUpdateCircles.plist$(ECHO_END)
