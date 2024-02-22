*** Settings ***
Documentation
...    This is a simple login test.

Library
...    Browser

Test Tags
...    min


*** Test Cases ***
KDRP validation Suite
    [Documentation]
    ...    Loop over the KDRP subscriptions and perform various checks.

    # Launch Browser
    New Browser
    ...    chromium
    ...    headless=false

    Set Browser Timeout
    ...    1 minute

    New Context
    ...    viewport={'width': 1680, 'height': 1050}

    # Create new page
    New Page
    ...    https://www.google.com
