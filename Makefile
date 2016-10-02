include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MadridDelete
MadridDelete_FILES = Tweak.xm
MadridDelete_PRIVATE_FRAMEWORKS = BulletinBoard IMCore Weather

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += madriddeletefix
include $(THEOS_MAKE_PATH)/aggregate.mk
