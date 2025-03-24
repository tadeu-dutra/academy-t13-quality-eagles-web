*** Settings ***
Resource    ../resources/config.robot

*** Keywords ***
Open Browser to QA Coders Website
	Open Browser	${BASE_URL}    ${BROWSER}
	Maximize Browser Window
	Title Should Be	Academy

Input User Login Credentials
    [Arguments]    ${USERNAME}    ${PASSWORD}
	Input Text		id=email		${USERNAME}
	Input Text		id=password		${PASSWORD}

Submit Login Form
    Click Button    id=login
	Wait Until Page Contains Element    id=Cadastros
    Page Should Contain Element    ${BUTTON_LOGOUT}

Perform Logout
    Click Button    ${BUTTON_LOGOUT}
	Wait Until Page Contains Element    ${LABEL_LOGIN}

Validate Invalid Email Error Message
    Page Should Contain Element    ${MESSAGE_VALID_EMAIL}