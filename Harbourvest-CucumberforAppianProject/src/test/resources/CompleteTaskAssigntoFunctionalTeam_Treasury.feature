@CompleteFunctionalTeamTask
Feature: Submit the task assigned to Functional Team-Treasury 

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "$$$URL_HV$$$"
    And I set appian version to "$$$AppVer$$$"
    And I set appian locale to "$$$AppLoc$$$"
    Then I login with username "$$$treasuryUser$$$"
  
   Scenario: Accept he task assigned to Functional Team and then Submit the task
  
   Given I open "$$$URL_ClientService$$$"
   Given I wait for "2" seconds
   
   #Add filter set based on Initiated Request
   Given I click on link "Add"
   Given I populate field "Filter Set Name" with "$$$FilterName$$$"
   Given I populate field "Type" with "$$$RequestType$$$"
   Given I wait for "5" seconds
   Given I click on link "Save"
   
   #Navigate to Tasks and click on Functional Team Task
   Given I click on button "$$$GrpTasks$$$"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds
   
   #Accept the task and Navigate between the tabs available in task and click on links available under Emails
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
   Given I populate field type "PARAGRAPH" named "[1]" with "$$$Comments$$$"
   Given I wait for "5" seconds
   Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\swetar.VURAM.000\Documents\C_TESTESTEST_,.)(123&%$!_TESTESTEST DOC.pdf"
   When I wait for "7" seconds
   
   #Check for the Save button Functionality
   Then I click on button "SAVE"
   Then I wait for "5" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds
   Then I click on button "COMPLETE"
   Then I click on button "YES"
   Then I wait for "5" seconds
   
   #Navigate to Records and Check for Fullfilment details dashboard
   Given I click on site page "CLIENT SERVICE REQUESTS"
   Given I populate field "Search" with "$$$RequestID$$$"
   Given I wait for "5" seconds
   #Given I click on grid "[1]" column "[2]" row "[1]"
   #Given I wait for "10" seconds
   Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service/page/client-service-requests/record/lUBfsMZM-I0--5FqVTNDp5aJ9ZmNSvOCpmbXr_hU_9A1mMudqUiMYDVB-0VO8f_RzndI8vUblG_ScN7k7ZquYVKZrFM1BVn0DZt2wmA4-EvhxwwYxt_/view/summary"
   Given I wait for "10" seconds
   Given I click on link "Fulfillment Details"
   When I sort grid "[1]" by column "Completed On"
   Then I verify grid "[1]" column "[11]" row "[1]" contains "Completed"
   Then I click on grid "[1]" column "[12]" row "[1]"
   Then I toggle box "Fulfillment History of Treasury Team" visibility
   Then I wait for "3" seconds
   Then I toggle box "Fulfillment History of Treasury Team" visibility
   Then I sort grid "2" by column "Task Name"
   Then I sort grid "2" by column "Initial Assignment"
   Then I sort grid "2" by column "Assigned On"
   Then I sort grid "2" by column "Currently Assigned To"
   Then I sort grid "2" by column "Owner Assigned On"
   Then I sort grid "2" by column "Completed By"
   Then I sort grid "2" by column "Completed On"
   Then I sort grid "2" by column "Status"
   Then I sort grid "2" by column "Comments"
   Then I logout
   Then I tear down
            