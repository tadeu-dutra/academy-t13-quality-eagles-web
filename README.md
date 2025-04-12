# quality-eagles-academy13-front-robot

This repository tracks the work done by the Quality Eagles squad during the TQC (Academy) program offered by QA Coders. It explores Robot Framework with SeleniumLibrary for web automation and has a CI pipeline set up using GitHub Actions (.github/workflows/ci.yaml).

## Prerequisites

### a) Ensure that Python is installed

To check if Python is installed, run the following command:

    python --version

If you are using Python 3, you may need to run:

    python3 --version

If you encounter an error message, it likely indicates that Python is not installed on your machine. In this case, please visit the [official Python website](https://www.python.org/downloads/) to download and install it, ensuring that you add it to your computer's PATH. After installation, rerun the command above to confirm that Python is now installed.

### b) Verify the installation of Robot Framework.

    robot --version

If you receive an error message indicating that the command is not recognized, you can easily install Robot Framework using pip with the following command:

    pip install robotframework

Another library you will need is the [Faker library](https://pypi.org/project/Faker/). To install it, please run the command below:

    pip install Faker

Now let's have installed the [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/) for Robot Framework, it utilizes the Selenium tool internally. The recommended installation method is using pip:

    pip install --upgrade robotframework-seleniumlibrary

## CI Pipeline

The project uses GitHub Actions for continuous integration. The pipeline is triggered on push events and workflow dispatches. The pipeline consists of the following jobs:

* `test`: runs the tests using Robot Framework

## Running Tests

To run the tests, execute the following command:

    robot --outputdir results/ tests/

## Documentation

* [Robot Framework documentation](https://robotframework.org/)
* [SeleniumLibrary documentation](https://robotframework.org/SeleniumLibrary/)
* [GitHub Actions documentation](https://docs.github.com/en/actions)
