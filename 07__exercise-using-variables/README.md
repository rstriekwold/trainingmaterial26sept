# Exercise 7 - Using Variables!

Welcome to **Exercise 7**. Let's practice all the ins and outs related to Variables.

# Purpose

The purpose of this exercise is to learn how to create and use variables in multiple ways.

# Prerequisite(s)

- Access to a Salesforce Trial Org. is required. (exercise 4)
- Access to a Copado Robotic Testing Organization is required
- Access to a Project
- Robot created

# Learning Objectives

- Create variables in the CRT UI
- Set variables using the Variables section
- Create and use variable files
- Set variables using keywords

# Create variables in the CRT UI

## Suite

1. Create a new empty suite **exercise 7 using variables**

2. Open Suite Details

3. View Suite Variables and Execution Parameters

4. Add variables here specific to your suite

## Robot

1. Open Robot Details

2. View Robot Variables and Execution Parameters

3. Add variables here specific to an environment / robot. These variables can be accessed by all suites under the robot

> **Note:** We recommend to create seperate robots for each environment. Considering environment specific report capabilities and dashboards.

## Project

1. Manage Project (hover the breadcrumb below the search, a blue container appears with the button)

2. View Project Variables and Execution Parameters

3. Add variables here specific to an project, or robot. These variables can be accessed by robots and suites in the project.

# Set variables using the Variables section

1. Open empty suite **exercise 7 using variables**

2. Create a folder in the root named **exercise-7-using-variables**

3. In this foler, create file variable-files.robot and copy the contents from here [variables-section.robot](https://bitbucket.org/copado-robotic-testing/training-exercises/raw/1573e4efbfb394d865ef6dd64b1f3d6836563ca1/exercise-7-using-variables/variables-section.robot)

4. Click **Live Test** button displayed just above the test case name **Variables Section** 

# Create and use variable files

1. Open empty suite **exercise 7 using variables**

2. Open folder in the root named **exercise-7-using-variables**

3. In this foler, create file variable-files.robot and copy the contents from here [variable-files.robot](https://bitbucket.org/copado-robotic-testing/training-exercises/raw/1573e4efbfb394d865ef6dd64b1f3d6836563ca1/exercise-7-using-variables/variable-files.robot)

4. In this foler, create file PythonVariables.py and copy the contents from here [PythonVariables.py](https://bitbucket.org/copado-robotic-testing/training-exercises/raw/1573e4efbfb394d865ef6dd64b1f3d6836563ca1/exercise-7-using-variables/PythonVariables.py)

5. In this foler, create file YamlVariables.yaml and copy the contents from here [YamlVariables.yaml](https://bitbucket.org/copado-robotic-testing/training-exercises/raw/1573e4efbfb394d865ef6dd64b1f3d6836563ca1/exercise-7-using-variables/YamlVariables.yaml)

6. In this foler, create file DynamicVariables.py and copy the contents from here [DynamicVariables.py](https://bitbucket.org/copado-robotic-testing/training-exercises/raw/1573e4efbfb394d865ef6dd64b1f3d6836563ca1/exercise-7-using-variables/DynamicVariables.py)

7. Specific to YAML, In the **root** folder, create file requirements.txt and copy the contents from here [requirements.txt](https://bitbucket.org/copado-robotic-testing/training-exercises/raw/1573e4efbfb394d865ef6dd64b1f3d6836563ca1/requirements.txt)

8. Open variable-files.robot and Click Live Test button displayed just above the test cases to see them in action!

# Set variables using keywords

1. Open empty suite **exercise 7 using variables**

2. Open folder in the root named **exercise-7-using-variables**

3. In this foler, create file set-variables-keywords.robot and copy the contents from here [set-variables-keywords.robot](https://bitbucket.org/copado-robotic-testing/training-exercises/raw/6b626388ef38d2553fd15d7392d3357d63a78073/exercise-7-using-variables/set-variables-keywords.robot)

4. Click **Live Test** button displayed just above the test case names and learn about **scope of variables** using different keywords.