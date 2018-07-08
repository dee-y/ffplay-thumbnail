@echo off

rem Batch file to compile without Visual Studio

rem Getting parameter
set action="%1"

rem If the parameter is not known, exiting the program
if not %action%=="all" (
    if not %action%=="build" (
        if not %action%=="install" (
            if not %action%=="clean" (
                if not %action%=="uninstall" (
                    goto error
                )
            )
        )
    )
)

rem If parameter is uninstall, go directly to uninstall function
if %action%=="uninstall" (
    rem Uninstall function
    :uninstall
    echo Uninstalling FFplayThumbnail.........
    del %SYSTEMDRIVE%\tools\ffmpeg-utilities\FFplayThumbnail.exe
    regedit.exe /S import uninstall-context-menu.reg
    goto end
)

rem If parameter is install, go directly to install function
if %action%=="install" (
    goto install
)

rem If parameter is clean, go directly to clean function
if %action%=="clean" (
    goto clean
)

rem Build function
:build
echo Building FFplayThumbnail.........
C:\Windows\Microsoft.NET\Framework64\v3.5\MSBuild.exe .\ffplay-thumbnail.sln /t:Build /p:Configuration=Release
xcopy ".\bin\Release\FFplayThumbnail.exe" ".\CompiledBinary\"
if not %action%=="all" (
    goto end
)

rem Install function
:install
echo Installing FFplayThumbnail to %SYSTEMDRIVE%\tools\ffmpeg-utilities\.........
xcopy ".\CompiledBinary\FFplayThumbnail.exe" "%SYSTEMDRIVE%\tools\ffmpeg-utilities\"
regedit.exe /S import install-context-menu.reg
if not %action%=="all" (
    goto end
)

rem Clean function
:clean
echo Clearing temporary files.........
del "ffplay-thumbnail.sln.cache"
@RD /S /Q "obj"
@RD /S /Q "CompiledBinary"
@RD /S /Q "bin"

rem End function
:end
set /p FINISH=Building finished, hit ENTER to close this window....
exit 0

rem Error function
:error
echo "Unknown parameter!"
