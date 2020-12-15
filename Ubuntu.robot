*** Settings ***
Library           ImageHorizonLibrary    ${CURDIR}/img/linux

*** Variables ***

*** Test Cases ***
CT01:Linux iniciar vpn
    Abre vpn
    Click em "connect"
    Click em "continue"
    Sleep    5
    Click em "stop"
    Sleep    1
    Click em "close"

*** Keywords ***
Abre vpn
    Click Image        forti.png

Click em "${nomeImg}"
    ${img}             Set Variable    forti_${nomeImg}.png
    Wait For           ${img}          5
    Click Image        ${img}
