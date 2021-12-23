# Templates
Simple Visual Studio templates. Templates are made with VS2022 in mind, but earlier versions should still work just as well.

## Current Templates
| Template | Purpose |
| --- | --- |
| [Code Snippet](CodeSnippet) | Creates a .snippet file |
| [Program.cs](ConsoleAppProgramCS) | Simple 'Program.cs' file template with fixed syntax and C# 10.0 implementations |

## Building
All templates contain a 'Build.cmd' file which can be ran to automatically create template zip files and symbolic links. Paths in the batch file are hardcoded and **will have to be changed to match your system**. Additionally, 'Build.cmd' is dependent on 7-Zip, so ensure the application is installed. Alternatively, you can manually add the specified files to a zip archive yourself.
