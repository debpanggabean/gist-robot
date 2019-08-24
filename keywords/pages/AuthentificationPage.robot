*** Keywords ***

Go To Login Form
    Wait Until Element Is Visible                 css=a.HeaderMenu-link.no-underline.mr-3     timeout=3
    Click Element                                 css=a.HeaderMenu-link.no-underline.mr-3

Verify Login Form
    Wait Until Element Is Visible                 name=login
    Wait Until Element Is Visible                 name=password

Fill Login Form
    [Arguments]             ${username}           ${password}
    Input Text              name=login            ${username}
    Input Text              name=password         ${password}

Click Sign In Button
    Click Element           name=commit
