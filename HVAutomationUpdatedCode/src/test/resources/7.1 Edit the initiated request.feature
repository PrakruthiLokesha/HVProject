@7.1_EditTheRequestInitiated
Feature: Edit the request Initiated

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
Given I sort grid "[1]" by column "[2]"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "[2]"
Given I wait for "4" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "4" seconds

#I navigate to Edit request related action
Given I click on link "Related Actions"
Given I wait for "8" seconds
Given I click on link "Edit Request"
Given I wait for "8" seconds
Given I clear field "Request Due Date"
Given I populate field "Request Due Date" with "$$$Duedate1$$$"
Given I click on radio option "$$$Priority1$$$"
#Given I click on checkbox option "[1]"
Given I clear field "Issue Description"
Given I populate field "Issue Description" with "$$$IssueDescription1$$$"
Given I wait for "3" seconds
Given I clear field "Description" 
Given I populate field "Description" with "$$$Description1$$$" 
Given I wait for "5" seconds  
Given I clear field "Comments"
Given I populate field "Comments" with "$$$CommentsValue1$$$" 
Given I wait for "5" seconds
Given I clear field "Request Type(s)" 
Given I populate field "Request Type(s)" with "$$$RequestType(s)1$$$" 
Given I wait for "5" seconds

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
Given I populate grid "[1]" column "[3]" row "[1]" with "[2]" 
Given I click on button "$$$UPDATE$$$"
And I click on button "$$$confButtonYes$$$"
 Given I wait for "5" seconds

#Given I verify the deails in the summary dashboard
Given I click on link "Summary"
 Given I wait for "5" seconds
 Given I verify field "Priority" contains "$$$Priority1$$$"
 Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "$$$RequestType(s)1$$$"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "$$$Description$$$"
  Given I wait for "6" seconds
Given I verify field "Request Type(s)" contains "$$$RequestType(s)1$$$"
 Given I wait for "5" seconds
 
#Observe in Audit History
 Given I click on link "Audit History"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Edit Request Information"
Given I wait for "6" seconds
Given I verify grid "[1]" column "[9]" row "[1]" contains "$$$Comments1$$$"
Given I wait for "4" seconds
 Then I logout
 Then I tear down 

  
    
   