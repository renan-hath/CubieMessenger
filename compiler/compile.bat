@echo off
set name=cubie-%RANDOM%.apk
echo Compiling %name%
java -Xmx2048m -jar vendor\apktool_2.0.3.jar -f b ".." -o "dist\%name%"
echo Signing
jarsigner -keystore vendor\clubie.keystore -storepass palisdead dist\%name% clubie
echo Zipaling
vendor\zipalign.exe -c 4 dist\%name%
echo Done! Press any key to close this window
pause > nul