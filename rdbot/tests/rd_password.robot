*** Settings ***
Resource  ../pages/FirstPage.robot
Resource  ../pages/SecondPage.robot

*** Test Cases **
E044
  FirstPage.Open
  FirstPage.Verify the content
  FirstPage.Click menu person-> Thai
  SecondPage.Verify the content
  SecondPage.Fill personal information
  SecondPage.Answer the question
  SecondPage.Submit the form
  SecondPage.Get failed alert box
  