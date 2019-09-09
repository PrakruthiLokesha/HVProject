@ReplyOnAddedNotesByTaggedUserusingTasksTab
Feature: Reply to Notes/Discussions By tagged User

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "csaUser1"
  
   Scenario: Reply on added notes/discussion
  
  #Navigate to My Discussions to reply on notes/discussions
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "10" seconds
    Given I click on button "MY DISCUSSIONS"
    Given I wait for "2" seconds
   
   #Set filters
    Given I populate field "Request Id" with "8259"
    Given I wait for "2" seconds
    
    #Reply to the notes added
  Given I click on grid "[1]" column "[10]" row "[4]"
  Given I wait for "5" seconds
  When I populate field "Notes" with "Enter this notes when user reply on added notes-09/09/2019 20:13:47"
  When I wait for "2" seconds
  When I verify button "CANCEL" is present
  Then I click on button "SUBMIT"
  Then I wait for "5" seconds
  
  #View More details of added notes by clicking More Details icon
   
   Given I click on grid "[1]" column "[9]" row "[4]"
   Given I wait for "5" seconds
   Given I toggle box "Discussion History" visibility
   Given I wait for "3" seconds
   Given I toggle box "Discussion History" visibility
   Given I wait for "2" seconds
   Given I populate field "Search Notes[2]" with "Enter this notes when user reply on added notes-09/09/2019 20:13:47"
   Given I wait for "5" seconds
   Given I click on button "CLEAR FILTERS[2]" 
   
   Given I populate field "Sort By" with "Older First"
   Given I wait for "3" seconds
   Given I populate field "Sort By" with "Newest First"
   Given I wait for "5" seconds
   
   #Reply to notes by clicking reply link available under more details
   Given I click on link "+ Reply"
   Given I wait for "5" seconds
   When I populate field "Notes" with "Enter this notes when user reply on added notes-09/09/2019 20:13:47"
   When I wait for "2" seconds
   When I verify button "CANCEL" is present
   Then I click on button "SUBMIT"
   Then I wait for "5" seconds
   
   

