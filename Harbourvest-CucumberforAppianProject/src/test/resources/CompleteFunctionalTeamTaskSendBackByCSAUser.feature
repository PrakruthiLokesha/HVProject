@CompleteFunctionalTeamTaskSendbackbyCSAUser
Feature: Complete the task send back to Functional Team-Treasury 

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "$$$URL_HV$$$"
    And I set appian version to "$$$AppVer$$$"
    And I set appian locale to "$$$AppLoc$$$"
    Then I login with username "$$$treasuryUser$$$"
  
   Scenario: Accept he task assigned to Functional Team and then Submit the task
  
   Given I open "$$$URL_ClientService$$$"
   Given I wait for "5" seconds
   
   #Add filter set based on Initiated Request
   Given I populate field "Select Filter Set(s)" with "$$$FilterName$$$"
   Given I wait for "5" seconds
   
   #Navigate to Tasks and click on Functional Team Task
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds
   
   #Navigate between the tabs available in task and click on links available under Emails
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
   Given I populate field type "FILE_UPLOAD" named "[1]" with "$$$DOCUploadpath$$$"
   When I wait for "7" seconds
   When I toggle box "Fulfillment History of Treasury Team" visibility
   Then I wait for "4" seconds
   Then I click on button "COMPLETE"
   Then I click on button "Yes"
   Then I wait for "5" seconds
   
   #Navigate to Records and Check for Fullfilment details dashboard
   Given I click on site page "CLIENT SERVICE REQUESTS"
   Given I wait for "5" seconds
   Given I populate field "Search" with "$$$RequestID$$$"
   Given I wait for "5" seconds
   Given I populate field "Type" with "$$$RequestType$$$"
   Given I wait for "5" seconds
   Given I verify grid "[1]" column "[6]" row "[1]" contains "$$$RequestType$$$"
   Given I wait for "4" seconds
   Given I verify grid "[1]" column "[10]" row "[1]" contains "Pending Request Owner Response"
   Given I wait for "5" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "10" seconds
   Given I click on link "Fulfillment Details"
   Given I wait for "10" seconds
   Given I toggle box "Request Fulfillment Details" visibility
   Given I wait for "2" seconds
   Given I toggle box "Request Fulfillment Details" visibility
   Given I wait for "5" seconds
   Given I verify grid "[1]" column "[11]" row "[1]" contains "Pending Acknowledgment"
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
   Then I logout
   Then I tear down