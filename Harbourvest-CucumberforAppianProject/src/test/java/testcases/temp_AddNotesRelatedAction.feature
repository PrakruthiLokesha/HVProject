@AddNotes
Feature: Add Notes to Client Service Request using Related Action-Add Notes 

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "treasuryUser1"
  
   Scenario: Using Add Notes Related Action, 
  
   Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
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
    When I populate field "Notes" with "Enter this notes when initiated add notes related action - $$$datetime$$$"
    Then I verify button "CANCEL" is present
    Then I click on button "SUBMIT"
    
    #Navigate to Notes/Discussions Dashbaord to view the added Notes
    Then I click on link "Notes/Discussions"
    
   #Set the filters to search notes and sort the grid
   Given I populate field "Search Notes" with "Enter this notes when initiated add notes related action - $$$datetime$$$"
   Given I wait for "3" seconds
   Given I populate picker field "Tagged People" with partially matching suggestions for "csa"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Notes/Discussions"
   Given I sort grid "[1]" by column "Added On"
   Given I sort grid "[1]" by column "Added By"
   Given I sort grid "[1]" by column "Last Added On"
   Given I sort grid "[1]" by column "Last Added By"
   
   #View More details of added notes by clicking More Details icon
   
   Given I click on grid "[1]" column "[7]" row "[1]"
   Given I verify box "Discussion History" visibility
   Given I wait for "2" seconds
   Given I verify box "Discussion History" visibility
   Given I populate field "Sort By" with "Older First"
   Given I wait for "3" seconds
   Given I populate field "Sort By" with "Newest First"
   
   

