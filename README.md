# academy-t13-quality-eagles-web

This repository tracks the work done by the Quality Eagles squad during the TQC (Academy) program offered by QA Coders. It explores Web Automation Testing using Robot Framework.

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

For web testing we wil be using [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/) for Robot Framework, it utilizes the Selenium tool internally. The recommended installation method is using pip:

    pip install --upgrade robotframework-seleniumlibrary


