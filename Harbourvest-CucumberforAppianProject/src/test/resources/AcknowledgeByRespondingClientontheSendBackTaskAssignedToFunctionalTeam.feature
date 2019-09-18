@AcknowledgeByRespondingClienton-Select_PendingClientResponse
Feature: Acknowledge the task send back by Functional Team-Treasury and respond to client by selecting option as Pending Client Respose

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "$$$URL_HV$$$"
    And I set appian version to "$$$AppVer$$$"
    And I set appian locale to "$$$AppLoc$$$"
    Then I login with username "$$$csaUser1$$$"
  
   Scenario: Acknowledge the send back task assigned from Functional Team and respond to client
   
   #Save the filter set based on Initiated Request
   Given I open "$$$URL_ClientService$$$"
   Given I wait for "2" seconds
   Given I click on link "Add"
   Given I wait for "3" seconds
   Given I populate field "Filter Set Name" with "$$$FilterName$$$"
   Given I wait for "3" seconds
   #Given I populate field "Search" with "$$$RequestID$$$"
   #Given I wait for "3" seconds
   Given I populate field "Type" with "$$$RequestType$$$"
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
   
   #Acknowledge the task by resopnding back to client
   Given I populate field type "PARAGRAPH" named "[1]" with "$$$Acknowledgement_Comments$$$"
   Given I wait for "5" seconds
   Given I populate field type "FILE_UPLOAD" named "[1]" with "$$$DOCUploadpath$$$"
   Given I wait for "7" seconds
   Given I click on checkbox option "[2]"
   When I wait for "3" seconds
   When I click on button "Acknowledge"
   When I click on button "YES"
   
   #Send Response to client by entering To Recipients and CC Recipients and Email Subject and Body
   Given I wait for "5" seconds
   Given I click on checkbox option "High"
   Given I wait for "5" seconds
   Given I toggle box "Email[2]" visibility
    Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[1]" with "swetar@vuram.com"
   Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[2]" with "prakruthil@vuram.com"
   Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[3]" with "$$$EmailSubject$$$"
   Given I wait for "5" seconds
   Given I populate field type "PARAGRAPH" named "[1]" with "$$$EmailBody$$$"
   Given I wait for "5" seconds
   #Given I populate picker field "[1]" with partially matching suggestions for "csa"
   When I populate field type "FILE_UPLOAD" named "Add Attachments" with "$$$DOCUploadpath$$$"
   When I wait for "5" seconds
   When I populate grid "[1]" column "[1]" row "[1]" with "Rename the Attachment Name"
     
   #Update Status based on two options which is not mandatory . Select Option as Pending Client Respose
   Given I click on radio option "[2]"
   Given I wait for "5" seconds
   Then I click on button "SEND"
   Then I click on button "YES"
   
   #Verify the Status of Request in Client Service Records
   Given I click on site page "CLIENT SERVICE REQUESTS"
   #Given I populate field "Search" with "$$$RequestID$$$"
   Given I wait for "2" seconds
    Given I clear field "Status"
   Given I wait for "5" seconds
   Given I populate field "Status" with "Pending Client Response"
   Given I wait for "5" seconds
   Given I populate field "Type" with "$$$RequestType$$$"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Request Id"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
   Given I verify grid "[1]" column "[6]" row "[1]" contains "$$$RequestType$$$"
   Given I wait for "4" seconds
   Given I verify grid "[1]" column "[10]" row "[1]" contains "Pending Client Response"
   When I wait for "4" seconds
   
   #Navigate to Summary dashbaord of Client Service Request
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds
   
    #Navigate to Emails Dashboard to verify the email subject
   Given I click on link "Emails"
   Given I wait for "5" seconds
   When I verify text "$$$EmailSubject$$$" is present
   Then I wait for "5" seconds
   
   #Check the eamil subject link works 
   Then I click on link "$$$EmailSubject$$$"
	 Then I wait for "5" seconds
	 Then I click on link "$$$EmailSubject$$$"
   
    #Check the status updated in Request Fulfillment Details grid under Request Fulfillment Dashbaord
    Given I click on link "Fulfillment Details"
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
    Given I wait for "3" seconds
    Given I verify grid "[2]" column "[8]" row "[1]" contains "Completed"
    Given I wait for "3" seconds
    Given I click on grid "[2]" column "[9]" row "[1]"
    Given I wait for "3" seconds
    Given I verify grid "[2]" column "[9]" row "[1]" contains "$$$Acknowledgement_Comments$$$"
    Given I wait for "3" seconds
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
   
   
   
   
   
   