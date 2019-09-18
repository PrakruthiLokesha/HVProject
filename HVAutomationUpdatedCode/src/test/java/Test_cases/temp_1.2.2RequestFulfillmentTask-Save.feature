@1.2.2RequestFulfillmentTask-Save
Feature: Save the Request Fulfillment Task
 Background: Login to LH Test environment
    Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "complianceUser1"
 
    
Scenario: Save the Request Fulfillment Task
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "10" seconds
    When I click on site page "TASKS" 
    Given I clear field "Select Filter Set(s)"
        Given I wait for "5" seconds  
    Given I click on button "MY GROUP TASKS"
    Given I wait for "5" seconds   
  
    #I reassign the task to group and pick a task and accept it
   Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
   Given I select grid "[1]" row "[1]"
   Given I wait for "4" seconds
   And I click on button "RE-ASSIGN TO GROUP"
   Given I wait for "5" seconds
   Given I click on button "YES"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "8" seconds
   Given I click on button "ACCEPT"
   Given I wait for "20" seconds
   
 #Navigate to Audit history  and verify tab
 Given I click on button "AUDIT HISTORY"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Request Fulfillment"
Given I wait for "4" seconds

#Navigate to Request Details tab and verify the Request details and functional team details
 When I click on button "REQUEST DETAILS"
 Given I wait for "5" seconds
 Given I verify field "Priority" contains "High"
 Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "Compliance"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "Description"
  Given I wait for "6" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "Compliance"
Given I wait for "4" seconds
Given I verify grid "[2]" column "[3]" row "[1]" contains "Test"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[6]" row "[1]" contains "09/19/2019"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[11]" row "[1]" contains "Pending Response" 
 Given I click on grid "[2]" column "[12]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "Request Fulfillment"
 Given I click on link "Close"
 Given I wait for "6" seconds 
 
  #Add details and Save
Given I click on button "PROVIDE COMMENTS"
Given I wait for "4" seconds
Given I populate field type "PARAGRAPH" named "[1]" with "ReqF Comments"
Given I wait for "5" seconds
Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\srishakthim\Pictures\Warning.png"
Given I wait for "7" seconds
When I click on button "SAVE"
Given I wait for "5" seconds

#Navigate to Records and Check for Fullfilment details dashboard
   Given I click on site page "CLIENT SERVICE REQUESTS"
   Given I wait for "5" seconds
   Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
   Given I verify grid "[1]" column "[10]" row "[1]" contains "Pending Functional Team Response"
   Given I wait for "5" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "10" seconds
   
   #navigate to Fulfillment details additional dashboard and observe
   Given I click on link "Fulfillment Details"
   Given I wait for "10" seconds
   Given I toggle box "Request Fulfillment Details" visibility
   Given I wait for "2" seconds
   Given I toggle box "Request Fulfillment Details" visibility
   Given I wait for "5" seconds
   Given I verify grid "[1]" column "[11]" row "[1]" contains "Pending Response"
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
    Given I verify grid "[2]" column "[8]" row "[2]" contains "Pending"
    Given I wait for "3" seconds
    Given I verify grid "[2]" column "[9]" row "[2]" contains "ReqF Comments"
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
    Given I wait for "5" seconds  
    
    #Navigate to Active tasks additional dashboard and verify the Request fulfillment task in other active tasks
  Given I click on link "Active Tasks"
Given I wait for "5" seconds  
  Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
  Given I verify grid "[2]" column "[1]" row "[1]" contains "Request Fulfillment"
  Given I wait for "3" seconds
   Given I verify grid "[2]" column "[4]" row "[1]" contains "GCS Compliance"
  Given I wait for "5" seconds
  
  # Observe in Audit History
 Given I click on link "Audit History"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Review Response from Compliance Team"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[9]" row "[2]" contains "ReqF Comments"
Given I wait for "4" seconds
Then I logout
    Then I tear down
   
            

