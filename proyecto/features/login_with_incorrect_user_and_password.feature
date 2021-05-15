Feature: Login

  @user1 @web
  Scenario: Login with password and user incorrect
    Given I set scenario "Login_invalid_user_invalid_pass" and version app "<VERSION>"
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    Then I enter "Kraken1@gmail.com" into input field having id "ember8"
    Then I enter "Kraken1*" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I should see text "There is no user with that email address."
