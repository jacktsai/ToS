rem adb shell screenrecord  --help
rem pause
rem adb shell screenrecord --size 1280x720 --bit-rate 500000 --time-limit 60 /sdcard/record_cheap.mp4
adb shell screenrecord --bit-rate 10000000 --time-limit 180 /sdcard/reg1.mp4
adb shell screenrecord --bit-rate 10000000 --time-limit 120 /sdcard/reg2.mp4
