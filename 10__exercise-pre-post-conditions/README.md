# Exercise 10 - Pre and Post Conditions

Welcome to **Exercise 10**. Everything you need to know to configure pre and post conditions for your tests.

# Purpose

The purpose of this exercise is to learn how to setup Pre and Post Conditions within your tests with Copado Robotic Testing.

# Prerequisite(s)

- Access to a Copado Robotic Testing Organization is required
- Access to a Project
- Robot created

# Learning Objectives

- Understand Suite Setup and Suite Teardown as pre- and post conditions on Suite level
- Understand Test Setup and Test Teardown as pre- and post conditions on Suite level
- Know how to override Test Setup and Teardown from a test case level

# Understand Test Suites (files and directories)

# Suite Level

## Suite Setup and Suite Teardown in Settings table

Suite Setup is executed before all test cases before they get executed, at the start of the suite.

Suite Teardown is executed after all tests cases have been executed, at the end of the suite.

1. Create a new empty suite **exercise 10 pre and post conditions**

2. Create a folder in the root named **10__exercise-pre-post-conditions**

3. In folder **10__exercise-pre-post-conditions**, create file pre-post-conditions.robot and copy the contents from here [pre-post-conditions.robot](pre-post-conditions.robot)

4. Select suite **exercise 10 pre and post conditions**

5. Open folder **10__exercise-pre-post-conditions**

6. Execute Test Case **Exercise 10 - Using Suite Setup, Test Setup, Test Teardown and Suite Teardown from Settings**

7. View the report and verify if the Suite Setup and Suite Teardown keywords have been executed from the Settings table.

## Test Teardown and Test Setup in Settings table

Test Setup is executed at the start of every test case, at the start of the test.

Test Teardown is executed at the start of each test case, at the end of the test.

1. Select suite **exercise 10 pre and post conditions**

2. Open folder **10__exercise-pre-post-conditions**

3. Execute Test Case **Exercise 10 - Using Suite Setup, Test Setup, Test Teardown and Suite Teardown from Settings**

4. View the report and verify if the Test Setup and Test Teardown keywords have been executed from the Settings table.

# Test Level

## Override Test Setup and Test Teardown in Settings table from Test Level

**[Setup]** is used to override the Test Setup in the settings table, and gets executed at the start of the test case.

**[Teardown]** is used to override the Test Teardown in the settings table, and gets executed at the end of the test case.

Using [Setup] and [Teardown] without a value or NONE value skips the Test Teardown on Settings level. 

1. Select suite **exercise 10 pre and post conditions**

2. Open folder **10__exercise-pre-post-conditions**

3. Execute Test Case **Exercise 10 - Overridden Test Teardown and Suite Teardown**

4. View the report and verify if the Test Setup and Test Teardown keywords have been executed using the override method.

5. Execute Test Case **Exercise 10 - Overridden Test Teardown doing nothing**

6. View the report and verify if the Test Teardown keyword was executed not doing anything but overriding the Test Teardown from Settings table.

# Links

[Suite Setup and Suite Teardown](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#suite-setup-and-teardown)

[Test Setup and Test Teardown](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#test-setup-and-teardown)

[Suite Initialization File](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#suite-initialization-files)