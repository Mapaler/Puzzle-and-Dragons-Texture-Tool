@echo off
title 提取所有APK图片
REM  %time:~,2%h%time:~3,2%m%time:~6,2%s
PADTextureTool.py ..\jp.gungho.padHT\assets --outdir "APK_%date:~,4%-%date:~5,2%-%date:~8,2%" -nt -nb
title 提取APK完成
echo 提取完成
pause