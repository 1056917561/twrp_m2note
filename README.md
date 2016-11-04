TWRP device tree for Meizu M2 Note (MT6753)  
---
based against CM-13.0 - Marshmallow 
OTA device name : m2n / m2note / m571 / m571h 

1. Git clone this repository to $ANDROID_SOURCES/device/meizu/m2note/  
2. Add these lines to your local_manifest :  
```
<!-- TWRP Recovery -->
        <project path="bootable/recovery-twrp" name="Omnirom/android_bootable_recovery" remote="gh" revision="android-6.0" />
        <project path="external/busybox" name="CyanogenMod/android_external_busybox" remote="gh" revision="cm-13.0" />

```  
3. from the $ANDROID_SOURCES do :  
```
repo sync && make clean  
. build/envsetup.sh  
breakfast m2note  
make -jX recoveryimage  
```
Note: Make sure to replace -jX by your CPU number of cores +1, e.g. a quadcore would use -j5 (4+1).  
  
Your newly built recovery.img will be placed in :  
$ANDROID_SOURCES/out/target/product/m2note/ (recovery.img)  
  
Enjoy :)

