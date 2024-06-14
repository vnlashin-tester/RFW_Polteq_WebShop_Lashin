# Automating Online Store Website (Polteq-Webshop) with Robot Framework

## Project Description

The main goal of this project is to show the ability to write autotests that cover the main functions of an online store (for writing regression tests).
The Polteq web shop is a special website written for company employees and is used exclusively for training testing skills and writing automated tests.
Also, for privacy purposes, the real login/password has been removed from the code, so it will not be possible to run automatic tests.
Below I am attaching photos and examples of performing autotests.

## Approaches Used

- **Robot Framework**: A keyword-driven testing framework used for test automation and robotic process automation.
- **Selenium Library**: Integrated with Robot Framework to interact with web elements for end-to-end testing.
- **Continuous Integration (CI)**: is a development practice automated where tests are executed on every code commit. This ensures that the code is continuously tested and integrated, catching issues early in the development process.
  I use GitHub Actions to implement automatic code execution on every push. This setup enhances the CI process by ensuring that code changes are immediately tested and validated, maintaining the stability and quality of the software throughout the development lifecycle.
- **Behavior-Driven Development (BDD)**: Adopted to improve collaboration between developers, testers, and non-technical stakeholders.
- **Data-Driven Development (DDD)** is an approach to software development that focuses on using data for creating and testing applications. The main idea is to separate test data from test scripts, allowing for easy modifications and additions of new data without changing the test code. This enhances the flexibility and scalability of testing.
  I use DDD to create tests for sequences of invalid login/password values. This approach allows for easy management of various data sets for testing, ensuring that the system correctly handles all possible combinations of incorrect data. This improves the quality and reliability of the software by ensuring comprehensive test coverage.

## Project Artefacts
Artefacts can be found on Google Drive.

- <a href="https://docs.google.com/document/d/1mu7r23lQwvueH1c_ltrmVmpEzFx3lkqlwZ1kSe0A0x4/edit?usp=drive_link" target="_blank">Test Plan</a>
- <a href="https://docs.google.com/spreadsheets/d/1f4Q8VN6Gufj0R72tmPBWx7tXoL7sAcTbXJKIx3ZEtRk/edit?usp=drive_link" target="_blank">User Stories</a>
- <a href="https://docs.google.com/spreadsheets/d/1bLJAJp9h3iQc03_BMJ5PXBq2RVoE54kseyUYoxY_feQ/edit?usp=drive_link" target="_blank">Checklists and Trace Matrix</a>


## Test Report from Robot Framework

![Test Report](https://drive.google.com/uc?export=view&id=1Hw8Sw07K0l8vCCZizSgHNxVGx3jD0YrK)

## Project Foto
- ![Screenshot 3](link_to_screenshot3.jpg)

## Project Video

- [Video](<iframe src="https://drive.google.com/file/d/1PJ2qzt9GrmmSLh_gfbHwnlS_IyGcrJIa/preview" width="640" height="480" allow="autoplay"></iframe>)

