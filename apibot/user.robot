*** Settings ***
Library  Collections
Library  RequestsLibrary	

*** Test Case ***
Check all user from API
  Create Session  api  https://jsonplaceholder.typicode.com
  ${response}=  Get Request  api  /users
  Log To Console  ${response.json()[0]['name']}
  Should Be Equal  ${response.status_code}  ${200}
  Length Should Be  ${response.json()}  ${10}