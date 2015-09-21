@user
Feature: Manage user
  Scenario: Add a user
    Given I access to new user page
    Then  I fill in the "user_first" with "hung"
    And   I fill in "user_last" with "last name"
    Then  I press "Create" button
    And   system should redirect to list user
    And   I should see "hung" here
