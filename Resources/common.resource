*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}                  Chrome
${ZOEKVELD}                 css=#searchInput[aria-label="Search Wikipedia"]
${WELKOMSTTEKST}            css=h1 > span.mw-headline
${WELKOMSTTEKST_TIKFOUT}    css=h1 > span.mh-headline
${TITELTEKST}               css=h1.firstHeading > span

*** Keywords ***
Open url in browser
    [Arguments]    ${url}
    Open browser    ${url}    ${BROWSER}   
    
Check zichtbaarheid en inhoud van veld
    [Arguments]    ${css_selector}    ${tekst}
    Element Should Be Visible   ${css_selector}
    Element Text Should Be   ${css_selector}    ${tekst}
    
Type in zoekveld
    [Arguments]    ${tekst}
    Input Text     ${ZOEKVELD}    ${tekst}
    
Klik zoekknop
    Click Button    //button[text()='Search']
