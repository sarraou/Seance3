*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}=    edge

*** Test Cases ***
Tc001 login test
    Se connecter à l'application Orange demo
    Saisir le nom de l'utilisateur
    Saisir le mot de passe
    Cliquer sur le bouton login
    Valider l'affichage de la page d'accueil
    Fermer l'application

*** Keywords ***
Se connecter à l'application Orange demo
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3
Saisir le nom de l'utilisateur
    Clear Element Text    name:username
    Input Text    name:username    Admin
Saisir le mot de passe
    Clear Element Text    name:password
    Input Password    name:password    admin123
Cliquer sur le bouton login
    Click Button    xpath://button
    Sleep    3
Valider l'affichage de la page d'accueil
    Element Text Should Be    xpath://h6    Dashboard
Fermer l'application
    Close Browser