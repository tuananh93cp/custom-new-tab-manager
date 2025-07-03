@echo off
echo Creating Chrome Extension Package...
echo.

REM Create temp directory for Chrome files
if exist "chrome-temp" rmdir /s /q "chrome-temp"
mkdir "chrome-temp"

REM Copy necessary files for Chrome
echo Copying files for Chrome extension...
copy "manifest.json" "chrome-temp\"
copy "newtab.html" "chrome-temp\"
copy "newtab.js" "chrome-temp\"
copy "README.md" "chrome-temp\"

REM Copy icons directory
xcopy "icons" "chrome-temp\icons\" /E /I /Y

REM Create zip file using PowerShell
echo Creating ZIP package...
powershell -command "Compress-Archive -Path 'chrome-temp\*' -DestinationPath 'custom-new-tab-manager-chrome.zip' -Force"

REM Clean up temp directory
rmdir /s /q "chrome-temp"

echo.
echo ✅ Chrome extension package created: custom-new-tab-manager-chrome.zip
echo.
echo Package contents:
echo - manifest.json (Chrome v3)
echo - newtab.html (Main extension page)
echo - icons\ (16px, 48px, 128px icons)
echo - README.md (Documentation)
echo.
echo Ready for Chrome Web Store upload!
pause 