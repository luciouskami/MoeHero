@echo off
if "%1" == "" goto default
set userinput=%1
goto start
:default
 set userinput=%~dp0\
:start

del "%~dp0\map\lua\currentpath.lua"
"%~dp0tools\w3x2lni\src\build\lua.exe" "%~dp0tools\make.lua" "release" "%userinput%"
del "%~dp0\map\lua\currentpath.lua"

"%~dp0tools\Model_Encrypt\build\lua.exe" "%~dp0tools\Model_Encrypt\src\encrypt.lua" "%~dp0tools\Model_Encrypt\\" "%~dp0MoeHero.w3x"
del "%~dp0MoeHero.w3x"
rename "%~dp0���ܹ�ģ�͵�MoeHero.w3x" "MoeHero.w3x"

pause
