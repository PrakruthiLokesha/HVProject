@AcknowledgeAndCloseonSendBackFunctionalTeamTask
Feature: Acknowledge the task send back by Functional Team-Treasury 

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "csaUser1"
  
   Scenario: Acknowledge and Close the task sent back by Functional Team
   
   #Save the filter set based on Initiated Request
   Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
   Given I wait for "2" seconds
   Given I click on link "Add"
   Given I wait for "2" seconds
   Given I populate field "Filter Set Name" with "Test the Filter- 09/10/2019 19:25:34"
   Given I wait for "3" seconds
   Given I populate field "Search" with "1909-8479"
   Given I wait for "3" seconds
   Given I populate field "Type" with "Capital Calls"
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
   
   #Acknowledge and Close the task without resopnding back to client with Acknowledgement comments
   Given I populate field type "PARAGRAPH" named "[1]" with "Enter this Comments to acknowledge the review comments - 09/10/2019 19:25:34"
   Given I wait for "5" seconds
   Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\swetar.VURAM.000\Documents\C_TESTESTEST_,.)(123&%$!_TESTESTEST DOC.pdf"
   Given I wait for "7" seconds
   When I click on button "ACKNOWLEDGE & CLOSE"
   When I click on button "YES"
   Then I wait for "5" seconds
   
   #Verify the Status of Request in Client Service Records
   Given I click on site page "CLIENT SERVICE REQUESTS"
   Given I populate field "Search" with "1909-8479"
   Given I wait for "2" seconds
   Given I clear field "Status"
   Given I wait for "5" seconds
   Given I populate field "STATUS" with "Closed"
   Given I populate field "Type" with "Capital Calls"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Completed On" 
   Given I wait for "4" seconds
   Given I verify grid "[1]" column "[5]" row "[1]" contains "Capital Calls"
   Given I wait for "4" seconds
   Given I verify grid "[1]" column "[9]" row "[1]" contains "Closed"
   Given I wait for "4" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds
   When I click on link "Fulfillment Details"
   
    #Check the status updated in Request Fulfillment Details grid under Request Fulfillment Dashbaord
    Given I toggle box "Request Fulfillment Details" visibility
    Given I wait for "2" seconds
    Given I toggle box "Request Fulfillment Details" visibility
    Given I wait for "5" seconds
    Given I verify grid "[1]" column "[11]" row "[1]" contains "Completed"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Functional Team"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Recommended Person"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Comments"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Assigned By"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Due Date"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Request Owner"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Task Owner"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Status"
    Given I wait for "3" seconds
    
     #Click to view review history
    Given I click on grid "[1]" column "[12]" row "[1]"
    Given I wait for "3" seconds
    Given I toggle box "[2]" visibility
    Given I wait for "3" seconds
    Given I toggle box "[2]" visibility
    Given I sort grid "[2]" by column "Task Name"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Initial Assignment"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Currently Assigned To"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Owner Assigned On"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Completed By"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Completed On"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Status"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Comments"
    Given I wait for "3" seconds
    Then I click on link "Close"
   Then I logout
   Then I tear down

   
   
   
   

