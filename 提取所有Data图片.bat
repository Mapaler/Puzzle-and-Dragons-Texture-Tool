@echo off
title ��ȡ����DataͼƬ
REM  %time:~,2%h%time:~3,2%m%time:~6,2%s
PADTextureTool.py D:\CTFX\Documents\PadFiles\files-last\mon2\ --outdir "Data_%date:~,4%-%date:~5,2%-%date:~8,2%" -nt -nb
title ��ȡData���
echo ��ȡ���
pause