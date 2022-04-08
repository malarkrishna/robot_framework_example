*** Settings ***
Documentation     Example Gherkin Style Test

Library    AdderLibrary.py


*** Keywords ***
two numbers "${a}" and "${b}"
    Add input    ${a}    ${b}
total of result is "${total}"
    Total    ${total}
    Log    ***************TOTAL********************
    Log    ${total}

*** Test Cases ***
Addition of two positive numbers
    [Tags]  positive
    Given two numbers "3" and "5"
    Then total of result is "8"
Addition of two negative numbers
    [Tags]  negative
    Given two numbers "-3" and "-5"
    Then total of result is "-8"
Addition of combination of numbers
    [Tags]  combo
    Given two numbers "-3" and "5"
    Then total of result is "2"


