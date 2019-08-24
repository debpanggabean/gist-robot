*** Settings ***
Library                  SeleniumLibrary
Library                  DebugLibrary
Resource                 keywords/Setup.robot
Resource                 keywords/logic/AuthenticationLogic.robot
Resource                 keywords/pages/AuthentificationPage.robot
Resource                 keywords/logic/GistLogic.robot
Resource                 keywords/pages/GistPage.robot

*** Variable ***
${HOME_URL}               https://github.com
${GIST_URL}               https://gist.github.com
${BROWSER}                gc
${TURBO_TIMEOUT}          1
${GIST_DESCRIPTION}       Create a gist test automation
${GIST_FILE_NAME}         qa-gist.md
${GIST_CONTENT}           Gist Content
