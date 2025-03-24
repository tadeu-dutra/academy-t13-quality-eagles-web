*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
# ${BASE_URL}    https://quality-eagles-front.qacoders.dev.br/login
${BASE_URL}    https://automacao.qacoders-academy.com.br/login
${BROWSER}    Chrome
${VALID_USERNAME}    sysadmin@qacoders.com
${VALID_PASSWORD}    1234@Test
${INVALID_USERNAME}    xxxxx
${INVALID_PASSWORD}    xxxxx

${BUTTON_LOGOUT}    xpath=//button[text()="Logout"]
${LABEL_LOGIN}    xpath=//h3[text()="Login"]
${MESSAGE_VALID_EMAIL}    xpath=//p[text()='Digite um email válido']

${SIDEBAR_MENU}    css=#Cadastros > span
${COMPANY_MENU}    css=#Empresa > span
${CUSTOMER_MENU}    css=#Cliente > span
@{LIST}    Empresa    Cliente    Usuários

&{ENTITIES_DICT}    Empresa=company    Cliente=client    Usuários=user    Diretorias=board    Centro de Custo=costCenter    Departamento=department
