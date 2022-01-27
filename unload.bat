set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Hardware Insert.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Modified" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Hardware Insert.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceDisconnect\.Current" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Hardware Remove.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceDisconnect\.Modified" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Hardware Remove.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\.Default\.Current" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Background.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\.Default\.Modified" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Background.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemAsterisk\.Current" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Background.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemAsterisk\.Modified" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Background.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemExclamation\.Current" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Background.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemExclamation\.Modified" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Background.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemNotification\.Current" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Background.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemNotification\.Modified" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Background.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\EmptyRecycleBin\.Current" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Recycle.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\EmptyRecycleBin\.Modified" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Recycle.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\Notification.Default\.Current" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Notify System Generic.wav"
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\Notification.Default\.Modified" /f /v "" /t REG_SZ /d "C:\Windows\media\Windows Notify System Generic.wav"
IF EXIST "C:\Windows\Media\Windows Hardware Insert1.wav" ( del "C:\Windows\Media\Windows Hardware Insert1.wav" )
IF EXIST "C:\Windows\Media\Windows Hardware Remove1.wav" ( del "C:\Windows\Media\Windows Hardware Remove1.wav" )
IF EXIST "C:\Windows\Media\Windows Background1.wav" ( del "C:\Windows\Media\Windows Background1.wav" )
IF EXIST "C:\Windows\Media\Windows Recycle1.wav" ( del "C:\Windows\Media\Windows Recycle1.wav" )
IF EXIST "C:\Windows\Media\Windows Notify System Generic1.wav" ( del "C:\Windows\Media\Windows Notify System Generic1.wav" )