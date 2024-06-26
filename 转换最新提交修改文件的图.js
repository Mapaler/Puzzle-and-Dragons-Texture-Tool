var fso = new ActiveXObject("Scripting.FileSystemObject");
var osh = new ActiveXObject("WScript.Shell");
var outPutFolder = fso.GetParentFolderName(WScript.ScriptFullName);
if (WScript.Arguments.length < 1)
{
	WScript.Echo("没有传入游戏数据文件路径参数。");
	WScript.Quit();
}else{
	if (fso.FolderExists(WScript.Arguments(0)))
	{
		var dataFileFolder = fso.GetFolder(WScript.Arguments(0));
	}else
	{
		WScript.Echo("游戏数据文件路径不存在。");
		WScript.Quit();
	}
}
osh.CurrentDirectory = dataFileFolder;
var gitCommand = "cmd /c git show --name-only --pretty^=";
var gitExec = osh.Exec(gitCommand);
while(!gitExec.StdOut.AtEndOfLine)
{
	var filepath = gitExec.StdOut.ReadLine();
	if (/\.(wav|oog|txt)$/i.test(filepath)) {
		WScript.Echo("跳过文件：" + filepath);
		continue;
	} else {
		WScript.Echo("正在处理文件：" + filepath);
	}
	var parentFolder = fso.GetParentFolderName(filepath).toLowerCase();
	osh.CurrentDirectory = outPutFolder;
	var pyCommand = "python PADTextureTool.py " + dataFileFolder + "\\" + filepath + " -o \"" + parentFolder + "\" -nt -nb";
	var pyExec = osh.Exec(pyCommand);
	WScript.Echo(pyExec.StdOut.ReadAll());
	/*
	while(!pyExec.StdOut.AtEndOfStream)
	{
		WScript.StdOut.Write(pyExec.StdOut.Read(1));
	}
	*/
}