*** Keywords ***

Go To Create Gist Url
    Go To                                 ${GIST_URL}

Verify Url For Create Gist Opened
    Location Should Contain               ${GIST_URL}     "Not on create gist page"

Fill In Gist Description
    [Arguments]                           ${description}
    Wait Until Element Is Visible         name=gist[description]                timeout=${TURBO_TIMEOUT}
    Input Text                            name=gist[description]                ${description}

Fill In Gist File Name
    [Arguments]                           ${file_name}
    Wait Until Element Is Visible         name=gist[contents][][name]           timeout=${TURBO_TIMEOUT}
    Input Text                            name=gist[contents][][name]           ${file_name}

Fill In Gist Content
    [Arguments]                           ${content}
    Execute Javascript                    document.getElementsByClassName("CodeMirror")[0].CodeMirror.setValue("${content}")

Submit Public Gist
    Wait Until Element Is Visible         name=gist[public]                     timeout=${TURBO_TIMEOUT}
    Click ELement                         name=gist[public]

Verify Existing Gist
    [Arguments]                           ${file_name}
    Element Text Should Be                css=a.css-truncate                    ${file_name}

Click Edit Button
    Wait Until Element Is Visible         css=svg.octicon.octicon-pencil        timeout=${TURBO_TIMEOUT}
    Click ELement                         css=svg.octicon.octicon-pencil

Click Update Button
    Wait Until Element Is Visible         css=button.btn.btn-primary            timeout=${TURBO_TIMEOUT}
    Click ELement                         css=button.btn.btn-primary

Verify Existing Gist Updated
    Wait Until Element Contains           css=div[itemprop="about"]             Updated_

Click Delete Button
    Wait Until Element Is Visible         css=svg.octicon.octicon-trashcan      timeout=${TURBO_TIMEOUT}
    Click ELement                         css=svg.octicon.octicon-trashcan
    Handle Alert

Verify Deleted Gist
    [Arguments]                           ${file_name}
    Wait Until Page Does Not Contain      ${file_name}

Click Profile Icon
    Wait Until Element Is Visible         css=img.avatar                        timeout=${TURBO_TIMEOUT}
    Click ELement                         css=img.avatar

View Your Gist
    Wait Until Element Contains           css=a.dropdown-item                   Your gists
    Click Element                         css=a.dropdown-item
    Wait Until Element Contains           css=a.js-selected-navigation-item.selected.reponav-item                    All gist
