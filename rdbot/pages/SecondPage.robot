*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
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
  Should Contain Any  ${message}  E044  E028
Verify the content
  Wait Until Page Contains Element   btn_changePassword
  ${message}=  Get Text  xpath://*[@id="tb10"]/table[1]/tbody/tr/td[2]
  Log To Console  ${message}
  Should Contain  ${message}  กรณีจำคำถามคำตอบได้