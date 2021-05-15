Feature: Manage Settings

  @user1 @web
  Scenario: As a user I make the site private
    Given I set scenario "Manage_settings_make_private" and version app "<VERSION>"
    Given I navigate to page "http://localhost:2368/ghost/#/signin/"
    Then I enter "<USER>" into input field having id "ember8"
    Then I enter "<PASSWORD>" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I click on element having xpath "(//a[@class='ember-view'])[8]"
    Then I click on element having xpath "//span[@class='input-toggle-component']"
    Then I click on element having xpath "//button[@class='gh-btn gh-btn-blue gh-btn-icon ember-view']"
    Then I verify "A private RSS feed is available at" into field having xpath "//span[@class='avoid-break-out']"