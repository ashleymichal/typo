Feature: Merge Articles
  As an administrator
  In order to eliminate redundant articles
  I want to be able to merge similar articles
  
  Background:
    Given I am on the edit page for an article
    And I am logged in to the admin panel
    
  Scenario: non-admin cannot merge articles
    Given I log out of the admin panel
    When I try to merge an article
    Then I should get an error message
    And the article should not change
    
  Scenario: merged article contains text of both article
    
  Scenario: merged article retains only one author
    
  Scenario: comments from both articles point to merged article
    
  Scenario: merged article retains only one title