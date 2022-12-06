*** Settings ***
Resource    C:/robotframework/keywords/code1.robot
Library    SeleniumLibrary

*** Test Cases ***
orangehrm login functionality
    open the url
    enter username
    enter password
    login to orangehrm
    timelink method
    Different module
    