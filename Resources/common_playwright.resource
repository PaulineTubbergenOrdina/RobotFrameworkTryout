*** Settings ***
Library    Browser

*** Variables ***
${BROWSER}                  Chromium
${HEADLESS}                 False
${ZOEKVELD}                 css=#searchInput[aria-label="Search Wikipedia"]
${WELKOMSTTEKST}            css=h1 > span.mw-headline
${WELKOMSTTEKST_TIKFOUT}    css=h1 > span.mh-headline
${TITELTEKST}               css=h1.firstHeading > span

*** Keywords ***
Open url in browser
    [Arguments]     ${url}
    New Browser     ${BROWSER}     ${HEADLESS}
    New Page        ${url}

Check zichtbaarheid en inhoud van veld
    [Arguments]    ${css_selector}    ${tekst}
    Get Element States    ${css_selector}    validate    visible
    Get Text    ${css_selector}    ==    ${tekst}

Type in zoekveld
    [Arguments]    ${tekst}
    Type Text    ${ZOEKVELD}    ${tekst}

Klik zoekknop
    Click    //button[text()='Search']
