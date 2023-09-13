# Exercise 9 - Test Execution (parameters)!

Welcome to **Exercise 9**. Everything you need to know to run your tests and organize your tests.

# Purpose

The purpose of this exercise is to learn how to run (groups of) tests with Copado Robotic Testing.

# Prerequisite(s)

- Access to a Copado Robotic Testing Organization is required
- Access to a Project
- Robot created

# Learning Objectives

- Understand Test Suites (files and directories)
- Differentiate Development from Regression executions
- Using Tags and tag patterns
- Execution parameters (test name, tags, or suites)
- Set Execution parameter on Project, Robot or Suite Level

# Understand Test Suites (files and directories)

1. Create a new empty suite **exercise 9 test execution parameters**

2. Create a folder in the root named **09__exercise-test-execution-parameters**

3. In folder **09__exercise-test-execution-parameters**, create a new folder named **US-00001**

4. In folder **US-00001**, create file US-00001.robot and copy the contents from here [US-00001.robot](US-00001/US-00001.robot)

4. In folder **09__exercise-test-execution-parameters**, create a new folder named **regression**

5. In folder **regression**, create file accounts.robot and copy the contents from here [01__accounts.robot](regression/01__accounts.robot)

6. In folder **regression**, create file leads.robot and copy the contents from here [02__leads.robot](regression/02__leads.robot)

> **Note:** Suite names are sorted Alphabetically. Adding a prefix 01__ and 02__ allows you to determine the execution order of the test files inside it's directory.

7. In folder **regression**, create a new folder named **nested**

8. In this **nested** folder, create file opportunities.robot and copy the contents from here [opportunities.robot](regression/nested/opportunities.robot)

# Differentiate Development from Regression executions

## Regression Mode

1. Select suite **exercise 9 test execution parameters**

2. Select Regression Mode

3. Click Run button

4. View Test Execution in Regression Mode

5. View Dashboard Changing

## Development Mode

1. Select suite **exercise 9 test execution parameters**

2. Select Development Mode

3. Click Run Button

4. View Test Execution in Development Mode

> **Note:** Execute test button in QEditor always results in a Development mode run.

# Record and Stream Test Video

1. Select suite **exercise 9 test execution parameters**

2. Select Recording Video All

2. Select Streaming Yes

3. View Test Execution Stream

4. Click Video button at run result

5. Inside the video, click three dots to download video (for attaching it to a bug for example)

# Using Tags and tag patterns

1. View the usage of tagging in the example tests

# Execution parameters (test name, tags, or suites)

1. Select suite **exercise 9 test execution parameters**

2. Select checkbox advanced options

3. Run by tags (include, exclude), by test name (excl. .robot extension), by suite name (folder name)

> **Note:** [Tag Patterns](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#tag-patterns)

# Set Execution parameter on Project, Robot or Suite Level

1. Select suite **exercise 9 test execution parameters**

2. Open Suite Details

3. Configure   name: -s    value: regression for the run button to only pick tests inside a directory / suite.

4. Save

5. Run Suite

6. Verify only Regression tests have been executed

# Links
[Files & Directories](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#files-and-directories)
[Tag Patterns](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#tag-patterns)