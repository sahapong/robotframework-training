*** Settings ***
Library   SeleniumLibrary
Suite Setup  Open browser Chrome, go to Google
Suite Teardown  Close Browser
Test Setup  Back to defualt page

*** Variables ***
${URL_GOOGLE}  http://www.google.com
${SEARCH_BOX}  xpath://*[@id="rso"]/div/div/div[1]/div/div/h3/a

*** Test Cases ***
Search robotframework
  # Open browser Chrome, go to Google
  Search for  Robot Framework
  # Click the link robotframework.org
  Result exist  Robot Framework
Search BNK
  # Open browser Chrome, go to Google
  Search for  BNK48
  # Click the link BNK48 site
  Result exist  BNK48 Official Website


*** Keywords ***
Open browser Chrome, go to Google
  Open Browser  ${URL_GOOGLE}  browser=gc
Search for
  [Arguments]  ${keyword}
  Input Text  name:q  ${keyword}
  Press Key  name:q  \\13
Result exist
  [Arguments]  ${result}
  Wait Until Element Contains  ${SEARCH_BOX}  ${result}
  
Click the link robotframework.org
  Click Element  xpath://*[@id="rso"]/div/div/div[1]/div/div/h3/a
  # Capture Page Screenshot
  Wait Until Element Contains  //*[@id="scroller"]/section[1]/div/h1  ROBOT FRAME WORK/
  
Click the link BNK48 site
  Click Element  xpath://*[@id="rso"]/div/div/div[1]/div/div/h3/a
  # Capture Page Screenshot
  Wait Until Element Contains  //*[@id="frontend"]/div[1]/div/div[2]/nav/ul[1]/li[1]/a  Home
  
Back to defualt page
  Go To  ${URL_GOOGLE}

