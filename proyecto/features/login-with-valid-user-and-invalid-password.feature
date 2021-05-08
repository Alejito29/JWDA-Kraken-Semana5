Feature: Login

  @user1 @web
  Scenario: Login with valid user and invalid pasword
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    Then I enter "<USER>" into input field having id "ember8"
    Then I enter "Kraken1*" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I should see text "Your password is incorrect"
