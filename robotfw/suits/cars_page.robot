*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}      %{BROWSER}

***Test Cases ***
Test Adding Car
    Open Browser    http://frontend/cars
    Select From List By Value   name:make   honda
    Input Text      name:model  Accord
    Click Button    xpath://button[@type="submit"]
    Element Should Contain  class:honda     Accord
