Feature: web Table
  I want to Automate the Currency table for the test scenarios
  @testTable
  Scenario: Currency value comparision
    Given I navigate to values page
    When I am on Values page
    Then I should see right number of values appers on the screen
    And Values on the screen should be greater than zero
    And Total balance should be sum of the listed values on the screen
    And values should be formatted as currencies