*** Settings ***
Documentation   This is my first Test Suite
Library         SeleniumLibrary
Resource        ../Resources/keywords_variables.resource

Test Setup       Open Browser To Home Page
Test Teardown    Close Browser

*** Test Cases ***
TEST A User Can Login
    Given The User Is On The Home Page
    When The User Clicks On Log In Button
    And The User Put In Valid Credientials
    And Submit Credentials
    Then The User Is Redirected To The Home Page





