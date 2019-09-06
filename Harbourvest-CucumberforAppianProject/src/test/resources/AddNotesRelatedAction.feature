@AddNotes
Feature: Add Notes to Client Service Request using Related Action-Add Notes 

  Background: Login to Appian environment
   Given I setup with "$$$Browser$$$" browser
    When I set appian URL to "$$$URL_HV$$$"
    And I set appian version to "$$$AppVer$$$"
    And I set appian locale to "$$$AppLoc$$$"
    Then I login with username "$$$treasuryUser$$$"
  
   Scenario: Using Add Notes Related Action, 
  
   Given I open "$$$URL_ClientService$$$"
   Given I wait for "2" seconds
    Given I wait for "10" seconds
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I populate field "Search" with "1909"
    Given I wait for "2" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "10" seconds
    Given I click on link "Related Actions"
    Given I wait for "5" seconds
    Given I click on record related action "Add Notes"
    Given I wait for "5" seconds
    Given I toggle box "Enter Notes" visibility
    Given I wait for "3" seconds
    Given I toggle box "Enter Notes" visibility
    When I populate picker field "Tag People" with partially matching suggestions for
      | csa  |
      | test |
    When I populate field "Notes" with "Comments"
    Then I verify button "CANCEL" is present
    Then I click on button "SUBMIT"
    Then I click on link "Notes/Discussions"