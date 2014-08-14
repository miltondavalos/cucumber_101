Feature: Validate Search in google
  Scenario: Search for CNN
    Given I visit google
    And I search for CNN
    And I click on Search
    Then I should see CNN.com in the search result