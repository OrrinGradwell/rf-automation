*** Settings ***
Documentation
...    This is a simple API test suite

Resource
...    ../../../core/master.resource

Test Tags
...    api


*** Test Cases ***
API
    [Documentation]
    ...    This is a test case for an api

    Create Session
    ...    api
    ...    https://swapi.dev/api
    ...    verify=true

    ${response}=
    ...    GET On Session
    ...    api
    ...    /_status

    Request Should Be Successful
    ...    ${response}
