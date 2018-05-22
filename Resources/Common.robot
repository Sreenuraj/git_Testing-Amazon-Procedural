*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Open browser and maximise
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

Close the browser
    Close Browser

Lets run this at the beigning of the suite
    Log  Start of the suite

Lets run at the end of the suite
    Log  End of the suite