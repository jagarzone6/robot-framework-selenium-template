# robot-framework-selenium-template
Use this repository as template for robot-framework selenium tests with BDD/Gherkin approach

    ├── environments.yaml
    ├── docker-compose.yaml
    ├── Pipfile
    ├── Pipfile.lock
    └── tests
        ├── features
        │   └── login.robot
        ├── pages
        │   └── login_page.robot
        └── steps
            ├── common_steps.robot
            └── login_steps.robot


### Start Selenium Hub using docker-compose:

    docker-compose up -d

### Start demo app:

    pipenv run python demoapp/server.py

### Run all tests

    pipenv run robot --variable env:local tests/features
    
### Run happy path tests

    pipenv run robot -i hpath --variable env:local tests/features

### Run negative tests

    pipenv run robot -i negative --variable env:local tests/features
