:: �����ʽ GB2312  
@echo off
echo �ǵ�д�ܱ�
set day=%date:~-1%
:a

if %day%==�� (
	echo %day%
	choice /t 5 /d y /n >nul
	exit
)
adb shell dumpsys activity | findstr "mFocusedActivity"
choice /t 60 /d y /n >nul
goto a
