Feature: Login

  @user1 @web
  Scenario: Login with invalid user and valid password
    Given I set scenario "Login_invalid_user_valid_pass" and version app "<VERSION>"
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    Then I enter "kraken@gmail.com" into input field having id "ember8"
    Then I enter "<>PASSWORD" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I should see text "Access denied."
