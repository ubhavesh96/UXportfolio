@echo off
title Bhavesh Portfolio - localhost:5000
cd /d "%~dp0"
set PAGE=index.html
if not exist "%PAGE%" set PAGE=index.html
if not exist "%PAGE%" (
  echo Could not find bhavesh-portfolio.html in this folder.
  echo Put this file in the same folder as bhavesh-portfolio.html and the portfolio-assets folder.
  pause
  goto :eof
)
if not exist "portfolio-assets" echo Note: portfolio-assets folder not found here, so your photo and resume will not show.
echo Starting your portfolio at http://localhost:5000/%PAGE%
echo Keep this window open. Close it to stop the website.
echo.
where python >nul 2>nul && (start "" "http://localhost:5000/%PAGE%" & python -m http.server 5000 & goto :eof)
where py >nul 2>nul && (start "" "http://localhost:5000/%PAGE%" & py -m http.server 5000 & goto :eof)
where npx >nul 2>nul && (start "" "http://localhost:5000/%PAGE%" & npx --yes serve -l 5000 . & goto :eof)
echo Python or Node.js is not installed.
echo Install Python from https://www.python.org/downloads/ (tick "Add python.exe to PATH"), then double-click this file again.
pause
