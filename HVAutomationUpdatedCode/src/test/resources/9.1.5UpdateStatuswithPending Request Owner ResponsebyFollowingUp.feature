@9.1.5UpdateStatuswithPendingRequestOwnerResponsebyFollowUp
Feature: Update status related action submission with status Pending Request Owner Response with Follow up

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
  4. Replace APPIAN_VERSION with (17.2, 17.3, 17.4, 18.1, 18.2, 18.3 or 18.4)
  5. Replace APPIAN_LOCALE with either "en_US" or "en_GB"
  5. Replace APPIAN_USERNAME with a valid username for Appian URL above
  6. Open src/main/resources/configs/users.properties and add a line for the above username that is of the form username=password (e.g. test.user=password)
  7. Open src/main/resources/configs/variables.properties

 
 Background: Login to LH Test environment
Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
Then I login with username "$$$CsaUser$$$"
  

Scenario: Update status related action submission with status Pending Request Owner Response with Follow up
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
Given I wait for "5" seconds
    
    #Navigate to update status related action, select Pending Client response status, enter comments for the same and Folloe up
    Given I click on record related action "UPDATE STATUS"
    Given I wait for "5" seconds
    Given I click on radio option "$$$Option3$$$"
    Given I wait for "5" seconds
    Given I populate field "Comments" with "$$$Comments$$$"
    Given I wait for "5" seconds
    
    #Verfiy that cancel buttion is present and then click on close button to submit
    Given I verify button "$$$Cancel$$$" is present
      Given I wait for "5" seconds
      Given I verify button "$$$Complete$$$" is present
      Given I wait for "5" seconds
    Given I click on button "$$$FollowUp$$$"
    Given I wait for "5" seconds
    Given I click on button "$$$confButtonYes$$$"
    Given I wait for "10" seconds
    
    #Send Follow up
    #Send Response to client by entering To Recipients and CC Recipients and Email Subject and Body
   Given I wait for "5" seconds
   Given I click on checkbox option "High"
   Given I wait for "5" seconds
   Given I toggle box "Email[2]" visibility
    Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[1]" with "$$$TO$$$"
   Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[2]" with "$$$CC$$$"
   Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[3]" with "$$$EmailSubject$$$"
   Given I wait for "5" seconds
   Given I populate field type "PARAGRAPH" named "[1]" with "$$$EmailBody$$$"
   Given I wait for "5" seconds
   When I populate field type "FILE_UPLOAD" named "Add Attachments" with "$$$docPath$$$"
   Given I wait for "8" seconds
   #Given I populate picker field "[1]" with partially matching suggestions for "$$$HVUser1$$$"
   #Given I wait for "5" seconds
   When I populate grid "[1]" column "[1]" row "[1]" with "$$$RenamingAttachmentName$$$"
 When I wait for "5" seconds
   And I click on button "$$$FollowUp$$$" 
   When I wait for "5" seconds
    And I click on button "$$$confButtonYes$$$" 
    When I wait for "8" seconds
     
     #I verify the status in Records
    Given I click on site page "$$$Records$$$"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "6" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status4$$$" 
    
 #Navigate to summary dashboard and verify the Request details and functional team details
 Given I click on grid "[1]" column "[3]" row "[1]"
 Given I wait for "4" seconds
 
 #Navigate to Emails dashboard and verify
 Given I click on link "Emails"
 Given I click on link "All Emails"
   Given I wait for "4" seconds
 Given I wait for "5" seconds
 Given I verify link "$$$EmailSubject$$$" is present
 Given I wait for "3" seconds
 Given I click on link "Outgoing Emails"
   Given I wait for "4" seconds
 Given I verify link "$$$EmailSubject$$$" is present
 Given I wait for "4" seconds
    
    #Logout and then close the browser
    Given I logout
    Given I tear down