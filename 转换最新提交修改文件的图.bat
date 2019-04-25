set opath=%~dp0
set repository=C:\Users\CTFX\Nox_share\OtherShare\files\
cd /d %repository%
git config --global i18n.commit.encoding utf-8
git config --global i18n.logoutputencoding gbk
for /f %%i in ('git show --name-only --pretty^=') do (
cd /d %opath%
python PADTextureTool.py %repository%%%i -o temp -nt -nb
)
pause