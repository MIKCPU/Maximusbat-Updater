@echo off
set RETROBAT_PATH=%~dp0
chcp 65001 >nul
echo [97m
echo.
echo                              ##     ## #### ##    ##  ######  ########  ##     ## 
echo                              ###   ###  ##  ##   ##  ##    ## ##     ## ##     ## 
echo                              #### ####  ##  ##  ##   ##       ##     ## ##     ## 
echo                              ## ### ##  ##  #####    ##       ########  ##     ## 
echo                              ##     ##  ##  ##  ##   ##       ##        ##     ## 
echo                              ##     ##  ##  ##   ##  ##    ## ##        ##     ## 
echo                              ##     ## #### ##    ##  ######  ##         #######  
echo.
echo [93m                                          PRESENT  -  PRESENTA[0m
echo.
echo.
echo [91m
echo           ##     ##    ###    ##     ## #### ##     ## ##     ##  ######  ########     ###    ######## 
echo           ###   ###   ## ##    ##   ##   ##  ###   ### ##     ## ##    ## ##     ##   ## ##      ##    
echo           #### ####  ##   ##    ## ##    ##  #### #### ##     ## ##       ##     ##  ##   ##     ##    
echo           ## ### ## ##     ##    ###     ##  ## ### ## ##     ##  ######  ########  ##     ##    ##    
echo           ##     ## #########   ## ##    ##  ##     ## ##     ##       ## ##     ## #########    ##    
echo           ##     ## ##     ##  ##   ##   ##  ##     ## ##     ## ##    ## ##     ## ##     ##    ##    
echo           ##     ## ##     ## ##     ## #### ##     ##  #######   ######  ########  ##     ##    ##    [0m           
echo.
echo.
echo [92m
echo               =================================================================================
echo               * Select the operation to perform:     *  Seleziona l'operazione da eseguire:   *
echo               * 1. Start Updater installation        *  1. Avvia installazione Updater        *     
echo               * 2. Start MaximusBat theme download   *  2. Avvia scaricamento tema MaximusBat *      
echo               * 3. Exit                              *  3. Uscita                             *                              
echo               =================================================================================[0m
echo.
set /p scelta="[93mEnter the number of the desired option:[0m [94m--[0m [93mInserisci il numero dell'opzione desiderata:[0m "

if "%scelta%"=="1" (
    echo [92mStart Updater installation... - Avvia installazione Updater...[0m
    powershell -ExecutionPolicy Bypass -File "%RETROBAT_PATH%maximusbat_update.ps1" "%RETROBAT_PATH%"
) else if "%scelta%"=="2" (
    echo [92mStart MaximusBat theme download... - Avvia scaricamento tema MaximusBat...[0m
    powershell -ExecutionPolicy Bypass -File "%RETROBAT_PATH%maximusbat_theme.ps1" "%RETROBAT_PATH%"
) else (
    echo [91mInvalid option. Please try again. - Opzione non valida. Riprova.[0m
)
if "%scelta%"=="3" goto :exit
pause
:exit
echo  Exit... - Uscita...
exit