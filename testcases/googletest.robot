*** Settings ***
Resource    C:/robotframework/keywords/code2.robot
Library    SeleniumLibrary

*** Test Cases ***
googlelogin
    browser should be open