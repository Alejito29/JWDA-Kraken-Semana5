Feature: Login with valid user and valid password

  @user1 @web
  Scenario: As a user I create a scheduled post using New post button on posts list
    Given I set scenario "Login_valid_user_valid_pass" and version app "3.3.0"
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    Then I enter "jorge@gmail.com" into input field having id "ember8"
    Then I enter "accedian1!" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I should see text "View site"

