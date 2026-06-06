@echo off

set /p dnm="Please enter disk number: "

(
echo select disk %dnm%
echo clean
echo create partition primary
echo select partition 1
echo format fs=ntfs quick
echo assign
echo exit
) > script.txt

diskpart /s script.txt

pause
