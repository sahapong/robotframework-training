*** Settings ***
Library  SeleniumLibrary

*** Variable ***
${URL}  https://epit.rd.go.th/EFILING/RegController?PRGID=R008T
${bs}  gc

*** Keywords ***
# Action
Click menu person-> Thai
    Click Element  name:link_RegType1
Click menu person-> Foreigner
    Click Element  name:link_RegType2
Open
  Open Browser  ${URL}  browser=${bs}
  Maximize Browser Window  

# Assertion
Verify the content
    Wait Until Element Contains  xpath://*[@id="R008T"]/table/tbody/tr/td[2]/span  เลือกประเภทการลงทะเบียน(เพื่อตั้งรหัสผ่านใหม่)
    Wait Until Page Contains Element  xpath://*[@id="form1"]/table[1]/tbody/tr[1]/td[1]/img