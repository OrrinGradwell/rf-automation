*** Settings ***
Documentation
...    Execute test suite.

Resource
...    ../core/master.resource

Suite Setup
...    Setup Environment

Suite Teardown
...    Teardown Environment


*** Keywords ***
Setup Environment
    [Documentation]
    ...    Setup Environment for test execution.

    # Obtain AWS Secrets
    # Connect To Postgres
    # Connect To CINT
    # Connect To THANOS DEV

Teardown Environment
    [Documentation]
    ...    Teardown Environment of test session data.

    Delete All Sessions
    # Disconnect From All Databases
