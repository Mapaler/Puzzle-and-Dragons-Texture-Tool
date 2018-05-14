@echo off
title 提取所有Data图片
REM  %time:~,2%h%time:~3,2%m%time:~6,2%s
PADTextureTool.py D:\CTFX\Documents\PadFiles\files\mon2\ --outdir "Data_%date:~,4%-%date:~5,2%-%date:~8,2%" -nt -nb
title 提取Data完成
echo 提取完成
pause