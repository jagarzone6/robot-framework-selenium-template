# robot-framework-template
Start Selenium Hub using docker-compose:

    docker-compose up -d

Run all tests

    pipenv run robot tests/features
    
Run happy path tests

    pipenv run robot -i hpath tests/features

Run negative tests

    pipenv run robot -i negative tests/features
