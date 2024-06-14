# Automating Online Store Website (Polteq-Webshop) with Robot Framework

## Project Description

The main goal of this project is to show the ability to write autotests that cover the main functions of an online store (for writing regression tests).
The Polteq web shop is a special website written for company employees and is used exclusively for training testing skills and writing automated tests.
Also, for privacy purposes, the real login/password has been removed from the code, so it will not be possible to run automatic tests.
Below I am attaching photos and examples of performing autotests.

## Approaches Used

- **Robot Framework**: A keyword-driven testing framework used for test automation and robotic process automation.
- **Selenium Library**: Integrated with Robot Framework to interact with web elements for end-to-end testing.
- **Continuous Integration (CI)**: Implemented with Jenkins for automated test execution on every code commit.
- **Behavior-Driven Development (BDD)**: Adopted to improve collaboration between developers, testers, and non-technical stakeholders.
- **Data-Driven Development (DDD)** is an approach to software development that focuses on using data for creating and testing applications. The main idea is to separate test data from test scripts, allowing for easy modifications and additions of new data without changing the test code. This enhances the flexibility and scalability of testing.

I use DDD to create tests for sequences of invalid login/password values. This approach allows for easy management of various data sets for testing, ensuring that the system correctly handles all possible combinations of incorrect data. This improves the quality and reliability of the software by ensuring comprehensive test coverage.

## Project Photos

![Screenshot 1](link_to_screenshot1.jpg)
![Screenshot 2](link_to_screenshot2.jpg)
![Screenshot 3](link_to_screenshot3.jpg)

## Project Video

[Watch the project video](link_to_project_video.mp4)

