@echo off

set /p dnm="Please enter disk number: "
(
echo select disk %dnm%
echo clean
echo convert gpt
echo exit
) > script.txt
diskpart /s script.txt

pause