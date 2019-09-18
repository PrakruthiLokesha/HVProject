@4.5_SendBackFromRequestFulfilmentTask
Feature: Send back to CSA User from Request Fulfilment task
  Configuring your site with the sample application:
  1. Import the applicable version of Automated Testing - XX.X.zip application, provided in the Shared Components page, into your Appian environment
  2. Log into Appian Designer view on your Appian environment and import the downloaded application zip
  3. After import is complete, click on the Automated Testing application
  4. Find and click on the AUT DS object to open the Appian Data Store Designer
  5. Verify the entity mappings under Schema Management and then Save & Publish the data store

  Prerequisites for running the test on the configured site above:
  1. Run the appropriate setupCustomPropertiesFor... script
  2. Replace BROWSER with either FIREFOX or CHROME
  3. Replace APPIAN_URL with your Appian site URL, beginning with https:// and including /suite at the end (e.g. https://forum.appian.com/suite)
  4. Replace APPIAN_VERSION with (17.4, 18.1, 18.2, 18.3, 18.4, 19.1, 19.2 or 19.3)
  5. Replace APPIAN_LOCALE with either "en_US" or "en_GB"
  5. Replace APPIAN_USERNAME with a valid username for Appian URL above
  6. Open src/main/resources/configs/users.properties and add a line for the above username that is of the form username=password (e.g. test.user=password)

 Background: Login to LH Test environment
    Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "accountingManagerUser1"
 
    
Scenario: Send back to CSA User from Request Fulfilment task
# Add a new filter set and save
Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
Given I wait for "8" seconds 
Given I clear field "Select Filter Set(s)"
#Given I click on link "Add"
#Given I populate field "Filter Set Name" with "NewFil8"
#Given I populate field "Search" with "$$$RequestID$$$" 
#Given I wait for "5" seconds
#Given I click on link "Save"   
       
#Fetch the task
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Assigned On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Assigned On"
Given I wait for "4" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "4" seconds

#Add details and Send to CSA
Given I populate field type "PARAGRAPH" named "[1]" with "Good to go"
Given I wait for "5" seconds
Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\srishakthim\Pictures\Warning.png"
Given I wait for "7" seconds
When I click on button "SEND BACK"
When I click on button "Yes"
Then I wait for "5" seconds

#Verify the Status of Request in Client Service Records
Given I click on site page "CLIENT SERVICE REQUESTS"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
#Given I verify grid "[1]" column "[10]" row "[1]" contains "Pending Request Owner Response"
#Given I wait for "6" seconds

#Navigate to Records and Check for Fullfilment details dashboard
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "10" seconds
   Given I click on link "Fulfillment Details"
   Given I wait for "10" seconds
   Given I toggle box "Request Fulfillment Details" visibility
   Given I wait for "2" seconds
   Given I toggle box "Request Fulfillment Details" visibility
   Given I wait for "5" seconds
   Given I verify grid "[1]" column "[11]" row "[1]" contains "Sent for Revision"
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
    Given I verify grid "[2]" column "[8]" row "[2]" contains "Completed"
    Given I wait for "3" seconds
    Given I click on grid "[2]" column "[9]" row "[2]"
    Given I wait for "3" seconds
    Given I verify grid "[2]" column "[9]" row "[2]" contains "Good to go"
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
    
    
    

