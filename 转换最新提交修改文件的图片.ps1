$opath = Split-Path -Parent $MyInvocation.MyCommand.Definition #记录当前路径
$repository="C:\Users\CTFX\Nox_share\OtherShare\files\"
cd $repository
git config --global i18n.commit.encoding utf-8
git config --global i18n.logoutputencoding gbk
$sku=git show --name-only --pretty=format:''
cd $opath
foreach ($skuLine in $sku) {
python PADTextureTool.py ($repository + $skuLine) -o temp -nt -nb
}