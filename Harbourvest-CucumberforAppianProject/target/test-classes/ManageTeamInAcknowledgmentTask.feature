@AddFunctionalTeaminAcknowledgmentTask
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
   Given I populate field "Search" with "8251"
   Given I populate field "Type" with "Client Reporting"
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
   
   #Acknowledge and Close the task without resopnding back to client
   Given I click on link "Manage Teams"
   Given I wait for "5" seconds
   Given I click on link "Add Functional Team"
   Given I populate grid "[1]" column "[1]" row "[2]" with partially matching picker field suggestions for "Tre"
   Given I wait for "3" seconds
   Given I populate grid "[1]" column "[4]" row "[2]" with "$$$Comments$$$"
   Given I wait for "3" seconds
   Given I verify grid "[1]" column "[5]" row "[2]" contains "Added"
   Given I wait for "3" seconds
   When I verify button "CANCEL" is present
   When I wait for "3" seconds
   When I click on button "Complete"
   When I click on button "YES"
   Then I wait for "5" seconds
   Given I populate field type "PARAGRAPH" named "[1]" with "$$$Acknowledgement_Comments$$$"
   Given I wait for "5" seconds
   Given I populate field type "FILE_UPLOAD" named "[1]" with "$$$DOCUploadpath$$$"
   Given I wait for "7" seconds
   Given I toggle box "Document(s)" visibility
   Given I toggle box "Issue Description" visibility
   Given I wait for "5" seconds
   Given I click on button "ACKNOWLEDGE & CLOSE"
   When I click on button "YES"
   Then I wait for "5" seconds
   
   #Verify the Status of Request in Client Service Records
   Given I click on site page "CLIENT SERVICE REQUESTS"
   Given I populate field "Search" with "$$$RequestID$$$"
   Given I wait for "3" seconds
   Given I clear field "Status"
   Given I wait for "5" seconds
   Given I populate field "STATUS" with "Closed"
   Given I populate field "Type" with "$$$RequestType$$$"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Completed On" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Completed On" 
   Given I wait for "4" seconds
   Given I verify grid "[1]" column "[5]" row "[1]" contains "$$$RequestType$$$"
   Given I verify grid "[1]" column "[9]" row "[1]" contains "Closed"
   When I wait for "4" seconds
   Then I logout
   Then I tear down

   
   
   
   