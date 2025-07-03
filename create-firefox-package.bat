@echo off
echo Creating Firefox Extension Package...
echo.

REM Create temp directory for Firefox files
if exist "firefox-temp" rmdir /s /q "firefox-temp"
mkdir "firefox-temp"

REM Copy necessary files for Firefox
echo Copying files for Firefox extension...
copy "manifest_firefox.json" "firefox-temp\manifest.json"
copy "newtab.html" "firefox-temp\"
copy "newtab.js" "firefox-temp\"
copy "README.md" "firefox-temp\"

REM Copy icons directory
xcopy "icons" "firefox-temp\icons\" /E /I /Y

REM Create zip file using PowerShell
echo Creating ZIP package...
powershell -command "Compress-Archive -Path 'firefox-temp\*' -DestinationPath 'custom-new-tab-manager-firefox.zip' -Force"

REM Clean up temp directory
rmdir /s /q "firefox-temp"

echo.
echo ✅ Firefox extension package created: custom-new-tab-manager-firefox.zip
echo.
echo Package contents:
echo - manifest.json (Firefox v2)
echo - newtab.html (Main extension page)
echo - icons\ (16px, 48px, 128px icons)
echo - README.md (Documentation)
echo.
echo Ready for Firefox Add-ons upload!
pause 