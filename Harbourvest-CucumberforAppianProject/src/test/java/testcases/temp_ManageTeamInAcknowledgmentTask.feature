@AddFunctionalTeaminAcknowledgmentTask
Feature: Acknowledge the task send back by Functional Team-Treasury 

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "csaUser1"
  
   Scenario: Accept he task assigned to Functional Team and then Submit the task
   
   #Save the filter set based on Initiated Request
   Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
   Given I wait for "2" seconds
   Given I click on link "Add"
   Given I populate field "Filter Set Name" with "Test the Filter- 09/12/2019 22:15:54"
   #Given I populate field "Search" with "8251"
   Given I populate field "Type" with "Capital Calls"
   Given I wait for "5" seconds
   Given I click on link "Today[2]"
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
   Given I populate grid "[1]" column "[1]" row "[2]" with partially matching picker field suggestions for "Tax"
   Given I wait for "3" seconds
   Given I populate grid "[1]" column "[4]" row "[2]" with "Enter this comments to check the comments field - 09/12/2019 22:15:54"
   Given I wait for "3" seconds
   Given I verify grid "[1]" column "[5]" row "[2]" contains "Added"
   Given I wait for "3" seconds
   When I verify button "CANCEL" is present
   When I wait for "3" seconds
   When I click on button "Complete"
   When I click on button "YES"
   Then I wait for "5" seconds
   Given I populate field type "PARAGRAPH" named "[1]" with "Enter this Comments to acknowledge the review comments - 09/12/2019 22:15:54"
   Given I wait for "5" seconds
   Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\swetar.VURAM.000\Documents\C_TESTESTEST_,.)(123&%$!_TESTESTEST DOC2.pdf"
   Given I wait for "7" seconds
   Given I toggle box "Document(s)" visibility
   Given I toggle box "Issue Description" visibility
   Given I wait for "5" seconds
   Given I click on button "ACKNOWLEDGE & CLOSE"
   When I click on button "YES"
   Then I wait for "5" seconds
   
   #Verify the Status of Request in Client Service Records
   Given I click on site page "CLIENT SERVICE REQUESTS"
   Given I populate field "Search" with "1909-8503"
   Given I wait for "3" seconds
   Given I clear field "Status"
   Given I wait for "5" seconds
   Given I populate field "STATUS" with "Closed"
   Given I populate field "Type" with "Capital Calls"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Completed On" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Completed On" 
   Given I wait for "4" seconds
   Given I verify grid "[1]" column "[5]" row "[1]" contains "Capital Calls"
   Given I verify grid "[1]" column "[9]" row "[1]" contains "Closed"
   When I wait for "4" seconds
   Then I logout
   Then I tear down

   
   
   
   

