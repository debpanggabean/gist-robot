*** Keywords ***

Sign In Github
    [Arguments]           ${username}     ${password}
    AuthentificationPage.Go To Login Form
    AuthentificationPage.Verify Login Form
    AuthentificationPage.Fill Login Form       ${username}     ${password}
    AuthentificationPage.Click Sign In Button
