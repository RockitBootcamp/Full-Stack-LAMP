# Milestone 3: PHP Project Outline
## User Login & Validation

## Project Background and Description
This project will use your newly acquired PHP skills to create a user login page that validates the username and password. It will consist of three total pages (login page, home page, and logout page) and will:
- use server side validation to verify login inputs
- provide a *friendly* interface to users in the face of validation errors
- have a home page that is only accessible to logged in users

## Primary Requirements
###User Facing:
- index.php (login page)
    - two login fields:
        - username
        - password (use input type="text" not "password")
    - if the user is already logged in (has a session), they should be redirected to home.php
    - if there are login errors:
        - previous values should be pre-populated in their respective field
        - error messages should be displayed to the right of their respective field
        - error messages should be styled to be red
        - **Extra Credit**:
            - style the input fields to show an error
            - style the input fields to show a correct value
    - upon successful login validation:
        - the username should be stored in $_SESSION
        - the user is redirected to the home.php page
- home.php
    - if the user is not logged in, they should be redirected to index.php
    - if the user is logged in, display a greeting with the user's username, a logout link, and some text like "this is the home page"
- logout.php
    - destroy the session and redirect to login.php
    - should display a message like "you are being logged out..." and then redirected after 3 secs to index.php

- Implementation:
    - Classes:
        - Validator class that can validate usernames and passwords. Has these methods:
            - validUsername(username) -> Boolean
                - validation criteria:
                    - must be 5-8 characters
                    - be made up of only a-z and A-Z
            - validPassword(password) -> Boolean
                - validation criteria:
                    - must be 8+ characters
                    - be made up of only: a-z, A-Z, 0-9, any of '!@#$%^&*()'
                    - **Extra Credit**: contain at least one of each: alpha, numeric, & special-chars
        - ErrorManager class that holds errors by name and has these methods:
            - addError(name, error_message) -> NULL
            - getError(name) -> String
            - hasErrors() -> Boolean

### Tips
- you may want to create additional php files to hold your implementation logic, then include those files as necessary within your login.php, home.php, and logout.php files. 
- only do the **Extra Credit** *after* you have completed the requirements of the project. 