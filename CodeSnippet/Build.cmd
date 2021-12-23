@echo off
del "CodeSnippet.zip"
"E:\Programs\7-Zip\7z.exe" a -tzip "CodeSnippet.zip" "CodeSnippet.vstemplate" "My.snippet" "CodeSnippet.ico" "Screenshot.png"
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
del "E:\Documents\Visual Studio 2022\Templates\ItemTemplates\CodeSnippet.zip"
mklink /h "E:\Documents\Visual Studio 2022\Templates\ItemTemplates\CodeSnippet.zip" "CodeSnippet.zip"
ping -n 3 localhost >nul
exit