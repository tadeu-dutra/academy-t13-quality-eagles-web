*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# ${BASE_URL}    https://quality-eagles-front.qacoders.dev.br
${BASE_URL}    https://automacao.qacoders-academy.com.br/login
${BROWSER}    Chrome
${VALID_USERNAME}    sysadmin@qacoders.com
${VALID_PASSWORD}    1234@Test
${INVALID_USERNAME}    xxxxx
${INVALID_PASSWORD}    xxxxx

${BUTTON_LOGOUT}    xpath=//button[text()="Logout"]
${LABEL_LOGIN}    xpath=//h3[text()="Login"]
${MESSAGE_VALID_EMAIL}    //p[text()='Digite um email válido']

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