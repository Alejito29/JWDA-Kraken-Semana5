Feature: Login

  @user1 @web
  Scenario: Login with null user and valid pasword
    Given I set scenario "Login_valid_user_invalid_pass" and version app "<VERSION>"
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    Then I enter "<PASSWORD>" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I should see text "Please fill out the form to sign in"
