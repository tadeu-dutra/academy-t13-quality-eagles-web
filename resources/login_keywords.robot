*** Settings ***
Resource    ../resources/config.robot

*** Keywords ***
Open Browser to QA Coders Website
	Open Browser	${BASE_URL}    ${BROWSER}
	Maximize Browser Window
	${current_url}    Get Location
	Should Contain    ${current_url}    /login

Input User Login Credentials
    [Arguments]    ${USERNAME}    ${PASSWORD}
	Input Text		${INPUT_USERNAME}		${USERNAME}
	Input Text		${INPUT_PASSWORD}		${PASSWORD}

Submit Login Form
    Click Button    ${BUTTON_LOGIN}
	Wait Until Page Contains Element    ${SIDEBAR_MENU}
    Page Should Contain Element    ${BUTTON_LOGOUT}

Perform Logout
    Click Button    ${BUTTON_LOGOUT}
	Wait Until Page Contains Element    ${LABEL_LOGIN}
	${current_url}    Get Location
	Should Contain    ${current_url}    /login

Validate Invalid Email Error Message
    Page Should Contain Element    ${MESSAGE_VALID_EMAIL}