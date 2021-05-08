Feature: Create a scheduled post using new button

  @user1 @web
  Scenario: As a user I create a scheduled post using New post button on posts list
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    Then I enter "<USER>" into input field having id "ember8"
    Then I enter "<PASSWORD>" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I should see text "View site"

