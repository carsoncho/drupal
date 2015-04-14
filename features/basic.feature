Feature: User login to Drupal
  In order test features only available to registered users
  As a user
  I need to be able to log in to the Drupal site

#  @api
#  Scenario: Log in to the Drupal site as admin user
#    Given I am on the homepage
#    When I fill in the following:
#      | Username | admin |
#      | Password | ins,ikl9! |
#    And press "Log in"
#    Then I should be on "/user"
#    Given I am logged in as a user with the "administrator" role

  @api
  Scenario: Target links within table rows
    Given I am logged in as a user with the "administrator" role
    When I am at "admin/structure/types"
    And I click "manage fields" in the "Basic page" row
    Then I should be on "admin/structure/types/manage/page/fields"
    And I should see text matching "Add new field"
