@8.3ResponseEmailThread-NoACtionNeeded
Feature: Response Email Thread task-No action needed

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
Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
Then I login with username "$$$CsaUser$$$"
  

Scenario: Edit the request Initiated
Given I open "$$$CSUrl$$$"
Given I wait for "8" seconds 
Given I click on site page "$$$Records$$$"
Given I clear field "Select Filter Set(s)"
       
   #Click on the task
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "6" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "4" seconds

#I navigate to Email thread dashboard, select No Action needed and confirm it
Given I click on link "Active Tasks"
Given I wait for "8" seconds
Given I click on grid "[1]" column "[1]" row "[1]"
Given I wait for "6" seconds
Given I select grid "[1]" row "[1]"
Given I wait for "5" seconds
Given I click on radio option "No Action Needed"
Given I wait for "5" seconds
Given I populate field type "PARAGRAPH" named "[1]" with "$$$CommentsValue$$$" 
Given I wait for "5" seconds
Given I populate field type "FILE_UPLOAD" named "$$$docField$$$$" with "$$$docPath$$$"
Given I wait for "8" seconds    
Given I click on button "$$$CONFIRM$$$"
Given I click on button "$$$confButtonYes$$$"
Given I wait for "8" seconds

#Verify the Status of Request in Client Service Records
Given I click on site page "$$$Records$$$"
Given I clear field "Select Filter Set(s)"
 Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status2$$$"
Given I wait for "5" seconds

#Verify the Task in Active tasks additional dashboard
Given I click on site page "$$$Records$$$"
Given I clear field "Select Filter Set(s)"
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "6" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "4" seconds
Given I click on link "Active Tasks"
Given I wait for "8" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Review & Take Action on Response Email Thread"
Then I logout
    Then I tear down


  
    
   