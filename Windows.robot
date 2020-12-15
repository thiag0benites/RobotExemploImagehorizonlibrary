*** Settings ***
Library           ImageHorizonLibrary    ${CURDIR}/img/windows

*** Variables ***

*** Test Cases ***
CT01:Windows 10 menu iniciar
    Click em "iniciar"

*** Keywords ***
Click em "${nomeImg}"
    ${img}             Set Variable    ${nomeImg}.png
    Wait For           ${img}          5
    Click Image        ${img}
