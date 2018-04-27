*** Settings ***
Resource  ../pages/FirstPage.robot

*** Test Cases **
E044
  FirstPage.Open
  FirstPage.Verify the content
  FirstPage.Click menu person-> Thai
  