*** Settings ***
Resource    ../resources/login_keywords.robot
Resource    ../resources/sidebar_keywords.robot

*** Test Cases ***
Successful Login and Logout Test
	Open Browser to QA Coders Website
	Input User Login Credentials    ${VALID_USERNAME}    ${VALID_PASSWORD}
	Submit Login Form
	Perform Logout

	[Teardown]    Close Browser

Invalid Email Login Test
	Open Browser to QA Coders Website
	Input User Login Credentials    ${INVALID_USERNAME}    ${INVALID_PASSWORD}
	Validate Invalid Email Error Message

	[Teardown]    Close Browser
    
Sidebar Menu Options Test
	Open Browser to QA Coders Website
	Input User Login Credentials    ${VALID_USERNAME}    ${VALID_PASSWORD}
	Submit Login Form
    Validate Sidebar Menu Links

	[Teardown]    Close Browser
