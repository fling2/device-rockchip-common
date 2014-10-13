# File   : AUTO GENERATED MAKE FILE
# Date   : Mon Mar 17 20:32:09 CST 2014
# Author : hyl
# ===============================================
ifeq ($(strip $(BOARD_USE_LCDC_COMPOSER)), true)
PRODUCT_COPY_FILES += \
  device/rockchip/common/proprietary/lib/dedicated/gralloc.rk30board.so:system/lib/hw/gralloc.rk30board.so    \
  device/rockchip/common/proprietary/lib/dedicated/audio.primary.rk30board.so:system/lib/hw/audio.primary.rk30board.so    \
  device/rockchip/common/proprietary/lib/dedicated/audio_policy.rk30board.so:system/lib/hw/audio_policy.rk30board.so    \
  device/rockchip/common/proprietary/lib/dedicated/alsa.default.so:system/lib/hw/alsa.default.so    \
  device/rockchip/common/proprietary/lib/dedicated/acoustics.default.so:system/lib/hw/acoustics.default.so

else
PRODUCT_COPY_FILES += \
  device/rockchip/common/proprietary/lib/osmem/gralloc.rk30board.so:system/lib/hw/gralloc.rk30board.so    \
  device/rockchip/common/proprietary/lib/osmem/audio.primary.rk30board.so:system/lib/hw/audio.primary.rk30board.so    \
  device/rockchip/common/proprietary/lib/osmem/audio_policy.rk30board.so:system/lib/hw/audio_policy.rk30board.so    \
  device/rockchip/common/proprietary/lib/osmem/alsa.default.so:system/lib/hw/alsa.default.so    \
  device/rockchip/common/proprietary/lib/osmem/acoustics.default.so:system/lib/hw/acoustics.default.so
endif

