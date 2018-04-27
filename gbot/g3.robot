*** Settings ***
Resource  resources/sample.robot
Suite Setup  Open browser Chrome, go to Google
Suite Teardown  Close Browser
Test Setup  Back to defualt page
Test Template  Search Template

*** Variables ***
${URL_GOOGLE}  http://www.google.com
${SEARCH_BOX}  xpath://*[@id="rso"]/div/div/div[1]/div/div/h3/a

*** Test Cases ***
# Only one template can use in this robot
#--------------------------------------------------------
#   Test Case Name  |   Keyword     |   Expeceted Result    |
#--------------------------------------------------------
Search robotframework  Robot Framework  Robot Framework
Search BNK             BNK48            BNK48 Official Website


*** Keywords ***
Search Template
  [Arguments]  ${keyword}  ${result}
  Search for  ${keyword}
  Result exist   ${result}

