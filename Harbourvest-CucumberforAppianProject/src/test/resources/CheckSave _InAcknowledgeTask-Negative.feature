@Negative_SaveFunctionalityInAcknowledgementtask
Feature: Acknowledge the task send back by Functional Team-Treasury 

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "$$$URL_HV$$$"
    And I set appian version to "$$$AppVer$$$"
    And I set appian locale to "$$$AppLoc$$$"
    Then I login with username "$$$csaUser1$$$"
  
   Scenario: Accept he task assigned to Functional Team and then Submit the task
   
   #Save the filter set based on Initiated Request
   Given I open "$$$URL_ClientService$$$"
   Given I wait for "2" seconds
   Given I click on link "Add"
   Given I populate field "Filter Set Name" with "$$$FilterName$$$"
   Given I wait for "2" seconds
   Given I click on link "Today[2]"
   Given I wait for "2" seconds
   Given I populate field "Type" with "$$$RequestType$$$"
   Given I wait for "5" seconds
   Given I click on link "Save"
   
   #Click on the Send back task i.e Review Comments from Functional Team 
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds
   
   #Acknowledge the task without resopnding back to client
   Given I populate field type "PARAGRAPH" named "[1]" with "$$$Acknowledgement_Comments$$$"
   Given I wait for "5" seconds
   Given I populate field type "FILE_UPLOAD" named "[1]" with "$$$DOCUploadpath$$$"
   Given I wait for "5" seconds
   Then I click on button "SAVE"
   Given I wait for "5" seconds
   Then I populate field "Select Filter Set(s)" with "$$$FilterName$$$"
   Then I wait for "5" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I click on grid "[1]" column "[3]" row "[2]"
   Given I wait for "4" seconds
   When I verify text "$$$Acknowledgement_Comments$$$" is present
   Then I wait for "5" seconds
   Then I logout
   Then I tear down
   
  
   
   