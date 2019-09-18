@1.5_IR_And_Close
Feature: Sample feature file that interacts with an Appian application

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
    Given I wait for "8" seconds   
    
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
    Given I populate picker field "Name" with partially matching suggestions for "Investor" 
    Given I click on grid "Search Result(s)" column "Name" row "1"
    Then I click on button "Yes"
    And I wait for "5" seconds
    Given I populate field "Request Type(s)" with "Compliance"
    Given I populate field "Description" with "Description" 
    Given I wait for "5" seconds    
    
    #I Fill the details in the Client Information section
    Given I populate field "Fund(s)" with "[1]"
    
     #I verify the functionality the button
    And I click on button "CLOSE REQUEST"
    And I click on button "Yes"
    And I wait for "10" seconds
    
    #I verify the status in the Records
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "5" seconds
    Given I clear field "Status"
    Given I wait for "5" seconds
    Given I populate field "Status" with "Closed"
    Given I wait for "6" seconds
   Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I verify grid "[1]" column "[10]" row "[1]" contains "Closed"
    Given I wait for "5" seconds
    Then I logout
    Then I tear down

