*** Settings ***
Resource  resources/sample.robot
Suite Setup  Open browser Chrome, go to Google
Suite Teardown  Close Browser
Test Setup  Back to defualt page
Test Template  Search Template

*** Test Cases ***
# Multiple templates can use in this robot
Search  
  [Template]  Search Template
  Robot Framework  Robot Framework
  BNK48  BNK48 Official Website


*** Keywords ***
Search Template
  [Arguments]  ${keyword}  ${result}
  Search for  ${keyword}
  Result exist   ${result}
  Go To  ${URL_GOOGLE}


