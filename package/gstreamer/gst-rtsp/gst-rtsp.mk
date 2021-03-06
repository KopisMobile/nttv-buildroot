################################################################################
#
# gst-rtsp
#
################################################################################

GST_RTSP_VERSION = 0.10.8
GST_RTSP_SITE = http://gstreamer.freedesktop.org/src/gst-rtsp/
GST_RTSP_SOURCE = gst-rtsp-$(GST_RTSP_VERSION).tar.bz2
GST_RTSP_INSTALL_STAGING = YES
# configure not up to date
GST_RTSP_AUTORECONF = YES
GST_RTSP_LICENSE = BSD-3c
GST_RTSP_LICENSE_FILES = license.txt
#GST_RTSP_CONF_OPT = --disable-asm

define GST_RTSP_INSTALL_INIT_SYSV
       $(INSTALL) -m 777 -D output/build/gst-rtsp-$(GST_RTSP_VERSION)/examples/test-launch \
               $(TARGET_DIR)/usr/sbin/
       $(INSTALL) -m 777 -D output/build/gst-rtsp-$(GST_RTSP_VERSION)/examples/test-auth \
               $(TARGET_DIR)/usr/sbin/
endef

$(eval $(autotools-package))
