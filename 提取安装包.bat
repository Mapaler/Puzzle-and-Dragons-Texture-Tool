@echo off
title ��ȡ����APKͼƬ
REM  %time:~,2%h%time:~3,2%m%time:~6,2%s
python3 PADTextureTool.py %UserProfile%\Nox_share\AppShare\jp.gungho.pad.apk --outdir "APK_%date:~,4%-%date:~5,2%-%date:~8,2%" -nt -nb
title ��ȡAPK���
echo ��ȡ���
pause