*** Setting ***
Suite Setup               Open Browser For Github
Suite Teardown            Close All Browsers
Resource                  ../resource.robot
Test Teardown             Gist Teardown

*** Test Case ***
CRUD And View All Public Gist Test
    AuthenticationLogic.Sign In Github             ${username}        ${password}
    GistLogic.Create Public Gist
    GistLogic.Edit Existing Gist
    GistLogic.Delete Existing Gist
    GistLogic.View All Gist
