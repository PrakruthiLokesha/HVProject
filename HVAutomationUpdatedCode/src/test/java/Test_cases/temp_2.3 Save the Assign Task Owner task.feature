@2.3_Save_The_AssignTaskOwnerTask
Feature: Save the Assign task owner task

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

#Run Feature file 3 to send a task to accounting manager group
 Background: Login to LH Test environment
    Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "accountingManagerUser1"
 
    
Scenario: Save the Assign task owner task

    ##I Log in as Accounting manager user
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "10" seconds
    When I click on site page "TASKS"  
    Given I clear field "Select Filter Set(s)"
        Given I wait for "5" seconds 
    Given I click on button "MY GROUP TASKS"
    Given I wait for "5" seconds   
  
   # I reassign the task to group and pick a task and accept it
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
   Given I click on grid "[1]" column "[3]" row "1"
   Given I wait for "8" seconds
   Given I click on button "ACCEPT"
   
    #I add Comments, Pick task owner and Save
   #Given I populate picker field "Task Owner" with partially matching suggestions for "accountingControllerUser1" 
   Given I populate field type "PARAGRAPH" named "[1]" with "ACC Comments"  
   Given I wait for "5" seconds
   Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\srishakthim\Pictures\Warning.png"
   Given I wait for "8" seconds  
   Given I click on button "SAVE"
   And I wait for "10" seconds
   
    #Pick up the same task from the task page and observe
    Given I click on site page "TASKS"
    Given I clear field "Select Filter Set(s)"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "4" seconds
    Given I verify field type "Paragraph" named "[1]" contains "ACC Comments"
    Given I wait for "5" seconds
    
    #I verify the status in the Records
Given I click on site page "CLIENT SERVICE REQUESTS"
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I verify grid "[1]" column "[10]" row "[1]" contains "Pending Functional Team Response"
Given I wait for "5" seconds

#Navigate to Active tasks additional dashboard and verify the Request fulfillment task in other active tasks
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "5" seconds
  Given I click on link "Active Tasks"
  Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
  Given I verify grid "[2]" column "[1]" row "[1]" contains "Review Comments from Accounting Manager Team"
  Given I wait for "3" seconds
  Given I verify grid "[2]" column "[4]" row "[1]" contains "GCS Client Service Associate"
  Given I wait for "5" seconds
  Given I verify grid "[2]" column "[4]" row "[1]" contains "Accounting Manager"
  Given I wait for "5" seconds

  #Navigate to Fulfillment details additional dashboard and verify
 Given I click on link "Fulfillment Details"
  Given I wait for "6" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Accounting"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[3]" row "[1]" contains "Test"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[6]" row "[1]" contains "09/19/2019"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[11]" row "[1]" contains "Sent for Revision"
 Given I wait for "3" seconds
 Given I click on grid "[1]" column "[12]" row "[1]"
 Given I wait for "6" seconds
 Given I verify grid "[2]" column "[1]" row "[1]" contains "Review Comments from Accounting Manager Team"
 Given I wait for "4" seconds
  Given I click on link "Close[1]"
 Given I wait for "5" seconds
 Given I click on link "Close"
 Given I wait for "5" seconds
 
 #Navigate to Audit history additional dashboard and verify
 Given I click on link "Audit History"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Review Comments from Accounting Manager Team"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "ACC Comments"
Then I logout
    Then I tear down

   
   
   
   

