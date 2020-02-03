@purchase
Feature: Purchase

   To validate the customer flows to purchase the objects in the store.

   Background:
    Given a regular customer signs into the homepage using "automationpractice.test@mailinator.com" and "Tester@123"

   Scenario: T-shirt
    Given the "T-shirts" category is selected in the navigation bar
    And the first product is clicked to show its details
    And the product is added to the cart
    And proceeds to the cart page
    And proceeds to the checkout
    And the delivery address and billing address are confirmed
    And the shipping method is selected and the terms of service checked
    And the banking wire is selected as payment method
    When the "I confirm my order" button is clicked
    Then the ORDER CONFIRMATION page is loaded with the message "Your order on My Store is complete."
