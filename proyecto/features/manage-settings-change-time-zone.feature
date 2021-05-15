Feature: Manage Settings

  @user1 @web
  Scenario: As a user I edit the timezone of the site
    Given I set scenario "Manage_settings_change_timezone" and version app "<VERSION>"
    Given I navigate to page "http://localhost:2368/ghost/#/signin/"
    Then I enter "<USER>" into input field having id "ember8"
    Then I enter "<PASSWORD>" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I click on element having xpath "(//a[@class='ember-view'])[8]"
    Then I click on element having xpath "(//button[@class='gh-btn'])[2]"
    Then I select option with value "Pacific/Honolulu" for dropdown having xpath "//select[@class='ember-view']"
    Then I click on element having xpath "//button[@class='gh-btn gh-btn-blue gh-btn-icon ember-view']"
    Then I verify "Pacific/Honolulu" into input field having xpath "//select[@class='ember-view']"
