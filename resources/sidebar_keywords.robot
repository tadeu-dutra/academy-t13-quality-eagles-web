*** Settings ***
Resource    ../resources/config.robot

*** Keywords ***
Validate Sidebar Menu Links
    Wait Until Element Is Visible    ${SIDEBAR_MENU}
	Click Element    ${SIDEBAR_MENU}

	${keys}    Get Dictionary Keys    ${ENTITIES_DICT}
	Log To Console    0. keys: ${keys}

	FOR    ${key}    IN    @{keys}
	Sleep    1
	${css_selector}    Set Variable    [id='${key}'] > span
    Click Element    css=${css_selector}
	Log To Console    1. Using dinamyc CSS Selector -> ${css_selector}

	${current_url}    Get Location
	Log To Console    2. Get Current URL -> ${current_url}

	${value}    Get From Dictionary    ${ENTITIES_DICT}    ${key}
	Log To Console    3. Value To Be Checked -> ${current_url} Should Contain ${value}
	Should Contain    ${current_url}    ${value}
    END