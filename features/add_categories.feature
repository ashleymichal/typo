Feature: Categories
  As an author
  In order to organize my articles
  I want to have categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel
  
  Scenario: Category index page shown
    Given I am on the admin page
    And I follow "Categories"
    Then I should be on the admin categories page
    
  Scenario: Creating a new category
    Given I am on the admin categories page
    And I fill in "Name" with "Daily Special"
    And I press "Save"
    Then I should be on the admin categories page
    And I should see "Daily Special" within the Categories table
    
  # Scenario: Editing an existing category
  #   Given I am on the admin categories page
  #   And I follow the first categories link
  #   Then I should be on the admin categories page
  #   And I should see 