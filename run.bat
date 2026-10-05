@echo off
title Running GlowPen...
echo Starting GlowPen in development mode...
set NODE_ENV=development
set FULLSCREEN_DEV=true
call .\node_modules\.bin\electron-forge.cmd start
pause
