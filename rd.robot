*** Settings ***
Library   SeleniumLibrary
# Suite Teardown  Close Browser 

*** Variables ***


*** Test Cases ***
Request New Password Failed
  Open the page
  Fill personal information
  Answer the question
  Submit the form
  Get failed alert box



*** Keywords ***
Open the page
  Open Browser  https://epit.rd.go.th/EFILING/RegController?PRGID=R008T  browser=gc
  Click Link  สัญชาติไทย
Fill personal information
  Input Text  id:fld_nid  1101402053361
  Input Text  id:fld_firstName  สหพงศ์
  Input Text  id:fld_lastName  ปฏิวงศ์ไพศาล
  Input Text  id:fld_birth_date  06022538
Answer the question
  Select From List By Value  id:fld_question  8
  Input Text  id:fld_answer  จำไม่ได้
Submit the form
  Click Element  id:bOK1
Get failed alert box
  ${message}=  Handle Alert
  Log To Console  ${message}
  Should Contain  ${message}  E044