@echo off
setlocal EnableExtensions
rem Obre Guaita PDF Edit en mode aplicacio (finestra sense pestanyes ni barra d'adreces).
rem Deixa aquest fitxer a la mateixa carpeta que guaita_pdf_edit_X.Y_app.html
rem Fa servir el fitxer *_app.html mes recent d'aquesta carpeta (la versio catalana; la anglesa te el seu llancador).

set "APP="
for /f "delims=" %%F in ('dir /b /a-d /o-d "%~dp0guaita_pdf_edit_*_app.html" 2^>nul ^| findstr /v /i /l "_EN_app.html"') do (
  set "APP=%%F"
  goto :found
)
echo No s'ha trobat cap fitxer guaita_pdf_edit_*_app.html a: %~dp0
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
echo No s'ha trobat Edge, Chrome ni Brave: s'obre en una pestanya del navegador predeterminat.
start "" "%FILE%"
exit /b 0
