@LinkRequest
Feature: Link and Unlink Request

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

  Background: Login to Appian environment
    Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "18.4"
    And I set appian locale to "en_US"
    Given I login with username "csaUser1"
 
  Scenario: Link request
    
    #Open client service site  
    Given I wait for "5" seconds
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "5" seconds
    
    #Click on client service request site page
    Given I click on site page "CLIENT SERVICE REQUEST"
    Given I wait for "5" seconds
    
    #Select the record to link the request
    Given I click on grid "[1]" column "[3]" row "[2]"
    Given I wait for "5" seconds
    
    #Navigate to link request related action, verify the pagination of Request details grid
    Given I click on record related action "LINK/UNLINK REQUESTS"
    Given I wait for "10" seconds
    Given I click on grid "[1]" navigation "next"
    Given I click on grid "[1]" navigation "last"
    Given I click on grid "[1]" navigation "previous"
    Given I click on grid "[1]" navigation "first"
    Given I wait for "5" seconds
    
    #Click on sorting of the requests details grid
    Given I sort grid "[1]" by column "Priority"
    Given I sort grid "[1]" by column "Priority"
    Given I sort grid "[1]" by column "Request Id"
    Given I sort grid "[1]" by column "Request Id"
    Given I sort grid "[1]" by column "Request Type"
    Given I sort grid "[1]" by column "Request Type"
    Given I sort grid "[1]" by column "Received Date"
    Given I sort grid "[1]" by column "Received Date"
    Given I sort grid "[1]" by column "Due Date"
    Given I sort grid "[1]" by column "Due Date"
    Given I sort grid "[1]" by column "Status"
    Given I sort grid "[1]" by column "Status"
    Given I sort grid "[1]" by column "Request Owner"
    Given I sort grid "[1]" by column "Request Owner"
    Given I wait for "5" seconds
    
    #Click on link request
    Given I click on grid "[1]" column "[10]" row "[1]"
    Given I wait for "5" seconds
    Given I click on grid "[1]" column "[10]" row "[1]"
    Given I wait for "10" seconds
    
    #Click on sorting of newly linked requests grid
    #Given I sort grid "[2]" by column "Priority"
    #Given I sort grid "[2]" by column "Priority"
    #Given I sort grid "[2]" by column "Request Id"
    #Given I sort grid "[2]" by column "Request Id"
    #Given I sort grid "[2]" by column "Request Type"
    #Given I sort grid "[2]" by column "Request Type"
    #Given I sort grid "[2]" by column "Received Date"
    #Given I sort grid "[2]" by column "Received Date"
    #Given I sort grid "[2]" by column "Due Date"
    #Given I sort grid "[2]" by column "Due Date"
    #Given I sort grid "[2]" by column "Status"
    #Given I sort grid "[2]" by column "Status"
    #Given I sort grid "[2]" by column "Request Owner"
    #Given I sort grid "[2]" by column "Request Owner"
    #Given I wait for "5" seconds
    
    #Remove the row from the newly linked requests grid
    Given I click on grid "[2]" column "[10]" row "[2]"
    Given I wait for "10" seconds
    Given I click on grid "[2]" column "[10]" row "[1]"
    Given I wait for "5" seconds
    
    #Search for required request id, request type and request owner
    Given I populate field "Request ID" with "1904-1600"
    Given I wait for "2" seconds
    Given I populate field "Request Type" with "Cash Flow"
    Given I wait for "2" seconds
    Given I populate field "Request Owner" with "CSA user1"
    Given I wait for "5" seconds
    
    #Click on link request
    Given I click on grid "[1]" column "[10]" row "[1]"
    Given I wait for "10" seconds
    Given I click on button "CLEAR FILTERS"
    Given I wait for "10" seconds
    Given I click on grid "[1]" column "[10]" row "[1]"
    Given I wait for "5" seconds
    
    #Verfiy that cancel buttion is present and then click on complete button to submit
    Given I verify button "CANCEL" is present
    Given I click on button "COMPLETE"
    Given I wait for "5" seconds
    Given I click on button "YES"
    Given I wait for "10" seconds
    
    #Logout and then close the browser
    Given I logout
    Given I tear down
    
    
    
    

