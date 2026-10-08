@echo off
setlocal EnableExtensions
rem Opens Guaita PDF Edit (English) in app mode (window without tabs or address bar).
rem Keep this file in the same folder as guaita_pdf_edit_X.Y_EN_app.html
rem Uses the most recent *_EN_app.html file in this folder.

set "APP="
for /f "delims=" %%F in ('dir /b /a-d /o-d "%~dp0guaita_pdf_edit_*_app.html" 2^>nul ^| findstr /i /l "_EN_app.html"') do (
  set "APP=%%F"
  goto :found
)
echo No guaita_pdf_edit_*_EN_app.html file found in: %~dp0
pause
exit /b 1

:found
set "FILE=%~dp0%APP%"
set "URL=file:///%FILE:\=/%"

set "BROWSER="
for %%B in (
  "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
  "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
  "%ProgramFiles%\Google\Chrome\Application\chrome.exe"
  "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
  "%LocalAppData%\Google\Chrome\Application\chrome.exe"
  "%ProgramFiles%\BraveSoftware\Brave-Browser\Application\brave.exe"
) do (
  if not defined BROWSER if exist %%B set "BROWSER=%%~B"
)

if not defined BROWSER goto :nobrowser
start "" "%BROWSER%" --app="%URL%" "--window-size=1500,950"
exit /b 0

:nobrowser
echo Edge, Chrome or Brave not found: opening in a tab of the default browser.
start "" "%FILE%"
exit /b 0
