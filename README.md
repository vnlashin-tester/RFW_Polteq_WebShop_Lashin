# Polteq WebShop Testing Project (Robot Framework)
---
## Project Overview

This project is designed to test the functionality and user experience of the Polteq WebShop using the Robot Framework. The aim is to ensure that the web application meets the expected standards of quality, performance, and reliability through comprehensive automated testing.

The Polteq web shop is a special website written for company employees and is used exclusively for training testing skills and writing automated tests.

Below I am attaching photos and examples of performing autotests.

---
## Goals

- **Automated Testing:** Implement automated tests to cover essential functionalities of the Polteq WebShop.
- **Regression Testing:** Facilitate regression testing to ensure that new changes do not introduce new bugs.
- **Quality Assurance:** Enhance the overall quality and performance of the web application.
- **Efficiency:** Increase the efficiency of testing processes, reducing the time and effort required for manual testing.
---
## Project Structure

The project consists of the following key components:

- `tests/`: Directory containing test cases written in Robot Framework.
  - `cart.robot`: Tests related to the shopping cart functionality.
  - `login_negative_1.robot`: Negative test cases for the login functionality.
  - `login_positive.robot`: Positive test cases for the login functionality.
  - `menu_items.robot`: Tests for the menu items and navigation.
  - `filter_page.robot`: Tests for filtering products on the product page.
  - `product_card.robot`: Tests for the product card details and interactions.
  - `search_field.robot`: Tests for the search functionality.
  - `complex_test.robot`: Complex test cases covering multiple functionalities.
- `resources_pages/`: Directory containing reusable resources and page objects.
- `variables.py`: Script containing variables used across test cases.
- `browser_options.py`: Script to set browser options for the tests.
- `requirements.txt`: List of dependencies required for the project.
- `run_tests.sh`: Shell script to execute the test cases.
- `results/`: Directory where test results are stored.
- `.venv/`: Virtual environment for Python dependencies.
- `.gitignore`: Git configuration to ignore specific files and directories.
- `.gitattributes`: Git configuration for attribute management.
   
---
## Approaches Used

- **Robot Framework**: A keyword-driven testing framework used for test automation and robotic process automation.
- **Selenium Library**: Integrated with Robot Framework to interact with web elements for end-to-end testing.
- **Continuous Integration (CI)**: is a development practice automated where tests are executed on every code commit. This ensures that the code is continuously tested and integrated, catching issues early in the development process.
  I use GitHub Actions to implement automatic code execution on every push. This setup enhances the CI process by ensuring that code changes are immediately tested and validated, maintaining the stability and quality of the software throughout the development lifecycle.
- **Behavior-Driven Development (BDD)**: Adopted to improve collaboration between developers, testers, and non-technical stakeholders.
- **Data-Driven Development (DDD)** is an approach to software development that focuses on using data for creating and testing applications. The main idea is to separate test data from test scripts, allowing for easy modifications and additions of new data without changing the test code. This enhances the flexibility and scalability of testing.
  I use DDD to create tests for sequences of invalid login/password values. This approach allows for easy management of various data sets for testing, ensuring that the system correctly handles all possible combinations of incorrect data. This improves the quality and reliability of the software by ensuring comprehensive test coverage.
- **Keyword-Driven Testing**: Utilizes keywords to represent actions in the tests, making them readable and maintainable.
- **Page Object Model**: Implements the Page Object Model (POM) to separate test logic from the page-specific code, enhancing reusability.

---
## Project Artefacts
Artefacts can be found on Google Drive.

- <a href="https://docs.google.com/document/d/1mu7r23lQwvueH1c_ltrmVmpEzFx3lkqlwZ1kSe0A0x4/edit?usp=sharing" target="_blank">Test Plan</a>
- <a href="https://docs.google.com/spreadsheets/d/1f4Q8VN6Gufj0R72tmPBWx7tXoL7sAcTbXJKIx3ZEtRk/edit?usp=sharing" target="_blank">User Stories</a>
- <a href="https://docs.google.com/spreadsheets/d/1bLJAJp9h3iQc03_BMJ5PXBq2RVoE54kseyUYoxY_feQ/edit?usp=sharing" target="_blank">Checklists and Trace Matrix</a>
- <a href="https://vnlashin-tester.github.io/Mind_Map/markmap.html" target="_blank">Mind_Map</a> 

---
## Test Report from Robot Framework

![Test Report](https://drive.google.com/uc?export=view&id=1Hw8Sw07K0l8vCCZizSgHNxVGx3jD0YrK)
---
## Project Foto
- You can view the project photo [here](https://drive.google.com/uc?export=view&id=1d3CMMJc_0MQ3H5FAAPaL0dVDJvBJDmS7).
- You can view the CI (GitHub Actions) photo [here](https://drive.google.com/file/d/1vOBRSRX12-UI6GEWV8x3-xjCLREiXx87/view?usp=sharing)
  and [here](https://drive.google.com/file/d/1Wrl5hhEOQcEUbO4lS72ndIzb_T5x5P_B/view?usp=sharing).
---
## Project Video

You can watch the project video [here](https://drive.google.com/file/d/1PJ2qzt9GrmmSLh_gfbHwnlS_IyGcrJIa/preview).

