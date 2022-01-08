@echo off

color 03
echo.
echo.

echo           Actualizador de MODS
echo              Version 2.4
echo.
echo.

echo Desea descargar los nuevos MODS? [S/N] (luego enter)
echo.>MODSVAR.$$$
DEL MODSVAR.$$$ /P > NUL
if exist MODSVAR.$$$ goto No

    cls
    echo Comenzando....
    rd /s /q "%~d0%~p0\minecraft-mods" /s
    taskkill /IM javaw.exe /F
    del  "%userprofile%\AppData\Roaming\.minecraft\mods\*.jar"
    cls
    git clone https://github.com/scorpion2211/minecraft-mods.git
    xcopy "%~d0%~p0\minecraft-mods\*.*" "%userprofile%\AppData\Roaming\.minecraft\mods" /y
    rd /s /q "%~d0%~p0\minecraft-mods" /s
    cls

    echo Desea incluir el Mod para Shaders? [S/N] (luego enter)
    echo.>SHADERS.$$$
    DEL SHADERS.$$$ /P > NUL
    if exist SHADERS.$$$ goto No
        echo.
        echo.
        echo Incluyendo Shaders....
    goto Fin
    :No
        del SHADERS.$$$
        echo.
        echo.
        echo Eliminando Shaders....
        del "%userprofile%\AppData\Roaming\.minecraft\mods\iris_shaders.jar"
    :Fin
goto Fin
:No
del MODSVAR.$$$
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
