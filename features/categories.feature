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