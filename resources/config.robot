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