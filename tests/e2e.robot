*** Settings ***
Resource    ../resources/login_keywords.robot

*** Test Cases ***
Login - Successful Login and Logout Test
	Open Browser to QA Coders Website
	Input User Login Credentials    ${VALID_USERNAME}    ${VALID_PASSWORD}
	Submit Login Form
	Perform Logout

Login - Invalid Email Test
	Open Browser to QA Coders Website
	Input User Login Credentials    ${INVALID_USERNAME}    ${INVALID_PASSWORD}
	Validate Invalid Email Error Message

	[Teardown]	Close All Browsers

