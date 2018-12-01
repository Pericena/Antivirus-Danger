
@rem bin\windows\bat
@rem Sigueme en las redes Sociales:
@rem ?? Blogger          https://lpericena.blogspot.com/
@rem ?? Github            https://github.com/Pericena
@rem ?? youtube.com  https://www.youtube.com/channel/UCELx...
@rem ?? pinterest        https://es.pinterest.com/lushiopericena/
@rem ?? twitter             https://twitter.com/LPericena
@rem ?? linkedin         https://www.linkedin.com/in/lpericena/
@rem ?? facebook       https://www.facebook.com/profile.php?...
@rem pagina facebook  https://www.facebook.com/lpericena
@rem ?? sitio web        https://pericena.wordpress.com/
@rem vimeo         https://vimeo.com/lpericena
@rem ?? instagram      https://www.instagram.com/lpericena/
@rem ?? remote      https://remote.com/luishinopericena-c...
@rem ? google+   https://plus.google.com/u/0/114054031...
@rem ?? kiwi       https://kiwi.qa/LuishinoC
@rem ?? App    https://apps.facebook.com/16746693372...
@rem ?? Grupo    https://www.facebook.com/groups/12222...
@rem ?? socialtools https://www.socialtools.me/index?acti...
@rem ? teachlr    https://teachlr.com/lpericena
@rem ?? wikipedia  https://es.wikipedia.org/wiki/Usuario...
@rem ?? ask          https://ask.fm/Lpericena
@rem ?? stackoverflow  https://stackoverflow.com/users/65065...
@rem ?? wix https://lpericena.wixsite.com/curricu...

@echo off
@echo [ON ^| OFF]
TITLE AntivirusUsb-Danger
COLOR 07
mode con lines=40 cols=85
setlocal enabledelayedexpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a")
<nul set /p=""

:VARIABLES
set ESC=
set ADroid=AntivirusUsb-Danger:v2.0

:MENU
cls
:in
call :PainText 02 "Hola"
echo.  %username%
echo.                       .,.:::,:ii:::::::i:iiiiiir:             
echo.                  rG@@B@B@@@B@B@B@B@B@B@B@B@B@@@B@Bu ......... 
echo.                7B@@BMOO@7  SBE  i@B@B@B@B@MM8O8OO@BUukF5LvLJBi
echo.               OB@OOGGZ8M5  q@v  OBM@1. .:u@BOZZE8M@     ,v. Fi
echo.              jBM8GZZZGZ8B@ .B  @B:  v2     OBOEZEM@     2@Y 5;
echo.             ,BBGG0GEZ0GEOBu:v EB.   @@1     @OGEGM@     L@v Fi
echo.             5BO8EGEZ0ZZZZMBB iB8  BX .      GBZZEM@         ur
echo.             LBMGGEGZGEGZ8M@  i@O  : PBj     @O8EGM@     7Mv ur
echo.              O@OEZEGEGE8O@r v i@k   q@u    2BOZZZMB     u@2 L7
echo.               @BOZ8EZZZ8@5  @: F@q:i.    ,E@MEGEGO@     .J: 7v
echo.               .@B@OOG8Z@u   Bq  i@B@@@M@B@BMG8Z88BB5J511JvYjBL
echo.                 7B@@@B@@@Pi7@B7U@@@B@B@B@@@B@B@B@BM,
echo.                   .75ZMMM@@@B@@@MOGOEGZGEZ0E0NqEki
call :PainText 02 "                         Autor "
call :PainText 08 " Luishino Pericena"   
echo.
echo.                  https://lpericena.blogspot.com/ 
echo                     Dia : %date% / Horas :%time% 
echo.                      version %ESC%%ADroid% 
echo.
FOR %%A IN (D E F G H I J K L M N O P Q R S T U V W X Y Z) DO CALL :COMP %%A
:COMP
SET UNIDAD=%1
FSUTIL FSINFO DRIVETYPE "%UNIDAD%:" >nul

for %%_ in (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z) do (
       dir /b %%_:\ > nul 2>&1 && (
call :PainText 06 "                [-] Unidad"	 
call :PainText 02 " %%_"	 
echo.: %ESC%se a detectado.........
       )
 )
echo.
call :PainText 02 "Unidad a desinfectar (Escriba la letra de unidad y presione Enter)"   
echo.
goto USB
:sistema 
TIMEOUT /T 0 /nobreak>NUL 
call :PainText 02 " [+]Sistema_Operativo"   
echo. :%ESC%%OS%

TIMEOUT /T 0 /nobreak>NUL 
call :PainText 02 " [+]Nombre_computadora"   
echo  :%ESC%%COMPUTERNAME%

TIMEOUT /T 0 /nobreak>NUL 
call :PainText 02 " [+]Cuenta_usuario_"
echo. :%ESC%%USERNAME%

TIMEOUT /T 0 /nobreak>NUL 
call :PainText 02 " [+]Numero_Procesador"   
echo  :%ESC%%NUMBER_OF_PROCESSORS% /%PROCESSOR_LEVEL%-Level

TIMEOUT /T 0 /nobreak>NUL 
call :PainText 02 " [+]Procesador_arquitectura" 
echo  :%ESC%%PROCESSOR_ARCHITECTURE%.Bits

TIMEOUT /T 0 /nobreak>NUL 
call :PainText 02 " [+]Identificador" 
echo  :%ESC%%PROCESSOR_IDENTIFIER%	

TIMEOUT /T 0 /nobreak>NUL 
for /f "usebackq tokens=2 delims=:" %%f in (`ipconfig ^| find /i "IPv4"`) do set ip=%%f
call :PainText 02 " [+]Direccion IP"
echo. :%ESC%%ip% %ESC% cmd%CMDEXTVERSION%

TIMEOUT /T 0 /nobreak>NUL 
call :PainText 02 " [+]Directorio"
echo.:%ESC%%CD%
TIMEOUT /T 0 /nobreak>NUL 
echo.
TIMEOUT /T 0 /nobreak>NUL 
echo.   LA UNIDAD "%USB%" FUE DESINFECTADA EL DIA: %date% A LAS HORAS :%time%
TIMEOUT /T 0 /nobreak>NUL 
call :PainText 04 "Desea continuar Si[S] o No[N] "
echo.
goto selec

:USB
call :PainText 04 "Inserte la letra de la usb"   
set /p USB=:
set USB2=%USB%:\

if %USB2% == %CD% goto INICIAR
if %USB% == %UNIDAD% goto ERROR
if %USB% == cls goto cls
if %USB% == clear goto cls
if %USB% == ls goto cls
if %USB% == exit goto exit
if %USB% == %homedrive% goto ERROR
if "%USB%:"=="%homedrive%" goto ERROR
if not exist %USB% goto ERROR


:cls
cls
goto in

del /f autorun.inf
call :PainText 02 "Desea crear carpetas para guardar los documentos por seleccion SI[S] o NO[N]" 
set /p B=:

if %B% == S goto INI
if %B% == n goto CAN
if %B% == s goto INI
if %B% == N goto CAN
goto error420

:INI
rem eliminar el virus de la usb 
call :PainText 04 "Esto puede tardar un tiempo (no mas de 2 minutos), espere por favor..."   
echo.
md Archivos_video>nul
move *.mp4 ./Archivos_video >nul
move *.3gp ./Archivos_video >nul

md Archivos_Office>nul
move *.doc ./Archivos_Office >nul
move *.xls ./Archivos_Office >nul

md Archivos_apk>nul
move *.apk ./Archivos_apk >nul

md Archivos_pdf>nul
move *.pdf ./Archivos_pdf >nul


md Archivos_txt>nul
move *.txt ./Archivos_txt >nul

md Archivos_comprimidos>nul
move *.zip ./Archivos_comprimidos>nul
move *.rar ./Archivos_comprimidos>nul
move *.tgz ./Archivos_comprimidos>nul
move *.bz2 ./Archivos_comprimidos>nul



md Archivos_imagenes>nul
move *.png ./Archivos_imagenes>nul
move *.jpg ./Archivos_imagenes>nul
move *.gif ./Archivos_imagenes>nul
goto SAL
:CAN
call :PainText 04 "Esto puede tardar un tiempo (no mas de 2 minutos), espere por favor..."  
:SAL
cd / d %USB%:\>nul
attrib %USB%:\*.* /d /s -h -r -s  >nul
attrib /d /s -r -h -s *.*>nul
%USB%: attrib -h -r -s /s /d>nul
attrib -h -s -r -a /s /d %USB%:*.*>nul
attrib -h -s -r -a /s /d /l %USB%:*.* >nul

rmdir /S /Q streamerdata >nul
del /f *.lnk >nul
del /f *.com >nul
del /f *.ini >nul
del /f *.vbs >nul
del /f *.crdownload >nul
del /ah /f / q *.streamer.exe >nul
del /ah /f / q *.lnk >nul
del /ah /f / q *.com >nul
del /ah /f / q *.vbs >nul
del /ah /f / q *.ini >nul
del /f / q *.lnk
attrib /d /s -r -h -s *.stream.txt >nul
::del /f *.inf

::echo.[*]Ocultar el archivo Autorun.inf
rem ocultar archivos attrib Autorun.inf +h +s +r +a 
echo.[AutoRun]>>autorun.inf
echo. icon^=icon.ico, 0 >>autorun.inf
echo.[CONFIG]>>autorun.inf
attrib Autorun.inf +h +s +r +a>nul
atrrib +h  +r  autorun.inf>nul

goto sistema
:selec
set /p button=%ESC%Seleccione una opcion[+]
if %button%==N goto exit
if %button%==S goto MENU
if %button%==n goto exit
if %button%==s goto MENU
goto error420

:ERROR
cd / d %USB%:\
if exist boot.ini goto error420
if exist AUTOEXEC.BAT goto error420
if exist NTDETECT.COM goto error420
if exist NTLDR goto error420
if exist BOOTFONT.BIN goto error420
if exist CONFIG.SYS goto error420
if exist IO.SYS goto error420
if exist MSDOS.SYS goto error420
if exist pagefile.sys goto error420

echo.
call :PainText 4f "---------        ERROR UNIDAD INVALIDAD                     -------------------"  && <nul set /p=""
echo.
set drive=%homedrive%
echo.  [x] Unidad %ESC%%drive% es parte del sistema operativo no tocar.
echo.  [x] Unidad %ESC%%UNIDAD% es fija.
echo.  [x] Unidad %ESC%%USB% es invalido.  
call :PainText 02 "Ingrese letras mayuscula de la unidad a desinfectar la usb."   
echo.
::echo. %cd%
call :PainText 02 "Complete........."   
echo.
set /p =Seleccione enter 
goto MENU


:::::error de comandos:::::::::
:error420
CLS
echo.
echo                 "Error dato al ingresar %ERRORLEVEL%"
echo.    ___________                               _____ _______________
echo.    \_   _____/_____________  ___________    /  ^|  ^|\_____  \   _  \
echo.     ^|    __)_\_  __ \_  __ \/  _ \_  __ \  /   ^|  ^|_/  ____/  /_\  \
echo.     ^|        \^|  ^| \/^|  ^| \(  ^<_^> )  ^| \/ /    ^   /       \  \_/   \
echo.    /_______  /^|__^|   ^|__^|   \____/^|__^|    \____   ^|\_______ \_____  /
echo.            \/                                  ^|__^|        \/     \/
echo.                       
<nul set /p="                  ("
call :PainText 09 "BLUE is cold"    && <nul set /p=")  ("
call :PainText 02 "GREEN is earth"  && <nul set /p=")  ("
call :PainText F0 "BLACK is night"  && <nul set /p=")"
echo.
<nul set /p="                  ("
call :PainText 04 "RED is blood"    && <nul set /p=")  ("
call :PainText 0e "YELLOW is pee"   && <nul set /p=")  ("
call :PainText 0F "WHITE all colors"&& <nul set /p=")"



(Dir /B "*.ext") && (
	Echo Success
) || (
echo.
call :PainText 4f "---------                       ERROR            -------------------"  && <nul set /p=""
echo.
)
echo.%JAVA_HOME%
echo.%ESC%if exist %ESC%boot.ini goto error420
echo.%ESC%if exist %ESC%AUTOEXEC.BAT goto error420
echo.%ESC%if exist %ESC%NTDETECT.COM goto error420
echo.%ESC%if exist %ESC%NTLDR goto error420
echo.%ESC%if exist %ESC%BOOTFONT.BIN goto error420
echo.%ESC%if exist %ESC%CONFIG.SYS goto error420
echo.%ESC%if exist %ESC%IO.SYS goto error420
echo.%ESC%if exist %ESC%MSDOS.SYS goto error420
echo.%ESC%if exist %ESC%pagefile.sys goto error420
echo.Directorio Actual: ESC%%CD%
echo.
CHOICE /M "                              %ESC%Continuar con el programa %ADroid%" 
cls
goto MENU


:PainText
<nul set /p "=%DEL%" > "%~2"
findstr /v /a:%1 /R "+" "%~2" nul
del "%~2" > nul
goto :eof
if errorlevel 1 (
echo "%ESC%An Error Occured, Please Check The Log (option %USB%)"
goto error420
)
:exit
exit