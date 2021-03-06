Feature: Manage Settings

  @user1 @web
  Scenario: As a first user I say hi to a second user
    Given I navigate to page "http://localhost:2368/ghost/#/signin/"
    Then I enter "<USER>" into input field having id "ember8"
    Then I enter "<PASSWORD>" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I click on element having xpath "(//a[@class='ember-view'])[5]"
    Then I click on element having xpath "(//button[@class='gh-btn'])[1]"
    Then I enter "New Title Site" into input field having xpath "(//input[@class='ember-text-field gh-input ember-view'])[1]"
    Then I enter "New Description Site" into input field having xpath "(//input[@class='ember-text-field gh-input ember-view'])[2]"
    Then I click on element having xpath "//button[@class='gh-btn gh-btn-blue gh-btn-icon ember-view']"
    Then I verify "New Title Site" into input field having xpath "(//input[@class='ember-text-field gh-input ember-view'])[1]"
    Then I verify "New Description" into input field having xpath "(//input[@class='ember-text-field gh-input ember-view'])[2]"
