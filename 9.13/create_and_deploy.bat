copy Assembly-CSharp\Assembly-CSharp.dll tos-hijacked\assets\bin\Data\Managed
copy Assembly-CSharp\Assembly-Hijack.dll tos-hijacked\assets\bin\Data\Managed
jar cf tos-hijacked.zip -C tos-hijacked/ .
call signapk tos-hijacked
adb push tos-hijacked.apk /sdcard/tos/
adb push game_config.json /sdcard/tos/
pause