@echo off

color 03
echo.
echo.

echo           Actualizador de MODS
echo              Version 2.3
echo.
echo.

echo Desea descargar los nuevos MODS? [S/N] (luego enter)
echo.>MiPregunta.$$$
DEL MiPregunta.$$$ /P > NUL
if exist MiPregunta.$$$ goto No

cls
echo Comenzando....
rd /s /q "%~d0%~p0\mods" /s
taskkill /IM javaw.exe /F
del  "%userprofile%\AppData\Roaming\.minecraft\mods\*.jar"
cls
git clone https://github.com/Soulote/mods.git
xcopy "%~d0%~p0\mods\*.*" "%userprofile%\AppData\Roaming\.minecraft\mods" /y
rd /s /q "%~d0%~p0\mods" /s

goto Fin
:No
del MiPregunta.$$$
cls
echo.
echo.
echo Cancelando proceso....
:Fin
echo.
echo.

echo /////////////////////////////////////////////////////////////////
echo /////////////////////////////////////////////////////////////////
echo /////////////////////////////////////////////////////////////////
echo //////                /////      /////          ///////      ////
echo //////                /////      /////      //   //////      ////
echo //////      ///////////////      /////      ///   /////      ////
echo //////      ///////////////      /////      ////   ////      ////
echo //////             ////////      /////      /////  ////      ////
echo //////             ////////      /////      //////  ///      ////
echo //////      ///////////////      /////      ///////  //      ////
echo //////      ///////////////      /////      ////////  /      ////
echo //////      ///////////////      /////      ////////         ////
echo /////////////////////////////////////////////////////////////////
echo ////////////////////////by La Abogada////////////////////////////
echo /////////////////////////////////////////////////////////////////
timeout /t 5
