*** Settings ***
Library    SeleniumLibrary
Library    RobotEyes

*** Variables ***
@{blur}    id=guide-inner-content
@{redact}    id=gs_ok50

*** Test Cases ***    
Test case using blur parameter
    Open Browser    url=https://www.youtube.com/    browser=chrome    options=add_argument("--window-size=1920,1080")
    Open Eyes  lib=SeleniumLibrary  tolerance=10  cleanup=None
    Wait Until Element Is Visible    id=guide-inner-content
    Capture Full Screen    blur=${blur}    radius=50
    Compare Images
    Close Browser

Test case using capture element keyword
    Open Browser    url=https://www.youtube.com/    browser=chrome    options=add_argument("--window-size=1920,1080")
    Open Eyes  lib=SeleniumLibrary  tolerance=15  cleanup=None
    Wait Until Element Is Visible    id=center
    Click Element    id=center
    Capture Element    id=center
    Compare Images
    Close Browser

Test case using redact parameter
    Open Browser    url=https://www.youtube.com/    browser=chrome    options=add_argument("--window-size=1920,1080")
    Open Eyes  lib=SeleniumLibrary  tolerance=15  cleanup=None
    Wait Until Element Is Visible    id=center
    Click Element    id=center
    Capture Full Screen     redact=${redact}
    Compare Images
    Close Browser
