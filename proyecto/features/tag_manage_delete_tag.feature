Feature: Delete a tag

  @user1 @web
  Scenario: As a user I create a new tag on on tag manage menu
    Given I set scenario "Tag_manage_delete_tag" and version app "<VERSION>"
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    Then I enter "<USER>" into input field having id "ember8"
    Then I enter "<PASSWORD>" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I should see text "View site"
    Then I navigate to page "http://localhost:2368/ghost/#/tags"
    Then I click on element having css selector "a[href='#/tags/new/']" 
    Then I enter "Tag to delete" into input field having xpath "(//input[@id='tag-name'])[1]"
    Then I click on element having css selector ".gh-btn.gh-btn-blue"
    Then I wait for 2 seconds
    When I click on element having css selector ".gh-btn.gh-btn-red"
    Then I should see text "Are you sure"