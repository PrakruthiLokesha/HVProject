@ReplyOnAddedNotesByTaggedUser
Feature: Reply to Notes/Discussions By tagged User

  Background: Login to Appian environment
   Given I setup with "$$$Browser$$$" browser
    When I set appian URL to "$$$URL_HV$$$"
    And I set appian version to "$$$AppVer$$$"
    And I set appian locale to "$$$AppLoc$$$"
    Then I login with username "$$$csaUser1$$$"
  
   Scenario: Reply on added notes/discussion
  
  #Navigate to Records to reply on notes/discussions
    Given I open "$$$URL_ClientService$$$"
    Given I wait for "10" seconds
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I populate field "Search" with "1909"
    Given I wait for "2" seconds
    Given I click on grid "[1]" column "[3]" row "[2]"
    Given I wait for "10" seconds
   
    #Navigate to Notes/Discussions Dashbaord to view the added Notes
    Then I click on link "Notes/Discussions"
    Then I wait for "5" seconds
    
    #Reply to the notes added
  Given I click on grid "[1]" column "[8]" row "[1]"
  Given I wait for "5" seconds
  When I populate field "Notes" with "$$$Add_this_Reply_comments_to_check_the_notes$$$"
  When I wait for "2" seconds
  When I verify button "CANCEL" is present
  Then I click on button "SUBMIT"
  Then I wait for "5" seconds
  
  #View More details of added notes by clicking More Details icon
   
   Given I click on grid "[1]" column "[7]" row "[1]"
   Given I toggle box "Discussion History" visibility
   Given I wait for "2" seconds
   Given I toggle box "Discussion History" visibility
   Given I wait for "2" seconds
   Given I populate field "Search Notes[2]" with "$$$Add_this_Reply_comments_to_check_the_notes$$$"
   Given I wait for "5" seconds
   Given I click on button "CLEAR FILTERS[2]" 
   
   Given I populate field "Sort By" with "Older First"
   Given I wait for "3" seconds
   Given I populate field "Sort By" with "Newest First"
   Given I wait for "5" seconds
   Given I click on link "+ Reply"
   Given I wait for "5" seconds
   When I populate field "Notes" with "$$$Add_this_Reply_comments_to_check_the_notes$$$"
   When I wait for "2" seconds
   When I verify button "CANCEL" is present
   Then I click on button "SUBMIT"
   Then I wait for "5" seconds
   
   