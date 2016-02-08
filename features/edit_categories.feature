Feature: Categories
  As an author
  In order to adapt
  I want to be able to edit categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    Given I am on the admin categories page
    And I follow "General"
  
  Scenario: Editing an existing category
    Given I fill in "Name" with "Major"
    And I press "Save"
    Then I should see "Major" within the Categories List
    But I should not see "General" within the Categories List
    