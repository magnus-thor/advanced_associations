Feature: user likes a post

  Background:
    Given these following users exists
      | email            | password |
      | oliver@craft.com | password |
      | magnus@craft.com | password |
    Given these following posts exists
      | body        | forum  | user             | likes |
      | Lorem ipsum | sports | oliver@craft.com | 2     |
    Given I am logged in as "magnus@craft.com"

  Scenario: user likes a post
    Given I visit the site
    And I click on "Sports"
    When I click like on "oliver@craft.com" post
    Then I should see "oliver@craft.com" post has "3" likes