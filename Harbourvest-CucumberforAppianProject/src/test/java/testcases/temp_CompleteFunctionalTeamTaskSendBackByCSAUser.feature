@CompleteFunctionalTeamTaskSendbackbyCSAUser
Feature: Complete the task send back to Functional Team-Treasury 

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "treasuryUser1"
  
   Scenario: Accept he task assigned to Functional Team and then Submit the task
  
   Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
   Given I wait for "2" seconds
   
   #Add filter set based on Initiated Request
   Given I click on link "Add"
   Given I populate field "Filter Set Name" with "Test the Filter- 09/10/2019 16:42:23"
   Given I populate field "Type" with "Capital Calls"
   Given I wait for "5" seconds
   Given I click on link "Save"
   
   #Navigate to Tasks and click on Functional Team Task
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds
   
   #Navigate between the tabs available in task and click on links available under Emails
   Given I click on button "ACCEPT"
   Given I wait for "4" seconds
   Given I click on button "Emails"
   Given I wait for "4" seconds
   Given I click on link "All Emails"
   Given I wait for "4" seconds
   Given I click on link "Incoming Emails"
   Given I wait for "4" seconds
   Given I click on link "Outgoing Emails"
   Given I wait for "4" seconds
   Given I click on link "Draft Emails"
   Given I wait for "4" seconds
   Given I click on button "REQUEST DETAILS"
   Given I wait for "4" seconds
   Given I click on button "AUDIT HISTORY"
   Given I wait for "4" seconds
   Given I click on button "DOCUMENTS"
   Given I wait for "4" seconds 
   Given I click on button "PROVIDE COMMENTS"
   Given I wait for "4" seconds
   
   #Check for the details provided by CSA user while initiating request and provide the comments to complete the task
   Given I toggle box "Requestor & Request Information" visibility
   Given I toggle box "Client Information" visibility
   Given I wait for "4" seconds
   Given I populate field type "PARAGRAPH" named "[1]" with " Enter this comments to check the comments field - 09/10/2019 16:42:23"
   Given I wait for "5" seconds
   Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\swetar.VURAM.000\Documents\C_TESTESTEST_,.)(123&%$!_TESTESTEST DOC.pdf"
   When I wait for "7" seconds
   When I toggle box "Fulfillment History of Treasury Team" visibility
   Then I click on button "SAVE"
   Then I wait for "5" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds
   Then I click on button "COMPLETE"
   Then I wait for "5" seconds
   Then I logout
   Then I tear down
            

