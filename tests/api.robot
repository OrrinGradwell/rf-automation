*** Settings ***
Documentation
...    This is a simple api test.

Library    RequestsLibrary

Test Tags
...    thanos


*** Test Cases ***
Some API
    [Documentation]
    ...    Simple API test

    Create Session
    ...    starwars
    ...    https://swapi.dev/api
    ...    verify=true

    ${test}=
    ...    Get on Session
    ...    starwars
    ...    people

    Log To Console    ${test}
