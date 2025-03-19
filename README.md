# OpenWrt LVGL package

This package is dedicated to running LVGL demo on GL.iNet GL-BE3600 (Slate 7)

## Compile

please refer to:

https://github.com/gl-inet/glbuilder?tab=readme-ov-file#add-your-own-ipk

## Install

scp **gl-lvgl_2025-2-7-c924e24c-1_arm_cortex-a7_neon-vfpv4.ipk** to BE3600's root directory

```
$ opkg update
$ opkg install /gl-lvgl_2025-2-7-c924e24c-1_arm_cortex-a7_neon-vfpv4.ipk
```
## Some Command
### shell
```
# Turn off the screen
$ echo 1 > /sys/devices/platform/soc/78b5000.spi/spi_master/spi0/spi0.0/graphics/fb0/blank
# Turn on the screen
$ echo 0 > /sys/devices/platform/soc/78b5000.spi/spi_master/spi0/spi0.0/graphics/fb0/blank
# set backlight, max 11
$ echo 6 > /sys/class/backlight/soc:backlight/brightness
```
### C code
```
/* Turn on/off the screen */
void lv_linux_fbdev_set_unblank(lv_display_t * disp)
void lv_linux_fbdev_set_blank(lv_display_t * disp)
```

## About LVGL

please refer to:

https://docs.lvgl.io/9.2/
