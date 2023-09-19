*** Settings ***
Resource                   ../resources/common.robot
Resource                   ../resources/leads.robot
Library                    FakerLibrary
Suite Setup                Setup Browser
Test Setup                 Home
Suite Teardown             Close All Browser Sessions
Force Tags                 data-tests

# In this exercise we use the same salesforce scenario built with exercise 6 and 12.

*** Test Cases ***

Exercise 14 - Data Driven Testing - Create Leads using Test Case Template
    [Template]             Create Lead
    lead_status=Working    last_name=Smith             company=Growmore    salutation=Ms.      first_name=Tina          phone=+12234567858449    title=Manager               email=tina.smith@gmail.com                              website=https://www.growmore.com/    lead_source=Advertisement
    lead_status=Working    last_name=Doe               company=Growmore    salutation=Mr.      first_name=John          phone=+12234567858449    title=Manager               email=tina.smith@gmail.com                              website=https://www.growmore.com/    lead_source=Advertisement
    lead_status=Working    last_name=Jovi              company=Growmore    salutation=Ms.      first_name=Bon           phone=+12234567858449    title=Manager               email=tina.smith@gmail.com                              website=https://www.growmore.com/    lead_source=Advertisement

Exercise 14 - Data Driven Testing - Verify Leads using Test Case Template
    [Template]             Verify Lead
    last_name=Smith        salutation=Ms.              first_name=Tina     company=Growmore    phone=+12234567858449    title=Manager            website=https://www.growmore.com/
    last_name=Doe          salutation=Mr.              first_name=John     company=Growmore    phone=+12234567858449    title=Manager            website=https://www.growmore.com/
    last_name=Jovi         salutation=Ms.              first_name=Bon      company=Growmore    phone=+12234567858449    title=Manager            website=https://www.growmore.com/


Exercise 14 - Data Driven Testing - Delete Leads using Test Case Template
    [Template]             Delete Lead
    last_name=Smith        first_name=Tina
    last_name=Doe          first_name=John
    last_name=Jovi         first_name=Bon