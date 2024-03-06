*** Settings ***
Documentation
...    This is a simple Browser test suite

Resource
...    ../../../core/master.resource

Test Tags
...    frontend


*** Test Cases ***
Browser
    [Documentation]
    ...    This is a test case for browser - chrome

    # Launch Browser
    New Browser
    ...    chromium
    ...    headless=true

    Set Browser Timeout
    ...    31 seconds

    New Context
    ...    viewport={'width': 1680, 'height': 1050}

    # Create new page
    New Page
    ...    https://www.google.com

    Wait Until Network Is Idle
    ...    timeout=5s

    Take Screenshot
    ...    google_screenshot
