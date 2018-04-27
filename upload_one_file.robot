*** Settings ***
Library   SeleniumLibrary
Test Teardown  Close Browser

*** Variables ***
${file_size}  0.15 MB
${file_name}  screenshot.png
${url}  http://nervgh.github.io/pages/angular-file-upload/examples/simple/


*** Test Cases ***
Upload all file
  Browse one file
  Check file's detail
  Upload file by using upload all button

*** Keywords ***
Browse one file
  Open browser  ${url}  browser=gc
  Choose File  xpath://*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]  ${CURDIR}/${file_name}
Check file's detail
  ${tfile_name}=  Get Text  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr/td[1]/strong
  Should Be Equal  ${tfile_name}  ${file_name}

#   Wait Until Element Contains  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr/td[1]/strong  ${file_name}
  Wait Until Element Contains  //*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr/td[2]  ${file_size}

  Element Should Be Enabled  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr/td[5]/button[1]
  Element Should Be Disabled  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr/td[5]/button[2]
  Element Should Be Enabled  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr/td[5]/button[3]
Upload file by using upload all button
  Click Element  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/div/button[1]
  Wait Until Element Is Enabled  xpath://div[@style="width: 100%;"]
  Element Should Be Disabled  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/div/button[1] 
