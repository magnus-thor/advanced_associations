Feature: user likes a post

  Background:
    Given these following users exists
      | email            | password |
      | oliver@craft.com | password |
      | magnus@craft.com | password |
    Given these following posts exists
      | title | body        | forum  | user             | likes |
      | rails | Lorem ipsum | sports | oliver@craft.com | 2     |

  Scenario: user likes a post
    Given I am logged in as "magnus@craft.com"
    And I visit the site
    And I click on "Sports"
    When I click like on "rails" post
    Then I should see "rails" post has "3" likes
    And I should not be able to click on like again on post "rails"

  Scenario: oliver sees how many likes his post have
    Given I am logged in as "oliver@craft.com"
    And I visit the site
    Then I should see "your posts have 2 likes"