@3.3SendBackToFunctionalTeamOnReviewCommentsandTakeActionTask
Feature: Send back to function team on Review Comments and take action task

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
 
    
Scenario: Acknowledge and Close the task send back by Accounting team
    # Add a new filter set and save
Given I open "$$$CSUrl$$$"
Given I wait for "8" seconds 
Given I clear field "Select Filter Set(s)"

#Click on the Review response from Functional Team
Given I wait for "8" seconds
Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "8" seconds

#Navigate to Emails dashboard and verify
 Given I click on button "EMAILS"
 Given I click on link "All Emails"
   Given I wait for "4" seconds
 Given I wait for "5" seconds
 Given I verify link "$$$EmailSubject$$$" is present
 Given I wait for "3" seconds
 Given I click on link "Outgoing Emails"
   Given I wait for "4" seconds
 Given I verify link "$$$EmailSubject$$$" is present
 Given I wait for "4" seconds
 
 #Navigate to Audit history additional dashboard and verify
 Given I click on button "AUDIT HISTORY"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Review Comments from Accounting Manager Team"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[9]" row "[2]" contains "$$$AMComments$$$"
Given I wait for "4" seconds

#Navigate to Request Details tab and verify the Request details and functional team details
  Given I wait for "5" seconds
 When I click on button "REQUEST DETAILS"
 Given I wait for "5" seconds
 Given I verify field "Priority" contains "$$$Priority$$$"
 Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "$$$RequestType(s)$$$"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "$$$Description$$$"
  Given I wait for "6" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam3$$$"
Given I wait for "4" seconds
Given I verify grid "[2]" column "[3]" row "[1]" contains "$$$FTComments$$$"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[6]" row "[1]" contains "$$$Duedate$$$"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[11]" row "[1]" contains "Sent for Revision" 
 Given I click on grid "[2]" column "[12]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "Review Comments from Accounting Manager Team"
 Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[2]" contains "$$$AMComments$$$"
 Given I click on link "Close[1]"
 Given I wait for "5" seconds
 Given I click on link "Close"
 Given I wait for "6" seconds 

#Send back the task without resopnding back to client with Acknowledgement comments
Given I click on button "PROVIDE COMMENTS"
Given I wait for "5" seconds
Given I populate field type "PARAGRAPH" named "[1]" with "$$$CSARCComments$$$"
Given I wait for "5" seconds
Given I populate field type "FILE_UPLOAD" named "$$$docField$$$$" with "$$$docPath$$$"
Given I wait for "7" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Review Comments from Accounting Manager Team"
Given I wait for "3" seconds
When I click on button "$$$SENDTOACCOUNTINGMANAGER$$$"
Given I wait for "3" seconds
When I click on button "$$$confButtonYes$$$"
Then I wait for "8" seconds

#Verify the Status of Request in Client Service Records
Given I click on site page "$$$Records$$$"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status2$$$"
Given I wait for "5" seconds

 #Navigate to Fulfillment details dashbaord of Client Service Request
 Given I click on grid "[1]" column "[3]" row "[1]"
 Given I wait for "4" seconds
 When I click on link "Fulfillment Details"
 
 #Navigate to Fulfillment details dashbaord of Client Service Request
 Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$FunctionalTeam3$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[3]" row "[1]" contains "$$$FTComments$$$"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[6]" row "[1]" contains "$$$Duedate$$$"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[11]" row "[1]" contains "Pending Assignment"
 Given I wait for "3" seconds
 Given I click on grid "[1]" column "[12]" row "[1]"
 Given I wait for "6" seconds
 Given I verify grid "[2]" column "[1]" row "[1]" contains "Assign Task Owner"
 Given I wait for "6" seconds
  Given I click on link "Close[1]"
 Given I wait for "5" seconds
 Given I click on link "Close"
 Given I wait for "5" seconds
  
 # Observe in Audit History
 Given I click on link "Audit History"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Assign Task Owner"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[2]" contains "Review Comments from Accounting Manager Team"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[9]" row "[2]" contains "$$$CSARCComments$$$"
Then I logout
    Then I tear down
 
    