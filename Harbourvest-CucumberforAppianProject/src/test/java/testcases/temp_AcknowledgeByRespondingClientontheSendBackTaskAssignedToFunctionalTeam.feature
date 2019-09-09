@AcknowledgeByRespondingClientonSendBackFunctionalTeamTask
Feature: Acknowledge the task send back by Functional Team-Treasury and respond to client

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "csaUser1"
  
   Scenario: Acknowledge the send back task assigned from Functional Team and respond to client
   
   #Save the filter set based on Initiated Request
   Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
   Given I wait for "2" seconds
   Given I click on link "Add"
   Given I populate field "Filter Set Name" with "Test the Filter- 09/09/2019 20:13:47"
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
   
   #Acknowledge the task by resopnding back to client
   Given I populate field type "PARAGRAPH" named "[1]" with "Enter this Comments to acknowledge the review comments - 09/09/2019 20:13:47"
   Given I wait for "5" seconds
   Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\swetar.VURAM.000\Documents\C_TESTESTEST_,.)(123&%$!_TESTESTEST DOC.pdf"
   Given I wait for "7" seconds
   Given I click on checkbox option "[2]"
   When I wait for "3" seconds
   When I click on button "Acknowledge"
   When I click on button "YES"
   
   #Send Response to client by entering To Recipients and CC Recipients and Email Subject and Body
   Given I wait for "5" seconds
   Given I click on checkbox option "High"
   Given I wait for "5" seconds
   Given I populate grid "CC Recipients [2]" column "[1]" row "[1]" with "Swetar@vuram.com"
   Given I wait for "10" seconds
   Given I click on checkbox option "High"
   Given I wait for "10" seconds
   Given I toggle box "Email[2]" visibility
   Given I populate field type "TEXT" named "[1]" with "swetar@vuram.com"
   Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[2]" with "prakruthil@vuram.com"
   Given I wait for "5" seconds
   Given I populate picker field "[2]" with partially matching suggestions for "csa"
   Given I wait for "5" seconds
   Given I populate picker field "[3]" with partially matching suggestions for "test"
   Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[3]" with "test subject"
   Given I populate field type "PARAGRAPH" named "[1]" with "Email"
   Given I populate picker field "[1]" with partially matching suggestions for "csa"
   When I populate field type "FILE_UPLOAD" named "Add Attachments" with "C:\Users\swetar.VURAM.000\Documents\C_TESTESTEST_,.)(123&%$!_TESTESTEST DOC.pdf"
   When I populate field "Rename Attachment(s)" with "Test Document"
     
   
   
   

