@1.2_Request_Initiation_Submit_FunctionalTeamNotAccounting
Feature: IR with functional team not as Accounting, submit the form and verify it in the summary dashboard

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
    Then I login with username "csaUser1"


Scenario: IR with Functionalteam not Accounting and Requestor Type Not Investor and Submit
    #I open Provide Request Information form and Initiate a request
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "10" seconds
    When I click on site page "TASKS"  
    Given I click on link "Initiate Request" 
    Given I wait for "10" seconds 
    
    #I Fill the values in the Comments and Documents section 
    Given I populate field type "PARAGRAPH" named "[2]" with "Good to go" 
    Given I wait for "5" seconds
    Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\srishakthim\Pictures\Warning.png"
    Given I wait for "8" seconds  
    
    #I Fill the details in the Request Information section
    Given I click on radio option "High"
    Given I click on checkbox option "[1]" 
    Given I populate field "Issue Description" with "Issue Description"
    Given I wait for "3" seconds
    Given I click on link "Click here to search for Requestor Institution" 
    Given I populate picker field "Name" with partially matching suggestions for "aber"
    Given I wait for "3" seconds
    Given I click on grid "Search Result(s)" column "Name" row "1"
    Then I click on button "Yes"
    And I wait for "5" seconds
    Given I populate field "Request Type(s)" with "Compliance"
    Given I wait for "5" seconds
    Given I populate field "Description" with "Description" 
    Given I wait for "5" seconds  
    
    #I Fill the details in the Client Information section
    Given I click on link "Click here to search for Client Institution"
    Given I populate picker field "Name" with partially matching suggestions for "aber"
    Given I wait for "3" seconds
    Given I click on grid "Search Result(s)" column "Name" row "1"
    Given I wait for "3" seconds
    Given I click on link "Search Investor(s) for RJA - Atlanta - 1100 Abernathy Rd NE" 
    Given I wait for "5" seconds
    Given I populate picker field "Name" with partially matching suggestions for "aber"
    Given I wait for "5" seconds
    Given I select grid "Search Result(s)" row "[2]"
    Given I click on link "Add Selected Investor(s)"
    Given I wait for "5" seconds
    Given I populate grid "[1]" column "[3]" row "[1]" with "[2]"  
   Given I wait for "5" seconds  
    
    #I Fill the details in the Functional Team section
    Given I click on checkbox option "[2]" 
    Given I wait for "5" seconds
    Given I populate grid "[1]" column "[1]" row "[1]" with partially matching picker field suggestions for "Compliance"
    Given I wait for "5" seconds
    Given I populate grid "[1]" column "[2]" row "[1]" with partially matching picker field suggestions for "Compliance"
    Given I wait for "5" seconds
   Given I populate grid "[1]" column "[3]" row "[1]" with "09/19/2019"
   Given I wait for "5" seconds
    Given I populate grid "[1]" column "[4]" row "[1]" with "Test"    
    
    #I verify the functionality of all the buttons
    And I click on button "SUBMIT"
    And I click on button "Yes"
    And I wait for "10" seconds
    
    #I verify the status in Records
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)"
    Given I clear field "Status"
    Given I wait for "5" seconds
    Given I populate field "Status" with "Pending Functional Team Response"
    Given I wait for "6" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I verify grid "[1]" column "[10]" row "[1]" contains "Pending Functional Team Response" 
    
 #Navigate to summary dashboard and verify the Request details and functional team details
 Given I click on grid "[1]" column "[3]" row "[1]"
 Given I wait for "4" seconds
 When I click on link "Summary"
 Given I wait for "5" seconds
 Given I verify field "Priority" contains "High"
 Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "Compliance"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "Description"
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[1]" row "[1]" contains "Compliance" 
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[9]" row "[1]" contains "Pending Response" 
 Given I click on grid "[2]" column "[10]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "Request Fulfillment"
 Given I click on link "Close"
 Given I wait for "5" seconds
 
  #Navigate to Active tasks additional dashboard and verify the Request fulfillment task in other active tasks
  Given I click on link "Active Tasks"
  Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
  Given I verify grid "[2]" column "[1]" row "[1]" contains "Request Fulfillment"
  Given I wait for "3" seconds
  Given I verify grid "[2]" column "[4]" row "[1]" contains "GCS Compliance"
  Given I wait for "5" seconds
 
 #Navigate to Audit history additional dashboard and verify
 Given I click on link "Audit History"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[2]" contains "Initial Request Review"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[9]" row "[2]" contains "Good to go"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Request Fulfillment"
Given I wait for "4" seconds
Given I click on button "SYSTEM AUDIT"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "An Email has been sent to notify the GCS Compliance team about the fulfillment task"
Given I verify grid "[1]" column "[2]" row "[1]" contains "SYSTEM"
 Then I logout
 Then I tear down

     
    

