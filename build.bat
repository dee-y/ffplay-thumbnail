@echo off

rem Batch file to compile without Visual Studio

C:\Windows\Microsoft.NET\Framework64\v3.5\MSBuild.exe .\ffplay-thumbnail.sln /t:Build /p:Configuration=Release

del "ffplay-thumbnail.sln.cache"

@RD /S /Q "obj"
@RD /S /Q "CompiledBinary"

xcopy ".\bin\Release\FFplayThumbnail.exe" ".\CompiledBinary\"

@RD /S /Q "bin"

set /p FINISH=Building finished, hit ENTER to close this window....
