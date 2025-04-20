*** Settings ***
Resource    ../resources/login_keywords.robot
Resource    ../resources/sidebar_keywords.robot

Test Setup    Open Browser to QA Coders Website
Test Teardown    Close Browser

*** Test Cases ***
Successful Login and Logout Test
    [Documentation]    This test performs a login followed by a logout
	Input User Login Credentials    ${VALID_USERNAME}    ${VALID_PASSWORD}
	Submit Login Form
	Perform Logout

Invalid Email Login Test
    [Documentation]    This test validates invalid user credentials on login page
	Input User Login Credentials    ${INVALID_USERNAME}    ${INVALID_PASSWORD}
	Validate Invalid Email Error Message
    
Sidebar Menu Options Test
    [Documentation]    This test logs and validate the sidebar menu navigationa after logging in
	Input User Login Credentials    ${VALID_USERNAME}    ${VALID_PASSWORD}
	Submit Login Form
    Validate Sidebar Menu Links
