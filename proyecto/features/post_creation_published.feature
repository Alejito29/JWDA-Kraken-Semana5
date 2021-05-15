Feature: Create a published post using new button

  @user1 @web
  Scenario: As a user I create a published post using New post button on posts list
    Given I set scenario "Post_creation_published" and version app "<VERSION>"
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    Then I enter "<USER>" into input field having id "ember8"
    Then I enter "<PASSWORD>" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I should see text "View site"
    Then I click on element having xpath "//a[@href='#/posts/']"
    Then I click on element having css selector ".gh-btn.gh-btn-green.ember-view"
    Then I enter "$name_1" into input field having css selector ".gh-editor-title"
    Then I enter "$name_2" into input field having css selector ".koenig-editor__editor"
    Then I click on element having css selector ".gh-publishmenu"
    Then I click on element having css selector ".gh-publishmenu-button"
    When I click on element having css selector "a[href='#/posts/']"
    Then I wait for 2 seconds
    Then I click on element having css selector ".gh-contentfilter-type"
    Then I click on element having css selector "li[data-option-index='2']"
    Then I should see text "$$name_1"
    Then I should see text "PUBLISHED"

