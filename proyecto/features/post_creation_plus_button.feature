Feature: Post creation plus button

  @user1 @web
  Scenario: As a user I create a post using plus button on home page
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    Then I enter "<USER>" into input field having id "ember8"
    Then I enter "<PASSWORD>" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I should see text "View site"
    Then I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    Then I enter "$name_1" into input field having css selector ".gh-editor-title"
    Then I enter "$name_2" into input field having css selector ".koenig-editor__editor"
    When I click on element having css selector "a[href='#/posts/']"
    Then I wait for 2 seconds
    Then I should see text "$$name_1"

