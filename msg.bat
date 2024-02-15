@echo off

:chat
set /p message="Vous: "
echo Vous: %message% >> SERVEUR\logmsg.dll
echo En attente d'un message de l'autre utilisateur...

rem Lire le dernier message de l'autre utilisateur
set /p last_message=<SERVEUR\logmsg.dll

rem Afficher le dernier message reçu
echo Autre utilisateur: %last_message%
goto chat
