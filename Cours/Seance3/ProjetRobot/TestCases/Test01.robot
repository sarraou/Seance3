*** Settings ***
Resource    ../Resources/resource01.robot
Documentation    Cette suite de test est crée par Sarra
Suite Setup    Log    j'execute une fois avant le test
Suite Teardown    Log    j'execute une fois après le test
Test Setup    Se connecter à l'application Orange demo
Test Teardown    Fermer l'application

*** Test Cases ***
Tc001 login test
    when Saisir le nom de l'utilisateur
    and Saisir le mot de passe
    and Cliquer sur le bouton login
    then Valider l'affichage de la page d'accueil