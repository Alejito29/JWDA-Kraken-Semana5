Feature: Create a post using new button

  @user1 @web
  Scenario: As a user I create a post using 'New post' button on posts list
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    Then I enter "prueba@gmail.com" into input field having id "ember8"
    Then I enter "123456789*" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I should see text "View site"
    Then I click on element having xpath "//a[@class='ember-view'][2]"
    Then I click on element having css selector ".gh-btn.gh-btn-green.ember-view"
    Then I enter "Titulo Prueba" into input field having css selector ".gh-editor-title"
    Then I enter "Texto Prueba" into input field having css selector ".koenig-editor__editor"
    When I click on element having css selector "a[href='#/posts/']"
    Then I wait for 2 seconds
    Then I should see text "Titulo prueba"


