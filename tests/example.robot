# I am learning Robot Framework

*** Settings ***
Documentation    Example suite
Resource        ../Resources/common.resource

*** Variables ***
${BASIC_URL}                https://www.wikipedia.org
${ENGLISH_URL}              https://en.wikipedia.org/wiki/Main_Page

*** Test Cases ***
Check that I can visit Wikipedia
    Open Url In Browser    ${BASIC_URL}

Check that I can find the Platypus page on the English Wikipedia
    Log    Go to the English Wikipedia page
    Open Url In Browser    ${ENGLISH_URL}
    Log    Check that the page is in English
    Check Zichtbaarheid En Inhoud Van Veld    ${WELKOMSTTEKST}    Welcome to Wikipedia
    Log    Search for the platypus
    Type In Zoekveld    Platypus
    Klik Zoekknop
    Log    Check that the platypus page was found
    Check Zichtbaarheid En Inhoud Van Veld    ${TITELTEKST}    Platypus
    
Check what a failed test looks like
    Log    Go to the English Wikipedia page
    Open Url In Browser    ${ENGLISH_URL}
    Log    Check that the page is in English
    Check Zichtbaarheid En Inhoud Van Veld    ${WELKOMSTTEKST_TIKFOUT}    Welcome to Wikipedia
    Log    Search for the platypus
    Type In Zoekveld    Platypus
    Klik Zoekknop
    Log    Check that the platypus page was found
    Check Zichtbaarheid En Inhoud Van Veld    ${TITELTEKST}    Platypus

