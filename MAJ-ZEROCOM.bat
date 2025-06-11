@echo off
cd /d "%~dp0zerocom-site"

echo Initialisation du dépôt Git...
git init

echo Ajout des fichiers...
git add .

echo Création du commit...
git commit -m "Mise à jour automatique du site ZEROCOM"

echo Lien vers GitHub...
git remote remove origin
git remote add origin https://github.com/grouperafaelli/zerocom.git

echo Push vers GitHub...
git push -u origin main

echo ----------------------------------------
echo ✅ MISE EN LIGNE TERMINÉE
pause
