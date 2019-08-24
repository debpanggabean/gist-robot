*** Keywords ***
Open Browser For Github
    Open Browser        ${HOME_URL}     ${BROWSER}

Gist Teardown
    Run Keyword If Test Failed    Capture Page Screenshot
