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

## About LVGL

please refer to:

https://docs.lvgl.io/9.2/