*** Keywords ***

Create Public Gist
    GistPage.Go To Create Gist Url
    GistPage.Verify Url For Create Gist Opened
    GistPage.Fill In Gist Description               ${GIST_DESCRIPTION}
    GistPage.Fill In Gist File Name                 ${GIST_FILE_NAME}
    GistPage.Fill In Gist Content                   ${GIST_CONTENT}
    GistPage.Submit Public Gist

Edit Existing Gist
    GistPage.Verify Existing Gist                   ${GIST_FILE_NAME}
    GistPage.Click Edit Button
    GistPage.Fill In Gist Description               Updated_${GIST_DESCRIPTION}
    GistPage.Click Update Button
    GistPage.Verify Existing Gist Updated

Delete Existing Gist
    GistPage.Click Delete Button
    GistPage.Verify Deleted Gist                    ${GIST_FILE_NAME}

View All Gist
    GistPage.Click Profile Icon
    GistPage.View Your Gist
