Feature: Merge Articles
  As an administrator
  In order to eliminate redundant articles
  I want to be able to merge similar articles
  
  Background:
    Given I am on the edit page for an article
    And I am logged in to the admin panel
    When I merge a second article
    
  Scenario: non-admin attempts to merge articles
    Given I log out of the admin panel
    When I try to merge an article
    Then I should get an error message
    And the article should not change
    
  Scenario: admin successfully merges two articles
    Then the article should contain the text of both articles
    And it should only have one author
    And it should only have one title
    And comments from the second article should point to the merged article
    