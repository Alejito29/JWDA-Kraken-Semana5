Feature: Manage Pages

  @user1 @web
  Scenario: Login with valid user and email, then click in pages and only filters  the first option and second option
    Given I set scenario "Pages_filter_by_item_1st_to_4th" and version app "<VERSION>"
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    Then I enter "<USER>" into input field having id "ember8"
    Then I enter "<PASSWORD>" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I wait for 3 seconds
    When I click on element having css selector "a[href='#/pages/']"
    Then I wait for 3 seconds
    Then I click on element having css selector ".gh-contentfilter-menu"
    Then I click on element having css selector "li[data-option-index='4']"
    Then I click on element having css selector ".gh-contentfilter-author"
    Then I click on element having css selector "li[data-option-index='2']"
    Then I click on element having css selector ".gh-contentfilter-tag"
    Then I click on element having css selector "li[data-option-index='1']"
    Then I click on element having css selector ".gh-contentfilter-sort"
    Then I click on element having css selector "li[data-option-index='2']"
    Then I should see text "Pages"
