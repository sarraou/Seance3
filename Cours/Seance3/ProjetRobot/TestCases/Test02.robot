*** settings ***
Library    SeleniumLibrary

*** Variables ***
${premiereValeur}=    100
${deuxiemeValeur}=    200
${nom}=    Sarra
${troisieme valeur}=    200.5
${BROWSER}=    chrome
${url}=    https://www.google.com

#Les variable de type liste

@{ville}=    Montréal    Quebec    Toronto
@{list valeur}=    1    2    3    4

#Les variable de type dictionnaire : on stocke les données sous forme de clé valeur
&{url -ENV}=    qa=https://www.google.ca    dev=https://www.google.dev.ca

*** Test Cases ***
Tc01 mon premier test
    Log    ${premiereValeur}
    Log    ${deuxiemeValeur}
    Log    ${nom}
    Log    ${troisieme valeur}
    Log    ${BROWSER}
    Log    ${url}
    Log    ${ville}[0]
    Log    ${ville}[1]
    Log    ${list valeur}
    Log    ${url -ENV}[qa]
    Log    ${url -ENV}[dev]
    #Log    ${quatrieme variable}

tc02 mon deuxieme test
   #${quatrieme variable}=    Log    test
   Log    ${nom}