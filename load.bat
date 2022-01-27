set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
echo.>"Windows Hardware Insert1.wav":Zone.Identifier
echo.>"Windows Hardware Remove1.wav":Zone.Identifier
echo.>"Windows Background1.wav":Zone.Identifier
echo.>"Windows Recycle1.wav":Zone.Identifier
echo.>"Windows Notify System Generic1.wav":Zone.Identifier
xcopy "Windows Hardware Insert1.wav" "C:\Windows\Media" /y
xcopy "Windows Hardware Remove1.wav" "C:\Windows\Media" /y
xcopy "Windows Background1.wav" "C:\Windows\Media" /y
xcopy "Windows Recycle1.wav" "C:\Windows\Media" /y
xcopy "Windows Notify System Generic1.wav" "C:\Windows\Media" /y
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Hardware Insert1.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Modified" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Hardware Insert1.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceDisconnect\.Current" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Hardware Remove1.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceDisconnect\.Modified" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Hardware Remove1.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\.Default\.Current" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Background1.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\.Default\.Modified" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Background1.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemAsterisk\.Current" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Background1.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemAsterisk\.Modified" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Background1.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemExclamation\.Current" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Background1.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemExclamation\.Modified" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Background1.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemNotification\.Current" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Background1.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemNotification\.Modified" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Background1.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\EmptyRecycleBin\.Current" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Recycle1.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\EmptyRecycleBin\.Modified" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Recycle1.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\Notification.Default\.Current" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Notify System Generic1.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\Notification.Default\.Modified" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Notify System Generic1.wav"