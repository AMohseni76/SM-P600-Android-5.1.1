#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:7632896:c86d2ae99c2687b512ae4689e3ba69e66d5d65cb; then
  applypatch EMMC:/dev/block/mmcblk0p9:6971392:15c9e6d6fcdf32adaf192b2e63e0a40a10c481dc EMMC:/dev/block/mmcblk0p10 c86d2ae99c2687b512ae4689e3ba69e66d5d65cb 7632896 15c9e6d6fcdf32adaf192b2e63e0a40a10c481dc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
