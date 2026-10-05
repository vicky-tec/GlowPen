$env:NODE_ENV="development"
$env:FULLSCREEN_DEV="true"
Write-Host "Starting GlowPen in development mode..." -ForegroundColor Cyan
& .\node_modules\.bin\electron-forge.cmd start
