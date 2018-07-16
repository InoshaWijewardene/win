rem https://www.gaijin.at/en/lstwinver.php
set output="%USERPROFILE%\Desktop\%COMPUTERNAME%_info.txt"

:: sets %v%, the version number of windows
for /f "tokens=4-7 delims=[.] " %i in ('ver') do @(if %i==Version (set v=%j.%k) else (set v=%i.%j))

echo INPUT_TTU_TAG_NO,INPUT_MODEL,INPUT_PROCESSOR_SPEED,%COMPUTERNAME%,%v%,%PROCESSOR_ARCHITECTURE%,  >> %output%
echo 