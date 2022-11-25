*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    LETS GOOOOOOO
Test Setup    Log    START
Test Teardown    Log    END
Suite Teardown    Log    FINALLYYYYYYYYYY

Default Tags    Debut


*** Test Cases ***
MyFirstTest
    [Tags]    Fearless    SpeakNow
    Log    FIRST
    
MySecondTest
    [Tags]    SpeakNow
    Log    SECOND
    
MyThirdTest
    Log    THIRD
    Remove Tags    Debut

# FirstSeleniumTest
    # Open Browser    https://google.com    chrome
    # Set Browser Implicit Wait    5
    # Input Text    name=q    Taylor Swift
    # Press Keys    name=q    ENTER
    # #Click Button    name=btnK    
    # Sleep    2
    # Log    Test Completed... 
    # Close Browser
 
# SampleLoginTest
    # [Documentation]    This is a sample login test
    # Open Browser    ${URL}        chrome
    # Set Browser Implicit Wait    7
    # LoginKW
    # Click Image    profile picture
    # Sleep    2
    # Click Link    Logout
    # Sleep    2
    # Log    Test Completed... 
    # Log    %{username} %{os}
    # Close Browser
  
  
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}    username=Admin    password=admin123


*** Keywords ***
LoginKW
    Input Text    username    ${CREDENTIALS}[0]
    Input Text    password    ${LOGINDATA}[password]
    Press Keys    password    ENTER
    
