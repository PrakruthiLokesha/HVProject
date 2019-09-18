@7.2ResponseEmailThread-IR
Feature: Response Email Thread task-IR

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
  

Scenario: Edit the request Initiated
Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
Given I wait for "8" seconds 
Given I click on site page "CLIENT SERVICE REQUESTS"
Given I clear field "Select Filter Set(s)"
       
   #Click on the task
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "6" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "4" seconds

#I navigate to Email thread dashboard, select Initiate new request option and confirm it
Given I click on link "Active Tasks"
Given I wait for "8" seconds
Given I click on grid "[1]" column "[1]" row "[1]"
Given I wait for "6" seconds
Given I select grid "[1]" row "[1]"
Given I wait for "5" seconds
Given I click on radio option "Initiate New Request"
Given I wait for "6" seconds
Given I populate field type "PARAGRAPH" named "[1]" with "Good to go" 
Given I wait for "5" seconds
Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\srishakthim\Pictures\Warning.png"
Given I wait for "8" seconds    
Given I click on button "CONFIRM"
Given I click on button "Yes"

#I Update the Request Information
Given I wait for "8" seconds
Given I click on checkbox option "[1]"
Given I click on checkbox option "[2]"
Given I click on checkbox option "[3]"
#Given I click on checkbox option "[4]"
Given I wait for "5" seconds
Given I clear field "Request Due Date"
Given I populate field "Request Due Date" with "09/16/2019"
Given I click on radio option "High"
#Given I click on checkbox option "[1]"
Given I clear field "Issue Description"
Given I populate field "Issue Description" with "Issue Description"
Given I wait for "3" seconds
Given I clear field "Description" 
Given I populate field "Description" with "Description" 
Given I wait for "5" seconds  
Given I clear field "Request Owner"
Given I populate picker field "Request Owner" with partially matching suggestions for "CSA USER 2"
Given I clear field "Request Type(s)"
Given I populate field "Request Type(s)" with "Compliance"
#Given I clear field "Comments"
Given I populate field "Comments" with "Good to go" 
Given I wait for "5" seconds
Given I populate field "Request Status" with "[1]"
Given I wait for "8" seconds

#I edit the Client Information
Given I click on link "Click here to search for Client Institution"
Given I populate picker field "Name" with partially matching suggestions for "sec"
Given I wait for "3" seconds
Given I click on grid "Search Result(s)" column "Name" row "[1]"
Given I wait for "5" seconds
Given I click on link "Search Investor(s) for Woori Investment & Securities" 
Given I populate picker field "Name" with partially matching suggestions for "aber"
Given I wait for "5" seconds
Given I select grid "Search Result(s)" row "[2]"
Given I click on link "Add Selected Investor(s)"
Given I wait for "5" seconds
Given I populate grid "[2]" column "[3]" row "[1]" with "[2]" 
Given I wait for "8" seconds

#Edit Functional teams
Given I click on grid "[3]" column "[6]" row "[1]"
Given I wait for "4" seconds
#Given I click on grid "[1]" column "[6]" row "[1]"
#Given I wait for "3" seconds
Given I click on link "Add Functional Team"
Given I populate grid "[3]" column "[1]" row "[1]" with partially matching picker field suggestions for "Compliance"
Given I populate grid "[3]" column "[2]" row "[1]" with partially matching picker field suggestions for "Compliance"
Given I wait for "5" seconds   
Given I populate grid "[3]" column "[3]" row "[1]" with partially matching picker field suggestions for "09/16/2019"
Given I populate grid "[3]" column "[4]" row "[1]" with partially matching picker field suggestions for "Test"
Given I wait for "4" seconds
Given I click on link "Add Functional Team"
Given I populate grid "[3]" column "[1]" row "[2]" with partially matching picker field suggestions for "Tax"
Given I populate grid "[3]" column "[2]" row "[2]" with partially matching picker field suggestions for "Tax"
Given I wait for "5" seconds   
Given I populate grid "[3]" column "[3]" row "[2]" with partially matching picker field suggestions for "09/16/2019"
Given I populate grid "[3]" column "[4]" row "[2]" with partially matching picker field suggestions for "Test"
Given I wait for "4" seconds
Given I click on button "SUBMIT"
And I click on button "Yes"
Given I wait for "8" seconds

#Verify the Task in Active tasks additional dashboard
#Given I click on site page "CLIENT SERVICE REQUESTS"
#Given I clear field "Select Filter Set(s)"
#Given I sort grid "[1]" by column "Request Id"
#Given I wait for "4" seconds
#Given I sort grid "[1]" by column "Request Id"
#Given I wait for "6" seconds
#Given I click on grid "[1]" column "[3]" row "[1]"
#Given I wait for "4" seconds
#Given I click on link "Active Tasks"
#Given I wait for "8" seconds
#Given I verify grid "[1]" column "[1]" row "[1]" contains "Review & Take Action on Response Email Thread"


  
    
   

