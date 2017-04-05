## TWRP device tree for Acer Liquid Z500 (Z500)

Add to `.repo/local_manifests/Z500.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/acer/Z500" name="android_device_acer_Z500" remote="hejsekvojtech" revision="android-5.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_Z500-eng
make -j5 recoveryimage
```
