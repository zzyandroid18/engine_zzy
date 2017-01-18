

@echo off
set DIR=%~dp0
cd %DIR%

cmd /k "cocos compile -s . -p android --proj-dir proj.android-studio --ap android-18 --no-apk"

