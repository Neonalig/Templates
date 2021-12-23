@echo off
del "Program.cs.zip"
"E:\Programs\7-Zip\7z.exe" a -tzip "Program.cs.zip" "ConsoleAppProgramCS.csproj" "ConsoleAppProgramCS.sln" "ConsoleAppProgramCS.vstemplate" "ConsoleAppProgramCS.csproj.user" "ConsoleAppProgramCS.csproj.DotSettings" "CSFile.ico" "Program.cs" "Screenshot.png"
if not errorlevel 0 (
	echo.
	echo.
	echo An unexpected error occurred.
	pause
	exit
)
echo.
echo.
echo Build successful.
rem if not exist "E:\Documents\Visual Studio 2022\Templates\ItemTemplates\Program.cs.zip" (
rem	echo Symbolic link does not exist. Creating...
del "E:\Documents\Visual Studio 2022\Templates\ItemTemplates\Program.cs.zip"
mklink /h "E:\Documents\Visual Studio 2022\Templates\ItemTemplates\Program.cs.zip" "Program.cs.zip"
rem )
ping -n 3 localhost >nul
exit