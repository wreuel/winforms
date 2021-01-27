@echo off

pushd "%~dp0"

setlocal

set RepoRoot=..\..
set LocProject=%~dp0LocProject.json
set LocalizationXLocPkgVer=2.0.1

set OutDir=%~dp0out
set NUGET_PACKAGES=C:\Users\igveliko\.nuget\packages
set XLocPath=%NUGET_PACKAGES%\Localization.XLoc\%LocalizationXLocPkgVer%

echo Running Localization...

::"%XLocPath%\tools\netfx\Microsoft.Localization.XLoc.exe" /f "%LocProject%"
dotnet "%XLocPath%\tools\netcore\Microsoft.Localization.XLoc.dll" /f "%LocProject%"

echo Localization finished with exit code '%errorlevel%'.

popd
exit /b %errorlevel%