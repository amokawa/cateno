@account
Feature: Account

    Account related tests

    Scenario: Create
        Given I am a new user accessing the website
        And create a new account using "automationpractice.test4@mailinator.com"
        And fill out the form using "Mr.", "Tester", "Test", "Tester@123", "101 Fake St.", "Fake", "Minnesota", "48192", "+5511999998888"
        When the form is submitted
        Then should be signed in as "Tester Test"
