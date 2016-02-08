@echo off
"%~dp0wget.exe" -i "%~dp0patches.lst"
for %%a in ('dir "%~dp0*.cab" /b') do "%~dp07z.exe" x "%%a" -o"%~dp0" -y
rem del "%~dp0*.cab" /F /Q
"%~dp07z.exe" e "%~dp0OfficeXpSp3-kb832671-fullfile-enu.exe" i MAINSP3ff.msp -o"%~dp0" -y
rem del "%~dp0OfficeXpSp3-kb832671-fullfile-enu.exe" /F /Q
pause
